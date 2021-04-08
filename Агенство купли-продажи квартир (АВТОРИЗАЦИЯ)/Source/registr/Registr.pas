unit Registr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.Win.ADODB, Data.DB, System.RegularExpressions, IBX.IBCustomDataSet,
  IBX.IBQuery, IBX.IBDatabase, IBX.IBTable;

type
  TRegForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    Edit1: TEdit;
    Edit2: TEdit;
    IBQuery1: TIBQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegForm: TRegForm;
  regex:tregex;  //регулярное выражение для этого прописали в uses System.RegularExpressions

implementation

{$R *.dfm}




procedure TRegForm.Button1Click(Sender: TObject);


begin
Ibquery1.SQL.Add('INSERT INTO AUTORIZ VALUES (gen_id(GENUSER,1), :LOGI, :PASS)');
Ibquery1.ParamByName('LOGI').Value:=edit1.Text;
Ibquery1.ParamByName('PASS').Value:=edit2.Text;
Ibquery1.Open;
IbTransaction1.Commit;
showmessage ('Регистрация прошла успешно');
end;
end.
