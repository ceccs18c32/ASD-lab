#Creating the table

create table class(name varchar(20), id int);

#Inserting the values 

insert into class(name,id)
values("Rooney",10),("Scholes",15),("Nani",17),("C.Ronaldo",07);
insert into class(name,id)
values("Tevez",22);

#Illustration of rollback and commit 

start transaction;

insert into class(name,id)
values("Evra",03);
rollback;

select * from class;

insert into class(name,id)
values("V.Persie",23);
select * from class;
commit;

#Illustration of savepoint

start transaction;