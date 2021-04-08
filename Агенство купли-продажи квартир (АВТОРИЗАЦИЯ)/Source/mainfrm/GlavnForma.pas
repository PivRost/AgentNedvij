unit GlavnForma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.StdCtrls,ShellAPI, Data.DB, IBX.IBCustomDataSet,
  IBX.IBQuery, IBX.IBDatabase, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N5: TMenuItem;
    N9: TMenuItem;
    Image1: TImage;
    N3: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N10: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure Avtoriz; external 'Avoriz.dll';
procedure Registr; external 'Registrator.dll';
procedure DobavC; external 'dobavclienta.dll';
procedure Tipnedvij; external 'Tipned.dll';
procedure Nedvijimost; external 'Nedvij.dll';
procedure DobavR; external 'SpisokRab.dll';
procedure Dogovorp;external 'Dogovor.dll';

procedure TForm1.N10Click(Sender: TObject);
begin
DobavR;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Avtoriz;//открываем форму авторизации через меню
N6.Enabled:=true;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
//отключение БД
     N2.Enabled:=true;
     N6.Enabled:=false;
end;
procedure TForm1.N7Click(Sender: TObject);
begin
Nedvijimost;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
DobavC;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
Dogovorp;
end;

end.
