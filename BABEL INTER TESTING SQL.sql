#ADARSH T
#BABEL INTERNSHIP TEST


create table Payment (payment_id int, receiver_id int,amount int);

insert into Payment (payment_id, receiver_id,amount) values (1, 6,7000);
insert into Payment (payment_id, receiver_id,amount) values (2, 7,10000);
insert into Payment (payment_id, receiver_id,amount) values (3, 3,68000);
insert into Payment (payment_id, receiver_id,amount) values (4, 5,9000);
insert into Payment (payment_id, receiver_id,amount) values (5, 4,56500);
insert into Payment (payment_id, receiver_id,amount) values (6, 3,55080);
insert into Payment (payment_id, receiver_id,amount) values (7, 2,19156);
insert into payment (payment_id, receiver_id,amount) values (8, 1,34589);
insert into payment (payment_id, receiver_id,amount) values (9, 8,5678);

create table Reciever (receiver_id int,industry varchar(30));

insert into Reciever (receiver_id,industry) values (1, 'Banking');
insert into Reciever (receiver_id,industry) values (2, 'Education');
insert into Reciever (receiver_id,industry) values (3, 'Filim');
insert into Reciever (receiver_id,industry) values (4, 'Agriculture');
insert into Reciever (receiver_id,industry) values (5, 'Banking');
insert into Reciever (receiver_id,industry) values (6, 'Marketing');
insert into Reciever (receiver_id,industry) values (7, 'Filim');
insert into Reciever (receiver_id,industry) values (8, 'games');
insert into Reciever (receiver_id,industry) values (9,  'banking');

#Q1)Get the industry which receives the Largest amount?

SELECT industry, MAX(amount) AS Largestamount FROM Payment P 
INNER JOIN Reciever R on P.receiver_id = R.receiver_id;

# I Found that banking industry get largest amount



#Q2)Get the industry which receives the 3rd Largest amount?

SELECT
    (SELECT DISTINCT
            industry 
        FROM
            (Payment p inner join reciever R on p. receiver_id =r. receiver_id )
        ORDER BY amount DESC
        LIMIT 1 OFFSET 2) AS Industry,

    (SELECT DISTINCT
            amount 
        FROM
            (Payment p inner join reciever R on p. receiver_id =r. receiver_id )
        ORDER BY amount DESC
        LIMIT 1 OFFSET 2) AS Third_largest_amount;

# I found that banking industry get 3rd largest amount


