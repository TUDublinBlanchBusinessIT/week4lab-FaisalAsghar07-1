drop database if exists tennisclub;
 create database tennisclub;
 use tennisclub;
 create table member(
     id integer auto_increment,
     firstname varchar(30),
     surname varchar(30),
     membertype varchar(6),
     dateofbirth date,
     created_at datetime,
     updated_at datetime,
     deleted_at datetime,
     primary key(id)
 );
 create table court
 (
     id integer auto_increment,
     surface varchar(30),
     floodlights boolean,
     indoor boolean,
     created_at datetime,
     updated_at datetime,
     deleted_at datetime,
     primary key(id)
 );
 create table booking
 (
     id integer auto_increment,
     bookingdate date,
     starttime time,
     endtime time,
     memberid integer,
     courtid integer,
     fee decimal(18,3),
     created_at datetime,
     updated_at datetime,
     deleted_at datetime,
     primary key(id),
     foreign key(memberid) references member(id),
     foreign key(courtid) references court(id)
 );
 insert into member (firstname,surname,membertype,dateofbirth) values ('oliver','kerr','senior','2000-01-31');
 insert into member (firstname,surname,membertype,dateofbirth) values ('morgan','bartlett','senior','1985-10-28');
 insert into member (firstname,surname,membertype,dateofbirth) values ('rebecca','house','senior','1993-08-01');
 insert into member (firstname,surname,membertype,dateofbirth) values ('leslie','hammond','senior','1999-03-03');
 insert into member (firstname,surname,membertype,dateofbirth) values ('axel','gibson','senior','2007-09-29');
 insert into member (firstname,surname,membertype,dateofbirth) values ('bo','bradshaw','senior','1979-12-19');
 insert into court(surface, floodlights, indoor) values('savannah',1,1);
 insert into court(surface, floodlights, indoor) values('grass',1,0);
 insert into court(surface, floodlights, indoor) values('savannah',1,1);
 insert into court(surface, floodlights, indoor) values('savannah',1,1);
 insert into court(surface, floodlights, indoor) values('grass',0,0);
 insert into court(surface, floodlights, indoor) values('grass',0,0);
 insert into booking (bookingdate,starttime,endtime,memberid,courtid,fee) values ('2017-01-07','09:00:00','11:00:00',2,3,10.00);
 insert into booking (bookingdate,starttime,endtime,memberid,courtid,fee) values ('2017-02-11','16:00:00','17:00:00',5,3,10.00);
 insert into booking (bookingdate,starttime,endtime,memberid,courtid,fee) values ('2016-11-16','10:00:00','12:00:00',4,2,20.00);
 insert into booking (bookingdate,starttime,endtime,memberid,courtid,fee) values ('2017-04-06','14:00:00','16:00:00',2,5,10.00);
 insert into booking (bookingdate,starttime,endtime,memberid,courtid,fee) values ('2017-01-17','17:00:00','18:00:00',5,6,10.00);
 insert into booking (bookingdate,starttime,endtime,memberid,courtid,fee) values ('2017-05-06','15:00:00','17:00:00',3,6,15.00);
 insert into booking (bookingdate,starttime,endtime,memberid,courtid,fee) values ('2017-04-27','09:00:00','11:00:00',2,3,10.00);
 insert into booking (bookingdate,starttime,endtime,memberid,courtid,fee) values ('2016-05-05','16:00:00','17:00:00',5,3,10.00);
 insert into booking (bookingdate,starttime,endtime,memberid,courtid,fee) values ('2017-03-23','10:00:00','12:00:00',4,2,20.00);