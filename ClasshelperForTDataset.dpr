program ClasshelperForTDataset;

uses
  Vcl.Forms,
  Teste.View in 'Teste.View.pas' {Form3},
  Data.DB.Dataset.Helper in 'Data.DB.Dataset.Helper.pas',
  VarRecUtils in 'VarRecUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
