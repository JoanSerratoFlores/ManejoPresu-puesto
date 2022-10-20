-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE Transacciones_Actualizar
	-- Add the parameters for the stored procedure here
	@Id int,
	@FechaTransaccion datetime,
	@Monto decimal(18,2),
	@MontoAnterior decimal(18,2),
	@CuentaId int,
	@CuentaAnteriorId int,
	@CategoriaId int,
	@Nota nvarchar(100)=NULL
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--Revertir accion anterior
	UPDATE Cuentas
	SET Balance -= @MontoAnterior
	WHERE Id = @CuentaAnteriorId

	--Realizar accion anterior
	UPDATE Cuentas
	SET Balance += @Monto
	WHERE Id = @CuentaId

	UPDATE Transacciones
	SET Monto = ABS (@Monto),FechaTransaccion=@FechaTransaccion,
	CategoriaId=@CategoriaId,CuentaId=@CuentaId,Nota=@Nota
	WHERE Id=@Id;
	END
