use airline_db;
-- 사용자 테이블
CREATE TABLE User (
    user_id VARCHAR(255) PRIMARY KEY NOT NULL,               -- 사용자 ID
    username VARCHAR(255) NOT NULL,       					 -- 사용자명
    password VARCHAR(255) NOT NULL,         				 -- 비밀번호
    phonenumber VARCHAR(255) NOT NULL,     					 -- 연락처 정보
    address VARCHAR(255) NOT NULL                            -- 주소
);

-- 항공권 표
CREATE TABLE FlightTickets (
    flight_id INT AUTO_INCREMENT PRIMARY KEY ,             -- 항공편 ID
    flight_number VARCHAR(255) NOT NULL,   -- 항공편 번호
    departure_city VARCHAR(255) NOT NULL,  -- 출발 도시
    arrival_city VARCHAR(255) NOT NULL,    -- 도착 도시
    departure_date timestamp NOT NULL	   -- 출발 날짜
);


-- 좌석테이블
CREATE TABLE Seat (
    seat_id INT AUTO_INCREMENT PRIMARY KEY,               -- 좌석 ID
    flight_id INT,                         -- 항공편 ID (외래 키)
    seat_number VARCHAR(10) NOT NULL,      -- 좌석 번호
    is_available BOOLEAN NOT NULL,         -- 좌석 이용 가능 여부
    FOREIGN KEY (flight_id) REFERENCES FlightTickets(flight_id)  -- 외래 키 참조
);

-- 예약테이블
CREATE TABLE Reservation (
    reservation_id INT AUTO_INCREMENT PRIMARY KEY,        -- 예약 ID
    user_id VARCHAR(255),                           -- 사용자 ID (외래 키)
    flight_id INT,                         -- 항공편 ID (외래 키)
    seat_id INT,                           -- 좌석 ID (외래 키)
    payment_status VARCHAR(20) NOT NULL,   -- 결제 상태
    FOREIGN KEY (user_id) REFERENCES User(user_id),               -- 외래 키 참조
    FOREIGN KEY (flight_id) REFERENCES FlightTickets(flight_id),   -- 외래 키 참조
    FOREIGN KEY (seat_id) REFERENCES Seat(seat_id)                -- 외래 키 참조
);

-- 환불표
CREATE TABLE Refund (
    refund_id INT AUTO_INCREMENT PRIMARY KEY,             -- 환불 ID
    user_id VARCHAR(255),                           -- 사용자 ID (외래 키)
    reservation_id INT,                    -- 예약 ID (외래 키)
    refund_status VARCHAR(20) NOT NULL,    -- 환불 상태
    FOREIGN KEY (user_id) REFERENCES User(user_id),            -- 외래 키 참조
    FOREIGN KEY (reservation_id) REFERENCES Reservation(reservation_id)  -- 외래 키 참조
);

-- 매출액 
CREATE TABLE SalesReport (
    report_id INT PRIMARY KEY,             -- 보고서 ID
    date DATE NOT NULL,                    -- 날짜
    total_sales DECIMAL(10, 2) NOT NULL    -- 총 매출
);

-- 여행도시순위
CREATE TABLE TravelCityRankings (
    ranking_id INT PRIMARY KEY,            -- 랭킹 ID
    city_name VARCHAR(255) NOT NULL,       -- 도시명
    total_bookings INT NOT NULL             -- 총 예약 수
);

-- 문의 테이블
CREATE TABLE CustomerInquiries (
    inquiry_id INT PRIMARY KEY,
    user_id VARCHAR(255),
    inquiry_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    subject VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    is_resolved BOOLEAN DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);