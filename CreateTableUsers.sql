CREATE TABLE Users(
Id INT UNIQUE IDENTITY,
Username VARCHAR(30) UNIQUE NOT NULL,
[Password] VARCHAR(26) NOT NULL,
ProfilePicture VARBINARY(900),
LastLoginTime TIME,
IsDeleted BIT,
CONSTRAINT PK_Id PRIMARY KEY(Id)
)

INSERT INTO Users(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted)
VALUES
	('Pesho', 'ABV1234', 101010101, '12:00:59', 1),
	('Pesho1', 'ABV12345', 101010100, '12:01:58', 0),
	('Pesho2', 'ABV123456', NULL, '12:02:57', 1),
	('Pesho3', 'ABV123457', 101010111, '12:03:56', 0),
	('Pesho4', 'ABV123458', 101010001, '12:04:55', 1)

ALTER TABLE Users
ADD CONSTRAINT CP_USER CHECK((LEN([Password])) >= 5)
