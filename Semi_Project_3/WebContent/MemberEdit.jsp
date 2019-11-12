<%@page import="kr.or.bit.utils.Singleton_Helper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%
   request.setCharacterEncoding("UTF-8");      
   String id = request.getParameter("id");

   Connection conn = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   
   try{
      conn = Singleton_Helper.getConnection("oracle");
      String sql="select id, pwd, name, age, trim(gender), email from koreamember where id=?";
      pstmt = conn.prepareStatement(sql);
      
      pstmt.setString(1,id);
      rs = pstmt.executeQuery();  // 데이터베이스에서 정보를 가져올때 사용 
      
      //while(rs.next())
      rs.next(); //1건의 데이터가 있다는 전제조건 

%>

   <jsp:include page="/Common/Admin.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

   <jsp:include page="/Common/Top.jsp"></jsp:include>

<div class="container">
            <div class="page-header">
                <div class="col-md-6 col-md-offset-3">
                <h3>회원정보 수정</h3>
                </div>
            </div>
            <div class="col-sm-6 col-md-offset-3">
          <form action="MemberEditok.jsp" method="post" role="form" >
                <div class="form-group">
                <label for="inputID">ID</label>
                <input type="text" class="form-control" name="id" id="id" value="<%=rs.getString(1)%>" readonly> 
                  <div class="tdid"></div>
                </div>
                <div class="form-group">
                <label for="inputPassword">Password</label>
                 <input type="password" class="form-control" name="pwd" id="pwd" value="<%=rs.getString(2)%>">
                  <div class="tdpw"></div>
                </div>
                <div class="form-group">
                        <label for="inputPasswordCheck">Password Check</label>
                        <input type="password" class="form-control" name="pwdcheck" id="pwdcheck">
                        <div class="tdpwch"></div>
                    </div>
                <div class="form-group">
                <label for="inputName">Name</label>
                <input type="text" class="form-control" name="name" id="mname" value="<%=rs.getString(3)%>">
                </div>
                <div class="form-group">
                <label for="inputName">Age</label>
                <input type="text" class="form-control" name="age" id="age" value="<%=rs.getString(4)%>">
                </div>
                
                <div class="form-group">
                 <label for="inputGender">Gender</label>
            <input type="radio" name="gender" id="gender" value="여" <%if(rs.getString(5).equals("여")){ %>checked<%} %>>여자
            <input type="radio" name="gender" id="gender" value="남" <%if(rs.getString(5).equals("남")){ %>checked<%} %>>남자
                </div>
                <div class="form-group">
                <label for="inputEmail">E-Mail</label>
                 <input type="text" class="form-control" name="email" id="email" value="<%=rs.getString(6)%>">
                  <div class="validation"></div>
                  <div class="tdmail"></div>
                </div>
                <div class="form-group text-center col-sm-12">
                <div class = col-sm-6>
              <input type="submit" class="btn btn-skin btn-lg btn-block" value="수정하기">
              </div>
                <div class = col-sm-6>
              <button class="btn btn-skin btn-lg btn-block" id="btnContactUs" onclick="location.href='Memberlist.jsp' ">
                               돌아가기</button></div>
              </div>
              
     
          </form>
</div>
    </div>
   
      <jsp:include page="/Common/Bottom.jsp"></jsp:include>
</body>
<jsp:include page="/Common/Regexp.jsp"></jsp:include>
</html>


<%    
            }catch(Exception e){
               
            }finally{
               Singleton_Helper.close(rs);
               Singleton_Helper.close(pstmt);
            }
          %>