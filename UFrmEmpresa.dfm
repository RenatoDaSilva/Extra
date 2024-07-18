inherited FrmEmpresa: TFrmEmpresa
  Caption = 'Empresas'
  ClientHeight = 275
  ClientWidth = 531
  ExplicitWidth = 547
  ExplicitHeight = 314
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGConsulta: TDBGrid
    Width = 525
    Height = 240
  end
  inherited PNEdicao: TPanel
    Width = 531
    Height = 246
    ExplicitTop = 21
    ExplicitHeight = 381
    object Label1: TLabel [0]
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBECodigo
    end
    object Label2: TLabel [1]
      Left = 8
      Top = 48
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBENome
    end
    object Label3: TLabel [2]
      Left = 8
      Top = 88
      Width = 25
      Height = 13
      Caption = 'CNPJ'
      FocusControl = DBECNPJ
    end
    object Label4: TLabel [3]
      Left = 258
      Top = 88
      Width = 87
      Height = 13
      Caption = 'Inscri'#231#227'o Estadual'
      FocusControl = DBEIE
    end
    object Label7: TLabel [4]
      Left = 362
      Top = 8
      Width = 69
      Height = 13
      Caption = 'Data Abertura'
    end
    object Label8: TLabel [5]
      Left = 8
      Top = 136
      Width = 91
      Height = 13
      Caption = 'Telefone Comercial'
      FocusControl = DBETelefoneComercial
    end
    object Label9: TLabel [6]
      Left = 147
      Top = 136
      Width = 78
      Height = 13
      Caption = 'Telefone Celular'
      FocusControl = DBETelefoneCelular
    end
    object Label10: TLabel [7]
      Left = 8
      Top = 181
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
      FocusControl = DBEObs
    end
    object Label11: TLabel [8]
      Left = 286
      Top = 136
      Width = 28
      Height = 13
      Caption = 'E-mail'
      FocusControl = DBEEmail
    end
    inherited DBTXExcluido: TDBText
      Top = 234
      Width = -35
      ExplicitTop = 234
    end
    object Label5: TLabel [10]
      Left = 222
      Top = 10
      Width = 70
      Height = 13
      Caption = 'Data Cadastro'
      FocusControl = DBEDTCADASTRO
    end
    object DBECodigo: TDBEdit [11]
      Left = 8
      Top = 24
      Width = 75
      Height = 21
      TabStop = False
      DataField = 'IDEMPRESA'
      DataSource = DSConsulta
      ReadOnly = True
      TabOrder = 9
    end
    object DBENome: TDBEdit [12]
      Left = 8
      Top = 64
      Width = 490
      Height = 21
      DataField = 'NMEMPRESA'
      DataSource = DSConsulta
      TabOrder = 1
    end
    object DBECNPJ: TDBEdit [13]
      Left = 8
      Top = 104
      Width = 240
      Height = 21
      DataField = 'NUCNPJ'
      DataSource = DSConsulta
      TabOrder = 2
    end
    object DBEIE: TDBEdit [14]
      Left = 258
      Top = 104
      Width = 240
      Height = 21
      DataField = 'NUINSCRICAO'
      DataSource = DSConsulta
      TabOrder = 3
    end
    object DBETelefoneComercial: TDBEdit [15]
      Left = 8
      Top = 152
      Width = 134
      Height = 21
      DataField = 'TLCOMERCIAL'
      DataSource = DSConsulta
      TabOrder = 4
    end
    object DBETelefoneCelular: TDBEdit [16]
      Left = 147
      Top = 152
      Width = 134
      Height = 21
      DataField = 'TLCELULAR'
      DataSource = DSConsulta
      TabOrder = 5
    end
    object DBEObs: TDBEdit [17]
      Left = 8
      Top = 200
      Width = 490
      Height = 21
      DataField = 'TXOBS'
      DataSource = DSConsulta
      TabOrder = 7
    end
    object DBEEmail: TDBEdit [18]
      Left = 286
      Top = 152
      Width = 212
      Height = 21
      DataField = 'TXEMAIL'
      DataSource = DSConsulta
      TabOrder = 6
    end
    object DTPAbertura: TDateTimePicker [19]
      Left = 362
      Top = 24
      Width = 134
      Height = 21
      Date = 45491.673816365740000000
      Time = 45491.673816365740000000
      TabOrder = 0
      OnChange = DTPAberturaChange
    end
    inherited DBCBAtivo: TDBCheckBox
      Left = 104
      TabStop = False
      TabOrder = 8
      ExplicitLeft = 104
    end
    object DBEDTCADASTRO: TDBEdit
      Left = 222
      Top = 24
      Width = 134
      Height = 21
      TabStop = False
      DataField = 'DTCADASTRO'
      DataSource = DSConsulta
      ReadOnly = True
      TabOrder = 10
    end
  end
  inherited CBConsulta: TCoolBar
    Width = 531
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
        Width = 107
      end>
    inherited DBNConsulta: TDBNavigator
      Hints.Strings = ()
    end
    inherited CBExibirExcluidos: TCheckBox
      Width = 98
      ExplicitWidth = 98
    end
  end
  inherited DSConsulta: TDataSource
    DataSet = DMMain.FDQEmpresas
    Left = 175
    Top = 41
  end
end
