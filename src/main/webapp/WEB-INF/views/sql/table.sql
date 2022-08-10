--DBA
create user mask
identified by mask;

grant resource,connect
to mask;

-- shop
create table member
(
  userid varchar2(10) primary key,
  passwd varchar2(10) not null,
  username varchar2(10) not null,  
  place varchar2(500) not null,
);

 ---통계
   -- count
create table statistics
( 
    userid varchar2(10) primary key,
    totalNumber NUMBER(6) not null,
    maskNumber NUMBER(6) not null,
    nomaskNumber NUMBER(6) not null,
    sysdate
);
alter table cart
add CONSTRAINT cal_userid_fk FOREIGN KEY(userid)
REFERENCES member(userid) ON DELETE CASCADE;
-- insert into goods -- values ('T1',	'top', '앨리스 데님 탑',	'빈티지한 느낌의 데님 프릴 슬리브스 탑', '12100', 'top1');
-- commit; 