<%@page import="kr.or.bit.utils.ConnectionHelper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="member" value="${requestScope.member}"></c:set>
	
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
	<article class="container " style="height: 100%">
            <div class="page-header" style="text-align:center">
             <h3>Edit</h3>
                </div>
          <!--    form roll="form" 에서 속성들 role : 폼 양식이 있는 곳을 알려주거나 변경된 경우 joinok.jsp  -->	
            <div class="col-sm-6" style="margin-left: auto;margin-right: auto">
                <form role="form" action="MemberEditOk.do" method="post" name="joinForm" id="joinForm">

                    <div class="form-group">
                        <label for="ID">ID</label>
                        <input type="text" class="form-control" name="id" id="id" value="${member.id }" readonly="readonly">
                         <div class="tdid"></div>
                    </div>
                    <div class="form-group">
                        <label for="pwd">PWD</label>
                        <input type="text" class="form-control" name="pwd" id="pwd" value="${member.pwd }">
                        <div class="tdpwd"></div>
                    </div>
                    <div class="form-group">
                        <label for="name">이름</label>
                        <input type="text" class="form-control" name="name" id="name" value="${member.name }">
                        <div class="tdname"></div>
                    </div>
                    
                    <div class="form-group">
                        <label for="hp">HP</label>
                        <input type="text" class="form-control" name="hp" id="hp" value="${member.hp }">
                    	<div class="tdhp"></div>
                    </div>
                    
                    <div class="form-group">
                        <label for="grade">회원등급</label><br>
                        <label class="form-check-label" for="grade0" style="margin-right: 10px">
                        <input type="radio" class="form-check-input" name="grade" id=grade0 value=0>정지 회원
                        </label>
                        <label class="form-check-label" for="grade1" style="margin-right: 10px">
                        <input type="radio" class="form-check-input" name="grade" id=grade1 value=1>활동 회원
                        </label>
                        <label class="form-check-label" for="grade2" style="margin-right: 10px">
                        <input type="radio" class="form-check-input" name="grade" id=grade2 value=2>관리자
                        </label>
                        <div class="tdgrade"></div>
                    </div>
            
                    <div class="form-group text-center col-sm-12">
                        <button type="submit" id="join-submit" class="btn dorne-btn">편집<i class="fa fa-check spaceLeft"></i></button>
                        <button type="button" id=comback class="btn dorne-btn">돌아가기<i class="fa fa-times spaceLeft"></i></button>
                    </div>
                </form>
            </div>

        </article>	
		</section>

	<jsp:include page="/common/bottom.jsp"></jsp:include>
	</div>
	<script type="text/javascript">
	$('#comback').click(function(){
		history.back();
	})
	</script>
	<script type="text/javascript">
	for(var i=0;i<3;i++){
		if($('#grade'+i).val()==${member.grade}){
			$('#grade'+i).attr('checked', 'checked');
		}
	}
   </script>
</body>
</html>