object DMMain: TDMMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 442
  Width = 621
  object Conexao: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=C:\Users\borba\OneDrive\Documents\Embarcadero\Studio\Pr' +
        'ojects\Extra Digital\Win32\Debug\DADOS.FDB'
      'CharacterSet=WIN1252'
      'Port=0')
    LoginPrompt = False
    Left = 48
    Top = 32
  end
end
