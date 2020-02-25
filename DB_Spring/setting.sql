create user ericadb identified by erica default TABLESPACE mc;

grant connect, resource, dba to ericadb;

conn ericadb/erica;

drop table member;
create table member(
    memberno number(6) constraint pk_member primary key,
    name varchar2(20),
    email varchar2(30) unique,
    password varchar2(20),
    phone varchar2(15) unique,
    age number(3),
    sex varchar2(10),
    staff varchar2(10) default 'user',
    reg_date date
);

create sequence member_seq;

drop table pay;
create table pay(
    payno number(6) constraint pk_pay primary key,
    phone varchar2(15),
    item varchar2(20),
    price number(10),
    memberno number(6) constraint fk_paymember references member,
    reg_date date
);

create sequence pay_seq;

drop table room;
create table room(
    roomno number(6) constraint pk_room primary key,
    type varchar2(30),
    person number(2),
    tow number(2),
    bed number(2),
    amenity varchar2(30)
);

create sequence room_seq;

drop table request;
create table request(
    reqno number(6) constraint pk_request primary key,
    roomno number(6) constraint fk_requestroom references room,
    content varchar2(200),
    ing varchar2(20),
    memberno number(6) constraint fk_requestmember references member,
    reg_date date
);

create sequence request_seq;

insert into member values();

insert into pay values();

insert into room values();

insert into request values();

commit;