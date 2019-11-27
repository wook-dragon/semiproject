<%@page import="kr.or.bit.utils.ConnectionHelper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang>
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

<script type="text/javascript">
 $(document).ready(function(){
   
   //사번으로 검색
   $('#idsearch').click(function(){
      
      if($('#id').val() == ""){
         alert("아이디를 입력해주세요.");
         $('#id').focus();
      }else{
      
         $.ajax(
            {
               url:"idsearch.do", //Ex10_ok.jsp   
               data:{id:$('#id').val()}, //MemoId?id=aa
               dataType:"json", //xml , json , script , html , text
               success:function(responsedata){
                 // $('#empsearch').empty();
                  $('#tbody').empty();
                  console.log(responsedata);
                  console.log(responsedata.id);
                  var str = "";
                  str += "<tr>";
                  str += "<td><a href='MemberDetail.do?id="+responsedata.id+"'>" + responsedata.id + "</a></td>";
                  str += "<td>" + responsedata.pwd + "</td>";
                  str += "<td>" + responsedata.name + "</td>";
                  str += "<td>" + responsedata.hp + "</td>";
                  str += "<td>" + responsedata.grade + "</td>";
                  /* str += "<td colspan='2'><a href='MemberEdit.do?id=" */
                  str += "<td colspan='2'><a href='MemberEdit.do?id="
                  str += responsedata.id +"'"; 
                  str += "class='btn dorne-btn'>수정 </a>&nbsp;&nbsp";
                  str += "<a href='MemberDelete.do?id="
                  str += responsedata.id+"'"; 
                  str += "class='btn dorne-btn'>삭제</a>";
                  str += "</td></tr>";
                  console.log(str);
                    $('#tbody').append(str);
               },
               error:function(){
               }
            }      
         );
      };
   });

         

   // 부서번호로 검색
   $('#namesearch').click(function(){
      //console.log($('#deptno').val());
      
      if($('#name').val() == ""){
         alert("이름을 입력하세요");
         $('#name').focus();
      }else{
      // empno ,ename , sal , job, comm, deptno
         $.ajax(
            {
               url:"namesearch.do", //Ex10_ok.jsp   
               data:{name:$('#name').val()}, //MemoId?id=aa
               dataType:"json", //xml , json , script , html , text
               type:"get",
               success:function(responsedata){
                  console.log(responsedata);
                  //$('#empsearch').empty();
                  $('#tbody').empty();
                  
                   $.each(responsedata,function(index, obj) {
                     console.log(obj.name);
                     var str = "";
                     str += "<tr>";
                           str += "<td><a href='MemberDetail.do?id="+obj.id+"'>" + obj.id + "</a></td>";
                           str += "<td>" + obj.pwd + "</td>";
                           str += "<td>" + obj.name + "</td>";
                           str += "<td>" + obj.hp + "</td>";
                           str += "<td>" + obj.grade + "</td>";
                           str += "<td colspan='2'><a href='MemberEdit.do?id="
                           str += obj.id +"'"; 
                           str += "class='btn dorne-btn'>수정 </a>&nbsp;&nbsp";
                           str += "<a href='EmpDelete.do?id="
                           str += obj.id +"'"; 
                           str += "class='btn dorne-btn'>삭제</a>";
                           str += "</td></tr>";
                           
                             $('#tbody').append(str);
   
                  });
               },
               error:function(xhr){
                  alert(xhr.status);
               }
            }      
         );
   
   
}
   });
});
      

</script>
</head>
<body>
 <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero.jpg)"> 
 <section  style="padding-top: 200px;">
	ID : 
    <input type="text" size="20" id="id" name="id">
     <input type="button" value="검색" id="idsearch" class="btn dorne-btn"> 
     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        이름 : 
      <input type="text" size="20" id="name" name="name" >
     <input type="button" value="검색" id="namesearch" class="btn dorne-btn"> 
     
     <br>
<br>
<br>

  <table> 

      <table id = "membersearch" class="table table-hover" style="width: 1000px; height: 100%;  margin-left: auto; margin-right: auto;">
         <tr>
            <h3 style="text-align: center">Member List</h3>
         </tr>
         <tr>
            <th>아이디</th>
            <th>비밀번호</th>
            <th>이름</th>
            <th>전화번호</th>
            <th>회원등급</th>
         <th>회원정보 수정 및 삭제</th>
         </tr>
         
         <tbody id="tbody" style="height:100%">
         <c:forEach var="list" items="${requestScope.getmemberlist}"> 
         <tr>
         <td>
            <a href='MemberDetail.do?id=${list.id}'>${list.id}</a>
         </td>
         <td>${list.pwd}</td>
         <td>${list.name}</td>
         <td>${list.hp}</td>
         <td>${list.grade}</td>
         <td colspan="2">
		 <a href="MemberEdit.do?id=${list.id}" class="btn dorne-btn">수정 </a>&nbsp;&nbsp;
         <a href="MemberDelete.do?id=${list.id}" class="btn dorne-btn">삭제</a>
         </td>
         </tr>
         
         </c:forEach>
          </tbody>
</table>
</table>
<!--      
	<div class="" id="mydiv">
		<div class="" id="loginboxdiv">
			<div class="login-box well" id="loginboxinnerbox">
			</div>
		</div>

	</div>
 -->	</section>

	<jsp:include page="/common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>