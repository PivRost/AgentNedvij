unit dogovorprod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet,
  IBX.IBDatabase, IBX.IBQuery, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TDogovorK = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    ComboBox1: TComboBox;
    IBQuery1: TIBQuery;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQuery2: TIBQuery;
    Label4: TLabel;
    IBQuery1ID_DOGOVOR: TIntegerField;
    IBQuery1DATE_DOGOVORA: TDateField;
    IBQuery1NAMEAGENTSTVA: TIBStringField;
    IBQuery1ID_RAB: TIntegerField;
    IBQuery1ID_CUST: TIntegerField;
    IBQuery1ID_NEDVIJ: TIntegerField;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Edit3: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DogovorK: TDogovorK;

implementation

{$R *.dfm}

end.
