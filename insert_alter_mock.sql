-- I used this one and just ran in multiple times, changing the values all four times

insert into customer (customer_id, first_name, last_name, address, tickets, fav_concession, is_rew_member)
values (
4, 'Declan', 'Heroux', '2034 Lawson Blvd', 3, 'M&Ms', False);

insert into movies (movie_id, movie_title, movie_runtime, movie_rating, release_date)
values (
1, 'Thor: Love and Thunder', '2:31', 'PG-13', '2022-07-14'
);

insert into movies (movie_id, movie_title, movie_runtime, movie_rating, release_date)
values (
2, 'Doctor Strange and the Multiverse of Madness', '2:17', 'PG-13', '2022-06-22'
);

insert into movies (movie_id, movie_title, movie_runtime, movie_rating, release_date)
values (
3, 'Black Panther: Wakanda Forever', '2:55', 'PG-13', '2022-11-22'
);

insert into movies (movie_id, movie_title, movie_runtime, movie_rating, release_date)
values (
4, 'Crappy Teenage Movie: Another Sequel', '1:22', 'R', '2022-08-16'
);

select * from movies;

select * from concessions;
insert into concessions (concession_id, name, price) 
values (
1, 'Popcorn', .99
);

-- Here I realized that I had set the Concession numeric type to be wayy too short, so I need to alter it:
alter table concessions
drop column price;
alter table concessions
add column price numeric(6,2);
select * from concessions;
-- Same for the purchase price on the tickets...
alter table tickets
add column purchase_price numeric(6,2);

--crisis averted. Now to delete my first entry and start over for this table:
delete from concessions where concession_id = 1;
insert into concessions (concession_id, name, price) 
values (
1, 'Popcorn', 8.99
);
insert into concessions (concession_id, name, price) 
values (
2, 'Skittles', 5.99
);insert into concessions (concession_id, name, price) 
values (
3, 'Snickers', 6.99
);insert into concessions (concession_id, name, price) 
values (
4, 'Diet Coke', 3.99
);

-- And now the tickets info
insert into tickets (ticket_id, customer_id, movie, purchase_date, purchase_price)
values (
1101, 4, 4, '2022-07-12', 9.99)

select * from tickets;