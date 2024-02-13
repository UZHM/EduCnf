
&AtClient
Procedure ТоварыКоличествоOnChange(Item)
	СуммаДокумента();
EndProcedure

&AtClient
Procedure ТоварыЦенаOnChange(Item)
	СуммаДокумента();
EndProcedure

&AtClient
Procedure СуммаДокумента()
	
	Sum = 0;
	Для каждого El из Object.Товары Цикл
		Sum = Sum + (El.Количество * El.Цена);
	КонецЦикла;
	 
	Object.Сумма = Sum;

EndProcedure
