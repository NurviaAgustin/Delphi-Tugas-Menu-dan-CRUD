object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 803
  Top = 74
  Height = 199
  Width = 319
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\user\Downloads\libmysql (3).dll'
    Left = 32
    Top = 24
  end
  object Zkategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from kategori')
    Params = <>
    Left = 104
    Top = 24
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 104
    Top = 72
  end
end
