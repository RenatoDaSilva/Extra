object FrmConsulta: TFrmConsulta
  Left = 0
  Top = 0
  ClientHeight = 317
  ClientWidth = 641
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMode = pmAuto
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGConsulta: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 32
    Width = 635
    Height = 282
    Align = alClient
    DataSource = DSConsulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGConsultaDrawColumnCell
  end
  object PNEdicao: TPanel
    Left = 0
    Top = 29
    Width = 641
    Height = 288
    Align = alClient
    BevelOuter = bvLowered
    ShowCaption = False
    TabOrder = 1
    Visible = False
    DesignSize = (
      641
      288)
    object DBTXExcluido: TDBText
      Left = 8
      Top = 256
      Width = 75
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      AutoSize = True
      DataField = 'TXEXCLUIDO'
      DataSource = DSConsulta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object DBCBAtivo: TDBCheckBox
      Left = 200
      Top = 26
      Width = 97
      Height = 17
      Caption = 'Ativo'
      DataField = 'STATIVO'
      DataSource = DSConsulta
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object CBConsulta: TCoolBar
    Left = 0
    Top = 0
    Width = 641
    Height = 29
    AutoSize = True
    Bands = <
      item
        Break = False
        Control = DBNConsulta
        ImageIndex = -1
        Width = 414
      end
      item
        Break = False
        Control = CBExibirExcluidos
        ImageIndex = -1
        Width = 217
      end>
    FixedSize = True
    object DBNConsulta: TDBNavigator
      Left = 11
      Top = 0
      Width = 400
      Height = 25
      DataSource = DSConsulta
      TabOrder = 0
    end
    object CBExibirExcluidos: TCheckBox
      Left = 429
      Top = 0
      Width = 208
      Height = 25
      Caption = 'Exibir exclu'#237'dos'
      TabOrder = 1
      OnClick = CBExibirExcluidosClick
    end
  end
  object DSConsulta: TDataSource
    AutoEdit = False
    OnStateChange = DSConsultaStateChange
    Left = 536
    Top = 45
  end
end
