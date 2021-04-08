unit Spisok;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet,
  IBX.IBQuery, IBX.IBDatabase, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TDobavRab = class(TForm)
    Kodrab: TEdit;
    Label1: TLabel;
    Imrab: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Famrab: TEdit;
    Telrab: TEdit;
    Label5: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    Button8: TButton;
    IBQuery2: TIBQuery;
    ComboBox1: TComboBox;
    IBQuery1: TIBQuery;
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  Tspisok = class (tobject)
  kodrab: integer;
  imrab: string;
  famrab: string;
  telrab: string;
  dolj: string;
  procedure datavalue;
  procedure showdata;
  end;

var
  DobavRab: TDobavRab;
  Spisokr:Tspisok;
  slid,slname:TstringList;

implementation

{$R *.dfm}

 procedure Tspisok.datavalue;
begin  //задаем значения едитам по записям в БД
spisokr.kodrab:=DobavRab.IBQuery1.Fields[0].AsInteger;
spisokr.imrab:=DobavRab.IBQuery1.Fields[1].AsString;
spisokr.famrab:=DobavRab.IBQuery1.Fields[2].AsString;
spisokr.telrab:=DobavRab.IBQuery1.Fields[3].AsString;
DobavRab.Combobox1.text:=DobavRab.IBQuery1.Fields[4].Value;
end;

procedure Tspisok.showdata;
begin
DobavRab.kodrab.Text:=inttostr(spisokr.kodrab);
DobavRab.imrab.Text:=spisokr.imrab;
DobavRab.famrab.Text:=spisokr.famrab;
DobavRab.telrab.Text:=spisokr.telrab;
DobavRab.Combobox1.text:=DobavRab.IBQuery1.Fields[4].Value;
end;

procedure TDobavRab.Button1Click(Sender: TObject);
begin //добавить
imrab.Clear;
famrab.clear;
telrab.clear;
ibQuery1.Last;
kodrab.Text:=ibQuery1.FieldByName('id_rabotnic').Value+ '1';
end;

procedure TDobavRab.Button3Click(Sender: TObject);
begin   //удалить
IBQuery1.SQL.Text:='DELETE from rabotnic where ID_rabotnic='+DobavRab.kodrab.Text;
IBQuery1.ExecSQL;

IbTransaction1.Commit;
IBQuery1.Active:=false;
IBQuery1.Active:=true;
IBQuery1.Last;
Spisokr.datavalue;
Spisokr.showdata;
end;

procedure TDobavRab.Button4Click(Sender: TObject);
begin        //в начало

if not Ibquery1.Bof then
begin
Ibquery1.First;
Spisokr.datavalue;
Spisokr.showdata;
end
else
showmessage('В начале');
end;

procedure TDobavRab.Button5Click(Sender: TObject);
begin              //вперед
if not IBQuery1.Eof then
begin
IBQuery1.Next;
Spisokr.datavalue;
Spisokr.showdata;
end
else
showmessage('В конце');
end;

procedure TDobavRab.Button6Click(Sender: TObject);
begin               //назад
if not IBQuery1.Bof then
begin
IBQuery1.Prior;
Spisokr.datavalue;
Spisokr.showdata;
end
else
showmessage('В начале');
end;

procedure TDobavRab.Button7Click(Sender: TObject);
begin                 //в конец
if not IBQuery1.Eof then
begin
IBQuery1.Last;
Spisokr.datavalue;
Spisokr.showdata;
end
else
showmessage('В конце');
end;

procedure TDobavRab.Button8Click(Sender: TObject);
begin                //выбераем значения которые хотим вводить в таблице
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('insert into rabotnic values');
  IBQuery1.SQL.Add('('''+kodrab.text+''','''+imrab.text+''','''+famrab.Text+''','''+telrab.text+''','''+slID[combobox1.ItemIndex]+''')');
  IBQuery1.ExecSQL;
  IBQuery1.Active := false;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('commit');
  Showmessage('Добавлено');
  IBTransaction1.commit;
end;


procedure TDobavRab.FormActivate(Sender: TObject);
begin
Spisokr:=Tspisok.Create;
Spisokr.datavalue;
Spisokr.showdata;

DobavRab.kodrab.Text:=IBQuery1.FieldByName('id_rabotnic').Value;
DobavRab.imrab.text:=IBQuery1.FieldByName('namerab').Value;
DobavRab.famrab.text:=IBQuery1.FieldByName('lastrab').Value;
DobavRab.telrab.text:=IBQuery1.FieldByName('tel_rab').Value;
end;

procedure TDobavRab.FormCreate(Sender: TObject);
begin
slid:=TstringList.Create;
slname:=TstringList.Create;
while not ibquery2.eof do
begin
  slid.Add(ibquery2.Fields[0].value);
  slname.Add(ibquery2.Fields[1].value);
  ibquery2.Next;
end;
combobox1.Items.AddStrings(slname);
end;

end.

