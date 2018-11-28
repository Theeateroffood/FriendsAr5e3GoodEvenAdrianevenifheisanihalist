/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF '$(LoadTestData)' = 'true'

BEGIN


DELETE FROM [Match]
DELETE FROM [Member]

INSERT INTO [Member]([Surname], [FirstName], [Authorised], [Email]) VALUES
('Oliver', 'Charles', 1, 'Charles@Oliver.com'),
('Jarman', 'Kyle', 1, 'Kyle@Jarman.com'),
('Gatto', 'Austion', 1, 'Austion@Gatto.com'),
('Philip', 'Adrian', 1, 'Adrian@Philip.com'),
('Carol', 'Billy', 1, 'Billy@Carol,com');

INSERT INTO [Match]([DateTime], [Venue], [AmountPaid], [MemberId]) VALUES
('2018/12/23 09:00:00.000', 'Franced', 663, 2),
('2018/12/23 09:00:00.000', 'Lance', 25, 4),
('2018/11/23 09:00:00.000', 'France', 3, 1),
('2018/11/15 10:30:00.000', 'Mitch''s House', 23, 5);

END
