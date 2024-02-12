<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<!-- 아래 제이쿼리는 1.0이상이면 원하는 버전을 사용하셔도 무방합니다. -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<meta charset="UTF-8">
<title>결제</title>
</head>
<body>

<h1>결제 페이지입니다.!!!</h1>


 <button onclick="requestPay()">결제하기</button>

 
<script type="text/javascript">
var IMP = window.IMP;
IMP.init('imp77645115');

function requestPay() {
    IMP.request_pay(
      {
        pg: "kcp.{상점ID}",
        pay_method: "card",
        merchant_uid: "57008833-33004",
        name: "당근 10kg",
        amount: 1004,
        buyer_email: "Iamport@chai.finance",
        buyer_name: "포트원 기술지원팀",
        buyer_tel: "010-1234-5678",
        buyer_addr: "서울특별시 강남구 삼성동",
        buyer_postcode: "123-456",
      },
      function (rsp) {
        // callback
        //rsp.imp_uid 값으로 결제 단건조회 API를 호출하여 결제결과를 판단합니다.
      }
    );
  }





</script> 
 
 
 
 
 
 
 

</body>
</html>