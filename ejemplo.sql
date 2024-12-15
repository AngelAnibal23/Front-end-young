-- Crear la tabla
CREATE TABLE Personas (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Edad INT,
    Ciudad VARCHAR(50)
);

-- Insertar datos
INSERT INTO Personas (ID, Nombre, Edad, Ciudad)
VALUES
(1, 'Ana', 25, 'Lima'),
(2, 'Juan', 30, 'Arequipa');
 

SELECT * FROM Personas;
