object Nedv: TNedv
  Left = 0
  Top = 0
  Caption = 'Nedv'
  ClientHeight = 254
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 97
    Height = 13
    Caption = #1050#1086#1076' '#1085#1077#1076#1074#1080#1078#1080#1084#1086#1089#1090#1080
  end
  object Label2: TLabel
    Left = 8
    Top = 59
    Width = 124
    Height = 13
    Caption = #1050#1086#1076' '#1090#1080#1087#1072' '#1085#1077#1076#1074#1080#1078#1080#1084#1086#1089#1090#1080
  end
  object Label3: TLabel
    Left = 8
    Top = 99
    Width = 108
    Height = 13
    Caption = #1040#1076#1088#1077#1089' '#1085#1077#1076#1074#1080#1078#1080#1084#1086#1089#1090#1080
  end
  object Label4: TLabel
    Left = 8
    Top = 139
    Width = 131
    Height = 13
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1085#1077#1076#1074#1080#1078#1080#1084#1086#1089#1090#1080
  end
  object Edit1: TEdit
    Left = 160
    Top = 13
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 160
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 160
    Top = 96
    Width = 177
    Height = 21
    TabOrder = 2
    OnChange = Edit3Change
  end
  object Edit4: TEdit
    Left = 160
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 111
    Top = 168
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 4
    OnClick = Button1Click
  end
  object Nachalo: TButton
    Left = 119
    Top = 214
    Width = 52
    Height = 25
    Caption = #1053#1072#1095#1072#1083#1086
    TabOrder = 5
    OnClick = NachaloClick
  end
  object vverx: TButton
    Left = 232
    Top = 214
    Width = 50
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 6
    OnClick = vverxClick
  end
  object vniz: TButton
    Left = 177
    Top = 214
    Width = 49
    Height = 25
    Caption = #1042#1087#1077#1088#1077#1076
    TabOrder = 7
    OnClick = vnizClick
  end
  object konec: TButton
    Left = 288
    Top = 214
    Width = 52
    Height = 25
    Caption = #1050#1086#1085#1077#1094
    TabOrder = 8
    OnClick = konecClick
  end
  object SoxrBut: TButton
    Left = 192
    Top = 168
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 9
    OnClick = SoxrButClick
  end
  object DelBut: TButton
    Left = 273
    Top = 168
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 10
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 
      'localhost/3050:D:\3 '#1082#1091#1088#1089'\'#1041#1072#1082#1091#1083#1080#1085'\K'#1059#1056#1057#1054#1042#1040#1071'\'#1040#1075#1077#1085#1089#1090#1074#1086' '#1082#1091#1087#1083#1080'-'#1087#1088#1086#1076#1072#1078#1080 +
      ' '#1082#1074#1072#1088#1090#1080#1088' ('#1040#1042#1058#1054#1056#1048#1047#1040#1062#1048#1071')\Data\DATA.IB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 368
    Top = 16
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from NEDVIJ')
    Left = 376
    Top = 72
    object IBQuery1ID_NEDV: TIntegerField
      FieldName = 'ID_NEDV'
      Origin = 'NEDVIJ.ID_NEDV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1ID_TIPNEDVIJ: TIntegerField
      FieldName = 'ID_TIPNEDVIJ'
      Origin = 'NEDVIJ.ID_TIPNEDVIJ'
      Required = True
    end
    object IBQuery1ADRESSNEDVIJ: TIBStringField
      FieldName = 'ADRESSNEDVIJ'
      Origin = 'NEDVIJ.ADRESSNEDVIJ'
      Size = 50
    end
    object IBQuery1STOIMNEDVIJ: TFloatField
      FieldName = 'STOIMNEDVIJ'
      Origin = 'NEDVIJ.STOIMNEDVIJ'
    end
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 376
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 376
    Top = 160
  end
  object MainMenu1: TMainMenu
    Left = 304
    Top = 16
    object N1: TMenuItem
      Caption = #1058#1080#1087#1099' '#1085#1077#1076#1074#1080#1078#1080#1084#1086#1089#1090#1080
      OnClick = N1Click
    end
  end
  object IBTable1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID_NEDV'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_TIPNEDVIJ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ADRESSNEDVIJ'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'STOIMNEDVIJ'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'ID_NEDV'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN8'
        Fields = 'ID_TIPNEDVIJ'
      end>
    MasterSource = DataSource1
    StoreDefs = True
    TableName = 'NEDVIJ'
    UniDirectional = False
    Left = 312
    Top = 72
  end
end
