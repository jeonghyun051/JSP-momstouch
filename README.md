# JSP 맘스터치 프로젝트
## 환경
- JDK 1.8
- TOMCAT 9.0
- STS TOOL
- MYSQL 8.0
- POSTMAN
- LOMBOK
- 인코딩(utf-8)
- git


## MYSQL 데이터베이스 생성 및 사용자 생성
```SQL
create user 'momstouchuser'@'%' identified by 'bitc5600';
grant all privileges on *.* to 'momstouchuser'@'%';
create database momstouchdb;
use momstouchdb;
```

## MYSQL 테이블 생성
- momstouchuser 사용자 생성
- use momstouchdb;  데이터 베이스 선택

```SQL
CREATE TABLE users(
	id int primary key auto_increment,
    username varchar(100) not null unique,
    password varchar(100) not null,
    email varchar(100) not null,
    address varchar(100),
    userRole varchar(20) default 'USER',
    createDate timestamp
) engine=InnoDB default charset=utf8 ;

CREATE TABLE board(
	id int primary key auto_increment,
    userId int,
    title varchar(100) not null,
    content longtext,
    readCount int default 0,
    createDate timestamp
) engine=InnoDB default charset=utf8;

CREATE TABLE inquiryboard(
	id int primary key auto_increment,
    userId int,
    title varchar(100) not null,
    content longtext,
    createDate timestamp
) engine=InnoDB default charset=utf8;

CREATE TABLE reply(
	id int primary key auto_increment,
    userId int,
    borderId int,
    content longtext,
    createDate timestamp
) engine=InnoDB default charset=utf8;

CREATE TABLE menuboard(
	id int primary key auto_increment,
    menuname varchar(100) not null,
    kcal int(11), -- 칼로리
    mg int(11), -- 나트륨 
    g int(11), -- 단백질
    menuimg varchar(100) not null, -- 메뉴 이미지 경로
    menugroup varchar(100) not null	-- 메뉴 분류
) engine=InnoDB default charset=utf8;
```
<br/>

## 🥇기능요소
![image](https://user-images.githubusercontent.com/74044292/106377442-5bdd8380-63e0-11eb-8e0d-8915352b4351.png)<br/>
![image](https://user-images.githubusercontent.com/74044292/106377451-6bf56300-63e0-11eb-904b-592110873a15.png)<br/>
![image](https://user-images.githubusercontent.com/74044292/106377477-9ba46b00-63e0-11eb-93a2-19becd8e1b62.png)
<br/>
![image](https://user-images.githubusercontent.com/74044292/106377496-b545b280-63e0-11eb-95cd-44226082fa64.png)
<br/>
![image](https://user-images.githubusercontent.com/74044292/106377505-c2fb3800-63e0-11eb-9f5d-d1fa585f5133.png)
<br/>
![image](https://user-images.githubusercontent.com/74044292/106377509-cabadc80-63e0-11eb-8721-1e194304f64b.png)
<br/>
![image](https://user-images.githubusercontent.com/74044292/106377512-d1495400-63e0-11eb-82d8-de0097bb37e9.png)
![image](https://user-images.githubusercontent.com/74044292/106377513-da3a2580-63e0-11eb-9d74-5e7e9425d92a.png)
<br/>
⚙보완할 점<br/>
+ 유저 1:1문의 글 번호 초기화하기
+ 유저 1:1문의 글에 관리자 댓글 달게 하기
<br/>

🥉블로그
https://blog.naver.com/rlawjdgus051

