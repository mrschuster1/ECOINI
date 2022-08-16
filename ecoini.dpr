program ecoini;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {fMain},
  uIni in 'uIni.pas' {fIniEdit};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
