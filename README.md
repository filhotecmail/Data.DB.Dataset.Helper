# Data.DB.Dataset.Helper
Um Helper para TDataset

# O que são Helpers
Helpers é um recurso muito poderoso do Delphi e em outras linguagens, adicionam novas funcionalidades a um Objeto sem a necessidade de se fazer herança ou utilizar classes mediadoras e tudo isso em runtime.

# Um Encurtador Genérico para a Chamada FieldByName('').
 Para encurtar o caminho e tornar nosso desenvolvimento mais veloz, adicionei um novo método a classe Data.DB.TDataset, um método Field<T> Genérico.

 ```Delphi
   Function Field<T>(AFieldName: String ):T; overload;
  ```
Abaixo uns exemplos de uso.
```
with DBClientes do
 begin
 Field<Integer>('ID');
 Field<String>('Nome');
 Field<TDateTime>('data');
 end;
```
