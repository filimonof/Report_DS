unit ReadOIC;

interface

uses
    NOICUtil,OICAccessor,ObjectMap,NOICModel,
    
    SysUtils,Dialogs,Math;

procedure OIC2Array48(var ResultArray:Array of double;ArcFileName, BasePath: string;TILogNum: Integer;oicDate:TDateTime);
function MaxAndHour(var ResultA:Array of string;ResultArray:Array of double):string ;
function MinAndHour(var ResultA:Array of string;ResultArray:Array of double):string ;
function Temperature(var ResultA:Array of string;ResultArray:Array of double):string ;

implementation

procedure OIC2Array48(var ResultArray:Array of double;ArcFileName, BasePath: string;TILogNum: Integer;oicDate:TDateTime);
{Динамические массивы всегда начинаются с 0 !!!}
var
 ArcID: TobjectID;//Идентификатор объекта доступа к ТИ
 DateValue : String;
 LastError: Integer;//Код ошибки
 i,j: Integer;
 TIValue: Double;//Текущее значение ТИ
 TimeStamp, BeginTimeStamp: Cardinal;
begin
 ArcID := InitTIReader(ArcFileName, BasePath);
  if (IsAvailableTIReader(ArcID)) then begin
    ShortDateFormat := 'dd.mm.yyyy';
    DateValue := FormatDateTime(ShortDateFormat,oicDate);
    BeginTimeStamp:= TDateTimeToCTime(StrToDateTime(DateValue + ' 00:00:00'));
    {полчаса добавим в цикле}
    TimeStamp := BeginTimeStamp;
    //ShowMessage(DateTimeToStr(oicDate));
    //ShowMessage(DateValue);
    //ShowMessage(DateTimeToStr(CTimeToTDateTime(BeginTimeStamp)));
    //ShowMessage(DateTimeToStr(StrToDateTime(DateValue + ' 00:00:00')));
    for i := 0 to 47  do begin
      if i=47 then
      begin
      {ловим 00:00:00 сегодняшней даты}
      DateValue := FormatDateTime(ShortDateFormat,oicDate+1);
      TimeStamp := TDateTimeToCTime(StrToDateTime(DateValue + ' 00:00:00'));
      end
      else
      begin
      TimeStamp := TimeStamp+1800;
      //ShowMessage(DateTimeToStr(CTimeToTDateTime(TimeStamp)));
      end;
      //Получить "живое" значение, не используя кэш
      TIValue := GetTIValue(ArcID, TimeStamp, TILogNum, True);
      LastError := GetLastError();
      if (LastError = ERROR_NO) then begin //Проверка на ошибки
        {если без ошибок то пишем в массив}
        ResultArray[i]:=TIValue;
      end else
        ShowMessage(Format('Ошибка доступа к Значению ТИ:',[LastError]));
    end;
  end;
  CloseTIReader(ArcID);//Закрытие архива
end;

function MaxAndHour(var ResultA:Array of string;ResultArray:Array of double):string ;
var
 ValueMax: double;
 i: integer;
const
 HourValue: array [1..48] of string =
 ('00:30','01:00','01:30','02:00','02:30','03:00','03:30','04:00','04:30','05:00',
  '05:30','06:00','06:30','07:00','07:30','08:00','08:30','09:00','09:30','10:00',
  '10:30','11:00','11:30','12:00','12:30','13:00','13:30','14:00','14:30','15:00',
  '15:30','16:00','16:30','17:00','17:30','18:00','18:30','19:00','19:30','20:00',
  '20:30','21:00','21:30','22:00','22:30','23:00','23:30','00:00');
begin
 ValueMax:= MaxValue (ResultArray);
 for i := 1 to 48 do
 begin
  if ResultArray[i-1] = ValueMax then
  begin
   ResultA[0] := IntToStr(i-1);
   ResultA[1] := FloatToStr(ResultArray[i-1])+' ('+HourValue[i]+')';
  end;
 end;
end;

function MinAndHour(var ResultA:Array of string;ResultArray:Array of double):string ;
var
 ValueMin: double;
 i: integer;
const
 HourValue: array [1..48] of string =
 ('00:30','01:00','01:30','02:00','02:30','03:00','03:30','04:00','04:30','05:00',
  '05:30','06:00','06:30','07:00','07:30','08:00','08:30','09:00','09:30','10:00',
  '10:30','11:00','11:30','12:00','12:30','13:00','13:30','14:00','14:30','15:00',
  '15:30','16:00','16:30','17:00','17:30','18:00','18:30','19:00','19:30','20:00',
  '20:30','21:00','21:30','22:00','22:30','23:00','23:30','00:00');
begin
 ValueMin:= MinValue (ResultArray);
 for i := 1 to 48 do
 begin
  if ResultArray[i-1] = ValueMin then
  begin
   ResultA[0] := IntToStr(i-1);
   ResultA[1] := FloatToStr(ResultArray[i-1])+' ('+HourValue[i]+')';
  end;
 end;
end;

function Temperature(var ResultA:Array of string;ResultArray:Array of double):string ;
var
 ValueMax, ValueMin, Temperature: double;
 i,j: integer;
const
 HourValue: array [0..47] of string =
 ('00:30','01:00','01:30','02:00','02:30','03:00','03:30','04:00','04:30','05:00',
  '05:30','06:00','06:30','07:00','07:30','08:00','08:30','09:00','09:30','10:00',
  '10:30','11:00','11:30','12:00','12:30','13:00','13:30','14:00','14:30','15:00',
  '15:30','16:00','16:30','17:00','17:30','18:00','18:30','19:00','19:30','20:00',
  '20:30','21:00','21:30','22:00','22:30','23:00','23:30','00:00');
begin
 ValueMax:= MaxValue (ResultArray);
 ValueMin:= MinValue (ResultArray);
 for i := 0 to 47 do
 begin
  if ResultArray[i] = ValueMax then
  begin
   ResultA[0] := FloatToStr(ResultArray[i])+' ('+HourValue[i]+')';
  end
  else if ResultArray[i] = ValueMin then
  begin
   ResultA[1] := FloatToStr(ResultArray[i])+' ('+HourValue[i]+')';
  end;
 end;
 j:=0;
 Temperature := 0;
 for i := 0 to 47 do
 begin
  if NOT (ResultArray[i] = 999999) then
  begin
   j := j+1;
   Temperature := Temperature+ResultArray[i];
  end;
 end;
 if j=0 then
   ResultA[2] := ''
 else
   ResultA[2] := FloatToStr(Round(Temperature/j));
end;

end.
