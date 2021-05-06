object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 351
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBEdit1: TDBEdit
    Left = 8
    Top = 264
    Width = 273
    Height = 21
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 32
    Width = 745
    Height = 210
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 320
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 432
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBClientes: TClientDataSet
    PersistDataPacket.Data = {
      580000009619E0BD010000001800000004000000000003000000580002494404
      00010000000000044E6F6D650100490000000100055749445448020002003C00
      0444617461040006000000000004486F726104000700000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 720
    Top = 24
    object DBClientesID: TIntegerField
      FieldName = 'ID'
    end
    object DBClientesNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object DBClientesData: TDateField
      FieldName = 'Data'
    end
    object DBClientesHora: TTimeField
      FieldName = 'Hora'
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = DBClientes
    Left = 632
    Top = 256
  end
end
