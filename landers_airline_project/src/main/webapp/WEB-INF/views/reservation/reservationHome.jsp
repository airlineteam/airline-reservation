<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link href="reservationcss/reservationHome.css" rel="stylesheet">
    <title>항공조회</title>
</head>

<body>
    <div class="cont">
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
                                <div class="search-input-container">
                                    <input type="text" class="search-input" name="departure_airport" required>
                                    <div id="departure-autocomplete-list" class="autocomplete-list"></div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label for="arrivalAirport" class="form-label">도착지:</label>
                                <div class="search-input-container">
                                    <input type="text" class="search-input" name="arrival_airport" required>
                                    <div id="arrival-autocomplete-list" class="autocomplete-list"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <div class="quickbookings">
                                    <div class="quickbookings__separate -passenger">
                                        <p class="quickbookings__label label">탑승객:&nbsp;</p>
                                        <div class="forms">
                                            <button aria-expanded="false" class="quickbookings__passenger" type="button" onclick="showModal()">
                                                <span class="_hidden">탑승객&nbsp;</span>
                                                <span class="quickbookings__select-data" id="passengerCount">총 1명</span>
                                            </button>
                                        </div>
                                        <div aria-hidden="true" id="passenger-controls9c1d2d1362223b6c400f857c2cc9a01d"></div>
                                    </div>
                                </div>
                                <div id="myModal" class="modal">
                                    <div class="modal-content">
                                        <h2>인원수 선택</h2>
                                        <div class="passenger__items -col3">
                                            <div class="passenger__item">
                                                <div class="passenger__controls">
                                                    <button class="passenger__control -sub" type="button" onclick="decreasePassenger('adultCount')">
                                                        <i class="fas fa-arrow-circle-down"></i>
                                                    </button>
                                                    <div class="forms">
                                                        <input class="_center ng-untouched ng-pristine ng-valid" id="adultCount" maxlength="1" type="tel" value="1">
                                                    </div>
                                                    <button class="passenger__control -add" type="button" onclick="increasePassenger('adultCount')">
                                                        <i class="fas fa-arrow-circle-up"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="confirms -center ng-star-inserted">
                                            <button class="confirm" type="button" onclick="updatePassengerCount(); hideModal()">선택</button>
                                        </div>
                                        <button class="dialog__close" type="button" onclick="hideModal()">
                                            <i class="fas fa-times"></i>
                                        </button>
                                    </div>
                                </div>
                                <input type="hidden" id="person_num" name="person_num" value="1">
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
                document.addEventListener("DOMContentLoaded", function() {
                    var form = document.querySelector("form");
                    var departureInput = document.querySelector("input[name='departure_airport']");
                    var arrivalInput = document.querySelector("input[name='arrival_airport']");
                    var departureAutocompleteList = document.getElementById("departure-autocomplete-list");
                    var arrivalAutocompleteList = document.getElementById("arrival-autocomplete-list");

                    var airportNames = ["인천", "제주", "김해", "김포", "양양", "청주", "대구", "무안"];

                    function autocomplete(input, autocompleteList, airportList) {
                        autocompleteList.innerHTML = '';
                        var inputText = input.value.toLowerCase();
                        var matchingAirports = airportList.filter(function(airport) {
                            return airport.toLowerCase().startsWith(inputText);
                        });
                        matchingAirports.forEach(function(airport) {
                            var option = document.createElement("div");
                            option.innerHTML = "<strong>" + airport.substr(0, inputText.length) + "</strong>" + airport.substr(inputText.length);
                            option.addEventListener("click", function() {
                                input.value = airport;
                                autocompleteList.innerHTML = '';
                            });
                            autocompleteList.appendChild(option);
                        });
                    }

                    departureInput.addEventListener("input", function() {
                        autocomplete(departureInput, departureAutocompleteList, airportNames);
                    });

                    arrivalInput.addEventListener("input", function() {
                        autocomplete(arrivalInput, arrivalAutocompleteList, airportNames);
                    });

                    form.addEventListener("submit", function(event) {
                        event.preventDefault();
                        var dateInput = document.querySelector("input[type='date']");
                        var timeInput = document.querySelector("input[type='time']");
                        var dateValue = dateInput.value;
                        var timeValue = timeInput.value;
                        var departureTime = dateValue.replace(/-/g, "") + timeValue.replace(/:/g, "");
                        var hiddenInput = document.createElement("input");
                        hiddenInput.type = "hidden";
                        hiddenInput.name = "departure_date";
                        hiddenInput.value = departureTime;
                        form.appendChild(hiddenInput);
                        form.submit();
                    });
                });

                function showModal() {
                    document.getElementById("myModal").style.display = "flex";
                }

                function hideModal() {
                    document.getElementById("myModal").style.display = "none";
                }

                function updatePassengerCount() {
                    let adultCount = parseInt(document.getElementById("adultCount").value, 10);
                    document.getElementById("person_num").value = adultCount;
                    document.getElementById("passengerCount").innerHTML = '총 ' + adultCount + '명';
                }

                function decreasePassenger(id) {
                    const inputElement = document.getElementById(id);
                    let count = parseInt(inputElement.value, 10);
                    if (count > 0) {
                        count--;
                        inputElement.value = count;
                        updatePassengerCount();
                    }
                }

                function increasePassenger(id) {
                    const inputElement = document.getElementById(id);
                    let count = parseInt(inputElement.value, 10);
                    count++;
                    inputElement.value = count;
                    updatePassengerCount();
                }
            </script>
        </div>
    </div>
</body>

</html>

