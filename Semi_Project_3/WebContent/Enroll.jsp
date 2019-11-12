<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<jsp:include page="/Common/Top.jsp"></jsp:include>
    <article class="container " style="height: 100%">
            <div class="page-header" style="text-align:center">
             <h3>JOIN</h3>
                </div>
       
          
            <div class="col-sm-6 col-md-offset-3">
                <form role="form" action="JoinOK.jsp" method="post" name="joinForm" id="joinForm">
                    <div class="form-group">
                        <label for="ID">사원번호</label>
                        <input type="text" class="form-control" name="empno" id="empno" placeholder="사원번호를 입력하세요">
                         <div class="tdid"></div>
                    </div>
                    <div class="form-group">
                        <label for="Password">사원이름</label>
                        <input type="password" class="form-control" name="ename" id="ename" placeholder="사원이름을 입력하세요">
                        <div class="tdpw"></div>
                    </div>
                    <div class="form-group">
                        <label for="Password Check">직종</label>
                        <input type="password" class="form-control" name="job" id="job" placeholder="직종을 입력하세요">
                        <div class="tdpwch"></div>
                    </div>
                    
                    <div class="form-group">
                        <label for="Name">사수번호</label>
                        <input type="text" class="form-control" name="mgr" id="mgr" placeholder="사수번호를 입력하세요">
                    </div>
                    
                    <div class="form-group">
                        <label for="Email">입사일</label>
                        <input type="text" class="form-control" name="hiredate" id="hiredate" placeholder="입사일을 입력하세요">
                        <div class="tdmail"></div>
                    </div>
                    <div class="form-group">
                        <label for="Email">임금</label>
                        <input type="text" class="form-control" name="sal" id="sal" placeholder="임금을 입력하세요">
                        <div class="tdmail"></div>
                    </div>
                    <div class="form-group">
                        <label for="Email">커미션</label>
                        <input type="text" class="form-control" name="comm" id="comm" placeholder="커미션을 입력하세요">
                        <div class="tdmail"></div>
                    </div>
                    <div class="form-group">
                        <label for="Email">부서번호</label>
                        <input type="text" class="form-control" name="deptno" id="deptno" placeholder="부서번호를 입력하세요">
                        <div class="tdmail"></div>
                    </div>
            
                    <div class="form-group text-center col-sm-12">
                        <div class="col-sm-6"><button type="submit" id="join-submit" value="회원가입" class="btn btn-skin btn-lg btn-block "> 회원가입<i class="fa fa-check spaceLeft"></i></button></div>
                        <div class="col-sm-6"> <button type="reset" class="btn btn-skin btn-lg btn-block col-sm-4" value="취소">초기화<i class="fa fa-times spaceLeft"></i></button></div>
                       
                    </div>
                </form>
            </div>

        </article>
    </body>
    <jsp:include page="/Common/Regexp.jsp"></jsp:include>
</html>