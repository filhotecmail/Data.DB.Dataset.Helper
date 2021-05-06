# Data.DB.Dataset.Helper
Um Helper para TDataset

# O que são Helpers
Helpers é um recurso muito poderoso do Delphi e em outras linguagens, adicionam novas funcionalidades a um Objeto sem a necessidade de se fazer herança ou utilizar classes mediadoras e tudo isso em runtime.

# Para usar

 Adicione na sessão uses a unidade 
```Delphi
  Uses Data.DB.Dataset.Helper;

```

# Um Encurtador Genérico para a Chamada FieldByName('').
 Para encurtar o caminho e tornar nosso desenvolvimento mais veloz, adicionei um novo método a classe Data.DB.TDataset, um método Field<T> Genérico.

 ```Delphi
   function Field<T>(AFieldName: String; AValue:Variant ):TDataset; overload;
  ```
Abaixo uns exemplos de uso.
```
DBClientes
  .Append
  .Field<String>('Nome','Marcelo')
  .Field<Integer>('Numero',10)
  .post
  .Append
  .Field<String>('Nome','Luciana')
  .Field<Integer>('Numero',11)
  .post;
```
