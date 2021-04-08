object DogovorK: TDogovorK
  Left = 0
  Top = 0
  Caption = #1044#1086#1075#1086#1074#1086#1088' '#1082#1091#1087#1083#1080'-'#1087#1088#1086#1076#1072#1078#1080
  ClientHeight = 249
  ClientWidth = 392
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
    Left = 31
    Top = 11
    Width = 71
    Height = 13
    Caption = #1050#1086#1076' '#1076#1086#1075#1086#1074#1086#1088#1072
  end
  object Label2: TLabel
    Left = 31
    Top = 42
    Width = 77
    Height = 13
    Caption = #1044#1072#1090#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
  end
  object Label3: TLabel
    Left = 31
    Top = 69
    Width = 128
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1072#1075#1077#1085#1090#1089#1090#1074#1072
  end
  object Label5: TLabel
    Left = 31
    Top = 99
    Width = 48
    Height = 13
    Caption = #1056#1072#1073#1086#1090#1085#1080#1082
  end
  object Label8: TLabel
    Left = 31
    Top = 126
    Width = 61
    Height = 13
    Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
  end
  object Label4: TLabel
    Left = 31
    Top = 153
    Width = 75
    Height = 13
    Caption = #1053#1077#1076#1074#1080#1078#1080#1084#1086#1089#1090#1100
  end
  object Button1: TButton
    Left = 97
    Top = 187
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 0
  end
  object Button3: TButton
    Left = 288
    Top = 187
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 1
  end
  object Button4: TButton
    Left = 66
    Top = 218
    Width = 75
    Height = 25
    Caption = #1053#1072#1095#1072#1083#1086
    TabOrder = 2
  end
  object Button5: TButton
    Left = 147
    Top = 218
    Width = 75
    Height = 25
    Caption = #1042#1087#1077#1088#1077#1076
    TabOrder = 3
  end
  object Button6: TButton
    Left = 228
    Top = 218
    Width = 75
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 4
  end
  object Button7: TButton
    Left = 309
    Top = 218
    Width = 75
    Height = 25
    Caption = #1050#1086#1085#1077#1094
    TabOrder = 5
  end
  object Button8: TButton
    Left = 194
    Top = 187
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 6
  end
  object ComboBox1: TComboBox
    Left = 164
    Top = 150
    Width = 169
    Height = 21
    TabOrder = 7
  end
  object Edit1: TEdit
    Left = 165
    Top = 8
    Width = 169
    Height = 21
    Enabled = False
    TabOrder = 8
  end
  object Edit2: TEdit
    Left = 165
    Top = 66
    Width = 169
    Height = 21
    TabOrder = 9
  end
  object ComboBox2: TComboBox
    Left = 164
    Top = 123
    Width = 169
    Height = 21
    TabOrder = 10
  end
  object ComboBox3: TComboBox
    Left = 165
    Top = 96
    Width = 169
    Height = 21
    TabOrder = 11
  end
  object DateTimePicker1: TDateTimePicker
    Left = 320
    Top = 39
    Width = 14
    Height = 21
    Date = 44284.000000000000000000
    Time = 0.979891608796606300
    TabOrder = 12
  end
  object Edit3: TEdit
    Left = 164
    Top = 39
    Width = 150
    Height = 21
    TabOrder = 13
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from DOGOVOR')
    Top = 115
    object IBQuery1ID_DOGOVOR: TIntegerField
      FieldName = 'ID_DOGOVOR'
      Origin = 'DOGOVOR.ID_DOGOVOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery1DATE_DOGOVORA: TDateField
      FieldName = 'DATE_DOGOVORA'
      Origin = 'DOGOVOR.DATE_DOGOVORA'
    end
    object IBQuery1NAMEAGENTSTVA: TIBStringField
      FieldName = 'NAMEAGENTSTVA'
      Origin = 'DOGOVOR.NAMEAGENTSTVA'
      Size = 25
    end
    object IBQuery1ID_RAB: TIntegerField
      FieldName = 'ID_RAB'
      Origin = 'DOGOVOR.ID_RAB'
      Required = True
    end
    object IBQuery1ID_CUST: TIntegerField
      FieldName = 'ID_CUST'
      Origin = 'DOGOVOR.ID_CUST'
      Required = True
    end
    object IBQuery1ID_NEDVIJ: TIntegerField
      FieldName = 'ID_NEDVIJ'
      Origin = 'DOGOVOR.ID_NEDVIJ'
      Required = True
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
    Top = 219
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 40
    Top = 203
  end
  object IBQuery2: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select ID_NEDV from NEDVIJ')
    Left = 8
    Top = 171
  end
end
