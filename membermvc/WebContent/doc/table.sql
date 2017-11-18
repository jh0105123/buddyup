drop table member_detail;
drop table member;

create tabel member
(
	id varchar2(16),
	name varcha2(20) not null,
	pass varchar2(16) not null,
	email1 varchar2(16),
	email2 varchar2(30),
	joindate date default sysdate,
	constraint member_id_pk primary key (id)
);

create tabel member_detail
(
	id varchar2(16),
	tel1 varchar2(3),
	tel2 varchar2(4),
	tel3 varchar2(4),
	zip1 varchar2(3),
	zip1 varchar2(3),
	addr varchar2(100),
	addr varchar2(100),
	constraint member_detail_id_fk foreign key (id)
	references member (id)
);

create table zipcode
(
	zipcode varchar2(7),
	sido varchar2(20),
	gugun varchar2(50),
	dong varchar2(50),
	bunji varchar2(100),
	seq number
);