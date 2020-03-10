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
    staff varchar2(20) default 'Client',
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

insert into pay values(pay_seq.nextval, '010-0000-0001', '체크아웃 연장', 20000, 'user003', sysdate);
insert into pay values(pay_seq.nextval, '010-0000-0002', '냉장고 음료 구매', 10000, 'user003', sysdate);
insert into pay values(pay_seq.nextval, '010-0000-0002', 'TV서비스 구매', 15000, 'user004', sysdate);

create table room(
    roomno number(6) constraint pk_room primary key,
    type varchar2(50),
    person number(2),
    tow number(2),
    bed number(2),
    amenity varchar2(50)
);

insert into room values(101, 'Standard', 1, 2, 1, 'Shampoo, BodyWash, etc');
insert into room values(102, 'Standard', 2, 4, 2, 'Shampoo, BodyWash, etc');
insert into room values(103, 'Standard', 4, 8, 4, 'Shampoo, BodyWash, etc');
insert into room values(201, 'Superior', 1, 2, 1, 'Shampoo, BodyWash, etc');
insert into room values(202, 'Superior', 2, 4, 2, 'Shampoo, BodyWash, etc');
insert into room values(203, 'Superior', 4, 8, 4, 'Shampoo, BodyWash, etc');

create table request(
    reqno number(6) constraint pk_request primary key,
    roomno number(6) constraint fk_requestroom references room,
    content varchar2(200),
    ing varchar2(30) default '접수',
    memberid varchar2(30) constraint fk_requestmember references member,
    reg_date date
);

drop sequence request_seq;
create sequence request_seq;

insert into request values(request_seq.nextval, 101, '타올좀 하나 더주세요', '완료', 'user003', sysdate);
insert into request values(request_seq.nextval, 103, '방 청소좀 깔끔히 해주세요', '진행중', 'user004', sysdate);
insert into request values(request_seq.nextval, 202, '체크아웃 시간을 연장하겠습니다.', '접수', 'user003', sysdate);
insert into request values(request_seq.nextval, 201, '방 앞 복도에 물기좀 닦아주세요', '진행중', 'user003', sysdate);

commit;