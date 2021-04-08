unit Avtoriz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  IBX.IBDatabase, IBX.IBCustomDataSet, IBX.IBTable, IBX.IBQuery;

type
  TAvtorizForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LogEdit: TEdit;
    PwEdit: TEdit;
    Button1: TButton;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AvtorizForm: TAvtorizForm;

implementation

{$R *.dfm}



procedure TAvtorizForm.Button1Click(Sender: TObject);
begin
begin
IBQuery1.close;
IBQuery1.sql.clear;
IBQuery1.SQL.Add ('Select * From AUTORIZ where LOGI='''+logedit.text+''' and PASS='''+PwEdit.Text+''' ');
IBQuery1.open;
if not ibquery1.eof then
begin
 showmessage('Вы успешно авторизовались');
 avtorizform.Close;
end
else
showmessage ('Ваши данные для входа оказались неверны')
end;
end;

end.
