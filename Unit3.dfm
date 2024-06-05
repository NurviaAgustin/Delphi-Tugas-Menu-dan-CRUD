object Form3: TForm3
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'KATEGORI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 136
    Top = 48
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object Label2: TLabel
    Left = 104
    Top = 280
    Width = 85
    Height = 13
    Caption = 'MASUKKAN NAME'
  end
  object Edit1: TEdit
    Left = 216
    Top = 48
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 216
    Top = 280
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 216
    Top = 80
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 296
    Top = 80
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 376
    Top = 80
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 4
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 216
    Top = 128
    Width = 273
    Height = 120
    DataSource = DataModule1.dskategori
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button4: TButton
    Left = 424
    Top = 280
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 6
    OnClick = Button4Click
  end
end
