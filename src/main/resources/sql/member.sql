create table member(
	user_num int(11) not null auto_increment,
	user_id varchar(30) not null,
    user_type int(1) not null default 0,
    user_name varchar(20) not null,
    user_pw varchar(200) not null,
    user_tel varchar(30) not null,
    user_email varchar(50) not null,
    user_sex int(1) default 0,
    user_profile_img varchar(300),
	user_intro varchar(1000),
    user_reg_date datetime default now(),
    user_sms_agree varchar(5) default 'N',
    user_email_agree varchar(5) default 'N',
    constraint user_pk primary key (user_num)
);