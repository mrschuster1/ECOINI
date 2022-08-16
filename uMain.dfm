object fMain: TfMain
  Left = 0
  Top = 0
  Margins.Bottom = 10
  Caption = 'EcoIni'
  ClientHeight = 300
  ClientWidth = 488
  Color = clBtnFace
  TransparentColorValue = 1315860
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Font.Quality = fqClearTypeNatural
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TUPanel
    Left = 0
    Top = 113
    Width = 488
    Height = 180
    Align = alClient
    Color = 15132390
    showcaption = True
    TabOrder = 1
    CustomBackColor.Enabled = False
    CustomBackColor.Color = 15132390
    CustomBackColor.LightColor = 15132390
    CustomBackColor.DarkColor = 2039583
    ExplicitHeight = 188
    object btnConectarSupervisor: TUButton
      Left = 0
      Top = -4
      Width = 488
      Height = 46
      HelpType = htKeyword
      Align = alBottom
      Caption = 'Conectar como Supervisor'
      PopupMenu = ppUser
      OnClick = btnConectarSupervisorClick
      CustomBackColor.Enabled = True
      CustomBackColor.LightNone = 2387408
      CustomBackColor.LightHover = 4293854
      CustomBackColor.LightPress = 1989292
      CustomBackColor.LightSelectedNone = 1922983
      CustomBackColor.LightSelectedHover = 4293854
      CustomBackColor.LightSelectedPress = 1989292
      CustomBackColor.DarkNone = 2387408
      CustomBackColor.DarkHover = 4293854
      CustomBackColor.DarkPress = 1989292
      CustomBackColor.DarkSelectedNone = 1922983
      CustomBackColor.DarkSelectedHover = 4293854
      CustomBackColor.DarkSelectedPress = 1989292
      CustomBorderColor.Enabled = False
      CustomBorderColor.LightNone = 13421772
      CustomBorderColor.LightHover = 8026746
      CustomBorderColor.LightPress = 10066329
      CustomBorderColor.LightSelectedNone = 8026746
      CustomBorderColor.LightSelectedHover = 8026746
      CustomBorderColor.LightSelectedPress = 10066329
      CustomBorderColor.DarkNone = 3355443
      CustomBorderColor.DarkHover = 8750469
      CustomBorderColor.DarkPress = 6710886
      CustomBorderColor.DarkSelectedNone = 8750469
      CustomBorderColor.DarkSelectedHover = 8750469
      CustomBorderColor.DarkSelectedPress = 6710886
      ExplicitLeft = 30
      ExplicitTop = -22
    end
    object btnConectarUsuario: TUButton
      Left = 0
      Top = 42
      Width = 488
      Height = 46
      Align = alBottom
      Caption = 'Conectar como outro usu'#225'rio'
      OnClick = btnConectarUsuarioClick
      CustomBackColor.Enabled = False
      CustomBackColor.LightNone = 13421772
      CustomBackColor.LightHover = 13421772
      CustomBackColor.LightPress = 10066329
      CustomBackColor.LightSelectedNone = 13421772
      CustomBackColor.LightSelectedHover = 13421772
      CustomBackColor.LightSelectedPress = 10066329
      CustomBackColor.DarkNone = 3355443
      CustomBackColor.DarkHover = 3355443
      CustomBackColor.DarkPress = 6710886
      CustomBackColor.DarkSelectedNone = 3355443
      CustomBackColor.DarkSelectedHover = 3355443
      CustomBackColor.DarkSelectedPress = 6710886
      CustomBorderColor.Enabled = False
      CustomBorderColor.LightNone = 13421772
      CustomBorderColor.LightHover = 8026746
      CustomBorderColor.LightPress = 10066329
      CustomBorderColor.LightSelectedNone = 8026746
      CustomBorderColor.LightSelectedHover = 8026746
      CustomBorderColor.LightSelectedPress = 10066329
      CustomBorderColor.DarkNone = 3355443
      CustomBorderColor.DarkHover = 8750469
      CustomBorderColor.DarkPress = 6710886
      CustomBorderColor.DarkSelectedNone = 8750469
      CustomBorderColor.DarkSelectedHover = 8750469
      CustomBorderColor.DarkSelectedPress = 6710886
      ExplicitWidth = 489
    end
    object btnINIEditor: TUButton
      Left = 0
      Top = 88
      Width = 488
      Height = 46
      Align = alBottom
      Caption = 'Abrir editor de INI'
      OnClick = btnIniEditorClick
      CustomBackColor.Enabled = False
      CustomBackColor.LightNone = 13421772
      CustomBackColor.LightHover = 13421772
      CustomBackColor.LightPress = 10066329
      CustomBackColor.LightSelectedNone = 13421772
      CustomBackColor.LightSelectedHover = 13421772
      CustomBackColor.LightSelectedPress = 10066329
      CustomBackColor.DarkNone = 3355443
      CustomBackColor.DarkHover = 3355443
      CustomBackColor.DarkPress = 6710886
      CustomBackColor.DarkSelectedNone = 3355443
      CustomBackColor.DarkSelectedHover = 3355443
      CustomBackColor.DarkSelectedPress = 6710886
      CustomBorderColor.Enabled = False
      CustomBorderColor.LightNone = 13421772
      CustomBorderColor.LightHover = 8026746
      CustomBorderColor.LightPress = 10066329
      CustomBorderColor.LightSelectedNone = 8026746
      CustomBorderColor.LightSelectedHover = 8026746
      CustomBorderColor.LightSelectedPress = 10066329
      CustomBorderColor.DarkNone = 3355443
      CustomBorderColor.DarkHover = 8750469
      CustomBorderColor.DarkPress = 6710886
      CustomBorderColor.DarkSelectedNone = 8750469
      CustomBorderColor.DarkSelectedHover = 8750469
      CustomBorderColor.DarkSelectedPress = 6710886
      ExplicitWidth = 489
    end
    object btnDescartar: TUButton
      Left = 0
      Top = 134
      Width = 488
      Height = 46
      Align = alBottom
      Caption = 'Descartar'
      OnClick = actCloseExecute
      CustomBackColor.Enabled = False
      CustomBackColor.LightNone = 13421772
      CustomBackColor.LightHover = 13421772
      CustomBackColor.LightPress = 10066329
      CustomBackColor.LightSelectedNone = 13421772
      CustomBackColor.LightSelectedHover = 13421772
      CustomBackColor.LightSelectedPress = 10066329
      CustomBackColor.DarkNone = 3355443
      CustomBackColor.DarkHover = 3355443
      CustomBackColor.DarkPress = 6710886
      CustomBackColor.DarkSelectedNone = 3355443
      CustomBackColor.DarkSelectedHover = 3355443
      CustomBackColor.DarkSelectedPress = 6710886
      CustomBorderColor.Enabled = False
      CustomBorderColor.LightNone = 13421772
      CustomBorderColor.LightHover = 8026746
      CustomBorderColor.LightPress = 10066329
      CustomBorderColor.LightSelectedNone = 8026746
      CustomBorderColor.LightSelectedHover = 8026746
      CustomBorderColor.LightSelectedPress = 10066329
      CustomBorderColor.DarkNone = 3355443
      CustomBorderColor.DarkHover = 8750469
      CustomBorderColor.DarkPress = 6710886
      CustomBorderColor.DarkSelectedNone = 8750469
      CustomBorderColor.DarkSelectedHover = 8750469
      CustomBorderColor.DarkSelectedPress = 6710886
      ExplicitWidth = 489
    end
    object boxList: TUScrollBox
      Left = 0
      Top = 0
      Width = 488
      Height = 0
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 0
      Margins.Bottom = 0
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      Align = alClient
      TabOrder = 4
      TabStop = True
      AniSet.AniKind = akOut
      AniSet.AniFunctionKind = afkQuintic
      AniSet.DelayStartTime = 0
      AniSet.Duration = 120
      AniSet.Step = 11
      CustomBackColor.Enabled = False
      CustomBackColor.Color = 15132390
      CustomBackColor.LightColor = 15132390
      CustomBackColor.DarkColor = 2039583
    end
  end
  object cBar: TUCaptionBar
    Left = 0
    Top = 0
    Width = 488
    Height = 113
    Caption = '   '
    Color = 10246443
    TabOrder = 0
    CustomBackColor.Enabled = True
    CustomBackColor.Color = 10114859
    CustomBackColor.LightColor = 10114859
    CustomBackColor.DarkColor = 10114859
    object lblIconInfo: TUText
      AlignWithMargins = True
      Left = 30
      Top = 51
      Width = 27
      Height = 62
      Hint = 
        'Vers'#245'es do banco de dados e execut'#225'vel do sistema n'#227'o compat'#237'vei' +
        's.'
      Margins.Left = 30
      Margins.Top = 10
      Margins.Bottom = 0
      Align = alLeft
      BiDiMode = bdRightToLeft
      Caption = #59718
      Color = 196
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Segoe MDL2 Assets'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitHeight = 27
    end
    object pnlConfirmação: TUPanel
      AlignWithMargins = True
      Left = 0
      Top = 20
      Width = 488
      Height = 21
      Margins.Left = 0
      Margins.Top = 20
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Color = 15132390
      ParentBackground = True
      showcaption = True
      TabOrder = 0
      CustomBackColor.Enabled = False
      CustomBackColor.Color = 15132390
      CustomBackColor.LightColor = 15132390
      CustomBackColor.DarkColor = 2039583
      Transparent = True
      ExplicitWidth = 456
      object btnClose: TUQuickButton
        AlignWithMargins = True
        Left = 441
        Top = 0
        Width = 17
        Height = 21
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 30
        Margins.Bottom = 0
        Align = alRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe MDL2 Assets'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        ParentFont = False
        CustomBackColor.Enabled = False
        CustomBackColor.Color = clBlack
        CustomBackColor.LightColor = 13619151
        CustomBackColor.DarkColor = 3947580
        ButtonStyle = qbsQuit
        Caption = #57610
        ExplicitLeft = 416
        ExplicitTop = 20
        ExplicitHeight = 17
      end
      object lblBanco: TUText
        AlignWithMargins = True
        Left = 30
        Top = 0
        Width = 300
        Height = 21
        Margins.Left = 30
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Deseja conectar este banco ao sistema eco?'
        Color = 10246443
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        ParentColor = False
        ParentFont = False
        ExplicitTop = 20
      end
    end
    object pnlBanco: TUPanel
      AlignWithMargins = True
      Left = 60
      Top = 41
      Width = 381
      Height = 67
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 5
      Align = alLeft
      Color = 15132390
      ParentBackground = True
      showcaption = True
      TabOrder = 1
      CustomBackColor.Enabled = False
      CustomBackColor.Color = 15132390
      CustomBackColor.LightColor = 15132390
      CustomBackColor.DarkColor = 2039583
      Transparent = True
      ExplicitHeight = 46
      object pnlCaminho: TUPanel
        AlignWithMargins = True
        Left = 0
        Top = 5
        Width = 381
        Height = 23
        Margins.Left = 0
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Color = 15132390
        ParentBackground = True
        showcaption = True
        TabOrder = 0
        CustomBackColor.Enabled = False
        CustomBackColor.Color = 15132390
        CustomBackColor.LightColor = 15132390
        CustomBackColor.DarkColor = 2039583
        Transparent = True
        object lblCaminho: TUHyperlink
          AlignWithMargins = True
          Left = 10
          Top = 6
          Width = 371
          Height = 17
          Hint = 'Abrir local do arquivo'
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alBottom
          AutoSize = False
          Caption = 'c:\ecosis\dados\ecodados.eco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = lblCaminhoClick
          CustomTextColor.Enabled = True
          CustomTextColor.LightNone = clBlack
          CustomTextColor.LightHover = clGray
          CustomTextColor.LightPress = clMedGray
          CustomTextColor.LightSelectedNone = clBlack
          CustomTextColor.LightSelectedHover = clGray
          CustomTextColor.LightSelectedPress = clMedGray
          CustomTextColor.DarkNone = clWhite
          CustomTextColor.DarkHover = clMedGray
          CustomTextColor.DarkPress = clGray
          CustomTextColor.DarkSelectedNone = clWhite
          CustomTextColor.DarkSelectedHover = clWhite
          CustomTextColor.DarkSelectedPress = clGray
          ExplicitLeft = 160
          ExplicitWidth = 70
        end
      end
      object pnlTamanho: TUPanel
        AlignWithMargins = True
        Left = 0
        Top = 52
        Width = 381
        Height = 15
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Color = 15132390
        ParentBackground = True
        showcaption = True
        TabOrder = 1
        CustomBackColor.Enabled = False
        CustomBackColor.Color = 15132390
        CustomBackColor.LightColor = 15132390
        CustomBackColor.DarkColor = 2039583
        Transparent = True
        ExplicitTop = 28
        ExplicitHeight = 18
        object lblTamanho: TUText
          AlignWithMargins = True
          Left = 10
          Top = -2
          Width = 368
          Height = 17
          Margins.Left = 10
          Margins.Top = 5
          Margins.Bottom = 0
          Align = alBottom
          Caption = '2,3 GB'
          Color = 10509099
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          ExplicitWidth = 37
        end
      end
      object pnlVersao: TUPanel
        AlignWithMargins = True
        Left = 0
        Top = 33
        Width = 381
        Height = 14
        Margins.Left = 0
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alTop
        Color = 15132390
        ParentBackground = True
        showcaption = True
        TabOrder = 2
        CustomBackColor.Enabled = False
        CustomBackColor.Color = 15132390
        CustomBackColor.LightColor = 15132390
        CustomBackColor.DarkColor = 2039583
        Transparent = True
        ExplicitTop = 100
        object lblVersao: TUText
          AlignWithMargins = True
          Left = 10
          Top = -3
          Width = 368
          Height = 17
          Hint = 
            'Vers'#245'es do banco de dados e execut'#225'vel do sistema n'#227'o compat'#237'vei' +
            's.'
          Margins.Left = 10
          Margins.Top = 10
          Margins.Bottom = 0
          Align = alBottom
          Caption = '1.4.511 (Vers'#227'o do execut'#225'vel: 1.4.511.31497)'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          Transparent = True
          ExplicitWidth = 263
        end
      end
    end
  end
  object load: TscGPActivityBar
    Left = 0
    Top = 293
    Width = 488
    Height = 7
    Align = alBottom
    FluentUIOpaque = False
    TabOrder = 2
    Visible = False
    TransparentBackground = True
    ExplicitLeft = -30
    ExplicitTop = 194
  end
  object ActionList1: TActionList
    Left = 304
    Top = 160
    object actClose: TAction
      Caption = 'close'
      SecondaryShortCuts.Strings = (
        'Alt + D')
      ShortCut = 27
      OnExecute = actCloseExecute
    end
    object actConectar: TAction
      Caption = 'actConectar'
      SecondaryShortCuts.Strings = (
        'Alt + C')
      OnExecute = actConectarExecute
    end
    object actAbrirINI: TAction
      Caption = 'actAbrirINI'
      OnExecute = actAbrirINIExecute
    end
  end
  object fbclient: TFDPhysFBDriverLink
    Left = 400
    Top = 200
  end
  object conexao: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Port=3050'
      'DriverID=FB')
    LoginPrompt = False
    Left = 400
    Top = 152
  end
  object cursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 400
    Top = 104
  end
  object sql: TFDQuery
    AfterOpen = sqlAfterOpen
    Connection = conexao
    SQL.Strings = (
      'select'
      '      CODIGO,'
      '      NOMEFANTASIA,'
      '      RAZAOSOCIAL,'
      '      CPFCNPJ'
      ''
      'from'
      '    TGEREMPRESA'
      '  order by'
      '      1 asc  ')
    Left = 360
    Top = 176
    object sqlCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object sqlNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Required = True
      Size = 40
    end
    object sqlRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Required = True
      Size = 60
    end
    object sqlCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Origin = 'CPFCNPJ'
      Required = True
      Size = 14
    end
  end
  object ppUser: TUPopupMenu
    AniSet.AniKind = akOut
    AniSet.AniFunctionKind = afkQuartic
    AniSet.DelayStartTime = 0
    AniSet.Duration = 120
    AniSet.Step = 12
    CustomBackColor.Enabled = False
    CustomBackColor.Color = 15132390
    CustomBackColor.LightColor = 15132390
    CustomBackColor.DarkColor = 2039583
    ItemWidth = 500
    OnItemClick = ppUserItemClick
    Left = 422
    Top = 238
  end
  object sqlUsuarios: TFDQuery
    AfterOpen = sqlUsuariosAfterOpen
    Connection = conexao
    SQL.Strings = (
      'select'
      '      U.USUARIO,'
      '      U.NOME'
      'from'
      '    TGERUSUARIO U'
      '  where'
      '      U.ATIVO = '#39'S'#39' and'
      '      U.USUARIO <> '#39'SUPERVISOR'#39
      '  order by'
      '      U.DATAHORAALTERACAO asc  ')
    Left = 336
    Top = 232
    object sqlUsuariosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object sqlUsuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 40
    end
  end
end
