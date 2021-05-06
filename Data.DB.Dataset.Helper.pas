unit Data.DB.Dataset.Helper;

interface
  USes System.Types, System.SysUtils, System.Classes, System.Variants, System.MaskUtils,
      System.Generics.Collections, Data.SqlTimSt, Data.FmtBcd, Data.DBCommonTypes,Data.DB,System.TypInfo,RTTI,
      VarRecUtils;

  type TDatasetHelper = class Helper for Data.DB.TDataset
       public
       function Field<T>(AFieldName: String ):T; overload;
       function Field( AFieldName: String ):TFIeld; overload;
       function InsertArrayRecords(const Values: TArray<TConstArray>):TDataset; overload;
  end;


implementation

{ TFieldHelper }

function TDatasetHelper.Field(AFieldName: String): TFIeld;
begin
 Result := FieldByName(AFieldName)
end;

function TDatasetHelper.Field<T>(AFieldName: String): T;
 var
   Info: PTypeInfo;
   FFIeld: TField;
begin
 try
  Info := System.TypeInfo(T);
  Result :=  TValue.FromVariant(FieldByName(AFieldName).Value).AsType<T>
 Except
  on E: Exception do
  raise Exception.Create(Format(concat('O tipo do Field %s não corresponde ao tipo %s que você está pedindo para'
    ,' o dataset %s o Field é do tipo %s e você está tipando como %s'),[ AFieldName,
          Info.TypeData.ClassType.ClassName,Name,FieldByName(AFieldName).ClassName,Info.TypeData.ClassType.ClassName]));

 end;
end;


function TDatasetHelper.InsertArrayRecords(const Values: TArray<TConstArray>): TDataset;
 var I: Integer;
begin
 Result:= Self;
 Last;
 for I := Low(Values) to High(Values) do
 begin
  InsertRecord(Values[I]);
  next;
 end;
end;

end.
