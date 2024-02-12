<%@page import="com.landers.airline.dto.QnaChartDto"%>
<%@page import="java.util.stream.Collectors"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.landers.airline.dto.cityChartDto"%>
<%@page import="com.landers.airline.dto.ManagerDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	
	List<ManagerDto> list = (List<ManagerDto>)request.getAttribute("list");

	List<cityChartDto> city = (List<cityChartDto>)request.getAttribute("city");
	
	List<QnaChartDto> qna =(List<QnaChartDto>)request.getAttribute("qna");
	

	 
%>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자페이지</title>
    <!-- Chart.js CDN 포함 -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
       
      .small--board {
	background-color: white;
	height: 80px;
	width: 300px;
	box-shadow: 0 0 3px 3px #e5e5e5;
	padding: 15px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	float: left;
	margin: 30px 15px 20px 15px;
}

.icon--div {
	border-radius: 50%;
	background-color: #f0f0f0;
	width: 50px;
	height: 50px;
	display: flex;
	justify-content: center;
	align-items: center;
}


.img1{
	width: 75%; 

}
.img2{
	width: 80%;
}
.img3{
	width: 100%;
	height: 115%;
}
.img4{
	width: 65%;
}
.middle--board {
	background-color: white;
	height: 400px;
	width: 660px;
	box-shadow: 0 0 3px 3px #e5e5e5;
	margin: 20px 15px 20px 15px;
	padding: 14px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}


.long--board {
	background-color: white;
	height: 400px;
	width: 1290px;
	box-shadow: 0 0 3px 3px #e5e5e5;
	padding: 12px;
	margin: 20px 15px 20px 15px;
}

#salesChart {
	width: 1230px !important;
	
}
#customerFeedbackChart{
	width: 600px !important;
}
#customerFeedbackData{
	width: 600px !important;
}

    </style>
</head>

</head>
<body>

<div class="small--board">
			<div>
				<h5 class="small--board--title">올해 총매출액</h5>
			 <p class="number--value--p">
            <%
                ManagerDto totalSalesDto = list.get(list.size() - 1);
                out.print(totalSalesDto.getTotalPrice());
            %>
            	원
        </p>
    </div>
			<div class="icon--div">
			<img class="img1" src="./images/money.png" alt="Image  Text">	
			</div>
		</div>	
		<div class="small--board">
			<div>
				<h5 class="small--board--title">올해 고객의 문의</h5>
				<p class="number--value--p">
				<%
                // 문의 카테고리의 총 카운트 계산
                int totalInquiryCount = 0;
                for (QnaChartDto qnaDto : qna) {
                    if ("문의".equals(qnaDto.getCategory())) {
                        totalInquiryCount++;
                    }
                }
                out.print(totalInquiryCount);
            %>
				건</p>
			</div>
			<div class="icon--div">
				<img class="img2" src="./images/cs.png" alt="Image  Text">	
			</div>
		</div>	
		<div class="small--board">
			<div>
				<h5 class="small--board--title">올해 고객의 칭찬</h5>
				<p class="number--value--p">
				 <%
                // 칭찬 카테고리의 총 카운트 계산
                int totalComplimentCount = 0;
                for (QnaChartDto qnaDto : qna) {
                    if ("칭찬".equals(qnaDto.getCategory())) {
                        totalComplimentCount++;
                    }
                }
                out.print(totalComplimentCount);
            %>
				건</p>
			</div>
			<div class="icon--div">
				<img class="img3" src="./images/best.png" alt="Image  Text">	
			</div>
		</div>	
		<div class="small--board">
			<div>
				<h5 class="small--board--title">올해 고객의 불만</h5>
				<p class="number--value--p">
				 <%
                // 불만 카테고리의 총 카운트 계산
                int totalComplaintCount = 0;
                for (QnaChartDto qnaDto : qna) {
                    if ("불만".equals(qnaDto.getCategory())) {
                        totalComplaintCount++;
                    }
                }
                out.print(totalComplaintCount);
            %>
				건</p>
			</div>
			<div class="icon--div">
				<img class="img4" src="./images/worst.png" alt="Image  Text">	
			</div>
		</div>	
	
	
    <div class="d-flex justify-content-between" style="width: 100%; margin-bottom: 20px;">
        <div class="long--board">
            <canvas id="salesChart"></canvas>
              </div>
              	</div>
              	
             <div class="d-flex justify-content-between"style="width: 100%; margin-bottom: 20px;">
             	<div class="middle--board">
            <canvas id="cityChart"></canvas>
            	<div class="middle--board">
            <canvas id="customerFeedbackChart"></canvas>
            	</div>
        	</div>
		</div>
		
		
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            // 매출 및 도시 랭킹을 위한 목 데이터
		var salesLabels = [];
        var salesData = [];
       
    
        <% for (int i = list.size() - 1; i >= 0; i--) { 
               ManagerDto dto = list.get(i); %>
               salesLabels.push('<%= dto.getMonth() %>');
               salesData.push('<%= dto.getTotalPrice() %>');
        <% } %>

        var salesData = {
            labels: salesLabels,
            datasets: [{
                label: '월별 총 매출',
                backgroundColor: '#9A161F',
                borderColor: '#9A161F',
                borderWidth: 2,
                data: salesData,
            }],
        };
        

        var cityLabels = [];
        var cityData = [];

        <%
            // 각 도시의 발생 횟수를 계산하기 위한 맵 생성
            Map<String, Integer> cityCounts = new HashMap<>();
            for (cityChartDto cdto : city) {
                String cityName = cdto.getCityName();
                int count = cityCounts.getOrDefault(cityName, 0) + 1;
                cityCounts.put(cityName, count);
            }

            // 리스트의 각 항목을 반복하여 배열에 추가
            for (cityChartDto cdto : city) {
                String cityName = cdto.getCityName();
                int count = cityCounts.get(cityName);
        %>
                // 도시 이름을 배열에 추가하고 중복 횟수를 나타내는 값 설정
                cityLabels.push('<%= cityName %>');
                cityData.push(<%= count %>); // 도시의 발생 횟수를 나타내는 값 설정
        <%
            }
        %>

        // 도시 차트 데이터 구성
        var cityChartData = {
            labels: cityLabels,
            datasets: [{
                label: '인기 도시 순위',
                backgroundColor: '#BDBDBD',
                borderColor: '#BDBDBD',
                borderWidth: 1,
                data: cityData,
            }],
        };
  
            const customerFeedbackData = {
                labels: ['문의', '칭찬', '불만'],
                datasets: [{
                    label: '고객의 소리',
                    backgroundColor: ['#BDBDBD', '#78909C', '#8D6E63'],
                    borderColor: '#ffffff',
                    borderWidth: 2,
                    data: [<% 
                        // 각 카테고리에 대한 카운트를 가져와서 데이터 배열에 추가
                        int complimentCount = 0, complaintCount = 0, inquiryCount = 0;
                        for (QnaChartDto qnaDto : qna) {
                            if (qnaDto.getCategory().equals("칭찬")) {
                                complimentCount++;
                            } else if (qnaDto.getCategory().equals("불만")) {
                                complaintCount++;
                            } else if (qnaDto.getCategory().equals("문의")) {
                                inquiryCount++;
                            }
                        }
                        out.print(complimentCount + ", " + complaintCount + ", " + inquiryCount);
                    %>],
                }],
            };

            // 매출 차트 생성
            const salesCtx = document.getElementById('salesChart').getContext('2d');
            const salesChart = new Chart(salesCtx, {
                type: 'line',
                data: salesData,
                options: {
                    animations: {
                      tension: {
                        duration: 1000,
                        easing: 'linear',
                        from: 1,
                        to: 0,
                        loop: true
                      }
                    },
                    scales: {
                      y: { 
                    	  beginAtZero: true
                      }
                    }
                  }
            });

            // 도시 랭킹 차트 생성
            const travelCityCtx = document.getElementById('cityChart').getContext('2d');
            const travelCityChart = new Chart(travelCityCtx, {
                type: 'bar',
                data: cityChartData,
                options: {
                    scales: {
                        y: {
                            beginAtZero: true,
                        },
                    },
                    animation: {
                        duration: 2000, // 애니메이션 지속 시간 (ms)
                        easing: 'easeInOutQuart', // 애니메이션 효과 (예: 'linear', 'easeInOutQuart' 등)
                    },
                },
            });

            // 고객의 소리 차트 생성 (도넛 차트)
            const customerFeedbackCtx = document.getElementById('customerFeedbackChart').getContext('2d');
            const customerFeedbackChart = new Chart(customerFeedbackCtx, {
                type: 'doughnut',
                data: customerFeedbackData,
                options: {
                    animation: {
                        duration: 2000, // 애니메이션 지속 시간 (ms)
                        easing: 'easeInOutQuart', // 애니메이션 효과 (예: 'linear', 'easeInOutQuart' 등)
                    },
                },
            });
        });
    </script>
</body>
</html>