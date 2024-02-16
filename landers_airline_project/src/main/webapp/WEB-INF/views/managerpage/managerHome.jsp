<%@page import="com.landers.airline.dto.UserDto"%>
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

<%
   UserDto login = (UserDto)session.getAttribute("login");

    // login.getUser_role() 값이 0(관리자)이 아니면 사용 불가 !
    if (login == null || login.getUser_role() != 0) {
%>
        <script type="text/javascript">
            alert('관리자만 접근 가능합니다!');
            location.href = "home.do";
        </script>
<%
        return; // 페이지 렌더링 중지
    }
%>    
<html lang="ko">
<head>
<link href="managercss/managerHome.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자페이지</title>
    <!-- Chart.js CDN 포함 -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    
</head>

</head>
<body>

<div class="small--board">
			<div>
				<h5 class="small--board--title">이번 달 총매출액</h5>
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
				<h5 class="small--board--title">이번 달 고객의 문의</h5>
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
				<h5 class="small--board--title">이번 달 고객의 칭찬</h5>
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
				<h5 class="small--board--title">이번 달 고객의 불만</h5>
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
           

        var cityChartData = {
        	    labels: ['인천', '김포', '양양', '청주', '대구', '무안', '김해', '제주'],
        	    datasets: [{
        	        label: '도시별 여행건수',
        	        backgroundColor: '#BDBDBD',
        	        borderColor: '#BDBDBD',
        	        borderWidth: 1,
        	        data: [<%
        	            // 각 도시에 대한 카운터 초기화
        	            int incheonCount = 0, gimpoCount = 0, yangyangCount = 0, cheongjuCount = 0;
        	            int daeguCount = 0, muanCount = 0, gimhaeCount = 0, jejuCount = 0;

        	            // QnaChartDto 목록을 순회하며 카운터 업데이트
        	            for (cityChartDto cdto:city) {
        	                String cityName = cdto.getCityName(); // 도시 이름을 가져오는 메서드가 있다고 가정합니다.
        	                if ("인천".equals(cityName)) {
        	                    incheonCount++;
        	                } else if ("김포".equals(cityName)) {
        	                    gimpoCount++;
        	                } else if ("양양".equals(cityName)) {
        	                    yangyangCount++;
        	                } else if ("청주".equals(cityName)) {
        	                    cheongjuCount++;
        	                } else if ("대구".equals(cityName)) {
        	                    daeguCount++;
        	                } else if ("무안".equals(cityName)) {
        	                    muanCount++;
        	                } else if ("김해".equals(cityName)) {
        	                    gimhaeCount++;
        	                } else if ("제주".equals(cityName)) {
        	                    jejuCount++;
        	                }
        	                // 다른 도시에 대한 추가적인 if 문을 필요에 따라 추가합니다.
        	            }

        	            // 도시 레이블 순서로 카운터 출력
        	            out.print(incheonCount + ", " + gimpoCount + ", " + yangyangCount + ", " + cheongjuCount + ", " +
        	                      daeguCount + ", " + muanCount + ", " + gimhaeCount + ", " + jejuCount);
        	        %>],
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
                            if (qnaDto.getCategory().equals("문의")) {
                                complimentCount++;
                            } else if (qnaDto.getCategory().equals("칭찬")) {
                                complaintCount++;
                            } else if (qnaDto.getCategory().equals("불만")) {
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
                        duration:2000,
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