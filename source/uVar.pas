unit uVar;

interface

uses ck7GetData;

const
  NAME_PROGRAM = 'Рапортичка (сводные данные)';
  NAME_PROGRAM_SMALL = 'Рапортичка';
  VERSION_PROGRAM = '4.4';

  INT_ENABLED = 1;
  INT_DISABLED = 0;

  COUNT_SERVERS_ACCESS = 2;
  COUNT_SERVERS_SQL = 0;
  COUNT_SERVERS_CK = 1;

  SADM = 'nhbybnhjnjkejk';
  ID_SADM = -666;

  CRYPT_KEY = '&';

  REG_KEY_OPTIONS = '\SOFTWARE\RDURM\Report';
  INI_FILE = 'Report.ini';

type
  recDataBaseCK = record
    Active: Boolean;
    Name: string;
    Server_1: string;
    WinAuth_1: Boolean;
    Login_1: string;
    Pas_1: string;
    Server_2: string;
    WinAuth_2: Boolean;
    Login_2: string;
    Pas_2: string;
    Server_3: string;
    WinAuth_3: Boolean;
    Login_3: string;
    Pas_3: string;
    TimeOut: Integer;
    Pclass: TCK7Data;
  end;

  recDataBaseSQL = record
    Active: Boolean;
    Name: string;
    ServerIP: string;
    NameDB: string;
    Login: string;
    Password: string;
    WinNTAuth: Boolean;
    SavePas: Boolean;
    NameComponents: string;
  end;

  recDataBaseACCESS = record
    Active: Boolean;
    Name: string;
    NameDB: string;
    User: string;
    Password: string;
    NameComponents: string;
  end;

  recSMTPSendMail = record
    Active: Boolean;
    SMTPserver: string;
    SMTPport: string;
    mailbox: string;
    OtKogo: string;
    Subject: string;
    Komu: string;
    FileFormat: string;
    FileTmpDelete: Boolean;
  end;

var
  sPath:        string;
  sTempDir:     string = 'tmp';
  sDirReports:  string = 'reports';

  sRepFile:     string = 'repSD.frf';
  sRepFileETO:  string = 'repETO.frf';
  sRepFileForm: string = 'repFORM.frf';

  bLoged: Boolean = true;

  mServersAccess: array [1..COUNT_SERVERS_ACCESS] of recDataBaseAccess = (
   ( Active: true;
      Name:'Основная';
      NameDB:'Report.mdb';
      User: '';
      Password: '';
      NameComponents:'adcData'),
   ( Active: false;
      Name:'ComandArm';
      NameDB:'';
      User: '';
      Password: '';
      NameComponents:'adcComandARM')
   );
   {
      ( Active: false;
      Name:'GrafMes';
      NameDB:'';
      User: '';
      Password: '';
      NameComponents:'adcGrafMes'),
   }

  mServersCK: array [1..COUNT_SERVERS_CK] of recDataBaseCK = (
    ( Active: true;
      Name: 'CK-2007';
      Server_1: 'oik07-1-mrdv';
      WinAuth_1: true;
      Login_1: 'reader';
      Pas_1: 'reader';
      Server_2: 'oik07-2-mrdv';
      WinAuth_2: true;
      Login_2: 'reader';
      Pas_2: 'reader';
      Server_3: 'oik07-3-mrdv';
      WinAuth_3: true;
      Login_3: 'reader';
      Pas_3: 'reader';
      TimeOut: 30;
      Pclass: nil)
    );

  mAOEOsendmail: recSMTPSendMail =
  (
    Active: false;
    SMTPserver: '172.23.34.8';
    SMTPport: '25';
    mailbox: 'fvv@rdurm.odusv.so-cdu.ru';
    OtKogo: 'Report';
    Subject: 'Отчет по отключениям электротехнического оборудования Мордовского РДУ';
    Komu: 'fvv@rdurm.odusv.so-cdu.ru';
    FileFormat: 'MRDU_AOEO_<%date%>.jpg';
    FileTmpDelete: true;
  );

  mDIRSendMail: recSMTPSendMail =
  (
    Active: false;
    SMTPserver: '172.23.34.8';
    SMTPport: '25';
    mailbox: 'fvv@rdurm.odusv.so-cdu.ru';
    OtKogo: 'Рапортичка';
    Subject: 'Сводные данные';
    Komu: 'fvv@rdurm.odusv.so-cdu.ru';
    FileFormat: 'MRDU_SD_<%date%>.jpg';
    FileTmpDelete: true;
  );

  tiOIKTemper:       TTI = (id: 444;  cat: ckTI);

  tiOIKGenPlan:      TTI = (id: 8;    cat: ckPL);
  tiOIKGenFact:      TTI = (id: 1049; cat: ckTI);
  tiOIKPotrPlan:     TTI = (id: 7;    cat: ckPL);
  tiOIKPotrFact:     TTI = (id: 1051; cat: ckTI);
  { пока рабочая мощность вводится рукми в программе, потом можно брать из СК-2003 }
  tiOIKJobPowerPlan: TTI = (id: 18;   cat: ckPL);
  tiOIKJobPowerFact: TTI = (id: 1042; cat: ckTI);

  tiOIKPSSaransk:    TTI = (id: 60;   cat: ckTI);
  tiOIKPSRuzaevka:   TTI = (id: 19;   cat: ckTI);
  tiOIKPSMoksha:     TTI = (id: 221;  cat: ckTI);
  tiOIKPSKomsomolsk: TTI = (id: 162;  cat: ckTI);
  tiOIKPSTEC:        TTI = (id: 2198;  cat: ckTI);

  //todo : в настройки + узнать ТИ ТЭЦ U
  tiOIKGenTec2PPBR:  TTI = (id: 3;    cat: ckPL);
  tiOIKGenTec4PPBR:  TTI = (id: 4;    cat: ckPL);
  tiOIKGenTecGTPPBR: TTI = (id: 5;    cat: ckPL);
  tiOIKGenTecALLPBR: TTI = (id: 2;    cat: ckPL);
  tiOIKPotrPPBR:     TTI = (id: 1;    cat: ckPL);
  tiOIKSaldoPPBR:    TTI = (id: 6;    cat: ckPL);
  tiOIKGenTecMCPPBR: TTI = (id: 56;    cat: ckPCHAS);

  tiOIKPlanMinTec2:  TTI = (id:   41;    cat: ckPL);
  tiOIKPlanMaxTec2:  TTI = (id:   44;    cat: ckPL);
  tiOIKFactTec2:     TTI = (id: 4630;    cat: ckPV);
  tiOIKPlanMinTecGT: TTI = (id:   67;    cat: ckPL);
  tiOIKPlanMaxTecGT: TTI = (id:   68;    cat: ckPL);
  tiOIKFactTecGT:    TTI = (id: 4620;    cat: ckPV);
  tiOIKPlanMinTecMC: TTI = (id:  283;    cat: ckPL);
  tiOIKPlanMaxTecMC: TTI = (id:  284;    cat: ckPL);
  tiOIKFactTecMC:    TTI = (id: 4491;    cat: ckPV);
  tiOIKPlanMinTec4:  TTI = (id:   40;    cat: ckPL);
  tiOIKPlanMaxTec4:  TTI = (id:   43;    cat: ckPL);
  tiOIKFactTec4:     TTI = (id: 4611;    cat: ckPV);
  tiOIKPlanMinTecYa: TTI = (id:    0;    cat: ckPL);
  tiOIKPlanMaxTecYa: TTI = (id:    0;    cat: ckPL);
  tiOIKFactTecYa:    TTI = (id: 1891;    cat: ckPV);
  tiOIKFactSumm:     TTI = (id: 4498;    cat: ckPV);


  mWeekDay: array[1..7] of string = (
    'Понедельник',
    'Вторник',
    'Среда',
    'Четверг',
    'Пятница',
    'Суббота',
    'Воскресенье'
  );

  mWeekDayShort: array[1..7] of string=('Пн','Вт','Ср','Чт','Пт','Сб','Вс');

  mMonthDay: array[1..12] of string = (
    'Январь',
    'Февраль',
    'Март',
    'Апрель',
    'Май',
    'Июнь',
    'Июль',
    'Август',
    'Сентябрь',
    'Октябрь',
    'Ноябрь',
    'Декабрь'
  );

  mMonthDayRP: array[1..12] of string = (
    'января',
    'февраля',
    'марта',
    'апреля',
    'мая',
    'июня',
    'июля',
    'августа',
    'сентября',
    'октября',
    'ноября',
    'декабря'
  );


implementation

end.

