
use mydemo_final;
show databases;
CREATE TABLE dataofclients
(
clientid VARCHAR(6) PRIMARY KEY,
fstname VARCHAR(30),
midname VARCHAR(30),
lstname VARCHAR(30),
town VARCHAR(15),
aging INT(10),
phoneno VARCHAR(10),
ocuup VARCHAR(10),
birth date
);
INSERT INTO dataofclients (clientid, fstname, midname, lstname, town, aging, phoneno, ocuup, birth)
VALUES
('C001', 'John', 'A', 'Doe', 'New York', 28, '1234567890', 'Engineer', '1995-01-01'),
('C002', 'Jane', 'B', 'Smith', 'Los Angeles', 32, '0987654321', 'Doctor', '1991-02-15'),
('C003', 'Robert', 'C', 'Brown', 'Chicago', 25, '2345678901', 'Artist', '1998-03-12'),
('C004', 'Emily', 'D', 'Davis', 'Houston', 29, '3456789012', 'Teacher', '1994-04-22'),
('C005', 'Michael', 'E', 'Wilson', 'Phoenix', 35, '4567890123', 'Lawyer', '1988-05-30'),
('C006', 'Sarah', 'F', 'Martinez', 'Philadelphia', 27, '5678901234', 'Nurse', '1996-06-18'),
('C007', 'David', 'G', 'Anderson', 'San Antonio', 31, '6789012345', 'Architect', '1992-07-09'),
('C008', 'Laura', 'H', 'Taylor', 'San Diego', 26, '7890123456', 'Scientist', '1997-08-24'),
('C009', 'James', 'I', 'Thomas', 'Dallas', 33, '8901234567', 'Pilot', '1990-09-13'),
('C010', 'Jessica', 'J', 'White', 'San Jose', 30, '9012345678', 'Chef', '1993-10-05');
select * from dataofclients;
select min(aging) as minaging from dataofclients;
select max(aging) as maxaging from dataofclients;
select count(aging) as total_client from dataofclients;
select fstname from dataofclients where aging - 35;
select max(aging) from dataofclients;
select count(*) from dataofclients;
select count(fstname) from dataofclients group by town;
select count(fstname),town from dataofclients group by town;
select count(fstname),town from dataofclients group by town having count(fstname)>2;
select count(fstname),town from dataofclients group by town having count(fstname)=2;
select count(fstname),town from dataofclients group by town having count(fstname)=2;
select count(fstname),town from dataofclients group by town having count(fstname)=2;
select count(fstname),town from dataofclients group by town having count(fstname)!=2;
CREATE TABLE account
(
acnumber VARCHAR(6),
clientid VARCHAR(6),
bid VARCHAR(6),
opening_balance INT(7),
aod DATE, 
atype VARCHAR(10),
astatus VARCHAR(10),
CONSTRAINT account_acnumber_pk PRIMARY KEY (acnumber),
CONSTRAINT account_clientid_fk FOREIGN KEY (clientid) REFERENCES dataofclients (clientid)
);
show tables;
INSERT INTO account (acnumber, clientid, bid, opening_balance, aod, atype, astatus)
VALUES
('AC001', 'C001', 'B001', 10000, '2022-01-01', 'Savings', 'Active'),
('AC002', 'C002', 'B002', 15000, '2022-02-01', 'Checking', 'Active'),
('AC003', 'C003', 'B003', 20000, '2022-03-01', 'Savings', 'Inactive'),
('AC004', 'C004', 'B004', 25000, '2022-04-01', 'Checking', 'Active'),
('AC005', 'C005', 'B005', 30000, '2022-05-01', 'Savings', 'Active'),
('AC006', 'C006', 'B006', 35000, '2022-06-01', 'Checking', 'Active'),
('AC007', 'C007', 'B007', 40000, '2022-07-01', 'Savings', 'Inactive'),
('AC008', 'C008', 'B008', 45000, '2022-08-01', 'Checking', 'Active'),
('AC009', 'C009', 'B009', 50000, '2022-09-01', 'Savings', 'Active'),
('AC010', 'C010', 'B010', 55000, '2022-10-01', 'Checking', 'Inactive');
select * from account;
select count(*) from account;
select count(*) from account group by astatus;
select count(*), astatus from account group by astatus;
select count(*), astatus from account group by astatus having count(atype)=2;

