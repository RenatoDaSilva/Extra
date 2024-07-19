inherited FrmEmpregado: TFrmEmpregado
  Caption = 'Empregados'
  ClientHeight = 466
  ClientWidth = 925
  ExplicitWidth = 941
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGConsulta: TDBGrid
    Width = 919
    Height = 431
  end
  inherited PNEdicao: TPanel
    Width = 925
    Height = 437
    ExplicitWidth = 925
    ExplicitHeight = 437
    inherited DBTXExcluido: TDBText
      Top = 410
      ExplicitTop = 410
    end
    object Label1: TLabel [1]
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBECodigo
    end
    object Label2: TLabel [2]
      Left = 8
      Top = 48
      Width = 41
      Height = 13
      Caption = 'Empresa'
      FocusControl = DBEIdEmpresa
    end
    object Label3: TLabel [3]
      Left = 8
      Top = 88
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBENome
    end
    object Label17: TLabel [4]
      Left = 342
      Top = 8
      Width = 86
      Height = 13
      Caption = 'Data Contrata'#231#227'o'
      FocusControl = DBEDataContratacao
    end
    object Label18: TLabel [5]
      Left = 491
      Top = 8
      Width = 71
      Height = 13
      Caption = 'Data Demiss'#227'o'
      FocusControl = DBEDataDemissao
    end
    object Label19: TLabel [6]
      Left = 200
      Top = 8
      Width = 70
      Height = 13
      Caption = 'Data Cadastro'
      FocusControl = DBEDataCadastro
    end
    object Label21: TLabel [7]
      Left = 8
      Top = 360
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
      FocusControl = DBEObs
    end
    object Label30: TLabel [8]
      Left = 59
      Top = 48
      Width = 90
      Height = 13
      Caption = 'Pesquisar Empresa'
    end
    object DBECodigo: TDBEdit [9]
      Left = 8
      Top = 21
      Width = 68
      Height = 21
      TabStop = False
      DataField = 'IDFUNCIONARIO'
      DataSource = DSConsulta
      ReadOnly = True
      TabOrder = 8
    end
    object DBEIdEmpresa: TDBEdit [10]
      Left = 8
      Top = 64
      Width = 45
      Height = 21
      DataField = 'IDEMPRESA'
      DataSource = DSConsulta
      TabOrder = 1
    end
    object DBENome: TDBEdit [11]
      Left = 8
      Top = 104
      Width = 617
      Height = 21
      DataField = 'NMFUNCIONARIO'
      DataSource = DSConsulta
      TabOrder = 2
    end
    object DBEDataContratacao: TDBEdit [12]
      Left = 342
      Top = 21
      Width = 134
      Height = 21
      DataField = 'DTCONTRATACAO'
      DataSource = DSConsulta
      TabOrder = 0
    end
    object DBEDataDemissao: TDBEdit [13]
      Left = 491
      Top = 21
      Width = 134
      Height = 21
      DataField = 'DTDEMISSAO'
      DataSource = DSConsulta
      TabOrder = 9
    end
    object DBEDataCadastro: TDBEdit [14]
      Left = 200
      Top = 21
      Width = 134
      Height = 21
      TabStop = False
      DataField = 'DTCADASTRO'
      DataSource = DSConsulta
      ReadOnly = True
      TabOrder = 10
    end
    object DBEObs: TDBEdit [15]
      Left = 8
      Top = 376
      Width = 617
      Height = 21
      DataField = 'TXOBS'
      DataSource = DSConsulta
      TabOrder = 6
    end
    inherited DBCBAtivo: TDBCheckBox
      Left = 98
      Top = 23
      Width = 44
      TabOrder = 7
      ExplicitLeft = 98
      ExplicitTop = 23
      ExplicitWidth = 44
    end
    object GBDocumentos: TGroupBox
      Left = 636
      Top = 8
      Width = 280
      Height = 171
      Caption = 'Documentos'
      TabOrder = 4
      object Label8: TLabel
        Left = 8
        Top = 58
        Width = 25
        Height = 13
        Caption = 'CTPS'
        FocusControl = DBECTPS
      end
      object Label9: TLabel
        Left = 144
        Top = 58
        Width = 74
        Height = 13
        Caption = 'T'#237'tulo de Eleitor'
        FocusControl = DBETituloEleitor
      end
      object Label4: TLabel
        Left = 8
        Top = 16
        Width = 19
        Height = 13
        Caption = 'CPF'
        FocusControl = DBECPF
      end
      object Label5: TLabel
        Left = 96
        Top = 16
        Width = 14
        Height = 13
        Caption = 'RG'
        FocusControl = DBERG
      end
      object Label6: TLabel
        Left = 188
        Top = 16
        Width = 81
        Height = 13
        Caption = 'Data Nascimento'
        FocusControl = DataNascimento
      end
      object DBECTPS: TDBEdit
        Left = 8
        Top = 75
        Width = 130
        Height = 21
        DataField = 'NUCARTEIRATRAB'
        DataSource = DSConsulta
        TabOrder = 0
      end
      object DBETituloEleitor: TDBEdit
        Left = 144
        Top = 75
        Width = 130
        Height = 21
        DataField = 'NUTITULOELEITOR'
        DataSource = DSConsulta
        TabOrder = 1
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 98
        Width = 264
        Height = 64
        Caption = 'CNH'
        TabOrder = 2
        object Label10: TLabel
          Left = 8
          Top = 15
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBENuCNH
        end
        object Label11: TLabel
          Left = 96
          Top = 15
          Width = 47
          Height = 13
          Caption = 'Categoria'
          FocusControl = DBECatCNH
        end
        object Label12: TLabel
          Left = 150
          Top = 15
          Width = 40
          Height = 13
          Caption = 'Validade'
          FocusControl = DBEValCNH
        end
        object DBENuCNH: TDBEdit
          Left = 8
          Top = 30
          Width = 84
          Height = 21
          DataField = 'NUCARTEIRAMOTORISTA'
          DataSource = DSConsulta
          TabOrder = 0
        end
        object DBECatCNH: TDBEdit
          Left = 96
          Top = 30
          Width = 48
          Height = 21
          DataField = 'TPCATERORIA'
          DataSource = DSConsulta
          TabOrder = 1
        end
        object DBEValCNH: TDBEdit
          Left = 150
          Top = 30
          Width = 106
          Height = 21
          DataField = 'DTVALIDADECARTEIRAMOT'
          DataSource = DSConsulta
          TabOrder = 2
        end
      end
      object DataNascimento: TDBEdit
        Left = 188
        Top = 30
        Width = 86
        Height = 21
        DataField = 'DTNASCIMENTO'
        DataSource = DSConsulta
        TabOrder = 3
      end
      object DBECPF: TDBEdit
        Left = 8
        Top = 30
        Width = 86
        Height = 21
        DataField = 'NUCPF'
        DataSource = DSConsulta
        TabOrder = 4
      end
      object DBERG: TDBEdit
        Left = 96
        Top = 30
        Width = 86
        Height = 21
        DataField = 'NURG'
        DataSource = DSConsulta
        TabOrder = 5
      end
    end
    object GBComunicacao: TGroupBox
      Left = 636
      Top = 180
      Width = 280
      Height = 175
      Caption = 'Comunica'#231#227'o'
      TabOrder = 5
      object Label7: TLabel
        Left = 8
        Top = 16
        Width = 28
        Height = 13
        Caption = 'E-mail'
        FocusControl = DBEEmail
      end
      object Label13: TLabel
        Left = 8
        Top = 62
        Width = 98
        Height = 13
        Caption = 'Telefone Residencial'
        FocusControl = DBETelResidencial
      end
      object Label14: TLabel
        Left = 130
        Top = 62
        Width = 78
        Height = 13
        Caption = 'Telefone Celular'
        FocusControl = DBETelCelular
      end
      object Label16: TLabel
        Left = 8
        Top = 116
        Width = 69
        Height = 13
        Caption = 'Nome Contato'
        FocusControl = DBENomeContato
      end
      object Label15: TLabel
        Left = 130
        Top = 116
        Width = 84
        Height = 13
        Caption = 'Telefone Contato'
        FocusControl = DBETelContato
      end
      object DBEEmail: TDBEdit
        Left = 8
        Top = 35
        Width = 259
        Height = 21
        DataField = 'TXEMAIL'
        DataSource = DSConsulta
        TabOrder = 0
      end
      object DBETelResidencial: TDBEdit
        Left = 8
        Top = 80
        Width = 116
        Height = 21
        DataField = 'TLRESIDENCIAL'
        DataSource = DSConsulta
        TabOrder = 1
      end
      object DBETelCelular: TDBEdit
        Left = 130
        Top = 80
        Width = 137
        Height = 21
        DataField = 'TLCELULAR'
        DataSource = DSConsulta
        TabOrder = 2
      end
      object DBENomeContato: TDBEdit
        Left = 8
        Top = 135
        Width = 121
        Height = 21
        DataField = 'NMCONTATO'
        DataSource = DSConsulta
        TabOrder = 3
      end
      object DBETelContato: TDBEdit
        Left = 130
        Top = 135
        Width = 137
        Height = 21
        DataField = 'TLCONTATO'
        DataSource = DSConsulta
        TabOrder = 4
      end
    end
    object GBEndereco: TGroupBox
      Left = 8
      Top = 144
      Width = 615
      Height = 210
      Caption = 'Endere'#231'o'
      TabOrder = 3
      object Label32: TLabel
        Left = 64
        Top = 156
        Width = 46
        Height = 13
        Caption = 'Pesquisar'
      end
      object Label31: TLabel
        Left = 64
        Top = 112
        Width = 46
        Height = 13
        Caption = 'Pesquisar'
      end
      object Label25: TLabel
        Left = 8
        Top = 112
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label24: TLabel
        Left = 8
        Top = 64
        Width = 28
        Height = 13
        Caption = 'Bairro'
      end
      object Label26: TLabel
        Left = 8
        Top = 158
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object Label22: TLabel
        Left = 8
        Top = 19
        Width = 55
        Height = 13
        Caption = 'Logradouro'
      end
      object Label23: TLabel
        Left = 535
        Top = 19
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
      end
      object Label27: TLabel
        Left = 464
        Top = 64
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object DBECEP: TDBEdit
        Left = 464
        Top = 80
        Width = 134
        Height = 21
        DataField = 'NUCEP'
        DataSource = DSConsulta
        TabOrder = 3
      end
      object DBEIDUF: TDBEdit
        Left = 8
        Top = 175
        Width = 50
        Height = 21
        DataField = 'IDUF'
        DataSource = DSConsulta
        TabOrder = 5
      end
      object DBEIdCidade: TDBEdit
        Left = 8
        Top = 130
        Width = 50
        Height = 21
        DataField = 'IDCIDADE'
        DataSource = DSConsulta
        TabOrder = 4
        OnChange = DBEIdCidadeChange
      end
      object DBENumeroEndereco: TDBEdit
        Left = 535
        Top = 36
        Width = 62
        Height = 21
        DataField = 'NUENDERECO'
        DataSource = DSConsulta
        TabOrder = 1
      end
      object DBENomeEndereco: TDBEdit
        Left = 8
        Top = 36
        Width = 515
        Height = 21
        DataField = 'NMENDERECO'
        DataSource = DSConsulta
        TabOrder = 0
      end
      object DBEBairro: TDBEdit
        Left = 8
        Top = 80
        Width = 450
        Height = 21
        DataField = 'NMBAIRRO'
        DataSource = DSConsulta
        TabOrder = 2
      end
      object DBLCBPesquisaCidade: TDBLookupComboBox
        Left = 64
        Top = 129
        Width = 534
        Height = 21
        DataField = 'IDCIDADE'
        DataSource = DSConsulta
        KeyField = 'IDCIDADE'
        ListField = 'NMCIDADE'
        ListSource = DSPesquisaCidade
        TabOrder = 6
      end
      object DBLCBPesquisaEstado: TDBLookupComboBox
        Left = 64
        Top = 175
        Width = 534
        Height = 21
        DataField = 'IDUF'
        DataSource = DSConsulta
        KeyField = 'IDUF'
        ListField = 'NMESTADO'
        ListSource = DSPesquisaEstado
        TabOrder = 7
      end
    end
    object DBLCBPesquisaEmpresa: TDBLookupComboBox
      Left = 59
      Top = 64
      Width = 566
      Height = 21
      DataField = 'IDEMPRESA'
      DataSource = DSConsulta
      KeyField = 'IDEMPRESA'
      ListField = 'NMEMPRESA'
      ListSource = DSPesquisaEmpresa
      TabOrder = 11
    end
  end
  inherited CBConsulta: TCoolBar
    Width = 925
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
        Width = 501
      end>
    ExplicitWidth = 925
    inherited DBNConsulta: TDBNavigator
      Hints.Strings = ()
    end
    inherited CBExibirExcluidos: TCheckBox
      Width = 492
      ExplicitWidth = 492
    end
  end
  inherited DSConsulta: TDataSource
    DataSet = DMMain.FDQEmpregados
    Left = 537
  end
  object DSPesquisaEmpresa: TDataSource
    AutoEdit = False
    Left = 535
    Top = 90
  end
  object DSPesquisaCidade: TDataSource
    AutoEdit = False
    Left = 539
    Top = 297
  end
  object DSPesquisaEstado: TDataSource
    AutoEdit = False
    Left = 543
    Top = 354
  end
end
