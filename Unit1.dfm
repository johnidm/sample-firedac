object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 336
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 216
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Connectar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 127
    Width = 705
    Height = 194
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 448
    Top = 24
    Width = 75
    Height = 25
    Caption = 'FDQuery1 Open'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 40
    Top = 82
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 3
    Text = 'Firebird'
    Items.Strings = (
      'Firebird'
      'Postgre')
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=postgres'
      'Password=postgre'
      'Database=clientes'
      'DriverID=FB')
    Left = 152
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 264
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from teste')
    Left = 400
    Top = 16
  end
end
