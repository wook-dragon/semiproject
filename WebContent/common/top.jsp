<!-- 수정 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%request.setCharacterEncoding("UTF-8"); %>	
<body> 
  <c:set var="id" value="${sessionScope.id}"/> 
  <c:set var="grade" value="${sessionScope.grade}"/> 
    <!-- ***** Header Area Start ***** -->
    <header class="header_area" id="header">
        <div class="container-fluid h-100">
            <div class="row h-100">
                <div class="col-12 h-100">
                    <nav class="h-100 navbar navbar-expand-lg">
                        <a class="navbar-brand" href="index.jsp"><img src="img/core-img/15.png" alt=""></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#dorneNav" aria-controls="dorneNav" aria-expanded="false" aria-label="Toggle navigation"><span class="fa fa-bars"></span></button>
                        <!-- Nav -->
                        <div class="collapse navbar-collapse" id="dorneNav">
                            <ul class="navbar-nav mr-auto" id="dorneMenu">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.jsp">Home<span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link" href="MainCampingview.do">Search</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Review<i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                                        <a class="dropdown-item" href="ReviewList.do?bcode=202&tcode=0">캠핑장 후기</a>
                                    
                                    </div>
                                </li>
                                 <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Used Transaction<i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="tradingpage.jsp">판매페이지</a>
                                     
                                    </div>
                                </li>
                                
                                 <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Service Center<i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="qna.jsp">Notice</a>
                                        <a class="dropdown-item" href="qna.jsp">Q&A</a>
                                    </div>
                                </li>
                                
                                    <li class="nav-item dropdown">
                                    <!-- <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Member<i class="fa fa-angle-down" aria-hidden="true"></i></a> -->
	                                <c:choose>
 	   								<c:when test="${id!=null && grade == '2'}">
	                               <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Admin<i class="fa fa-angle-down" aria-hidden="true"></i></a> 
	                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="LogOut.do">Logout</a>
                                        <a class="dropdown-item" href="GetMemberList.do">Memberlist</a>
                                        <a class="dropdown-item" href="BoardList.do">Boardlist</a>
	                                </div>    
	                                </c:when>  
	                                 <c:when test="${id!=null && grade == '1'}">
									 <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Member<i class="fa fa-angle-down" aria-hidden="true"></i></a>	                              
	                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="LogOut.do">Logout</a>
                                        <a class="dropdown-item" href="MyPage.do">Mypage</a>
	                                </div>
                                    	</c:when> 
   										<c:otherwise>
                                     <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Member<i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="LogIn.do">Login</a>
                                        <a class="dropdown-item" href="SignUp.do">Signup</a>
                                    </div>
                              	</c:otherwise>
								</c:choose>
                                </li>
                         
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->
</body>