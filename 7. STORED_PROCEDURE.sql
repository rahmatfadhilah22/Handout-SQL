/*
	STORED PROCEDURE adalah sekumpulan perintah SQL atau query yang dapat di eksekusi dengan satu perintah,
	stored procedure ini dapat memiliki parameter ataupun tidak
*/

-- Contoh stored procedure tanpa parameter

CREATE PROCEDURE GetEmployee
AS
BEGIN
	SELECT * FROM dbo.Employees
END;

EXEC GetEmployee

-- Contoh stored procedure dengan parameter

CREATE PROCEDURE GetEmployeeByID 
@EmployeeID INT
AS
BEGIN
	SELECT * FROM dbo.Employees WHERE EmployeeID = @EmployeeID
END;

EXEC GetEmployeeByID @EmployeeID = 1