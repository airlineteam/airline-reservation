<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>항공조회</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>

    <div class="container mt-5">
        <form action="schedule.do" method="post">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="date">날짜:</label>
                        <input type="date" class="form-control" name="date" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="time">시간:</label>
                        <input type="time" class="form-control" name="time" required>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="departureAirport">출발지:</label>
                        <select class="form-control" name="departure_airport" required>
                            <option value="" disabled selected>선택</option>
                            <option value="인천">인천</option>
                            <option value="제주">제주</option>
                            <option value="김해">김해</option>
                            <option value="김포">김포</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="arrivalAirport">도착지:</label>
                        <select class="form-control" name="arrival_airport" required>
                            <option value="" disabled selected>선택</option>
                            <option value="인천">인천</option>
                            <option value="제주">제주</option>
                            <option value="김해">김해</option>
                            <option value="김포">김포</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="personNum">인원수:</label>
                        <input type="text" class="form-control" name="person_num" required>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <button type="submit" class="btn btn-primary">항공조회</button>
                </div>
            </div>
        </form>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var form = document.querySelector("form");

                form.addEventListener("submit", function (event) {
                    event.preventDefault(); // 기본 제출 동작을 막음

                    // date와 time 값을 가져와서 출발 시간으로 조합
                    var dateInput = document.querySelector("input[type='date']");
                    var timeInput = document.querySelector("input[type='time']");

                    var dateValue = dateInput.value;
                    var timeValue = timeInput.value;

                    // '-'와 ':'를 제거하여 출발 시간으로 조합
                    var departureTime = dateValue.replace(/-/g, "") + timeValue.replace(/:/g, "");

                    // 출발 시간 값을 hidden input에 설정
                    var hiddenInput = document.createElement("input");
                    hiddenInput.type = "hidden";
                    hiddenInput.name = "departure_date";
                    hiddenInput.value = departureTime;

                    form.appendChild(hiddenInput);

                    // 폼 제출
                    form.submit();
                });
            });
        </script>
    </div>

</body>

</html>