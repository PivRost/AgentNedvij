object AvtorizForm: TAvtorizForm
  Left = 0
  Top = 0
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  ClientHeight = 215
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 24
    Width = 110
    Height = 19
    Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 50
    Height = 19
    Caption = #1051#1086#1075#1080#1085
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 120
    Width = 61
    Height = 19
    Caption = #1055#1072#1088#1086#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LogEdit: TEdit
    Left = 104
    Top = 74
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object PwEdit: TEdit
    Left = 104
    Top = 122
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 104
    Top = 171
    Width = 121
    Height = 25
    Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
    TabOrder = 2
    OnClick = Button1Click
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 
      'localhost/3050:D:\3 '#1082#1091#1088#1089'\'#1041#1072#1082#1091#1083#1080#1085'\K'#1059#1056#1057#1054#1042#1040#1071'\'#1040#1075#1077#1085#1089#1090#1074#1086' '#1082#1091#1087#1083#1080'-'#1087#1088#1086#1076#1072#1078#1080 +
      ' '#1082#1074#1072#1088#1090#1080#1088' ('#1040#1042#1058#1054#1056#1048#1047#1040#1062#1048#1071')\Data\USERS.IB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 304
    Top = 64
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 256
    Top = 88
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DataSource1
    ParamCheck = True
    SQL.Strings = (
      'select LOGI, PASS from AUTORIZ')
    Left = 264
    Top = 16
  end
  object DataSource1: TDataSource
    Left = 264
    Top = 136
  end
end
