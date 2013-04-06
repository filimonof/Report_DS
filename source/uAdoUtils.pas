unit uAdoUtils;

interface

uses ADODB, Db, ADOInt, Dialogs, SysUtils, Controls, windows, ComObj, Variants, uVar, DateUtils;

function DateToAccssSQLStr(ADate: TDateTime): string;
procedure AdoCancel(DS: TCustomADODataSet);
procedure AdoRequery(DS: TCustomADODataSet);
procedure AdoReopen(DS: TCustomADODataSet; dis: Boolean=true);
procedure AdoResync(DS: TCustomADODataSet);
function SaveInformation(DS: TCustomADODataSet; AWhere: string): boolean;
function RecordPresent(DS: TCustomADODataSet): boolean;
function ExecQuery(ADC: TADOConnection; AQuery: string; Params: array of variant): integer;
function ExecQuerySimple(ADC: TADOConnection; AQuery: string): integer;
function SelectQuery(ADC: TADOConnection; AQuery: string; Params: array of variant): TAdoQuery;
function SelectQuerySimple(ADC: TADOConnection; AQuery: string): TAdoQuery;

function WeekToDate(AWeek, AYear: Integer): TDateTime;
procedure DateToWeek(ADate: TDateTime; var AWeek, AYear: Word);


implementation

var
   FirstWeekDay: Integer = 4;
   { Wochentag, mit dem die Woche beginnt (siehe Delphi-Wochentage)
   2 : Montag (nach DIN 1355) }
   FirstWeekDate: Integer = 4;
   { 1 : Beginnt am ersten Januar
    4 : Erste-4 Tage-Woche (nach DIN 1355)
    7 : Erste volle Woche }

function DateToAccssSQLStr(ADate: TDateTime): string;
begin
  Result := FormatDateTime('"#"mm"/"dd"/"yy"#"',ADate);
end;

function SelectQuery(ADC: TADOConnection; AQuery: string; Params: array of variant): TAdoQuery;
var
  i: integer;
begin
  Result := TAdoQuery.Create(nil);
  try
    Result.Connection := ADC;
    Result.SQL.Text := AQuery;
    Result.Prepared := True;
    for i := 0 to Result.Parameters.Count - 1 do begin
      Result.Parameters[i].Value := Params[i];
    end;
    Result.Open;
  except
    Result.Free;
    raise;
  end;
end;

function SelectQuerySimple(ADC: TADOConnection; AQuery: string): TAdoQuery;
begin
  Result := TAdoQuery.Create(nil);
  try
    Result.Connection := ADC;
    Result.SQL.Text := AQuery;
    Result.Prepared := True;
    Result.Open;
  except
    Result.Free;
    raise;
  end;
end;

function ExecQuery(ADC: TADOConnection; AQuery: string; Params: array of variant): integer;
var
  Query: TADOQuery;
  i: integer;
begin
  Query := TAdoQuery.Create(nil);
  try
    Query.Connection := ADC;
    Query.SQL.Text := AQuery;
    Query.Prepared := True;
    for i := 0 to Query.Parameters.Count - 1 do begin
      Query.Parameters[i].Value := Params[i];
    end;
    Result := Query.ExecSQL;
  finally
    Query.Free
  end;

end;

function ExecQuerySimple(ADC: TADOConnection; AQuery: string): integer;
var
  Query: TADOQuery;
begin
  Query := TAdoQuery.Create(nil);
  try
    Query.Connection := ADC;
    Query.SQL.Text := AQuery;
    Query.Prepared := True;
    Result := Query.ExecSQL;
  finally
    Query.Free
  end;

end;


function SaveInformation(DS: TCustomADODataSet; AWhere: string): boolean;
var
  b1, b2: boolean;
begin
  Result := True;
  if not (DS.State in [dsEdit, dsInsert]) then Exit;
  DS.UpdateRecord;
  b1 := (DS.State in [dsEdit]) and DS.Modified;
  b2 := DS.State in [dsInsert];
  if b1 or b2 then
    Result := (MessageDlg(Format('Сохранить информацию о %s в базе?', [AWhere]), mtConfirmation, [mbYes, mbNo], 0) = mrYes);
    if Result and (b1 or b2) then begin
      DS.Post;
      DS.Edit;
    end;
end;

procedure AdoCancel(DS: TCustomADODataSet);
begin
  if DS.State = dsInsert then begin
    DS.CursorPosChanged;
    DS.UpdateCursorPos;
//    DS.Recordset.CancelUpdate;
    DS.Cancel;
  end else
  if DS.State = dsEdit then begin
    DS.CursorPosChanged;
    DS.UpdateCursorPos;
    DS.Recordset.CancelUpdate;
    DS.Cancel;
  end
end;

procedure ResyncCurrent(DS: TCustomADODataSet);
begin
	DS.UpdateCursorPos;
//  DS.RecordSet.Resync(adAffectCurrent, adResyncAll);
 	DS.Resync([]);
end;

procedure AdoRequery(DS: TCustomADODataSet);
var
  b: TBookmark;
  N: integer;
begin
  with DS do begin
    DisableControls;
    b := GetBookmark;
    N := RecNo;
    try
      Requery;
      try
        GotoBookmark(b);
      except
        if N >= RecordCount then
          Last
        else
          RecNo := N;
      end;
    finally
      FreeBookmark(b);
      EnableControls;
    end
  end;
end;

procedure AdoReopen(DS: TCustomADODataSet; dis: Boolean=true);
var
  b: TBookmark;
begin
  with DS do begin
    if not dis then DisableControls;
    b := GetBookmark;
    try
      if DS.Active then DS.Close;
      DS.Open;
      try
        GotoBookmark(b);
      except end;
    finally
      FreeBookmark(b);
      if not dis then EnableControls;
    end
  end;
end;

procedure AdoResync(DS: TCustomADODataSet);
begin
//обновить с сервера текущую запись, работает только если установлен первичный ключ в таблице на сервере!
  DS.UpdateCursorPos;
  DS.RecordSet.Resync(adAffectCurrent, adResyncAllValues);
  DS.Resync([rmCenter]);
end;

function RecordPresent(DS: TCustomADODataSet): boolean;
begin
  Result := not DS.FieldByName('ID').IsNull;
end;



{с какой даты начинается AWeek неделя в AYera году}
function WeekToDate(AWeek, AYear: Integer): TDateTime;
begin
  Result := EncodeDate(AYear, 1, FirstWeekDate);
  Result := Result + (AWeek - 1) * 7 - ((DayOfWeek(Result) + (7 - FirstWeekDay)) mod 7);
end;

{какой AWeek недели года AYear принадлежит дата ADate}
procedure DateToWeek(ADate: TDateTime; var AWeek, AYear: Word);
var
  Month, Day: Word;
begin
  ADate := ADate - ((DayOfWeek(ADate) - FirstWeekDay + 7) mod 7) + 7 - FirstWeekDate;
  DecodeDate(ADate, AYear, Month, Day);
  AWeek := (Trunc(ADate - EncodeDate(AYear, 1, 1)) div 7) + 1;
end;

end.
