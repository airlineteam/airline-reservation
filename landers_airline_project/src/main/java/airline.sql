
CREATE TABLE user (
    user_id VARCHAR(255) PRIMARY KEY NOT NULL,               		-- 사용자 ID
    user_pw VARCHAR(255) NOT NULL,         							-- 비밀번호
    user_name VARCHAR(255) NOT NULL,       					 		-- 사용자명
    user_phone VARCHAR(255) NOT NULL,     					 		-- 연락처 정보
    user_address VARCHAR(255) NOT NULL,                             -- 주소
    user_role INT
); 

CREATE TABLE schedule (
	schedule_id	INT AUTO_INCREMENT PRIMARY KEY,						-- 스케쥴 ID
    departure_airport  VARCHAR(255) NOT NULL,               		-- 출발 공항
    arrival_airport  VARCHAR(255) NOT NULL,         				-- 도착 공항
    departure_date  VARCHAR(255) NOT NULL,       					-- 출발일
    person_num VARCHAR(255) NOT NULL			 							-- 인원수
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
    refund_status ENUM('승인', '대기', '거부') DEFAULT '대기',			-- 환불 진행 상태
    
    FOREIGN KEY (user_id) REFERENCES user(user_id), 				-- 외래키 설정
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)  			-- 외래키 설정
);