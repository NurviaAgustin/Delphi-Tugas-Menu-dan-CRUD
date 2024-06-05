unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a : string;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
 DataModule1.Zkategori.SQL.Clear;
 DataModule1.Zkategori.SQL.Add('insert into kategori values(null,"'+edit1.Text+'")');
 DataModule1.Zkategori.ExecSQL;

 DataModule1.Zkategori.SQL.Clear;
 DataModule1.Zkategori.SQL.Add('select * from kategori');
 DataModule1.Zkategori.Open;
 ShowMessage('Data Berhasil Disimpan!');
 
end;

procedure TForm3.Button2Click(Sender: TObject);
begin            //kode update
with DataModule1.Zkategori do
begin
 SQL.Clear;
 SQL.Add('update kategori set name="'+edit1.Text+'" where id= "'+a+'"');
 ExecSQL;

 SQL.Clear;
 SQL.Add('select * from kategori');
 Open;
 end;
 ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.Button3Click(Sender: TObject);
begin              //kode delete
with DataModule1.Zkategori do
begin
 SQL.Clear;
 SQL.Add('delete from kategori where id= "'+a+'"');
 ExecSQL;

 SQL.Clear;
 SQL.Add('select * from kategori');
 Open;
end;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
edit1.Text:= DataModule1.Zkategori.Fields[1].AsString;
a:= DataModule1.Zkategori.Fields[0].AsString;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  DataModule1.Zkategori.SQL.Clear;
  DataModule1.Zkategori.SQL.Add ('SELECT * FROM kategori WHERE name LIKE "'+edit2.Text+'"');
  DataModule1.Zkategori.ExecSQL;
  DataModule1.Zkategori.Open;
end;

end.
