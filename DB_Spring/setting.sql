create user ericadb identified by erica default TABLESPACE mc;

grant connect, resource, dba to ericadb;

conn ericadb/erica;

drop table request;
drop table room;
drop table pay;
drop table member;

create table member(
    memberid varchar2(30) constraint pk_member primary key,
    name varchar2(30),
    password varchar2(30),
    phone varchar2(15),
    age number(5),
    sex varchar2(20),
    staff varchar2(20) default 'user',
    reg_date date
);

insert into member values('admin', '관리자', 'admin', '010-9611-7555', 0, 'admin', 'admin', '18/11/20');
insert into member values('user001', '홍길동', '001', '010-0000-0001', 15, 'male', 'Client', sysdate);
insert into member values('user002', '임꺽정', '002', '010-0000-0002', 16, 'male', 'Client', sysdate);
insert into member values('user003', '아이유', '003', '010-0000-0003', 17, 'female', 'Staff', sysdate);
insert into member values('user004', '김태희', '004', '010-0000-0004', 18, 'female', 'Staff', sysdate);

create table pay(
    payno number(6) constraint pk_pay primary key,
    phone varchar2(15),
    item varchar2(30),
    price number(10),
    memberid varchar2(30) constraint fk_paymember references member,
    reg_date date
);

drop sequence pay_seq;
create sequence pay_seq;

insert into pay values();

create table room(
    roomno number(6) constraint pk_room primary key,
    type varchar2(50),
    person number(2),
    tow number(2),
    bed number(2),
    amenity varchar2(50)
);

drop sequence room_seq;
create sequence room_seq;

insert into room values();

create table request(
    reqno number(6) constraint pk_request primary key,
    roomno number(6) constraint fk_requestroom references room,
    content varchar2(200),
    ing varchar2(30),
    memberid varchar2(30) constraint fk_requestmember references member,
    reg_date date
);

drop sequence request_seq;
create sequence request_seq;

insert into request values();

commit;