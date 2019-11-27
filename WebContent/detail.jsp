<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
          <title>Bootstrap Example</title>
           <meta charset="utf-8">
           <meta name="viewport" content="width=device-width, initial-scale=1">
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
           <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
         
          <meta name="description" content="">
          <meta http-equiv="X-UA-Compatible" content="IE=edge">
          <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      
          <!-- Favicon -->
          <link rel="icon" href="img/core-img/favicon.ico">
      
          <!-- Core Stylesheet -->
          <link href="style.css" rel="stylesheet">
      
          <!-- Responsive CSS -->
          <link href="css/responsive/responsive.css" rel="stylesheet">
               
 

   <style type="text/css">
   #picture{width:400px; height:600px; float:left; margin:20px; padding-top:200px;}
/*    p{ border:1px solid gray; } */
   
   
   </style>

</head>


<jsp:include page="/common/top.jsp"></jsp:include>

   <body>
<div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero.jpg)">    
   <img src="moon.jpg" id="picture">
   
         <div class="container">
           <table class="table table-hover">
                <thead>
                          <tr>
                         <th scope="col">Title</th>
                          </tr>                           
                </thead>
                     <tbody>             
                                       <tr>
                                             <th scope="col">주소</th>
                                             <td>강원 춘천시 동산면 윗성골길 36 </td>
                                          </tr>
                                       <tr>
                                             <th scope="col">캠핑장 환경</th>
                                             <td>산, 숲 / 민간</td>
                                          </tr>
                                       <tr>
                                             <th scope="col">캠핑장 유형</th>
                                             <td>자동차야영장</td>
                                          </tr>
                                       <tr>
                                             <th scope="col">운영기간</th>
                                             <td>봄, 여름, 가을</td>
                                          </tr>
                                       <tr>
                                             <th scope="col">운영일</th>
                                             <td>평일+주말</td>
                                          </tr>
                                       <tr>
                                             <th scope="col">홈페이지</th>
                                             <td><a href="http://dailyland.co.kr" target="_BLANK" title="새창열림">홈페이지 바로가기</a>
                                                            <i class="ico_link"><span class="skip">새창으로</span></i>
                                             </td>
                                          </tr>
                                       <tr>
                                             <th scope="col">예약방법</th>
                                             <td>온라인실시간예약</td>
                                          </tr>
                                       </tbody>
                                     </table>
                                  </div>
</body>
   
<jsp:include page="/common/bottom.jsp"></jsp:include>
</html>