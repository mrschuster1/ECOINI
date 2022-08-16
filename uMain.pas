unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Registry, Winapi.shlobj, System.IOUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inifiles, scControls, scModernControls,
  Vcl.WinXCtrls, scGPFontControls, scGPControls, Vcl.StdCtrls, StrUtils,
  Vcl.ExtCtrls, UCL.CaptionBar, UCL.Form, UCL.Text, UCL.Panel, UCL.Classes,
  UCL.Button, System.Actions, Vcl.ActnList, UCL.RadioButton, UCL.FontIcons,
  UCL.QuickButton, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, UCL.ScrollBox, UCL.ListButton, MATH,
  UCL.Hyperlink, shellapi, UCL.DragReorder, Vcl.Menus, UCL.PopupMenu;

type
  TfMain = class(TuForm)
    pnlMain: TUPanel;
    cBar: TUCaptionBar;
    btnConectarSupervisor: TUButton;
    ActionList1: TActionList;
    actClose: TAction;
    pnlConfirmação: TUPanel;
    btnClose: TUQuickButton;
    lblBanco: TUText;
    lblIconInfo: TUText;
    pnlBanco: TUPanel;
    pnlCaminho: TUPanel;
    pnlTamanho: TUPanel;
    lblTamanho: TUText;
    conexao: TFDConnection;
    fbclient: TFDPhysFBDriverLink;
    cursor: TFDGUIxWaitCursor;
    sql: TFDQuery;
    sqlCODIGO: TStringField;
    sqlNOMEFANTASIA: TStringField;
    sqlRAZAOSOCIAL: TStringField;
    sqlCPFCNPJ: TStringField;
    lblCaminho: TUHyperlink;
    actConectar: TAction;
    actAbrirINI: TAction;
    pnlVersao: TUPanel;
    lblVersao: TUText;
    ppUser: TUPopupMenu;
    sqlUsuarios: TFDQuery;
    sqlUsuariosUSUARIO: TStringField;
    sqlUsuariosNOME: TStringField;
    btnConectarUsuario: TUButton;
    btnINIEditor: TUButton;
    btnDescartar: TUButton;
    load: TscGPActivityBar;
    boxList: TUScrollBox;
    procedure FormCreate(Sender: TObject);
    procedure btnSimClick(supervisor: boolean);
    procedure btnIniEditorClick(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    function TamanhoArquivo(Arquivo: string): DOUBLE;
    procedure sqlAfterOpen(DataSet: TDataSet);
    function ConvertBytes(Bytes: Int64): string;
    function GetFileSize(FileName: string): Int64;
    procedure FormShow(Sender: TObject);
    procedure lblCaminhoClick(Sender: TObject);
    procedure actConectarExecute(Sender: TObject);
    procedure actAbrirINIExecute(Sender: TObject);
    procedure EscolheEmpresa(Sender: TObject);
    function GetBuildInfo(Prog: string): string;
    function FormataCNPJ(CNPJ: string): string;
    procedure btnConectarUsuarioClick(Sender: TObject);
    procedure ppUserItemClick(Sender: TObject; Index: Integer);
    procedure sqlUsuariosAfterOpen(DataSet: TDataSet);
    procedure btnConectarSupervisorClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;
  empresa, usuario: string;

implementation

{$R *.dfm}

uses uIni;

procedure TfMain.btnSimClick(supervisor: boolean);
var
  ArquivoINI: TIniFile;
begin
  if paramcount = 1 then
  begin
    if AnsiUpperCase((rightstr(ParamStr(1), 3))) = 'ECO' then
    begin
      // lblBanco.Visible := false;
      // btnSim.Visible := false;
      // btnNao.Visible := false;
      // btnIniEditor.Visible:=FALSE;
      // height := height * 2;
      load.Activate;
      load.Show;
      ArquivoINI := TIniFile.Create('C:\ecosis\windows\eco.ini');
      ArquivoINI.WriteString('preferencias', 'empresa', empresa);
      if supervisor then
        ArquivoINI.WriteString('preferencias', 'usuario', 'supervisor')
      else
        ArquivoINI.WriteString('preferencias', 'usuario', usuario);
      ArquivoINI.WriteString('windows', 'dados', ParamStr(1));
      ArquivoINI.Free;
      showmessage('Banco conectado com sucesso!' + slinebreak +
        'Abrindo o sistema Eco.');
      WinExec(PAnsiChar('c:\ecosis\windows\eco.exe'), SW_SHOWNORMAL);
      close
    end;
    if AnsiUpperCase((rightstr(ParamStr(1), 3))) = 'FDB' then
    begin
      // lblBanco.Visible := false;
      // btnSim.Visible := false;
      // btnNao.Visible := false;
      // btnIniEditor.Visible:=FALSE;
      // height := height * 2;
      load.Activate;
      load.Show;
      ArquivoINI := TIniFile.Create('C:\ecosis\windows\eco.ini');
      ArquivoINI.WriteString('windows', 'dados', ParamStr(1));
      ArquivoINI.WriteString('preferencias', 'empresa', empresa);
      if supervisor then
        ArquivoINI.WriteString('preferencias', 'usuario', 'supervisor')
      else
        ArquivoINI.WriteString('preferencias', 'usuario', usuario);

      ArquivoINI.Free;
      showmessage('Banco conectado com sucesso!' + slinebreak +
        'Abrindo o sistema Eco.');
      WinExec(PAnsiChar('c:\ecosis\windows\eco.exe'), SW_SHOWNORMAL);
      close
    end;
  end
  else
    close;
  load.deActivate;
  load.Hide
end;

function TfMain.ConvertBytes(Bytes: Int64): string;
const
  Description: Array [0 .. 8] of string = ('Bytes', 'KB', 'MB', 'GB', 'TB',
    'PB', 'EB', 'ZB', 'YB');
var
  i: Integer;
begin
  i := 0;

  while Bytes > Power(1024, i + 1) do
    Inc(i);

  Result := FormatFloat('###0.##', Bytes / Power(1024, i)) + #32 +
    Description[i];
end;

procedure TfMain.EscolheEmpresa(Sender: TObject);
begin
  empresa := (Sender as tulistbutton).FontIcon
end;

function TfMain.FormataCNPJ(CNPJ: string): string;
begin
  Result := Copy(CNPJ, 1, 2) + '.' + Copy(CNPJ, 3, 3) + '.' + Copy(CNPJ, 6, 3) +
    '/' + Copy(CNPJ, 9, 4) + '-' + Copy(CNPJ, 13, 2);
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
  with TRegistry.Create do
    try
      RootKey := HKEY_LOCAL_MACHINE;
      if OpenKey('\Software\Classes\.eco', true) then
        WriteString('', 'Abrir com Eco');
      if OpenKey('\Software\Classes\.fdb', true) then
        WriteString('', 'Abrir com Eco');
      if OpenKey('\Software\Classes\.fdb', true) then
        WriteString('', 'Abrir com eco');
      if OpenKey('\Software\Classes\Abrir com Eco', true) then
        WriteString('', 'Abrir com eco');
      if OpenKey('\Software\Classes\Abrir com Eco\DefaultIcon', true) then
        WriteString('', 'C:\ecoini.exe');
      if OpenKey('\Software\Classes\Abrir com Eco\shell\open\command', true)
      then
        WriteString('', 'C:\ecoini.exe "%1"');
    finally
      Free;
    end;
  SHChangeNotify(SHCNE_ASSOCCHANGED, SHCNF_IDLIST, nil, nil);

  with TRegistry.Create do
    try
      RootKey := HKEY_CLASSES_ROOT;
      if OpenKey('\.eco\shell\Abrir com Eco\Command', true) then
        WriteString('', 'C:\ecoini.exe %0');
      if OpenKey('\.eco\shell\Abrir com Eco\DefaultIcon', true) then
        WriteString('', 'C:\ecoini.exe');
      if OpenKey('\.fdb\shell\Abrir com Eco\Command', true) then
        WriteString('', 'C:\ecoini.exe %0');
      if OpenKey('\.fdb\shell\Abrir com Eco\DefaultIcon', true) then
        WriteString('', 'C:\ecoini.exe');
    finally
      Free;
    end;
  SHChangeNotify(SHCNE_ASSOCCHANGED, SHCNF_IDLIST, nil, nil);

  //

end;

procedure TfMain.FormShow(Sender: TObject);
var
  ArquivoINI: TIniFile;
  versao: TFDQuery;
begin

  ArquivoINI := TIniFile.Create('C:\ecosis\windows\eco.ini');
  empresa := ArquivoINI.readString('preferencias', 'empresa', '01');
  usuario := ArquivoINI.readString('preferencias', 'usuario', 'supervisor');
  ArquivoINI.Free;
  lblTamanho.Hint := 'Kilobyte: KB / KByte = 1024 bytes' + slinebreak +
    slinebreak + 'Megabyte: MB / MByte = 1024 kilobytes' + slinebreak +
    slinebreak + 'Gigabyte: GB / GByte = 1024 megabytes ' + slinebreak +
    slinebreak + 'Terabyte: TB / TByte = 1024 gigabytes ';

  if paramcount < 1 then
  begin
    showmessage('Informe um banco de dados.' + slinebreak +
      'Desconsidere esta mensagem caso seja sua primeira utilização do aplicativo.');
    close;
  end;
  if AnsiUpperCase((rightstr(ParamStr(1), 3))) <> 'ECO' then
    if AnsiUpperCase((rightstr(ParamStr(1), 3))) <> 'FDB' then
    BEGIN
      showmessage('Banco de dados inválido, por favor verifique.');
      close;
    END
    ELSE
    begin
      lblTamanho.caption := ConvertBytes(GetFileSize(ParamStr(1)));
      lblCaminho.caption := ParamStr(1);
      conexao.Params.Database := ParamStr(1);
      conexao.Connected := true;
      versao := TFDQuery.Create(self);
      versao.Connection := conexao;
      versao.sql.Add
        ('select first (1) E.versao from ECO$CTRLSCRIPTS E order by E.IDSCRIPT desc');
      versao.Open;
      lblVersao.caption := 'Versão: ' + versao['VERSAO'] +
        ' (Versão do executável: ' +
        GetBuildInfo('c:\ecosis\windows\eco.exe') + ')';
      if not ContainsText(versao['VERSAO'],
        LeftStr(GetBuildInfo('c:\ecosis\windows\eco.exe'), 7)) then
      begin
        lblVersao.Transparent := false;
        lblIconInfo.caption := '';
        lblIconInfo.ShowHint := true;
        lblVersao.ShowHint := true;
      end;
      versao.Free;
      sql.Open;
      sqlUsuarios.Open;
    end
  ELSE
  begin
    lblTamanho.caption := ConvertBytes(GetFileSize(ParamStr(1)));
    lblCaminho.caption := ParamStr(1);
    conexao.Params.Database := ParamStr(1);
    conexao.Connected := true;
    versao := TFDQuery.Create(self);
    versao.Connection := conexao;
    versao.sql.Add
      ('select first (1) E.versao from ECO$CTRLSCRIPTS E order by E.IDSCRIPT desc');
    versao.Open;
    lblVersao.caption := 'Versão: ' + versao['VERSAO'] +
      ' (Versão do executável: ' +
      GetBuildInfo('c:\ecosis\windows\eco.exe') + ')';
    if not ContainsText(versao['VERSAO'],
      LeftStr(GetBuildInfo('c:\ecosis\windows\eco.exe'), 7)) then
    begin
      lblVersao.Transparent := false;
      lblIconInfo.caption := '';
      lblIconInfo.ShowHint := true;
      lblVersao.ShowHint := true;
    end;
    versao.Free;
    sql.Open;
    sqlUsuarios.Open;
  end;
end;

function TfMain.GetBuildInfo(Prog: string): string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
  V1, V2, V3, V4: Word;
begin
  try
    VerInfoSize := GetFileVersionInfoSize(PChar(Prog), Dummy);
    GetMem(VerInfo, VerInfoSize);
    GetFileVersionInfo(PChar(Prog), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
    with (VerValue^) do
    begin
      V1 := dwFileVersionMS shr 16;
      V2 := dwFileVersionMS and $FFFF;
      V3 := dwFileVersionLS shr 16;
      V4 := dwFileVersionLS and $FFFF;
    end;
    FreeMem(VerInfo, VerInfoSize);
    Result := Format('%d.%d.%d.%d', [V1, V2, V3, V4]);
  except
    Result := '1.0.0';
  end;
end;

function TfMain.GetFileSize(FileName: string): Int64;
var
  sr: TSearchRec;
begin
  if FindFirst(FileName, faAnyFile, sr) <> 0 then
    EXIT(-1);
  try
    Result := Int64(sr.FindData.nFileSizeHigh) shl Int64(32) +
      Int64(sr.FindData.nFileSizeLow);
  finally
    System.SysUtils.FindClose(sr);
  end;
end;

procedure TfMain.lblCaminhoClick(Sender: TObject);
begin
  ShellExecute(0, 'open', PChar('explorer.exe'),
    PChar('/n, /select,' + lblCaminho.caption), nil,
    // Se nao funcionar, precisa por o caminho do Windows no parâmetro Directory >> PChar('C:\WINDOWS\'),
    SW_SHOWMAXIMIZED);
end;

procedure TfMain.ppUserItemClick(Sender: TObject; Index: Integer);
var
  user: TFDQuery;
begin
  setfocus;
  // user := TFDQuery.Create(self);
  // user.Connection := conexao;
  // user.sql.Add('select');
  usuario := ppUser.Items[ppUser.Items.COUNT - index - 1].Hint;
  btnSimClick(false)
end;

procedure TfMain.sqlAfterOpen(DataSet: TDataSet);
var
  Item: tulistbutton;
  i: Integer;
begin
  sql.last;
  boxList.ClearBox;
  for i := 0 to sql.RecordCount - 1 do
  begin
    Item := tulistbutton.Create(boxList);
    Item.Align := altop;
    Item.caption := sql['NOMEFANTASIA'];
    Item.Font.Name := 'Segoe UI';
    Item.FontIcon := sql['CODIGO'];
    Item.ListStyle := lsBottomDetail;
    Item.IconFonT.Name := 'Segoe UI';
    Item.IconFonT.Quality := fqClearTypeNatural;
    Item.Font.Quality := fqClearTypeNatural;
    Item.Height := 55;
    Item.Detail := FormataCNPJ(sql['CPFCNPJ']) + ' - ' + sql['RAZAOSOCIAL'];
    Item.OnClick := EscolheEmpresa;
    Item.SelectMode := smSelect;
    Height := Height + Item.Height;
    Item.Parent := boxList;
    sql.prior
  end;
  if 340 + (sql.RecordCount * 55) > SCREEN.Height then
    Height := Height + (sql.RecordCount * 55) - 55;
  for i := 0 to boxList.ControlCOUNT - 1 do
    if boxList.Controls[i] is tulistbutton then
      if (boxList.Controls[i] as tulistbutton).FontIcon = empresa then
        (boxList.Controls[i] as tulistbutton).Selected := true;
  if empresa.ToInteger > boxList.ControlCOUNT - 1 then
    (boxList.Controls[1] as tulistbutton).Selected := true;
end;

procedure TfMain.sqlUsuariosAfterOpen(DataSet: TDataSet);
var
  Item: TMenuItem;
begin
  sqlUsuarios.first;
  if sqlUsuarios.RecordCount = 0 then
  BEGIN
    btnConectarUsuario.Visible := false;
    Height := Height - btnConectarUsuario.Height
  END;
  WHILE NOT sqlUsuarios.EOF DO
  begin
    Item := TMenuItem.Create(ppUser);
    Item.caption := '' + sqlUsuarios['USUARIO'] + '|' + sqlUsuarios['NOME'];
    Item.Hint := sqlUsuarios['USUARIO'];
    ppUser.Items.Add(Item);
    sqlUsuarios.next
  end;
end;

function TfMain.TamanhoArquivo(Arquivo: string): DOUBLE;
begin
  with TFileStream.Create(Arquivo, fmOpenRead or fmShareExclusive) do

    try

      Result := Size;

    finally

      Free;

    end;
end;

procedure TfMain.actAbrirINIExecute(Sender: TObject);
begin
  btnIniEditorClick(self)
end;

procedure TfMain.actCloseExecute(Sender: TObject);
begin
  close
end;

procedure TfMain.actConectarExecute(Sender: TObject);
begin
  btnSimClick(true)
end;

procedure TfMain.btnConectarSupervisorClick(Sender: TObject);
begin
  btnSimClick(true)
end;

procedure TfMain.btnConectarUsuarioClick(Sender: TObject);
begin
  ppUser.PopupAtMouse
end;

procedure TfMain.btnIniEditorClick(Sender: TObject);
begin
  fIniEdit := tfiniedit.Create(self);
  fIniEdit.Showmodal
end;

end.
