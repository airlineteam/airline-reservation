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

        /* Autocomplete styles */
        .autocomplete-list {
            position: absolute;
            border: 1px solid #ced4da;
            border-radius: 0.25rem;
            max-height: 120px;
            overflow-y: auto;
            z-index: 1000;
            background-color: #fff;
        }

        .autocomplete-list div {
            padding: 0.5rem;
            cursor: pointer;
        }

        .autocomplete-list div:hover {
            background-color: #f8f9fa;
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
                            <input type="text" class="form-control" name="departure_airport" required>
                            <!-- Autocomplete suggestions for departure airport -->
                            <div id="departure-autocomplete-list" class="autocomplete-list"></div>
                        </div>
                        <div class="col-md-6">
                            <label for="arrivalAirport" class="form-label">도착지:</label>
                            <input type="text" class="form-control" name="arrival_airport" required>
                            <!-- Autocomplete suggestions for arrival airport -->
                            <div id="arrival-autocomplete-list" class="autocomplete-list"></div>
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
                var departureInput = document.querySelector("input[name='departure_airport']");
                var arrivalInput = document.querySelector("input[name='arrival_airport']");
                var departureAutocompleteList = document.getElementById("departure-autocomplete-list");
                var arrivalAutocompleteList = document.getElementById("arrival-autocomplete-list");
                
                
                var airportNames = ["인천", "제주", "김해", "김포"];

                function autocomplete(input, autocompleteList, airportList) {
                    autocompleteList.innerHTML = '';

                    var inputText = input.value.toLowerCase();

                    // Filter airport names based on user input
                    var matchingAirports = airportList.filter(function (airport) {
                        return airport.toLowerCase().startsWith(inputText);
                    });

                    // Display matching airports in the autocomplete list
                    matchingAirports.forEach(function (airport) {
                        var option = document.createElement("div");
                        option.innerHTML = "<strong>" + airport.substr(0, inputText.length) + "</strong>" + airport.substr(inputText.length);
                        option.addEventListener("click", function () {
                            input.value = airport;
                            autocompleteList.innerHTML = '';
                        });
                        autocompleteList.appendChild(option);
                    });
                }

                departureInput.addEventListener("input", function () {
                    autocomplete(departureInput, departureAutocompleteList, airportNames);
                });

                arrivalInput.addEventListener("input", function () {
                    autocomplete(arrivalInput, arrivalAutocompleteList, airportNames);
                });

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
