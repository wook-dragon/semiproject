<%@page import="kr.or.bit.utils.ConnectionHelper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="member" value="${requestScope.memberdetail}"></c:set>
	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Camping Easy</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="icon" href="img/core-img/favicon.ico">
    <link href="style.css" rel="stylesheet">
    <link href="css/responsive/responsive.css" rel="stylesheet">

</head>

<jsp:include page="/common/top.jsp"></jsp:include>


<style type="text/css">

section{
	text-align: center;

}
#mydiv {
	margin-top: 10px;
	margin-bottom: 110px;
	padding: 1px;
}

#loginboxdiv {
	position: relative;
	margin: 5px;
	padding: 1px;
	height: 350px;
}

#loginboxinnerbox {
	position: absolute;
	left: 40%;
	top: 10px;
	width: 300px;
	margin: 2px;
}

#footer2 {
	positon: fixed;
	bottom: 1px;
	margin: 1px;
}

#formBtn {
	text-align: center;
}

#myString {
	margin-top: 50px;
	margin-bottom: 1px;
}

button{
     background-color: #6b8e23;
     width: 100px;
     height: 50px;
     text-color: white;
     hover : #deb887;
   }
   th {
   text-align: center;
}

#div2 {
   width: auto;
   text-align: center;
   top: 10%;
   left: 10%;
}
   
</style>
</head>
<body>
 	<div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero.jpg)"> 
 <section  style="padding-top: 200px;">
	<table style="width: 900px; height: 500px; margin-left: auto; margin-right: auto;">
		<tr>
		<%-- 	<td colspan="2"><jsp:include page="/common/Top.jsp"></jsp:include> --%>
			</td>
		</tr>
		<tr>
			<%-- <td style="width: 200px"><jsp:include page="/common/Left.jsp"></jsp:include> --%>
			</td>
			<td style="width: 700px">
	
				<table class="table table-hover"
					style="width: 500px; height: 100px; margin-left: auto; margin-right: auto;" >
				
					<tr>
						<h3 style="text-align:center">Member Detail</h3>
					</tr>
					<tr>
						<td>ID</td>
						<td>${member.id}</td>
					</tr> 
					<tr>
						<td>PWD</td>
						<td>${member.pwd}</td>
					</tr>
					<tr>
						<td>이름</td>
						<td>${member.name}</td>
					</tr>
					<tr>
						<td>핸드폰 번호</td>
						<td>${member.hp}</td>
					</tr>
					<tr>
						<td>회원등급</td>
						<td>${member.grade}</td>
					</tr>

					<tr style="text-align:right">
					<td colspan="2">
						<a href="GetMemberList.do" class="btn dorne-btn">회원목록보기</a>
					</td>
					</tr>
				</table> 

			</td>
		</tr>


		</td>
		</tr>
		<tr>
			<%-- <td colspan="2"><jsp:include page="/common/Bottom.jsp"></jsp:include></td> --%>
		</tr>
	</table>
		</section>

	<jsp:include page="/common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>