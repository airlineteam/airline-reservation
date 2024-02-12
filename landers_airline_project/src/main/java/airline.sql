use airline;
create database airline;



CREATE TABLE user (
    user_id VARCHAR(255) PRIMARY KEY NOT NULL,               		-- 사용자 ID
    user_pw VARCHAR(255) NOT NULL,         							-- 비밀번호
    user_name VARCHAR(255) NOT NULL,       					 		-- 사용자명
    user_phone VARCHAR(255) NOT NULL,     					 		-- 연락처 정보
    user_address VARCHAR(255) NOT NULL,                            	-- 주소
    user_role INT
);

CREATE TABLE schedule (
	schedule_id	INT AUTO_INCREMENT PRIMARY KEY,						-- 스케쥴 ID
    departure_airport  VARCHAR(255) NOT NULL,               		-- 출발 공항
    arrival_airport  VARCHAR(255) NOT NULL,         				-- 도착 공항
    departure_date  VARCHAR(255) NOT NULL,       					-- 출발일
    person_num  INT NOT NULL			 							-- 인원수
);

CREATE TABLE flight_info (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,           			-- 항공편 ID
    flight_name VARCHAR(255) NOT NULL,         						-- 항공편명
    departure_airport   VARCHAR(255) NOT NULL,       				-- 출발 공항
    arrival_airport  VARCHAR(255) NOT NULL,         				-- 도착 공항
    departure_date   VARCHAR(255) NOT NULL,         				-- 출발일
    arrival_date   VARCHAR(255) NOT NULL,         					-- 도착일
    price INT NOT NULL        										-- 기본 가격
);

CREATE TABLE seat (
    seat_id INT AUTO_INCREMENT PRIMARY KEY,           				-- 좌석 ID
    flight_id INT,           										-- 항공편 ID
    seat_name VARCHAR(255) NOT NULL,								-- 좌석 이름
    seat_price INT NOT NULL,								-- 좌석 가격
    is_available BOOLEAN DEFAULT 1,									-- 좌석 예약 가능?
    FOREIGN KEY (flight_id) REFERENCES flight_info(flight_id)  		-- 외래키 설정
);

CREATE TABLE ticket (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,           			-- 티켓 ID
    user_id VARCHAR(255),           								-- 사용자 ID
    schedule_id INT,												-- 스케쥴 ID
    final_price INT NOT NULL,								        -- 최종 가격
    final_date DATETIME NOT NULL,									-- 최종 예약날짜
    flight_id INT,													-- 항공편 id
    seat_id INT,													-- 좌석 id
        
    FOREIGN KEY (user_id) REFERENCES user(user_id), 				-- 외래키 설정
    FOREIGN KEY (schedule_id) REFERENCES schedule(schedule_id),  	-- 외래키 설정
    FOREIGN KEY (flight_id) REFERENCES flight_info(flight_id),  	-- 외래키 설정
    FOREIGN KEY (seat_id) REFERENCES seat(seat_id)					-- 외래키 설정
    										
);

CREATE TABLE refund (
	refund_id INT AUTO_INCREMENT PRIMARY KEY,   					-- 환불 id
    user_id VARCHAR(255),      										-- 사용자 ID
    ticket_id INT,           										-- 티켓 ID
    content VARCHAR(2000) NOT NULL,									-- 환불 사유
    refund_status VARCHAR(25) NOT NULL,								-- 환불 진행 상태
    
    FOREIGN KEY (user_id) REFERENCES user(user_id), 				-- 외래키 설정
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)  			-- 외래키 설정
);


ALTER TABLE schedule AUTO_INCREMENT=1;
SET @COUNT = 0;
UPDATE schedule SET schedule_id = @COUNT:=@COUNT+1;


create table calendar (
	calendar_id INT auto_increment primary KEY,						-- 캘린더 id
    ticket_id INT,      											-- 티켓 ID
    title VARCHAR(255), 											-- 제목
    content VARCHAR(2000) NOT NULL,									-- 내용
    wdate VARCHAR(255),												-- 일정을 작성
    
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)		    -- 외래키 설정
);

drop schema airline;
use airline;
create database airline;



CREATE TABLE user (
    user_id VARCHAR(255) PRIMARY KEY NOT NULL,               		-- 사용자 ID
    user_pw VARCHAR(255) NOT NULL,         							-- 비밀번호
    user_name VARCHAR(255) NOT NULL,       					 		-- 사용자명
    user_phone VARCHAR(255) NOT NULL,     					 		-- 연락처 정보
    user_address VARCHAR(255) NOT NULL,                            	-- 주소
    user_role INT
);

CREATE TABLE schedule (
	schedule_id	INT AUTO_INCREMENT PRIMARY KEY,						-- 스케쥴 ID
    departure_airport  VARCHAR(255) NOT NULL,               		-- 출발 공항
    arrival_airport  VARCHAR(255) NOT NULL,         				-- 도착 공항
    departure_date  VARCHAR(255) NOT NULL,       					-- 출발일
    person_num  INT NOT NULL			 							-- 인원수
);

CREATE TABLE flight_info (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,           			-- 항공편 ID
    flight_name VARCHAR(255) NOT NULL,         						-- 항공편명
    departure_airport   VARCHAR(255) NOT NULL,       				-- 출발 공항
    arrival_airport  VARCHAR(255) NOT NULL,         				-- 도착 공항
    departure_date   VARCHAR(255) NOT NULL,         				-- 출발일
    arrival_date   VARCHAR(255) NOT NULL,         					-- 도착일
    price INT NOT NULL        										-- 기본 가격
);

CREATE TABLE seat (
    seat_id INT AUTO_INCREMENT PRIMARY KEY,           				-- 좌석 ID
    flight_id INT,           										-- 항공편 ID
    seat_name VARCHAR(255) NOT NULL,								-- 좌석 이름
    seat_price INT NOT NULL,								-- 좌석 가격
    is_available BOOLEAN DEFAULT 1,									-- 좌석 예약 가능?
    FOREIGN KEY (flight_id) REFERENCES flight_info(flight_id)  		-- 외래키 설정
);

CREATE TABLE ticket (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,           			-- 티켓 ID
    user_id VARCHAR(255),           								-- 사용자 ID
    schedule_id INT,												-- 스케쥴 ID
    final_price INT NOT NULL,								-- 최종 가격
    final_date DATETIME NOT NULL,									-- 최종 예약날짜
    flight_id INT,													-- 항공편 id
    seat_id INT,													-- 좌석 id
        
    FOREIGN KEY (user_id) REFERENCES user(user_id), 				-- 외래키 설정
    FOREIGN KEY (schedule_id) REFERENCES schedule(schedule_id),  	-- 외래키 설정
    FOREIGN KEY (flight_id) REFERENCES flight_info(flight_id),  	-- 외래키 설정
    FOREIGN KEY (seat_id) REFERENCES seat(seat_id)					-- 외래키 설정
    										
);

CREATE TABLE refund (
	refund_id INT AUTO_INCREMENT PRIMARY KEY,   					-- 환불 id
    user_id VARCHAR(255),      										-- 사용자 ID
    ticket_id INT,           										-- 티켓 ID
    content VARCHAR(2000) NOT NULL,									-- 환불 사유
    refund_status VARCHAR(25) NOT NULL,								-- 환불 진행 상태
    
    FOREIGN KEY (user_id) REFERENCES user(user_id), 				-- 외래키 설정
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)  			-- 외래키 설정
);




CREATE TABLE bbs (
  seq int NOT NULL AUTO_INCREMENT,
  id varchar(50) COLLATE utf8mb3_bin NOT NULL,
  ref decimal(8,0) NOT NULL,
  step decimal(8,0) NOT NULL,
  depth decimal(8,0) NOT NULL,
  title varchar(200) COLLATE utf8mb3_bin NOT NULL,
  content varchar(4000) COLLATE utf8mb3_bin NOT NULL,
  wdate timestamp NOT NULL,
  del decimal(1,0) NOT NULL,
  readcount decimal(8,0) NOT NULL,
  PRIMARY KEY (seq)
);


CREATE TABLE faq (
  seq int NOT NULL AUTO_INCREMENT,
  id varchar(50) COLLATE utf8mb3_bin NOT NULL,
  ref decimal(8,0) NOT NULL,
  step decimal(8,0) NOT NULL,
  depth decimal(8,0) NOT NULL,
  title varchar(200) COLLATE utf8mb3_bin NOT NULL,
  content varchar(4000) COLLATE utf8mb3_bin NOT NULL,
  wdate timestamp NOT NULL,
  del decimal(1,0) NOT NULL,
  readcount decimal(8,0) NOT NULL,
  PRIMARY KEY (seq)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;



CREATE TABLE qna (
  seq INT NOT NULL AUTO_INCREMENT,
  id VARCHAR(50) NOT NULL,
  ref DECIMAL(8,0) NOT NULL,
  step DECIMAL(8,0) NOT NULL,
  depth DECIMAL(8,0) NOT NULL,
  title VARCHAR(200) NOT NULL,
  content VARCHAR(4000) NOT NULL,
  wdate TIMESTAMP NOT NULL,
  del DECIMAL(1,0) NOT NULL,
  readcount DECIMAL(8,0) NOT NULL,
  category VARCHAR(100) NOT NULL,
  PRIMARY KEY (seq)
  );

ALTER TABLE qna MODIFY category VARCHAR(255) DEFAULT '문의';