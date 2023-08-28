INSERT INTO Sales.Personel_Detail
(PersonID, FullName, PhoneNumber, EmailAddress)
VALUES 
(11223, 'Msolobane', '(071) 663-2299', 'msolo@gmail.com')


INSERT INTO[Warehouse].[VehicleTemperatures]
([VehicleTemperatureID], [VehicleRegistration], [ChillerSensorNumber], [RecordedWhen], [Temperature], [FullSensorData], [IsCompressed], [CompressedSensorData])
VALUES
(101010, 'WWI-222-D', 99, '2016-05-31 14:25:42.0000000', 20.20, '{"Recordings": [{"type":"Feature", "geometry": {"type":"Point", "coordinates":[-121.5653562,44.4543335] }, "properties":{"rego":"WWI-321-A","sensor":"1,"when":"2016-05-31T14:26:48","temp":3.39}} ]', 0, null)

SELECT * FROM [Warehouse].[VehicleTemperatures]
