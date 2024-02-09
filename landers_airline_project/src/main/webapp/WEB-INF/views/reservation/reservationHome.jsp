<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>항공조회</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background-color: #f8f9fa;
        }

        .card {
            background-color: #ffffff;
            border: 1px solid rgba(0, 0, 0, 0.125);
            border-radius: 0.25rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .btn-primary {
            background-color: #9A161F;
            border-color: #9A161F;
        }

        .btn-primary:hover {
            background-color: #751114;
            border-color: #751114;
        }

        .form-select {
            padding: 0.375rem 2rem 0.375rem 0.75rem;
            font-size: 1rem;
            line-height: 1.5;
            color: #495057;
            background-color: #fff;
            border: 1px solid #ced4da;
            border-radius: 0.25rem;
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        .form-select:focus {
            border-color: #9A161F;
            outline: 0;
            box-shadow: 0 0 0 0.25rem rgba(154, 22, 31, 0.25);
        }
    </style>
</head>

<body>

    <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <h2 class="card-title text-center mb-4" style="color: #9A161F;">항공 조회</h2>
                <form action="schedule.do" method="post">

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="date" class="form-label">날짜:</label>
                            <input type="date" class="form-control" name="date" required>
                        </div>
                        <div class="col-md-6">
                            <label for="time" class="form-label">시간:</label>
                            <input type="time" class="form-control" name="time" required>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="departureAirport" class="form-label">출발지:</label>
                            <select class="form-select" name="departure_airport" required>
                                <option value="" disabled selected>선택</option>
                                <option value="인천">인천</option>
                                <option value="제주">제주</option>
                                <option value="김해">김해</option>
                                <option value="김포">김포</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="arrivalAirport" class="form-label">도착지:</label>
                            <select class="form-select" name="arrival_airport" required>
                                <option value="" disabled selected>선택</option>
                                <option value="인천">인천</option>
                                <option value="제주">제주</option>
                                <option value="김해">김해</option>
                                <option value="김포">김포</option>
                            </select>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-12">
                            <label for="personNum" class="form-label">인원수:</label>
                            <input type="text" class="form-control" name="person_num" required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-primary w-100">항공조회</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>

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
