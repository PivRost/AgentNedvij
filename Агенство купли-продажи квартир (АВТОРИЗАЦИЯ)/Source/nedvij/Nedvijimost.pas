unit Nedvijimost;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, IBX.IBDatabase,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.StdCtrls, IBX.IBTable, Vcl.Grids,
  Vcl.DBGrids;

type
  TNedv = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Nachalo: TButton;
    vverx: TButton;
    vniz: TButton;
    konec: TButton;
    IBDatabase1: TIBDatabase;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    IBTable1: TIBTable;
    IBQuery1ID_NEDV: TIntegerField;
    IBQuery1ID_TIPNEDVIJ: TIntegerField;
    IBQuery1ADRESSNEDVIJ: TIBStringField;
    IBQuery1STOIMNEDVIJ: TFloatField;
    SoxrBut: TButton;
    DelBut: TButton;
    procedure N1Click(Sender: TObject);
    procedure konecClick(Sender: TObject);
    procedure NachaloClick(Sender: TObject);
    procedure vverxClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure vnizClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SoxrButClick(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Nedv: TNedv;
  procedure Tipnedvij; external 'Tipned.dll';

implementation

{$R *.dfm}

procedure TNedv.konecClick(Sender: TObject);
begin
begin
if not ibquery1.eof then                               // � �����
ibquery1.last else
messageDlg('����� ������',mtinformation,[Mbok],0);
end;
end;

procedure TNedv.N1Click(Sender: TObject);
begin
Tipnedvij;
end;

procedure TNedv.NachaloClick(Sender: TObject);
begin
if not ibquery1.bof then
ibquery1.first else                                 //   � ������
messageDlg('������ ������',mtinformation,[Mbok],0);
end;

procedure TNedv.VnizClick(Sender: TObject);
var
i:integer;
begin
if not ibquery1.eof then
begin
ibquery1.next;
for I:= 1 to 20 do
begin
edit1.text:=ibquery1.fieldbyname('id_nedv').Value;
edit2.text:=ibquery1.FieldByName('id_tipnedvij').Value;
edit3.text:=ibquery1.fieldbyname('adressnedvij').Value;
edit4.text:=ibquery1.FieldByName('stoimnedvij').Value;
end
end
else
messageDlg('����� ������',mtinformation,[Mbok],0);
end;

procedure TNedv.vverxClick(Sender: TObject);
var
i:integer;
begin
if not ibquery1.bof then
begin                              //     �����
ibquery1.prior;
for I:= 1 to 20 do
begin
edit1.text:=ibquery1.fieldbyname('id_nedv').Value;
edit2.text:=ibquery1.FieldByName('id_tipnedvij').Value;
edit3.text:=ibquery1.fieldbyname('adressnedvij').Value;
edit4.text:=ibquery1.FieldByName('stoimnedvij').Value;
end
end
else
messageDlg('������ ������',mtinformation,[Mbok],0);
end;

procedure TNedv.Button1Click(Sender: TObject);
var
id_nedv:string;
begin
edit2.clear;
edit3.clear;
edit4.clear;
ibQuery1.Last;
edit1.Text:=ibQuery1.FieldByName('ID_NEDV').Value+ '1';
end;

procedure TNedv.SoxrButClick(Sender: TObject);
begin
ibquery1.SQL.Add('INSERT INTO TIP_NEDVIJ VALUES('); //������
ibquery1.SQL.Add(edit2.text+''''+','+''''+edit3.text+''''+','+''''+edit4.text+''''+');');
ibquery1.Open;  //��������� ������
IbTransaction1.Commit;//������������ ����������
end;

procedure TNedv.Edit3Change(Sender: TObject);
begin
Edit1.MaxLength:=50
end;

procedure TNedv.FormActivate(Sender: TObject);
begin
edit1.text:= ibquery1.fieldbyname('ID_NEDV').value;
edit2.text:= ibquery1.fieldbyname ('ID_TIPNEDVIJ').value ;
edit3.text:= ibquery1.fieldbyname ('ADRESSNEDVIJ').value  ;
edit4.text:= ibquery1.fieldbyname ('STOIMNEDVIJ').value    ;
end;
end.
