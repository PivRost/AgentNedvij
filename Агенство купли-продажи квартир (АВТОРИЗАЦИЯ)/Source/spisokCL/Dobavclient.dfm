object DobavCL: TDobavCL
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'  '#1082#1083#1080#1077#1085#1090#1086#1074
  ClientHeight = 277
  ClientWidth = 319
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 31
    Top = 8
    Width = 83
    Height = 13
    Caption = #1050#1086#1076' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
  end
  object Label2: TLabel
    Left = 31
    Top = 39
    Width = 19
    Height = 13
    Caption = #1048#1084#1103
  end
  object Label3: TLabel
    Left = 31
    Top = 66
    Width = 44
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Label4: TLabel
    Left = 31
    Top = 93
    Width = 49
    Height = 13
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object Label5: TLabel
    Left = 31
    Top = 120
    Width = 44
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object Label7: TLabel
    Left = 31
    Top = 152
    Width = 42
    Height = 13
    Caption = #1055#1072#1089#1087#1086#1088#1090
  end
  object Label8: TLabel
    Left = 31
    Top = 184
    Width = 21
    Height = 13
    Caption = #1048#1053#1053
  end
  object Kodpok: TEdit
    Left = 120
    Top = 5
    Width = 169
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object Impok: TEdit
    Left = 120
    Top = 36
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object Fampok: TEdit
    Left = 120
    Top = 63
    Width = 169
    Height = 21
    TabOrder = 2
  end
  object Otpok: TEdit
    Left = 120
    Top = 90
    Width = 169
    Height = 21
    TabOrder = 3
  end
  object Telpok: TEdit
    Left = 120
    Top = 117
    Width = 169
    Height = 21
    TabOrder = 4
  end
  object Paspok: TEdit
    Left = 120
    Top = 149
    Width = 169
    Height = 21
    TabOrder = 5
  end
  object Innpok: TEdit
    Left = 120
    Top = 181
    Width = 169
    Height = 21
    TabOrder = 6
  end
  object Button1: TButton
    Left = 31
    Top = 216
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 222
    Top = 216
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 0
    Top = 247
    Width = 75
    Height = 25
    Caption = #1053#1072#1095#1072#1083#1086
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 81
    Top = 247
    Width = 75
    Height = 25
    Caption = #1042#1087#1077#1088#1077#1076
    TabOrder = 10
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 162
    Top = 247
    Width = 75
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 11
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 243
    Top = 247
    Width = 75
    Height = 25
    Caption = #1050#1086#1085#1077#1094
    TabOrder = 12
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 128
    Top = 216
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 13
    OnClick = Button8Click
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CUSTOMERS')
    Top = 16
    object IBQuery1ID_CUSTIMERS: TIntegerField
      FieldName = 'ID_CUSTIMERS'
      Origin = 'CUSTOMERS.ID_CUSTIMERS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1FIRSTNAME: TIBStringField
      FieldName = 'FIRSTNAME'
      Origin = 'CUSTOMERS.FIRSTNAME'
      Required = True
      Size = 25
    end
    object IBQuery1LASTNAME: TIBStringField
      FieldName = 'LASTNAME'
      Origin = 'CUSTOMERS.LASTNAME'
      Required = True
      Size = 25
    end
    object IBQuery1PATRONYMIC: TIBStringField
      FieldName = 'PATRONYMIC'
      Origin = 'CUSTOMERS.PATRONYMIC'
      Required = True
      Size = 25
    end
    object IBQuery1TEL_CUSTOMERS: TIBStringField
      FieldName = 'TEL_CUSTOMERS'
      Origin = 'CUSTOMERS.TEL_CUSTOMERS'
      Required = True
      Size = 11
    end
    object IBQuery1PASSPORT: TIBStringField
      FieldName = 'PASSPORT'
      Origin = 'CUSTOMERS.PASSPORT'
      Required = True
      Size = 10
    end
    object IBQuery1INN: TIBStringField
      FieldName = 'INN'
      Origin = 'CUSTOMERS.INN'
      Required = True
      Size = 10
    end
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 
      'localhost:D:\3 '#1082#1091#1088#1089'\'#1041#1072#1082#1091#1083#1080#1085'\K'#1059#1056#1057#1054#1042#1040#1071'\'#1040#1075#1077#1085#1089#1090#1074#1086' '#1082#1091#1087#1083#1080'-'#1087#1088#1086#1076#1072#1078#1080' '#1082#1074#1072#1088 +
      #1090#1080#1088' ('#1040#1042#1058#1054#1056#1048#1047#1040#1062#1048#1071')\Data\DATA.IB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 8
    Top = 112
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Top = 48
  end
end
