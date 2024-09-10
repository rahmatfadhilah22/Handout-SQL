select   concat(emps.FirstName, ' ', emps.LastName) as [Employee Name]
		,emps.Title
		,concat(emp.FirstName, ' ', emp.LastName) as [Atasan]
		,emp.Title
from Employees as emp
inner join Employees emps on emps.ReportsTo = emp.EmployeeID

-- 1. Tampilkan Customer yang tidak pernah melakukan Order
-- 2. Tampilkan nama Kota supplier yang paling banyak menerima order
-- 3. Tampilkan Nama employee dan atasanya