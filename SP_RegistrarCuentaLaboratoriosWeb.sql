USE [liPruebas]
GO
/****** Object:  StoredProcedure [dbo].[SP_RegistrarCuentaLaboratoriosWeb]    Script Date: 23/05/2025 01:56:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_RegistrarCuentaLaboratoriosWeb]
    @Pacienteid NVARCHAR(20),
    @Correo NVARCHAR(100),
    @Telefono NVARCHAR(20),
    @Contrasenia NVARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    -- Validar si ya existe un usuario con ese correo o teléfono
    IF EXISTS (
        SELECT 1
        FROM hiPruebas24.dbo.CuentaResultadosWeb
        WHERE CorreoElectronico = @Correo OR Telefono = @Telefono
    )
    BEGIN
        SELECT 'Ya existe una cuenta con ese correo o teléfono' AS mensaje;
        RETURN;
    END

    -- Insertar nueva cuenta
    INSERT INTO hiPruebas24.dbo.CuentaResultadosWeb (
        Pacienteid, CorreoElectronico, Telefono, Contrasenia
    )
    VALUES (
        @Pacienteid, @Correo, @Telefono, @Contrasenia
    );

    SELECT 'Cuenta registrada exitosamente' AS mensaje;
END;