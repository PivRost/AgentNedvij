object DobavRab: TDobavRab
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1085#1080#1082#1086#1074
  ClientHeight = 228
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 31
    Top = 8
    Width = 77
    Height = 13
    Caption = #1050#1086#1076' '#1088#1072#1073#1086#1090#1085#1080#1082#1072
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
  object Label5: TLabel
    Left = 31
    Top = 96
    Width = 44
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object Label8: TLabel
    Left = 31
    Top = 123
    Width = 57
    Height = 13
    Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
  end
  object Kodrab: TEdit
    Left = 120
    Top = 5
    Width = 169
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object Imrab: TEdit
    Left = 120
    Top = 36
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object Famrab: TEdit
    Left = 120
    Top = 63
    Width = 169
    Height = 21
    TabOrder = 2
  end
  object Telrab: TEdit
    Left = 120
    Top = 93
    Width = 169
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 31
    Top = 168
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 222
    Top = 168
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 0
    Top = 199
    Width = 75
    Height = 25
    Caption = #1053#1072#1095#1072#1083#1086
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 81
    Top = 199
    Width = 75
    Height = 25
    Caption = #1042#1087#1077#1088#1077#1076
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 162
    Top = 199
    Width = 75
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 8
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 243
    Top = 199
    Width = 75
    Height = 25
    Caption = #1050#1086#1085#1077#1094
    TabOrder = 9
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 128
    Top = 168
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 10
    OnClick = Button8Click
  end
  object ComboBox1: TComboBox
    Left = 120
    Top = 120
    Width = 169
    Height = 21
    TabOrder = 11
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
  object IBQuery2: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from DOLJNOST')
    Left = 56
    Top = 24
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT id_rabotnic, namerab, lastrab, tel_rab,namedoljnosti'
      ' from rabotnic r, doljnost d'
      ' where (r.id_dolj=d.id_doljnost)')
    Top = 24
  end
end
