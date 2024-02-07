<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>

<style>
.home{
	height: 500px;
	border: 1px solid;
}

.center{
	margin: auto;
}
</style>

<div class="center">
    <form action="schedule.do" method="post">
        <table border="1">
            <tr>
                <th>날짜: <input type="date" name="date"></th>
                <th>시간 : <input type="time" name="time"></th>
            </tr>
            <tr>
                <th>
                    출발지:
                    <select name="departure_airport">
                        <option>선택</option>
                        <option value="인천">인천</option>
                        <option value="제주">제주</option>
                        <option value="김해">김해</option>
                        <option value="김포">김포</option>
                    </select>
                </th>
                <th>
                    도착지:
                    <select name="arrival_airport">
                        <option>선택</option>
                        <option value="인천">인천</option>
                        <option value="제주">제주</option>
                        <option value="김해">김해</option>
                        <option value="김포">김포</option>
                    </select>
                </th>
            </tr>
            <tr>
                <th colspan="2">
                    인원수: <input type="text" name="person_num">
                </th>
            </tr>
            <tr>
                <th colspan="2"><input type="submit" value="항공조회"></th>
            </tr>
        </table>
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


