create trigger validar_stock on Venta
after insert
as begin transaction
declare @idproducto long
declare @cantidad int
declare cur cursor for
	select venta.idproducto, venta.cantidad from inserted
	open cur 
	fetch cur into @idproducto, @cantidad
	while @@fetch_status = 0
	begin
		update stock set cantidad = cantidad - @cantidad
		where iddeposito=00 and idproducto =@idproducto
		if cantidad < 0
		BEGIN
			close cur
			deallocate cur
			rollback;
		END
	END
END

