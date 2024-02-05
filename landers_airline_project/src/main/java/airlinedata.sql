


-- User 테이블에 대한 더미 데이터 삽입
INSERT INTO User (user_id, username, password, phonenumber, address) VALUES
('user1', '홍길동', 'password123', '010-1234-5678', '서울시 강남구 123번길 45'),
('user2', '이영희', 'securepass', '010-9876-5432', '부산시 남구 456번길 78'),
('user3', '김철수', 'pass123', '010-4567-8912', '대구시 중구 789번길 90');

-- FlightTickets 테이블에 대한 더미 데이터 삽입
INSERT INTO FlightTickets (flight_number, departure_city, arrival_city, departure_date) VALUES
('FL123', '서울', '부산', '2024-03-15 08:00:00'),
('FL456', '부산', '대구', '2024-03-16 12:30:00'),
('FL789', '대구', '서울', '2024-03-17 15:45:00');

-- Seat 테이블에 대한 더미 데이터 삽입
INSERT INTO Seat (flight_id, seat_number, is_available) VALUES
(1, 'A1', 1),
(1, 'B2', 1),
(2, 'C3', 1),
(2, 'D4', 1),
(3, 'E5', 1),
(3, 'F6', 1);

-- Reservation 테이블에 대한 더미 데이터 삽입
INSERT INTO Reservation (user_id, flight_id, seat_id, payment_status) VALUES
('user1', 1, 1, '지불 완료'),
('user2', 2, 3, '지불 완료'),
('user3', 3, 5, '대기 중');

-- Refund 테이블에 대한 더미 데이터 삽입
INSERT INTO Refund (user_id, reservation_id, refund_status) VALUES
('user3', 3, '환불 요청');

-- SalesReport 테이블에 대한 더미 데이터 삽입 (원화로 변경)
INSERT INTO SalesReport (date, total_sales) VALUES
('2024-03-15', 1500000),
('2024-03-16', 2200750),
('2024-03-17', 1800250);


-- TravelCityRankings 테이블에 대한 더미 데이터 삽입 (원화로 변경)
INSERT INTO TravelCityRankings (city_name, total_bookings) VALUES
('서울', 120000),
('부산', 80000),
('대구', 50000);

-- CustomerInquiries 테이블에 대한 더미 데이터 삽입
INSERT INTO CustomerInquiries (user_id, subject, message) VALUES
('user1', '좌석 변경 요청', '좌석을 다른 곳으로 변경하고 싶습니다. 가능한가요?'),
('user2', '항공편 정보 문의', '항공편 FL123에 대한 자세한 정보를 알려주세요.'),
('user3', '결제 오류', '결제 시 오류가 발생했습니다. 도움이 필요합니다.');