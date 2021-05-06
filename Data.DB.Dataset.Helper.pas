unit Data.DB.Dataset.Helper;

interface
  USes System.Types, System.SysUtils, System.Classes, System.Variants, System.MaskUtils,
      System.Generics.Collections, Data.SqlTimSt, Data.FmtBcd, Data.DBCommonTypes,Data.DB,System.TypInfo,RTTI,
      VarRecUtils;

  type TDatasetHelper = class Helper for Data.DB.TDataset
       public
       function Field<T>(AFieldName: String; AValue:Variant ):TDataset; overload;
       function Field( AFieldName: String ):TFIeld; overload;
       function InsertArrayRecords(const Values: TArray<TConstArray>):TDataset; overload;
       function Append:TDataset;
       function Post:TDataset;
  end;


implementation

{ TFieldHelper }

function TDatasetHelper.Append: TDataset;
begin
 Result:= Self;
 inherited Append;
end;

function TDatasetHelper.Field(AFieldName: String): TFIeld;
begin
 Result := FieldByName(AFieldName)
end;

function TDatasetHelper.Field<T>(AFieldName: String; AValue:Variant): TDataset;
begin
 Result:= Self;
 Field(AFieldName).Value := AValue;
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

function TDatasetHelper.Post: TDataset;
begin
 result:= Self;
 inherited post;
end;

end.
