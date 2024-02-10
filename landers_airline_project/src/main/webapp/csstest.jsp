<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Modal Example</title>
<style>
/* Modal Styles */
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

.booking-new__passengers {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	font-size: 16px;
	border: none;
	cursor: pointer;
	border-radius: 4px;
}

.passenger__controls {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.passenger__control {
	background-color: #4CAF50;
	color: white;
	padding: 8px 16px;
	font-size: 14px;
	border: none;
	cursor: pointer;
	border-radius: 4px;
}

#adultCount, #childCount, #infantCount {
	width: 30px;
	text-align: center;
}

.dialog__close {
	background-color: #f44336;
	color: white;
	padding: 8px 16px;
	font-size: 14px;
	border: none;
	cursor: pointer;
	border-radius: 4px;
	margin-top: 10px;
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
	width: 70%;
	height: 4.3rem;
	padding: 0 3rem 0 0;
	border: 0;
	background: url(icon-main-quick__passenger.svg) right center/3rem 3rem
		no-repeat;
	color: #000;
	font-weight: 700;
	font-size: 30px;
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
button,input[type=password],input[type=text],select,textarea {
    line-height: 1.5
}
[class]._hidden {
    overflow: hidden;
    white-space: nowrap;
    clip: rect(1px,1px,1px,1px);
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

</style>
</head>
<body>
<div class="quickbookings">
	<div class="quickbookings__separate -passenger">
		<p class="quickbookings__label label">탑승객&nbsp;</p>
		<div class="forms">
			<button aria-expanded="false" class="quickbookings__passenger"
				type="button" id="passenger9c1d2d1362223b6c400f857c2cc9a01d"
				aria-controls="passenger-controls9c1d2d1362223b6c400f857c2cc9a01d"
				onclick="showModal()">
				<span class="_hidden">탑승객&nbsp;</span> 
				<span class="quickbookings__select-data" id="passengerCount">총 1명</span>
			</button>
		</div>
		<div aria-hidden="true"
			id="passenger-controls9c1d2d1362223b6c400f857c2cc9a01d"></div>
	</div>
</div>	

	<div id="myModal" class="modal">
		<div class="modal-content">
			<h2>승객 선택</h2>
			<div class="passenger__items -col3">
				<div class="passenger__item">
					<div class="passenger__controls">
						<button class="passenger__control -sub" type="button"
							onclick="decreasePassenger('adultCount')">성인 탑승자 한 명 줄이기</button>
						<div class="forms">
							<input class="_center ng-untouched ng-pristine ng-valid"
								id="adultCount" maxlength="1" type="tel" value="1">
						</div>
						<button class="passenger__control -add" type="button"
							onclick="increasePassenger('adultCount')">성인 탑승자 한 명 늘리기</button>
					</div>
				</div>
				<div class="passenger__item">
					<div class="passenger__controls">
						<button class="passenger__control -sub" type="button"
							aria-disabled="true" onclick="decreasePassenger('childCount')">소아
							탑승자 한 명 줄이기</button>
						<div class="forms">
							<input class="_center ng-untouched ng-pristine ng-valid"
								id="childCount" maxlength="1" type="tel" value="0">
						</div>
						<button class="passenger__control -add" type="button"
							onclick="increasePassenger('childCount')">소아 탑승자 한 명 늘리기</button>
					</div>
				</div>
				<div class="passenger__item">
					<div class="passenger__controls">
						<button class="passenger__control -sub" type="button"
							aria-disabled="true" onclick="decreasePassenger('infantCount')">유아
							탑승자 한 명 줄이기</button>
						<div class="forms">
							<input class="_center ng-untouched ng-pristine ng-valid"
								id="infantCount" maxlength="1" type="tel" value="0">
						</div>
						<button class="passenger__control -add" type="button"
							onclick="increasePassenger('infantCount')">유아 탑승자 한 명
							늘리기</button>
					</div>
				</div>
			</div>
			<div class="confirms -center ng-star-inserted">
				<button class="confirm" type="button"
					onclick="updatePassengerCount(); hideModal()">선택</button>
			</div>
			<button class="dialog__close" type="button" onclick="hideModal()">
				닫기</button>
		</div>
	</div>

	<script>
		function showModal() {
			document.getElementById("myModal").style.display = "flex";
		}

		function hideModal() {
			document.getElementById("myModal").style.display = "none";
		}

		function updatePassengerCount() {
			let adultCount = parseInt(
					document.getElementById("adultCount").value, 10);
			let childCount = parseInt(
					document.getElementById("childCount").value, 10);
			let infantCount = parseInt(
					document.getElementById("infantCount").value, 10);

			let total = adultCount + childCount + infantCount;

			document.getElementById("passengerCount").innerHTML = '총' + total
					+ '명';
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

</body>
</html>

