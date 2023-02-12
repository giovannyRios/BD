USE [climate]
GO

--user Dummy
INSERT INTO [dbo].[tblUsers]([userName],[userPassword])VALUES('admin','admin123')

INSERT INTO [dbo].[tblCountry]([NameCountry]) VALUES ('Colombia')
DECLARE @ID INT = (SELECT ID FROM [dbo].[tblCountry])

INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Bogot�',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Amazonas',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Antioquia',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Arauca',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Atl�ntico',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Bol�var',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Boyac�',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Caldas',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Caquet�',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Casanare',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Cauca',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Cesar',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Choc�',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('C�rdoba',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Cundinamarca',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Guain�a',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Guaviare',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Huila',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('La Guajira',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Magdalena',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Meta',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Nari�o',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Norte de Santander',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Putumayo',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Quind�o',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Risaralda',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('San Andr�s y Providencia',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Santander',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Sucre',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Tolima',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Valle del Cauca',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Vaup�s',@ID)
INSERT INTO [dbo].[tblTerritory]([NameTerritory],[Id_Country]) VALUES('Vichada',@ID)


INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Bogot�-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Bogot�'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Bogot�-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Bogot�'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Bogot�-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Bogot�'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Amazonas-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Amazonas'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Amazonas-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Amazonas'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Amazonas-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Amazonas'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Antioquia-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Antioquia'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Antioquia-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Antioquia'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Antioquia-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Antioquia'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Arauca-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Arauca'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Arauca-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Arauca'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Arauca-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Arauca'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Atl�ntico-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Atl�ntico'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Atl�ntico-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Atl�ntico'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Atl�ntico-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Atl�ntico'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Bol�var-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Bol�var'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Bol�var-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Bol�var'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Bol�var-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Bol�var'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Boyac�-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Boyac�'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Boyac�-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Boyac�'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Boyac�-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Boyac�'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Caldas-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Caldas'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Caldas-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Caldas'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Caldas-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Caldas'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Caquet�-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Caquet�'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Caquet�-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Caquet�'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Caquet�-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Caquet�'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Casanare-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Casanare'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Casanare-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Casanare'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Casanare-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Casanare'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cauca-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cauca'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cauca-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cauca'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cauca-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cauca'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cesar-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cesar'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cesar-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cesar'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cesar-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cesar'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Choc�-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Choc�'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Choc�-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Choc�'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Choc�-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Choc�'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'C�rdoba-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'C�rdoba'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'C�rdoba-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'C�rdoba'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'C�rdoba-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'C�rdoba'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cundinamarca-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cundinamarca'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cundinamarca-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cundinamarca'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Cundinamarca-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Cundinamarca'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Guain�a-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Guain�a'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Guain�a-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Guain�a'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Guain�a-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Guain�a'))

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

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Nari�o-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Nari�o'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Nari�o-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Nari�o'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Nari�o-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Nari�o'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Norte de Santander-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Norte de Santander'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Norte de Santander-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Norte de Santander'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Norte de Santander-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Norte de Santander'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Putumayo-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Putumayo'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Putumayo-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Putumayo'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Putumayo-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Putumayo'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Quind�o-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Quind�o'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Quind�o-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Quind�o'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Quind�o-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Quind�o'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Risaralda-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Risaralda'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Risaralda-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Risaralda'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Risaralda-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Risaralda'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'San Andr�s y Providencia-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'San Andr�s y Providencia'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'San Andr�s y Providencia-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'San Andr�s y Providencia'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'San Andr�s y Providencia-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'San Andr�s y Providencia'))

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

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Vaup�s-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Vaup�s'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Vaup�s-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Vaup�s'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Vaup�s-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Vaup�s'))

INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Vichada-1',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Vichada'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Vichada-2',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Vichada'))
INSERT INTO [dbo].[tblWeatherStation]([NumStation],[NameStation],[Id_Territory])VALUES((SELECT FLOOR(RAND()*(100000-1)+1)),'Vichada-3',(SELECT ID FROM [dbo].[tblTerritory] WHERE NameTerritory = 'Vichada'))




INSERT INTO [dbo].[tblTypeTemperature]([NameTypeTemp])VALUES('Celsius')
INSERT INTO [dbo].[tblTypeTemperature]([NameTypeTemp])VALUES('Fahrenheit')
INSERT INTO [dbo].[tblTypeTemperature]([NameTypeTemp])VALUES('Kelvin')


INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Cicl�n Tropical')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Creciente S�bita')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Deslizamiento')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Heladas')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Incendios')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Inundaci�n')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Mar de Leva')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Oleaje y Viento')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Pleamares')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Rayos')
INSERT INTO [dbo].[tblClimaticPhenomenon]([DescriptionClimaticPhenomenon])VALUES('Tiempo Lluvioso')

INSERT INTO [dbo].[tblAlert]([NameAlert])VALUES('Amarilla')
INSERT INTO [dbo].[tblAlert]([NameAlert])VALUES('Naranja')
INSERT INTO [dbo].[tblAlert]([NameAlert])VALUES('Roja')




