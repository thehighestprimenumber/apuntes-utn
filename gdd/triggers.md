Trigger = transacción que puede ejecutarse antes, durante o después, en respuesta a un evento (insert, update, delete). El evento + la transaccion del trigger es una transacción en sí. si algo falla en el trigger, rollbackea todo.



```plsql
create trigger tr_ejemplo on factura 
AFTER insert, update, delete --tambien llamado "for"
AS
Begin transaction
-- tiene tablas temporales inserted, deleted. los updated quedan como inserted y deleted.
	DECLARE @mes int
	DECLARE @anio int
	DECLARE @importe decimal (12,2)
	DECLARE mi_cursor cursor for 
		select month(factura.fecha), year(factura.fecha), fact.importe from inserted
		UNION
		select month(factura.fecha), year(factura.fecha), -1 * fact.importe from deleted
		open mi_cursor
		fetch mi crusor into @mes, @anio, @importe
		while @@fetch_status = 0
		BEGIN
			update venta set imported = importe + @importe
			where mes = @mes and anio = @anio
			if @@row_count = 0
				insert into vta(mes, anio, importe)
					values (@mes, @anio, @importe)
            fetch mi crusor into @mes, @anio, @importe
        END
        close mi_cursor
        deallocate mi_cursor
        commit;
END;
```

Nivel de Aislamiento:

Dato fantasma en el insert de la primer venta del mes. -> uso aislamiento "serializable"

```plsql
create trigger tr_ejemplo on cliente
instead of delete
as 
begin transaction
	delete item_factura I where exists 
		(select 1 from factura f, deleted d 
         where d.idcliente = f.fact_cliente 
         and f.fact_sucursal = i.item_sucursal
         and f. fact_tipo = i.item_tipo
         and f.factura_numero = i.item_numero)
    delete factura where exists (
        select 1 from deleted where f.idcliente = d.idcliente
        )
   delete cliente where exists (select 1 from delete)
   commit;
```

RECURSIVIDAD

Directa: se llama a sí mismo. se puede configurar para que no haya pero mejor resolverlo como programador.

Indirecta: un trigger llama a otro (no funciona en el instead of).

==Integridad referencial==

conjunto de instrucciones con propiedades "ASID"



# Ejercicio tipo parcial

1.  implemente los objetos necesiarios para 	

    1.  que cada vez que se realiza una venta, se descuente el stock si lo hay. sino, no se puede realizar la venta
    2.  Si en la venta entra un producto compuesto, descontar del stock, sus componentes

    Siempre descontar del deposito 00.

    ```
    create trigger validar_stock on Venta
    after insert
    as begin transaction

    ```

    ​