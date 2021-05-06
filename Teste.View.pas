unit Teste.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB.Dataset.Helper, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Datasnap.DBClient,MidasLib, VarRecUtils;

type
  TForm3 = class(TForm)
    DBClientes: TClientDataSet;
    DBClientesID: TIntegerField;
    DBClientesNome: TStringField;
    DBClientesData: TDateField;
    DBClientesHora: TTimeField;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure AfterConstruction; override;
    { Public declarations }

  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

{ TForm3 }

procedure TForm3.AfterConstruction;
begin
  inherited;
 with DBClientes do
 begin
  InsertRecord([0,'Carlos',now,Now]);
  InsertRecord([1,'Alessandro',now,Now]);
  InsertRecord([2,'Vanessa',now,Now]);
  InsertRecord([3,'Natalia',now,Now]);
  InsertRecord([4,'Marcelo',now,Now]);
  InsertRecord([5,'Rodrigo',now,Now]);
  InsertRecord([6,'Rosana',now,Now]);
  InsertRecord([7,'Vania',now,Now]);
 end;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  with DBClientes do
 begin
 ShowMessage(Field<Integer>('ID').ToString);
 ShowMessage(Field<String>('Nome'));
 ShowMessage(DateTostr(Field<TDateTime>('data')));
 end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
 DBClientes
  .Insertrecords(
  [ [8,'Areovaldo quaresma',now,Now],
    [9,'MarceloBispo',now,Now],
    [10,'Chicago Bulls',now,Now]
  ]);
end;

end.
