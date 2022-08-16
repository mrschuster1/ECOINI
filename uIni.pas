unit uIni;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  AdvMemo, StdCtrls, ExtCtrls, Menus, Buttons, ExtDlgs, Printers, Advmps,
  advmsqls, advmws, ActnList, System.Actions, AdvCustomComponent, AdvPDFIO,
  AdvMemoPDFIO, AdvMemoActions, ShellAPI, AdvmINIs, UCL.PopupMenu,
  UCL.QuickButton, UCL.CaptionBar, UCL.FontIcons, UCL.Form, UCL.ThemeManager,
  UCL.Classes, UCL.Panel, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl, VCL.TMSFNCToolBar, UCL.Text,
  VCL.Imaging.pngimage, scControls, scExtControls;

type
  TfIniEdit = class(TuForm)
    PrinterSetupDialog1: TPrinterSetupDialog;
    AdvMemoFindDialog1: TAdvMemoFindDialog;
    AdvMemoFindReplaceDialog1: TAdvMemoFindReplaceDialog;
    ActionList1: TActionList;
    AdvMemoCut1: TAdvMemoCut;
    AdvMemoCopy1: TAdvMemoCopy;
    AdvMemoPaste1: TAdvMemoPaste;
    AdvMemoUndo1: TAdvMemoUndo;
    AdvMemoRedo1: TAdvMemoRedo;
    stINI: TAdvINIMemoStyler;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    CaptionBar: TUCaptionBar;
    btnClose: TUQuickButton;
    btnMin: TUQuickButton;
    btnMax: TUQuickButton;
    btnDarkLight: TUQuickButton;
    btnTelaCheia: TUQuickButton;
    ppDarkLight: TUPopupMenu;
    emadosistema1: TMenuItem;
    emaclaro1: TMenuItem;
    emaescuro1: TMenuItem;
    UPanel1: TUPanel;
    UQuickButton1: TUQuickButton;
    UQuickButton10: TUQuickButton;
    UQuickButton2: TUQuickButton;
    UQuickButton3: TUQuickButton;
    UQuickButton4: TUQuickButton;
    UQuickButton5: TUQuickButton;
    UQuickButton7: TUQuickButton;
    UQuickButton8: TUQuickButton;
    UQuickButton9: TUQuickButton;
    UQuickButton6: TUQuickButton;
    UPanel2: TUPanel;
    edt: TAdvMemo;
    ppEdit: TUPopupMenu;
    popupItemCut: TMenuItem;
    popupitemCopy: TMenuItem;
    popupitemPaste: TMenuItem;
    DesfazerCtrlZ1: TMenuItem;
    RefazerCtrlY1: TMenuItem;
    N1: TMenuItem;
    UPanel3: TUPanel;
    procedure spbOpenClick(Sender: TObject);
    procedure spbSaveClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure btnDarkLightClick(Sender: TObject);
    procedure ppDarkLightItemClick(Sender: TObject; Index: Integer);
    procedure btnTelaCheiaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure AdvMemoCopy1Execute(Sender: TObject);
    procedure UQuickButton2Click(Sender: TObject);
    procedure UQuickButton8Click(Sender: TObject);
    procedure UQuickButton10Click(Sender: TObject);
    procedure UQuickButton3Click(Sender: TObject);
    procedure ppEditItemClick(Sender: TObject; Index: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fIniEdit: TfIniEdit;

implementation

{$R *.DFM}

procedure TfIniEdit.spbOpenClick(Sender: TObject);

begin
  if OpenDialog1.Execute then
    edt.Lines.LoadFromFile(OpenDialog1.filename);
end;

procedure TfIniEdit.spbSaveClick(Sender: TObject);
begin
  edt.Lines.SaveToFile('c:\ecosis\windows\eco.ini');
end;

procedure TfIniEdit.AdvMemoCopy1Execute(Sender: TObject);
begin
  AdvMemoPaste1.Execute
end;

procedure TfIniEdit.btnDarkLightClick(Sender: TObject);
begin
  ppDarkLight.PopupAtMouse

end;

procedure TfIniEdit.btnTelaCheiaClick(Sender: TObject);
begin
  FullScreen := not FullScreen;
  if FullScreen then
    btnTelaCheia.Caption := UF_EXIT_FULL_SCREEN
  else
    btnTelaCheia.Caption := UF_FULL_SCREEN;
end;

procedure TfIniEdit.edtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (Key = ord('O')) then
  begin
    if OpenDialog1.Execute then
    begin
      if FileExists(OpenDialog1.filename) then
        edt.Lines.LoadFromFile(OpenDialog1.filename);
    end;
  end;

  if (ssCtrl in Shift) and (Key = ord('S')) then
  begin
    if SaveDialog1.Execute then
      edt.Lines.SaveToFile(OpenDialog1.filename);
  end;
end;

procedure TfIniEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree
end;

procedure TfIniEdit.FormCreate(Sender: TObject);
begin
  edt.Lines.LoadFromFile('c:\ecosis\windows\eco.ini');
  case ThemeManager.Theme of
    TUTheme(0):
      begin
        edt.bkcolor := clwhite;
        edt.Font.Color := clblack;
      end;
    TUTheme(1):
      begin
        edt.bkcolor := $00292929;
        edt.Font.Color := clwhite;
      end;
  end;
  stINI.NumberStyle.TextColor := edt.Font.Color
end;

procedure TfIniEdit.SpeedButton3Click(Sender: TObject);
begin
  if PrinterSetupDialog1.Execute then
    edt.Print;
end;

procedure TfIniEdit.UQuickButton10Click(Sender: TObject);
begin
  AdvMemoRedo1.Execute
end;

procedure TfIniEdit.UQuickButton2Click(Sender: TObject);
begin
  AdvMemoCut1.Execute
end;

procedure TfIniEdit.UQuickButton3Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    edt.Lines.SaveToFile(SaveDialog1.filename);
end;

procedure TfIniEdit.UQuickButton8Click(Sender: TObject);
begin
  AdvMemoUndo1.Execute
end;

procedure TfIniEdit.SpeedButton1Click(Sender: TObject);
begin
  AdvMemoFindDialog1.Execute;
end;

procedure TfIniEdit.SpeedButton2Click(Sender: TObject);
begin
  AdvMemoFindReplaceDialog1.Execute;
end;

procedure TfIniEdit.Label4Click(Sender: TObject);
begin
  ShellExecute(handle, 'open', 'https://tmssoftware.com/site/tmsvcluipack.asp',
    nil, nil, SW_SHOWNORMAL);
end;

procedure TfIniEdit.ppDarkLightItemClick(Sender: TObject; Index: Integer);
begin
  setfocus;
  ThemeManager.ThemeType := TUThemeType(index);
  case index of
    0:
      case ThemeManager.Theme of
        TUTheme(0):
          begin
            edt.bkcolor := clwhite;
            edt.Font.Color := clblack;
          end;
        TUTheme(1):
          begin
            edt.bkcolor := $00292929;
            edt.Font.Color := clwhite;
          end;
      end;
    1:
      begin
        edt.bkcolor := clwhite;
        edt.Font.Color := clblack;
      end;

    2:
      begin
        edt.bkcolor := $00292929;
        edt.Font.Color := clwhite;
      end;
  end;
  stINI.NumberStyle.TextColor := edt.Font.Color
end;

procedure TfIniEdit.ppEditItemClick(Sender: TObject; Index: Integer);
begin
  Self.setfocus;
  case Index of
    0: // COPIAR
      edt.CopyToClipboard;
    1: // COLAR
      edt.PasteFromClipboard;
    2: // CORTAR
      edt.CutToClipboard;
    3: // DESFAZER
      edt.Undo;
    4: // REFAZER
      edt.Redo;
    5: // SELECIONAR TUDO
      edt.SelectAll
  end;
end;

end.
