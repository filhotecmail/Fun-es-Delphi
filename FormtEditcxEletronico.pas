procedure Edit.OnChange(Sender: TObject);
 var
  LText: string;
  LValue: double;
  I: integer;
  LComponent: TEdit;
  LTam: Integer;
  LDefault: Variant;
begin

  LComponent:= TEdit(Sender);
  LDefault := FormatFloat('###,##0.00', 0);

 If (LComponent.Text = emptystr) then
     LComponent.Text := LDefault;

 LText := EmptyStr;
 LTam  := length(LComponent.Text);

 for i := 1 to LTam do
  if CharInset(LComponent.Text[i], ['0' .. '9']) then
      LText := LText + LComponent.Text[i];

 LValue := strtofloat(LText);
 LValue := (LValue / 100);

 LComponent.Text := FormatFloat('###,##0.00', LValue);
 LComponent.selstart := 0;
 LComponent.selstart := length(LComponent.Text);

end;
