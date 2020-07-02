
//----------------------------------------
// The code is automatically generated by the GenlibLcl tool.
// Copyright © ying32. All Rights Reserved.
// 
// Licensed under Apache License 2.0
//
//----------------------------------------

function HeaderSections_Create(AOwner: TCustomHeaderControl): THeaderSections; extdecl;
begin
  handleExceptionBegin
  Result :=  THeaderSections.Create(AOwner);
  handleExceptionEnd
end;

procedure HeaderSections_Free(AObj: THeaderSections); extdecl;
begin
  handleExceptionBegin
  AObj.Free;
  handleExceptionEnd
end;

function HeaderSections_Add(AObj: THeaderSections): THeaderSection; extdecl;
begin
  handleExceptionBegin
  Result :=  AObj.Add;
  handleExceptionEnd
end;

function HeaderSections_AddItem(AObj: THeaderSections; Item: THeaderSection; Index: Integer): THeaderSection; extdecl;
begin
  handleExceptionBegin
  Result :=  AObj.AddItem(Item, Index);
  handleExceptionEnd
end;

function HeaderSections_Insert(AObj: THeaderSections; Index: Integer): THeaderSection; extdecl;
begin
  handleExceptionBegin
  Result :=  AObj.Insert(Index);
  handleExceptionEnd
end;

function HeaderSections_Owner(AObj: THeaderSections): TPersistent; extdecl;
begin
  handleExceptionBegin
  Result :=  AObj.Owner;
  handleExceptionEnd
end;

procedure HeaderSections_Assign(AObj: THeaderSections; Source: TPersistent); extdecl;
begin
  handleExceptionBegin
  AObj.Assign(Source);
  handleExceptionEnd
end;

procedure HeaderSections_BeginUpdate(AObj: THeaderSections); extdecl;
begin
  handleExceptionBegin
  AObj.BeginUpdate;
  handleExceptionEnd
end;

procedure HeaderSections_Clear(AObj: THeaderSections); extdecl;
begin
  handleExceptionBegin
  AObj.Clear;
  handleExceptionEnd
end;

procedure HeaderSections_Delete(AObj: THeaderSections; Index: Integer); extdecl;
begin
  handleExceptionBegin
  AObj.Delete(Index);
  handleExceptionEnd
end;

procedure HeaderSections_EndUpdate(AObj: THeaderSections); extdecl;
begin
  handleExceptionBegin
  AObj.EndUpdate;
  handleExceptionEnd
end;

function HeaderSections_FindItemID(AObj: THeaderSections; ID: Integer): TCollectionItem; extdecl;
begin
  handleExceptionBegin
  Result :=  AObj.FindItemID(ID);
  handleExceptionEnd
end;

function HeaderSections_GetNamePath(AObj: THeaderSections): PChar; extdecl;
begin
  handleExceptionBegin
  Result :=  PChar(AObj.GetNamePath);
  handleExceptionEnd
end;

function HeaderSections_ClassType(AObj: THeaderSections): TClass; extdecl;
begin
  handleExceptionBegin
  Result :=  AObj.ClassType;
  handleExceptionEnd
end;

function HeaderSections_ClassName(AObj: THeaderSections): PChar; extdecl;
begin
  handleExceptionBegin
  Result :=  ToPChar(AObj.ClassName);
  handleExceptionEnd
end;

function HeaderSections_InstanceSize(AObj: THeaderSections): Integer; extdecl;
begin
  handleExceptionBegin
  Result :=  AObj.InstanceSize;
  handleExceptionEnd
end;

function HeaderSections_InheritsFrom(AObj: THeaderSections; AClass: TClass): LongBool; extdecl;
begin
  handleExceptionBegin
  Result :=  AObj.InheritsFrom(AClass);
  handleExceptionEnd
end;

function HeaderSections_Equals(AObj: THeaderSections; Obj: TObject): LongBool; extdecl;
begin
  handleExceptionBegin
  Result :=  AObj.Equals(Obj);
  handleExceptionEnd
end;

function HeaderSections_GetHashCode(AObj: THeaderSections): Integer; extdecl;
begin
  handleExceptionBegin
  Result :=  AObj.GetHashCode;
  handleExceptionEnd
end;

function HeaderSections_ToString(AObj: THeaderSections): PChar; extdecl;
begin
  handleExceptionBegin
  Result :=  PChar(AObj.ToString);
  handleExceptionEnd
end;

function HeaderSections_GetCount(AObj: THeaderSections): Integer; extdecl;
begin
  handleExceptionBegin
  Result :=  AObj.Count;
  handleExceptionEnd
end;

function HeaderSections_GetItems(AObj: THeaderSections; Index: Integer): THeaderSection; extdecl;
begin
  handleExceptionBegin
  Result :=  AObj.Items[Index];
  handleExceptionEnd
end;

procedure HeaderSections_SetItems(AObj: THeaderSections; Index: Integer; AValue: THeaderSection); extdecl;
begin
  handleExceptionBegin
  AObj.Items[Index] := AValue;
  handleExceptionEnd
end;

function HeaderSections_StaticClassType: TClass; extdecl;
begin
  Result := THeaderSections;
end;

exports
  HeaderSections_Create,
  HeaderSections_Free,
  HeaderSections_Add,
  HeaderSections_AddItem,
  HeaderSections_Insert,
  HeaderSections_Owner,
  HeaderSections_Assign,
  HeaderSections_BeginUpdate,
  HeaderSections_Clear,
  HeaderSections_Delete,
  HeaderSections_EndUpdate,
  HeaderSections_FindItemID,
  HeaderSections_GetNamePath,
  HeaderSections_ClassType,
  HeaderSections_ClassName,
  HeaderSections_InstanceSize,
  HeaderSections_InheritsFrom,
  HeaderSections_Equals,
  HeaderSections_GetHashCode,
  HeaderSections_ToString,
  HeaderSections_GetCount,
  HeaderSections_GetItems,
  HeaderSections_SetItems,
  HeaderSections_StaticClassType;
