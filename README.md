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
   {Utilize para setar Valores no TField de Forma mais Curta e concisa}
   function FieldSet<T>(AFieldName: String; AValue:Variant ):TDataset; overload;
   {recipera o TField}
   function Field( AFieldName: String ):TFIeld; overload;
  ```
Abaixo uns exemplos de uso.
```
DBClientes
  .Append
  .FieldSet<String>('Nome','Marcelo')
  .FieldSet<Integer>('ID',10)
  .post
  .Append
  .FieldSet<String>('Nome','Luciana')
  .FieldSet<Integer>('ID',11)
  .post;
```
Recuperando o TField de forma mais Curta 
```
DBClientes.Field('Nome').Asstring;
```  
