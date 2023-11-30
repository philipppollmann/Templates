-- setup.sql

USE RainRadar;
GO

CREATE TABLE RainRadarJson (
    ID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Wert INT
);
GO
