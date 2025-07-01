CREATE TABLE CuentaResultadosWebPrueba (
    CuentaId INT IDENTITY(1,1) PRIMARY KEY,
    PacienteId BIGINT NOT NULL,
    CorreoElectronico NVARCHAR(50) NULL,
    Telefono NVARCHAR(10) NULL,
    Contrasenia NVARCHAR(20) NOT NULL
);

-- ------------------------------------------------------
-- Insert de prueba (descomentar si desea probar la tabla)
-- ------------------------------------------------------
-- INSERT INTO Cuentas (PacienteId, CorreoElectronico, Telefono, Contrasenia)
-- VALUES (13825, 'C@gmail.com', '6421147167', '1234');

-- INSERT INTO Cuentas (PacienteId, CorreoElectronico, Telefono, Contrasenia)
-- VALUES (37, 'Example@gmail.com', '6421147168', '1234');

-- INSERT INTO Cuentas (PacienteId, CorreoElectronico, Telefono, Contrasenia)
-- VALUES (2264, 'IOIO@gmail.com', '6421147188', '1234');