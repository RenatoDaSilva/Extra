object DMMain: TDMMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 442
  Width = 621
  object FDCPrincipal: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=C:\Users\borba\OneDrive\Documents\Embarcadero\Studio\Pr' +
        'ojects\Extra Digital\Win32\Debug\DADOS.FDB'
      'CharacterSet=WIN1252'
      'Port=0')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object FDQEmpresas: TFDQuery
    BeforeDelete = FDQEmpresasBeforeDelete
    OnCalcFields = FDQEmpresasCalcFields
    OnNewRecord = FDQEmpresasNewRecord
    Connection = FDCPrincipal
    SQL.Strings = (
      'SELECT'
      '  IDEMPRESA,'
      '  NMEMPRESA,'
      '  NUCNPJ,'
      '  NUINSCRICAO,'
      '  STATIVO,'
      '  DTCADASTRO,'
      '  DTABERTURA,'
      '  TLCOMERCIAL,'
      '  TLCELULAR,'
      '  TXOBS,'
      '  TXEMAIL,'
      '  STEXCLUIDO,'
      '  DTEXCLUIDO'
      'FROM'
      '  CADEMPRESA;')
    Left = 152
    Top = 31
    object FDQEmpresasIDEMPRESA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQEmpresasNMEMPRESA: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NMEMPRESA'
      Origin = 'NMEMPRESA'
      Size = 100
    end
    object FDQEmpresasNUCNPJ: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'NUCNPJ'
      Origin = 'NUCNPJ'
      Size = 18
    end
    object FDQEmpresasNUINSCRICAO: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'NUINSCRICAO'
      Origin = 'NUINSCRICAO'
      Size = 15
    end
    object FDQEmpresasSTATIVO: TStringField
      DefaultExpression = #39'S'#39
      DisplayLabel = 'ATIVO'
      FieldName = 'STATIVO'
      Origin = 'STATIVO'
      FixedChar = True
      Size = 1
    end
    object FDQEmpresasDTCADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DTCADASTRO'
      Origin = 'DTCADASTRO'
    end
    object FDQEmpresasDTABERTURA: TDateField
      DisplayLabel = 'Data Abertura'
      FieldName = 'DTABERTURA'
      Origin = 'DTABERTURA'
    end
    object FDQEmpresasTLCOMERCIAL: TStringField
      DisplayLabel = 'Telefone Comercial'
      FieldName = 'TLCOMERCIAL'
      Origin = 'TLCOMERCIAL'
      Size = 15
    end
    object FDQEmpresasTLCELULAR: TStringField
      DisplayLabel = 'Telefone Celular'
      FieldName = 'TLCELULAR'
      Origin = 'TLCELULAR'
      Size = 15
    end
    object FDQEmpresasTXOBS: TIntegerField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'TXOBS'
      Origin = 'TXOBS'
    end
    object FDQEmpresasTXEMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'TXEMAIL'
      Origin = 'TXEMAIL'
      Size = 100
    end
    object FDQEmpresasSTEXCLUIDO: TStringField
      DisplayLabel = 'Exclu'#237'do'
      FieldName = 'STEXCLUIDO'
      Origin = 'STEXCLUIDO'
      FixedChar = True
      Size = 1
    end
    object FDQEmpresasDTEXCLUIDO: TDateField
      DisplayLabel = 'Data Exclus'#227'o'
      FieldName = 'DTEXCLUIDO'
      Origin = 'DTEXCLUIDO'
    end
    object FDQEmpresasTXEXCLUIDO: TStringField
      FieldKind = fkCalculated
      FieldName = 'TXEXCLUIDO'
      Size = 255
      Calculated = True
    end
  end
  object FDQEmpregados: TFDQuery
    BeforeDelete = FDQEmpregadosBeforeDelete
    OnCalcFields = FDQEmpregadosCalcFields
    OnNewRecord = FDQEmpregadosNewRecord
    Connection = FDCPrincipal
    SQL.Strings = (
      'SELECT'
      '  CADFUNCIONARIOS.IDFUNCIONARIO,'
      '  CADFUNCIONARIOS.IDEMPRESA,'
      '  CADFUNCIONARIOS.NMFUNCIONARIO,'
      '  CADFUNCIONARIOS.NUCPF,'
      '  CADFUNCIONARIOS.NURG,'
      '  CADFUNCIONARIOS.DTNASCIMENTO,'
      '  CADFUNCIONARIOS.TXEMAIL,'
      '  CADFUNCIONARIOS.NUCARTEIRATRAB,'
      '  CADFUNCIONARIOS.NUTITULOELEITOR,'
      '  CADFUNCIONARIOS.NUCARTEIRAMOTORISTA,'
      '  CADFUNCIONARIOS.TPCATERORIA,'
      '  CADFUNCIONARIOS.DTVALIDADECARTEIRAMOT,'
      '  CADFUNCIONARIOS.TLRESIDENCIAL,'
      '  CADFUNCIONARIOS.TLCELULAR,'
      '  CADFUNCIONARIOS.TLCONTATO,'
      '  CADFUNCIONARIOS.NMCONTATO,'
      '  CADFUNCIONARIOS.DTCONTRATACAO,'
      '  CADFUNCIONARIOS.DTDEMISSAO,'
      '  CADFUNCIONARIOS.DTCADASTRO,'
      '  CADFUNCIONARIOS.STATIVO,'
      '  CADFUNCIONARIOS.TXOBS,'
      '  CADFUNCIONARIOS.NMENDERECO,'
      '  CADFUNCIONARIOS.NUENDERECO,'
      '  CADFUNCIONARIOS.NMBAIRRO,'
      '  CADFUNCIONARIOS.IDCIDADE,'
      '  CADFUNCIONARIOS.IDUF,'
      '  CADFUNCIONARIOS.NUCEP,'
      '  CADFUNCIONARIOS.STEXCLUIDO,'
      '  CADFUNCIONARIOS.DTEXCLUIDO'
      'FROM'
      '  CADFUNCIONARIOS;')
    Left = 152
    Top = 94
    object FDQEmpregadosIDFUNCIONARIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDFUNCIONARIO'
      Origin = 'IDFUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQEmpregadosIDEMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
    end
    object FDQEmpregadosNMFUNCIONARIO: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NMFUNCIONARIO'
      Origin = 'NMFUNCIONARIO'
      Size = 100
    end
    object FDQEmpregadosNUCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'NUCPF'
      Origin = 'NUCPF'
      Size = 18
    end
    object FDQEmpregadosNURG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'NURG'
      Origin = 'NURG'
      Size = 15
    end
    object FDQEmpregadosDTNASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'DTNASCIMENTO'
      Origin = 'DTNASCIMENTO'
    end
    object FDQEmpregadosTXEMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'TXEMAIL'
      Origin = 'TXEMAIL'
      Size = 100
    end
    object FDQEmpregadosNUCARTEIRATRAB: TStringField
      DisplayLabel = 'CTPS'
      FieldName = 'NUCARTEIRATRAB'
      Origin = 'NUCARTEIRATRAB'
    end
    object FDQEmpregadosNUTITULOELEITOR: TStringField
      DisplayLabel = 'T'#237'tulo de Eleitor'
      FieldName = 'NUTITULOELEITOR'
      Origin = 'NUTITULOELEITOR'
      Size = 12
    end
    object FDQEmpregadosNUCARTEIRAMOTORISTA: TStringField
      DisplayLabel = 'Numero CNH'
      FieldName = 'NUCARTEIRAMOTORISTA'
      Origin = 'NUCARTEIRAMOTORISTA'
      Size = 15
    end
    object FDQEmpregadosTPCATERORIA: TStringField
      DisplayLabel = 'Categoria CNH'
      FieldName = 'TPCATERORIA'
      Origin = 'TPCATERORIA'
      Size = 4
    end
    object FDQEmpregadosDTVALIDADECARTEIRAMOT: TDateField
      DisplayLabel = 'Validade CNH'
      FieldName = 'DTVALIDADECARTEIRAMOT'
      Origin = 'DTVALIDADECARTEIRAMOT'
    end
    object FDQEmpregadosTLRESIDENCIAL: TStringField
      DisplayLabel = 'Telefone Residencial'
      FieldName = 'TLRESIDENCIAL'
      Origin = 'TLRESIDENCIAL'
      Size = 15
    end
    object FDQEmpregadosTLCELULAR: TStringField
      DisplayLabel = 'Telefone Celular'
      FieldName = 'TLCELULAR'
      Origin = 'TLCELULAR'
      Size = 15
    end
    object FDQEmpregadosTLCONTATO: TStringField
      DisplayLabel = 'Telefone Contato'
      FieldName = 'TLCONTATO'
      Origin = 'TLCONTATO'
      Size = 15
    end
    object FDQEmpregadosNMCONTATO: TStringField
      DisplayLabel = 'Nome Contato'
      FieldName = 'NMCONTATO'
      Origin = 'NMCONTATO'
      Size = 50
    end
    object FDQEmpregadosDTCONTRATACAO: TDateField
      DisplayLabel = 'Data Contrata'#231#227'o'
      FieldName = 'DTCONTRATACAO'
      Origin = 'DTCONTRATACAO'
    end
    object FDQEmpregadosDTDEMISSAO: TDateField
      DisplayLabel = 'Data Demiss'#227'o'
      FieldName = 'DTDEMISSAO'
      Origin = 'DTDEMISSAO'
    end
    object FDQEmpregadosDTCADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DTCADASTRO'
      Origin = 'DTCADASTRO'
    end
    object FDQEmpregadosSTATIVO: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'STATIVO'
      Origin = 'STATIVO'
      FixedChar = True
      Size = 1
    end
    object FDQEmpregadosTXOBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'TXOBS'
      Origin = 'TXOBS'
      Size = 1000
    end
    object FDQEmpregadosNMENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'NMENDERECO'
      Origin = 'NMENDERECO'
      Size = 100
    end
    object FDQEmpregadosNUENDERECO: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUENDERECO'
      Origin = 'NUENDERECO'
      Size = 10
    end
    object FDQEmpregadosNMBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'NMBAIRRO'
      Origin = 'NMBAIRRO'
      Size = 100
    end
    object FDQEmpregadosIDCIDADE: TIntegerField
      DisplayLabel = 'Cidade'
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
    end
    object FDQEmpregadosIDUF: TIntegerField
      DisplayLabel = 'Estado'
      FieldName = 'IDUF'
      Origin = 'IDUF'
    end
    object FDQEmpregadosNUCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'NUCEP'
      Origin = 'NUCEP'
      Size = 10
    end
    object FDQEmpregadosSTEXCLUIDO: TStringField
      DisplayLabel = 'Exclu'#237'do'
      FieldName = 'STEXCLUIDO'
      Origin = 'STEXCLUIDO'
      FixedChar = True
      Size = 1
    end
    object FDQEmpregadosDTEXCLUIDO: TDateField
      DisplayLabel = 'Data Exclus'#227'o'
      FieldName = 'DTEXCLUIDO'
      Origin = 'DTEXCLUIDO'
    end
    object FDQEmpregadosTXEXCLUIDO: TStringField
      FieldKind = fkCalculated
      FieldName = 'TXEXCLUIDO'
      Size = 255
      Calculated = True
    end
  end
  object FDQEnderecos: TFDQuery
    BeforeDelete = FDQEnderecosBeforeDelete
    OnCalcFields = FDQEnderecosCalcFields
    Connection = FDCPrincipal
    SQL.Strings = (
      'SELECT'
      '  CADENDERECOS.IDENDERECO,'
      '  CADENDERECOS.IDTITULAR,'
      '  CADENDERECOS.IDEMPRESA,'
      '  CADENDERECOS.NMENDERECO,'
      '  CADENDERECOS.NUENDERECO,'
      '  CADENDERECOS.NMBAIRRO,'
      '  CADENDERECOS.IDCIDADE,'
      '  CADENDERECOS.IDUF,'
      '  CADENDERECOS.NUCEP,'
      '  CADENDERECOS.STATIVO,'
      '  CADENDERECOS.STEXCLUIDO,'
      '  CADENDERECOS.DTEXCLUIDO,'
      '  CADENDERECOS.TPCADASTRO,'
      '  CADTITULAR.NMTITULAR,'
      '  CADEMPRESA.NMEMPRESA,'
      '  CADCIDADE.NMCIDADE,'
      '  CADUF.NMESTADO'
      'FROM'
      '  CADENDERECOS'
      
        '  LEFT OUTER JOIN CADTITULAR ON CADTITULAR.IDTITULAR = CADENDERE' +
        'COS.IDTITULAR'
      
        '  LEFT OUTER JOIN CADEMPRESA ON CADEMPRESA.IDEMPRESA = CADENDERE' +
        'COS.IDEMPRESA'
      
        '  LEFT OUTER JOIN CADCIDADE ON CADCIDADE.IDCIDADE = CADENDERECOS' +
        '.IDCIDADE'
      '  LEFT OUTER JOIN CADUF ON CADUF.IDUF = CADENDERECOS.IDUF'
      '  ;')
    Left = 155
    Top = 163
    object FDQEnderecosIDENDERECO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDENDERECO'
      Origin = 'IDENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQEnderecosIDTITULAR: TIntegerField
      DisplayLabel = 'Titular'
      FieldName = 'IDTITULAR'
      Origin = 'IDTITULAR'
    end
    object FDQEnderecosIDEMPRESA: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
    end
    object FDQEnderecosNMENDERECO: TStringField
      DisplayLabel = 'Rua'
      FieldName = 'NMENDERECO'
      Origin = 'NMENDERECO'
      Size = 100
    end
    object FDQEnderecosNUENDERECO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUENDERECO'
      Origin = 'NUENDERECO'
      Size = 10
    end
    object FDQEnderecosNMBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'NMBAIRRO'
      Origin = 'NMBAIRRO'
      Size = 50
    end
    object FDQEnderecosIDCIDADE: TIntegerField
      DisplayLabel = 'Cidade'
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
    end
    object FDQEnderecosIDUF: TIntegerField
      DisplayLabel = 'Estado'
      FieldName = 'IDUF'
      Origin = 'IDUF'
    end
    object FDQEnderecosNUCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'NUCEP'
      Origin = 'NUCEP'
      Size = 10
    end
    object FDQEnderecosSTATIVO: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'STATIVO'
      Origin = 'STATIVO'
      FixedChar = True
      Size = 1
    end
    object FDQEnderecosSTEXCLUIDO: TStringField
      DisplayLabel = 'Exclu'#237'do'
      FieldName = 'STEXCLUIDO'
      Origin = 'STEXCLUIDO'
      FixedChar = True
      Size = 1
    end
    object FDQEnderecosDTEXCLUIDO: TDateField
      DisplayLabel = 'Data Exclus'#227'o'
      FieldName = 'DTEXCLUIDO'
      Origin = 'DTEXCLUIDO'
    end
    object FDQEnderecosTPCADASTRO: TStringField
      DisplayLabel = 'Tipo de cadastro'
      FieldName = 'TPCADASTRO'
      Origin = 'TPCADASTRO'
      FixedChar = True
      Size = 1
    end
    object FDQEnderecosNMTITULAR: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Titular'
      FieldName = 'NMTITULAR'
      Origin = 'NMTITULAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQEnderecosNMEMPRESA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Empresa'
      FieldName = 'NMEMPRESA'
      Origin = 'NMEMPRESA'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQEnderecosNMCIDADE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Cidade'
      FieldName = 'NMCIDADE'
      Origin = 'NMCIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQEnderecosNMESTADO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Estado'
      FieldName = 'NMESTADO'
      Origin = 'NMESTADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQEnderecosTXEXCLUIDO: TStringField
      FieldKind = fkCalculated
      FieldName = 'TXEXCLUIDO'
      Size = 255
      Calculated = True
    end
  end
  object FDQCidades: TFDQuery
    BeforeDelete = FDQEnderecosBeforeDelete
    OnCalcFields = FDQEnderecosCalcFields
    Connection = FDCPrincipal
    SQL.Strings = (
      'SELECT'
      '  IDCIDADE,'
      '  NMCIDADE,'
      '  IDUF,'
      '  NOIBGE'
      'FROM'
      '  CADCIDADE;')
    Left = 155
    Top = 224
    object FDQCidadesIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQCidadesNMCIDADE: TStringField
      FieldName = 'NMCIDADE'
      Origin = 'NMCIDADE'
      Size = 100
    end
    object FDQCidadesIDUF: TIntegerField
      FieldName = 'IDUF'
      Origin = 'IDUF'
      Required = True
    end
    object FDQCidadesNOIBGE: TStringField
      FieldName = 'NOIBGE'
      Origin = 'NOIBGE'
      Size = 7
    end
  end
  object FDEstados: TFDQuery
    BeforeDelete = FDQEnderecosBeforeDelete
    OnCalcFields = FDQEnderecosCalcFields
    Connection = FDCPrincipal
    SQL.Strings = (
      'SELECT'
      '  IDUF,'
      '  NMESTADO,'
      '  SGESTADO'
      'FROM'
      '  CADUF;')
    Left = 158
    Top = 291
    object FDEstadosIDUF: TIntegerField
      FieldName = 'IDUF'
      Origin = 'IDUF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDEstadosNMESTADO: TStringField
      FieldName = 'NMESTADO'
      Origin = 'NMESTADO'
      Size = 50
    end
    object FDEstadosSGESTADO: TStringField
      FieldName = 'SGESTADO'
      Origin = 'SGESTADO'
      FixedChar = True
      Size = 3
    end
  end
end
