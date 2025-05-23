USE [liPruebas]
GO
/****** Object:  StoredProcedure [dbo].[SP_ValidarCredencialesCuentaLaboratoriosWeb]    Script Date: 23/05/2025 04:10:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_ValidarCredencialesCuentaLaboratoriosWeb]
    @Usuario NVARCHAR(50), -- Puede ser correo o teléfono
    @Contrasenia NVARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1
        FROM hiPruebas24.dbo.CuentaResultadosWeb
        WHERE (CorreoElectronico = @Usuario OR Telefono = @Usuario)
          AND Contrasenia = @Contrasenia
    )
    BEGIN
        SELECT 'Inicio de sesión exitoso' AS mensaje;
    END
    ELSE
    BEGIN
        SELECT 'Credenciales inválidas' AS mensaje;
    END
END;