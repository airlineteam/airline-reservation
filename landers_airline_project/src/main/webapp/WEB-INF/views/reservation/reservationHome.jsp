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
<title>항공조회</title>

<style>
.cont {
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

.form-control:focus {
	border-color: #9A161F;
	outline: 0;
	box-shadow: 0 0 0 0.25rem rgba(154, 22, 31, 0.25);
}

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

.search-input-container {
	position: relative;
}

.search-input {
	width: 100%;
	padding: 0.375rem 2rem 0.375rem 0.75rem;
	font-size: 1rem;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	border: 1px solid #ced4da;
	border-radius: 0.25rem;
	transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.search-input:focus {
	border-color: #9A161F;
	outline: 0;
	box-shadow: 0 0 0 0.25rem rgba(154, 22, 31, 0.25);
}

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	justify-content: center;
	align-items: center;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fefefe;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
	max-width: 600px;
	border-radius: 8px;
	text-align: center;
}

.passenger__controls input {
    width: 30px;
    padding: 8px; /* 내부 여백을 조절 */
    font-size: 14px; /* 폰트 크기를 조절 */
    border: 1px solid #ced4da;
    border-radius: 4px;
    text-align: center;
    box-sizing: border-box;
}
.booking-new__passengers {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	font-size: 16px;
	border: none;
	cursor: pointer;
	border-radius: 4px;
}

.confirm {
    background-color: #9A161F;
    color: white;
    padding: 6px 14px;
    font-size: 16px;
    border: none;
    cursor: pointer;
    border-radius: 4px;
    margin-top: 10px;
}

.confirm:hover {
    background-color: gray;
}

.passenger__controls {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.passenger__control {
	background-color: white;
	color: #9A161F;
	padding: 8px 16px;
	font-size: 30px;
	border: none;
	cursor: pointer;
	border-radius: 4px;
}

#adultCount, #childCount, #infantCount {
	width: 30px;
	text-align: center;
}

.dialog__close {
    background-color: white;
    color: black;
    padding: 8px 16px;
    font-size: 14px;
    border: none;
    cursor: pointer;
    border-radius: 4px;
    position: absolute; /* 위치를 절대 위치로 설정 */
    top: 10px; /* 오른쪽 상단으로부터의 거리 조절 */
    right: 10px; /* 오른쪽 상단으로부터의 거리 조절 */
}

/* 아이콘 크기 조절 */
.dialog__close i {
    font-size: 18px;
}


@media ( min-width : 1060px) {
	.quickbookings__aligner {
		display: flex;
		align-items: flex-start;
		justify-content: space-between;
		width: 100%
	}
	.quickbookings__separate {
		padding: 0
	}
	.quickbookings__separate.-itinerary {
		width: calc(21.334% + 1rem);
		margin-left: -1rem;
		border: 0;
		padding: 0
	}
	.quickbookings__separate.-date {
		width: 28.667%;
		padding: 0
	}
	.quickbookings__separate.-passenger {
		padding: 1rem 0 0
	}
}

.quickbookings__passenger {
	box-sizing: border-box;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	display: block;
	width: 100%;
	height: 3.0rem;
	padding: 0 3rem 0 0;
	border: 0;
	background: url(icon-main-quick__passenger.svg) right center/3rem 3rem
		no-repeat;
	color: #000;
	font-weight: 300;
	font-size: 20px;
	text-align: left;
	cursor: pointer;
	border-bottom: .1rem solid #767676
}

.quickbookings__label {
	margin-bottom: 0;
	word-break: break-word
}

.quickbookings {
	max-width: 128rem;
	margin: 0 auto;
	word-wrap: break-word
}

button, input[type=password], input[type=text], select, textarea {
	line-height: 1.5
}

[class]._hidden {
	overflow: hidden;
	white-space: nowrap;
	clip: rect(1px, 1px, 1px, 1px);
	-webkit-clip-path: inset(50%);
	clip-path: inset(50%);
	position: absolute;
	width: 1px;
	height: 1px;
	margin: 0;
	padding: 0;
	border: 0
}

.quickbookings__select-data {
	display: inline-block;
	font-weight: 700;
	width: 100%;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	vertical-align: middle
}

.quickbookings__select-data.-off {
	color: #767676;
	font-weight: 400
}
.quickbookings__passenger:hover {
    border: 1px solid #9A161F;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}


</style>
</head>

<body>
<div class="cont">
	<div class="container mt-5">
		<div class="card">
			<div class="card-body">
				<h2 class="card-title text-center mb-4" style="color: #9A161F;">항공
					조회</h2>
				<form action="schedule.do" method="post">

					<div class="row mb-3">
						<div class="col-md-6">
							<label for="date" class="form-label">날짜:</label> <input
								type="date" class="form-control" name="date" required>
						</div>
						<div class="col-md-6">
							<label for="time" class="form-label">시간:</label> <input
								type="time" class="form-control" name="time" required>
						</div>
					</div>

					<div class="row mb-3">
						<div class="col-md-6">
							<label for="departureAirport" class="form-label">출발지:</label>
							<div class="search-input-container">
								<input type="text" class="search-input" name="departure_airport"
									required>
								<!-- Autocomplete suggestions for departure airport -->
								<div id="departure-autocomplete-list" class="autocomplete-list"></div>
							</div>
						</div>
						<div class="col-md-6">
							<label for="arrivalAirport" class="form-label">도착지:</label>
							<div class="search-input-container">
								<input type="text" class="search-input" name="arrival_airport"
									required>
								<!-- Autocomplete suggestions for arrival airport -->
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
										<button aria-expanded="false" class="quickbookings__passenger"
											type="button" onclick="showModal()">
											<span class="_hidden">탑승객&nbsp;</span> <span
												class="quickbookings__select-data" id="passengerCount">총
												1명</span>
										</button>
									</div>
									<div aria-hidden="true"
										id="passenger-controls9c1d2d1362223b6c400f857c2cc9a01d"></div>
								</div>
							</div>

							<div id="myModal" class="modal">
								<div class="modal-content">
									<h2>인원수 선택</h2>
									<div class="passenger__items -col3">
										<div class="passenger__item">
											<div class="passenger__controls">
												<button class="passenger__control -sub" type="button"
													onclick="decreasePassenger('adultCount')">
													<i class="fas fa-arrow-circle-down"></i>
												</button>
												<div class="forms">
													<input class="_center ng-untouched ng-pristine ng-valid"
														id="adultCount" maxlength="1" type="tel" value="1">
												</div>
												<button class="passenger__control -add" type="button"
													onclick="increasePassenger('adultCount')">
													<i class="fas fa-arrow-circle-up"></i>
												</button>
											</div>
										</div>
									</div>
									<div class="confirms -center ng-star-inserted">
										<button class="confirm" type="button"
											onclick="updatePassengerCount(); hideModal()">선택</button>
									</div>
									<button class="dialog__close" type="button"
										onclick="hideModal()">
										<i class="fas fa-times"></i>
										<!-- "X" 자 모양의 아이콘 -->
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
				var departureInput = document
						.querySelector("input[name='departure_airport']");
				var arrivalInput = document
						.querySelector("input[name='arrival_airport']");
				var departureAutocompleteList = document
						.getElementById("departure-autocomplete-list");
				var arrivalAutocompleteList = document
						.getElementById("arrival-autocomplete-list");

				var airportNames = [ "인천", "제주", "김해", "김포", "양양", "청주", "대구", "무안" ];

				function autocomplete(input, autocompleteList, airportList) {
					autocompleteList.innerHTML = '';

					var inputText = input.value.toLowerCase();

					var matchingAirports = airportList
							.filter(function(airport) {
								return airport.toLowerCase().startsWith(
										inputText);
							});

					// Display matching airports in the autocomplete list
					matchingAirports.forEach(function(airport) {
						var option = document.createElement("div");
						option.innerHTML = "<strong>"
								+ airport.substr(0, inputText.length)
								+ "</strong>"
								+ airport.substr(inputText.length);
						option.addEventListener("click", function() {
							input.value = airport;
							autocompleteList.innerHTML = '';
						});
						autocompleteList.appendChild(option);
					});
				}

				departureInput.addEventListener("input", function() {
					autocomplete(departureInput, departureAutocompleteList,
							airportNames);
				});

				arrivalInput.addEventListener("input", function() {
					autocomplete(arrivalInput, arrivalAutocompleteList,
							airportNames);
				});

				form.addEventListener("submit", function(event) {
					event.preventDefault(); // 기본 제출 동작을 막음

					// date와 time 값을 가져와서 출발 시간으로 조합
					var dateInput = document
							.querySelector("input[type='date']");
					var timeInput = document
							.querySelector("input[type='time']");

					var dateValue = dateInput.value;
					var timeValue = timeInput.value;

					// '-'와 ':'를 제거하여 출발 시간으로 조합
					var departureTime = dateValue.replace(/-/g, "")
							+ timeValue.replace(/:/g, "");

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

			function showModal() {
				document.getElementById("myModal").style.display = "flex";
			}

			function hideModal() {
				document.getElementById("myModal").style.display = "none";
			}

			function updatePassengerCount() {
				let adultCount = parseInt(
						document.getElementById("adultCount").value, 10);
				
				document.getElementById("person_num").value = adultCount;

				document.getElementById("passengerCount").innerHTML = '총 '
						+ adultCount + '명';
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
