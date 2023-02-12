USE MASTER
GO
ALTER DATABASE climate
SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE climate
GO

CREATE DATABASE climate;
GO

USE climate;
GO


--table core register climate

IF EXISTS (SELECT 1 FROM sysobjects WHERE id = OBJECT_ID('dbo.tblWeatherForecast'))
BEGIN
	DROP TABLE tblWeatherForecast;
END 

CREATE TABLE tblWeatherForecast
(
	ID BIGINT PRIMARY KEY NONCLUSTERED IDENTITY(1,1),
	ClimaticDescription VARCHAR(200) NOT NULL,
	DateRegister DATETIME NOT NULL,
	Temperature DECIMAL(3,1) NOT NULL,
	IdTypeTemperature INT NOT NULL,
	IdClimaticPhenomenon INT NULL,
	IdAlert INT NULL,
	IdWeatherStation INT NOT NULL,
	StateRegister INT NOT NULL
)

EXEC sys.sp_addextendedproperty
@name = N'desc_tblWeatherForecast',
@value = N'Core table of the climatic record',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE' , @level1name = N'tblWeatherForecast';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_ClimaticDescription',
@value = N'Stores state of register of the weather log',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblWeatherForecast',
@level2type = N'COLUMN', @level2name = N'StateRegister';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_ClimaticDescription',
@value = N'Stores the description of the weather log',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblWeatherForecast',
@level2type = N'COLUMN', @level2name = N'ClimaticDescription';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_DateRegister',
@value = N'Stores the date of the weather log',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblWeatherForecast',
@level2type = N'COLUMN', @level2name = N'DateRegister';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_Temperature',
@value = N'Stores the temperature of the weather log',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblWeatherForecast',
@level2type = N'COLUMN', @level2name = N'Temperature';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_IdTypeTemperature',
@value = N'Stores the id of the temperature type',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblWeatherForecast',
@level2type = N'COLUMN', @level2name = N'IdTypeTemperature';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_IdClimaticPhenomenon',
@value = N'Stores the id of the weather phenomenon type',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblWeatherForecast',
@level2type = N'COLUMN', @level2name = N'IdClimaticPhenomenon';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_IdAlert',
@value = N'Stores the id of the weather alert type',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblWeatherForecast',
@level2type = N'COLUMN', @level2name = N'IdAlert';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_IdWeatherStation',
@value = N'Stores the id of the weather station type that validated the record',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblWeatherForecast',
@level2type = N'COLUMN', @level2name = N'IdWeatherStation';
GO



-- Weather Station

IF EXISTS (SELECT 1 FROM sysobjects WHERE id = OBJECT_ID('dbo.tblWeatherStation'))
	BEGIN
		DROP TABLE tblWeatherStation;
	END

CREATE TABLE tblWeatherStation
(
	ID INT PRIMARY KEY CLUSTERED IDENTITY(1,1),
	NumStation INT NOT NULL,
	NameStation VARCHAR(200) NOT NULL,
	Id_Territory INT NOT NULL
);
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_tblWeatherStation',
@value = N'Stores the code and description of the station that takes the climatic measurement',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblWeatherStation';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_NameStation',
@value = N'Stores the name of the weather station',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblWeatherStation',
@level2type = N'COLUMN', @level2name = N'NameStation';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_NumStation',
@value = N'Stores the id of the weather station',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblWeatherStation',
@level2type = N'COLUMN', @level2name = N'NumStation';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_Id_Territory',
@value = N'SIdentifies the Id of the territory to which the station belongs',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblWeatherStation',
@level2type = N'COLUMN', @level2name = N'Id_Territory';
GO


--table tblTerritory

IF EXISTS (SELECT 1 FROM sysobjects WHERE id = OBJECT_ID('dbo.tblTerritory'))
BEGIN
  DROP TABLE tblTerritory;
END

CREATE TABLE tblTerritory
(
	ID INT PRIMARY KEY CLUSTERED IDENTITY(1,1),
	NameTerritory VARCHAR(100) NOT NULL,
	Id_Country INT NOT NULL
)

EXEC sys.sp_addextendedproperty
@name = N'desc_tblTerritory',
@value = N'Table that stores the territories of a country',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblTerritory';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_NameTerritory',
@value = N'Name of the territory belonging to the country',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblTerritory',
@level2type = N'COLUMN', @level2name = N'NameTerritory';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_Id_Country',
@value = N'Foreign key that associates a country to N territories',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblTerritory',
@level2type = N'COLUMN', @level2name = N'Id_Country';
GO


--Table country

IF EXISTS (SELECT 1 FROM sysobjects WHERE id = OBJECT_ID('dbo.tblCountry'))
BEGIN
	DROP TABLE tblCountry;
END 

CREATE TABLE tblCountry
(
	ID INT PRIMARY KEY CLUSTERED IDENTITY(1,1),
	NameCountry VARCHAR(100) NOT NULL
)

EXEC sys.sp_addextendedproperty
@name = N'desc_tblCountry',
@value = N'Table that stores climate record countries',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblCountry';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_tblCountry',
@value = N'Country name for weather record',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblCountry',
@level2type = N'COLUMN', @level2name = N'NameCountry';
GO


-- Table tblClimaticPhenomenon

IF EXISTS (SELECT 1 FROM sysobjects WHERE id = OBJECT_ID('dbo.tblClimaticPhenomenon'))
	BEGIN
		DROP TABLE tblClimaticPhenomenon;
	END

CREATE TABLE tblClimaticPhenomenon
(
	ID INT PRIMARY KEY CLUSTERED IDENTITY(1,1),
	DescriptionClimaticPhenomenon VARCHAR(600) NOT NULL
)

EXEC sys.sp_addextendedproperty
@name = N'desc_tblClimaticPhenomenon',
@value = N'Stores weather phenomena, based on IDEAM',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblClimaticPhenomenon';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_DescriptionClimaticPhenomenon',
@value = N'Stores the description of the climatic phenomenon',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblClimaticPhenomenon',
@level2type = N'COLUMN', @level2name = N'DescriptionClimaticPhenomenon';
GO


--Table Alert

IF EXISTS (SELECT 1 FROM sysobjects WHERE id = OBJECT_ID('dbo.tblAlert'))
	BEGIN
		DROP TABLE tblAlert;
	END

CREATE TABLE tblAlert
(
	ID INT PRIMARY KEY CLUSTERED IDENTITY(1,1),
	NameAlert VARCHAR(20) NOT NULL
) 

EXEC sys.sp_addextendedproperty
@name = N'desc_tblAlert',
@value = N'Stores the type of alert, Yellow, orange or red. Based on IDEAM',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblAlert';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_NameAlert',
@value = N'Stores the name of the alert',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblAlert',
@level2type = N'COLUMN', @level2name = N'NameAlert';
GO


--Table TypeTemperature

IF EXISTS (SELECT 1 FROM sysobjects WHERE id = OBJECT_ID('dbo.tblTypeTemperature'))
	BEGIN
		DROP TABLE tblTypeTemperature;
	END

CREATE TABLE tblTypeTemperature
(
	ID INT PRIMARY KEY CLUSTERED IDENTITY(1,1),
	NameTypeTemp VARCHAR(20) NOT NULL
)

EXEC sys.sp_addextendedproperty
@name = N'desc_tblTypeTemperature',
@value = N'Stores the type of temperature',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblTypeTemperature';
GO

EXEC sys.sp_addextendedproperty
@name = N'desc_NameTypeTemp',
@value = N'Stores the name of type of temperature',
@level0type = N'SCHEMA', @level0name = N'dbo',
@level1type = N'TABLE', @level1name = N'tblTypeTemperature',
@level2type = N'COLUMN', @level2name = N'NameTypeTemp';
GO

--Table Users
CREATE TABLE tblUsers
(
ID INT PRIMARY KEY CLUSTERED IDENTITY(1,1),
userName VARCHAR(1000) NOT NULL,
userPassword VARCHAR(1000) NOT NULL
)

--CONSTRAINTS, INDEXERS 


--tblWeatherForecast

ALTER TABLE tblWeatherForecast ADD CONSTRAINT FK_IdTypeTemperature FOREIGN KEY (IdTypeTemperature) REFERENCES tblTypeTemperature (ID)
GO

ALTER TABLE tblWeatherForecast ADD CONSTRAINT FK_IdClimaticPhenomenon FOREIGN KEY (IdClimaticPhenomenon) REFERENCES tblClimaticPhenomenon (ID)
GO

ALTER TABLE tblWeatherForecast ADD CONSTRAINT FK_IdAlert FOREIGN KEY (IdAlert) REFERENCES tblAlert (ID)
GO

ALTER TABLE tblWeatherForecast ADD CONSTRAINT FK_IdWeatherStation FOREIGN KEY (IdWeatherStation) REFERENCES tblWeatherStation (ID)
GO

CREATE CLUSTERED INDEX IX_DateRegister ON tblWeatherForecast(DateRegister)
GO

CREATE NONCLUSTERED INDEX IX_IdTypeTemperature ON tblWeatherForecast(IdTypeTemperature) WITH(FILLFACTOR=80)
GO

CREATE NONCLUSTERED INDEX IX_IdClimaticPhenomenon ON tblWeatherForecast(IdClimaticPhenomenon) WITH(FILLFACTOR=80)
GO 

CREATE NONCLUSTERED INDEX IX_IdAlert ON tblWeatherForecast(IdAlert) WITH(FILLFACTOR=80)
GO 

CREATE NONCLUSTERED INDEX IX_IdWeatherStation ON tblWeatherForecast(IdWeatherStation) WITH(FILLFACTOR=80)
GO



--tblWeatherStation
ALTER TABLE tblWeatherStation ADD CONSTRAINT FK_Id_Territory FOREIGN KEY (Id_Territory) REFERENCES tblTerritory (ID)
GO

CREATE NONCLUSTERED INDEX IX_Id_Territory ON tblWeatherStation(Id_Territory) WITH (FILLFACTOR=80)
GO


--tblTerritory
ALTER TABLE tblTerritory ADD CONSTRAINT FK_Id_Country FOREIGN KEY (Id_Country) REFERENCES tblCountry (ID)
GO

CREATE NONCLUSTERED INDEX IX_Id_Country ON tblTerritory(Id_Country) WITH (FILLFACTOR=80)
GO