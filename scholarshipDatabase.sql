Create Database StudentDB;

Use StudentDB;

/* tblScholarship*/

Create Table tblScholarship (

	Scholarship_Id varchar (10),
	Scholarship_Name varchar (200),
	Sponsor varchar (100),
	Amount decimal (18,2) Default 5000.00,

	Constraint pk_IskoId Primary Key (Scholarship_Id),

);
Alter Table tblScholarship
	Alter Column Scholarship_Id varchar (10) Not Null;
Alter Table tblScholarship
	Alter Column Scholarship_Name varchar (200) Not Null;

/* tblStudent*/

Create Table tblStudent (

	studNo int,
	fname varchar (20),
	mname varchar (20),
	lname varchar (20),
	Age int,
	Studaddress varchar (100),
	Scholarship_Id varchar (10),

	Constraint pk_stud_No Primary Key (studNo),
	Constraint fk_IskoId Foreign Key (Scholarship_Id) references tblScholarship (Scholarship_Id),

);
Alter Table tblStudent
	Alter Column studNo int Not Null;
Alter Table tblStudent
	Alter Column fname varchar (20)  Not Null;
Alter Table tblStudent
	Alter Column mname varchar (20)  Not Null;
Alter Table tblStudent
	Alter Column lname varchar (20)  Not Null;
Alter Table tblStudent
	Alter Column Scholarship_Id varchar (10)   Not Null;

	/* Insert Table */

	Insert into tblStudent values ( 1, 'Lester', 'L', 'Ajonan', 17, 'Lopez, Quezon', 2)
	Insert into tblStudent values ( 2, 'Marlow', 'T', 'Bonaobra', 20, 'Gumaca, Quezon', 1)
	Insert into tblStudent values ( 3, 'Donnavie', 'M', 'Federico', 18, 'Lopez, Quezon', 1)
	Insert into tblStudent values ( 4, 'Marilou', 'P', 'Goyeta', 17, 'Calauag, Quezon', 3)
	Insert into tblStudent values ( 5, 'Amie', 'L', 'Guab', 18, 'Gumaca, Quezon', 2)


	Insert into tblScholarship values ( 1, 'Municipal Scholarship', 'Municipal Mayor', 2500.00)
	Insert into tblScholarship values ( 2, 'CHED Student Support Scholarship', 'CHED', 5000.00 )
	Insert into tblScholarship values ( 3, 'Deans Lister','University Scholar', 4000.00  )
	Insert into tblScholarship values ( 4, 'Private Foundation Scholarship','Private Organization', 3000.00 )

	Select * from tblStudent;
	Select * from tblScholarship;


	Delete from tblScholarship
		where Scholarship_Id = 4

	Update tblStudent set Age = 19 where studNo = 5