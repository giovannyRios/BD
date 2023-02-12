USE [climate]
GO

--user Dummy
INSERT INTO [dbo].[tblUsers]([userName],[userPassword])VALUES('admin','admin123')

INSERT INTO [dbo].[tblCountry]([NameCountry]) VALUES ('Colombia')
DECLARE @ID INT = (SELECT ID FROM [dbo].[tblCountry])

INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Bogotá',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Amazonas',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Antioquia',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Arauca',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Atlántico',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Bolívar',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Boyacá',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Caldas',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Caquetá',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Casanare',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Cauca',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Cesar',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Chocó',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Córdoba',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Cundinamarca',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Guainía',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Guaviare',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Huila',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('La Guajira',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Magdalena',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Meta',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Nariño',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Norte de Santander',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Putumayo',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Quindío',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Risaralda',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('San Andrés y Providencia',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Santander',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Sucre',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Tolima',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Valle del Cauca',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Vaupés',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Vichada',@ID)


INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Bogotá-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Bogotá'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Bogotá-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Bogotá'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Bogotá-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Bogotá'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Amazonas-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Amazonas'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Amazonas-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Amazonas'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Amazonas-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Amazonas'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Antioquia-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Antioquia'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Antioquia-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Antioquia'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Antioquia-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Antioquia'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Arauca-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Arauca'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Arauca-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Arauca'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Arauca-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Arauca'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Atlántico-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Atlántico'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Atlántico-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Atlántico'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Atlántico-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Atlántico'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Bolívar-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Bolívar'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Bolívar-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Bolívar'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Bolívar-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Bolívar'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Boyacá-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Boyacá'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Boyacá-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Boyacá'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Boyacá-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Boyacá'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Caldas-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Caldas'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Caldas-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Caldas'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Caldas-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Caldas'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Caquetá-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Caquetá'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Caquetá-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Caquetá'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Caquetá-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Caquetá'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Casanare-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Casanare'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Casanare-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Casanare'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Casanare-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Casanare'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cauca-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cauca'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cauca-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cauca'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cauca-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cauca'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cesar-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cesar'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cesar-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cesar'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cesar-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cesar'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Chocó-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Chocó'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Chocó-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Chocó'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Chocó-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Chocó'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Córdoba-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Córdoba'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Córdoba-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Córdoba'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Córdoba-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Córdoba'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cundinamarca-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cundinamarca'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cundinamarca-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cundinamarca'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cundinamarca-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cundinamarca'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Guainía-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Guainía'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Guainía-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Guainía'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Guainía-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Guainía'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Guaviare-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Guaviare'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Guaviare-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Guaviare'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Guaviare-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Guaviare'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Huila-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Huila'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Huila-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Huila'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Huila-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Huila'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'La Guajira-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'La Guajira'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'La Guajira-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'La Guajira'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'La Guajira-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'La Guajira'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Magdalena-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Magdalena'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Magdalena-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Magdalena'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Magdalena-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Magdalena'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Meta-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Meta'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Meta-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Meta'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Meta-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Meta'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Nariño-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Nariño'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Nariño-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Nariño'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Nariño-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Nariño'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Norte de Santander-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Norte de Santander'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Norte de Santander-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Norte de Santander'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Norte de Santander-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Norte de Santander'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Putumayo-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Putumayo'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Putumayo-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Putumayo'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Putumayo-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Putumayo'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Quindío-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Quindío'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Quindío-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Quindío'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Quindío-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Quindío'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Risaralda-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Risaralda'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Risaralda-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Risaralda'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Risaralda-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Risaralda'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'San Andrés y Providencia-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'San Andrés y Providencia'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'San Andrés y Providencia-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'San Andrés y Providencia'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'San Andrés y Providencia-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'San Andrés y Providencia'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Santander-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Santander'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Santander-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Santander'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Santander-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Santander'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Sucre-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Sucre'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Sucre-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Sucre'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Sucre-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Sucre'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Tolima-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Tolima'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Tolima-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Tolima'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Tolima-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Tolima'))


INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Valle del Cauca-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Valle del Cauca'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Valle del Cauca-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Valle del Cauca'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Valle del Cauca-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Valle del Cauca'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Vaupés-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Vaupés'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Vaupés-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Vaupés'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Vaupés-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Vaupés'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Vichada-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Vichada'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Vichada-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Vichada'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Vichada-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Vichada'))




INSERT INTO [dbo].[tblTypeTemperature]([NameTypeTemp])VALUES('Celsius')
INSERT INTO [dbo].[tblTypeTemperature]([NameTypeTemp])VALUES('Fahrenheit')
INSERT INTO [dbo].[tblTypeTemperature]([NameTypeTemp])VALUES('Kelvin')


INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Ciclón Tropical')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Creciente Súbita')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Deslizamiento')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Heladas')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Incendios')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Inundación')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Mar de Leva')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Oleaje y Viento')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Pleamares')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Rayos')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Tiempo Lluvioso')

INSERT INTO [dbo].[tblAlert]([NameAlert])VALUES('Amarilla')
INSERT INTO [dbo].[tblAlert]([NameAlert])VALUES('Naranja')
INSERT INTO [dbo].[tblAlert]([NameAlert])VALUES('Roja')




