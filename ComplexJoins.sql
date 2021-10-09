/* JOINS */

CREATE TABLE left ( id INTEGER, description TEXT );
CREATE TABLE right ( id INTEGER, description TEXT );

INSERT INTO left VALUES ( 1, 'left 01' );
INSERT INTO left VALUES ( 2, 'left 02' );
INSERT INTO left VALUES ( 3, 'left 03' );
INSERT INTO left VALUES ( 4, 'left 04' );
INSERT INTO left VALUES ( 5, 'left 05' );
INSERT INTO left VALUES ( 6, 'left 06' );
INSERT INTO left VALUES ( 7, 'left 07' );
INSERT INTO left VALUES ( 8, 'left 08' );
INSERT INTO left VALUES ( 9, 'left 09' );

INSERT INTO right VALUES ( 6, 'right 06' );
INSERT INTO right VALUES ( 7, 'right 07' );
INSERT INTO right VALUES ( 8, 'right 08' );
INSERT INTO right VALUES ( 9, 'right 09' );
INSERT INTO right VALUES ( 10, 'right 10' );
INSERT INTO right VALUES ( 11, 'right 11' );
INSERT INTO right VALUES ( 11, 'right 12' );
INSERT INTO right VALUES ( 11, 'right 13' );
INSERT INTO right VALUES ( 11, 'right 14' );

select * from left;

/* Joining */
select l.description as left, r.description as right
    from left as l
    join right as r on l.id = r.id
    ;
    
/* Left Join */
select l.description as left, r.description as right
    from left as l
    left join right as r on l.id = r.id
    ;
    
/* Right Join */
select l.description as left, r.description as right
    from left as l
    right join right as r on l.id = r.id
    ;

/* More practical */

drop table if exists left;
drop table right;
drop table gaane;

select * from item;
select * from sale;

select s.id as sale, i.name, s.price
    from sale as s
    join item as i on s.item_id=i.id
    ;
    
select s.id as sale, s.date, i.name, i.description,s.price
    from sale as s
    join item as i on s.item_id=i.id
    ;
    
/* Doing some complex join queries now */

select c.name as Customer, c.zip, i.name as Item, i.description, s.quantity as Quan, s.price as Price
    from sale as s
    join item as i on s.item_id = i.id
    join customer as c on s.customer_id = c.id
    order by Customer, Item
    ;
    
/* Implementing a Left Join */
/* But first let's add a dummy row to customer table */

insert into customer (name) values ('Chinmay Gherde');
delete from customer where name = 'Chinmay';
select * from customer;

select c.name as Customer, c.zip, i.name as Item, i.description, s.quantity as Quantity,
s.price as price

from sale as s
join Item as i on s.item_id=i.id
join customer as c on s.customer_id = c.id
order by Customer, Item
;

/* This query tells us information about which customer bought which item, and how much quantity
and price, and where do they live */
