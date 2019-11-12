<%@page import="kr.or.bit.utils.Singleton_Helper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="/Common/Admin.jsp"></jsp:include>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:include page="/Common/Top.jsp"></jsp:include>

<style>
th {
	text-align: center;
}

#div2 {
	width: auto;
	text-align: center;
	top: 10%;
	left: 10%;
}

#input2 {
	border-color: #3dc9b3;
	border-radius: 10px;
	opacity: none;
}

#input1 {
	border: 2px solid #3dc9b3;
	border-radius: 10px;
}
</style>


<section id="div2">
	<table style="margin-top: 3%">


		<% 
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            
            try{
               conn = Singleton_Helper.getConnection("oracle");
               String sql="select * from emp";
               pstmt = conn.prepareStatement(sql);
               rs = pstmt.executeQuery();  // 데이터베이스에서 정보를 가져올때 사용 
         %>

		<table class="table table-hover"
			style="width: 1000px; height: 100px; margin-left: auto; margin-right: auto;">
			<tr>

				<h3 style="text-align: center">Member List</h3>
			</tr>
			<tr>
				<th>사원번호</th>
				<th>사원이름</th>
				<th>직종</th>
				<th>사수번호</th>
				<th>입사일</th>
				<th>임금</th>
				<th>커미션</th>
				<th>부서번호</th>
				<th colspan="2">사원정보 수정 및 삭제</th>

			</tr>
			<% while(rs.next()){ %>
			<tr>
				<td>
					<!-- get방식(회원정보로 들어갈때 회원아이디 들고 들어가야하니까 ?id=회원아이디)--> <!--  이런 링크는 다 get 방식으로! -->
					<a href='MemberDetail.jsp?empno=<%=rs.getString("empno") %>'><%=rs.getString("empno") %></a>
				</td>
				<td><%=rs.getString("ename") %></td>
				<td><%=rs.getString("job") %></td>
				<td><%=rs.getString("mgr") %></td>
				<td><%=rs.getString("hiredate") %></td>
				<td><%=rs.getString("sal") %></td>
				<td><%=rs.getString("comm") %></td>
				<td><%=rs.getString("deptno") %></td>
				<td colspan="2">
					<!-- 회원정보 지울때 아이디를 가져와야 지울 수 있음. ?id=회원아이디 --> <a
					href="MemberEdit.jsp?id=<%=rs.getString("empno") %>"
					class="btn btn-skin btn-lg">수정</a>&nbsp;&nbsp; <a
					href="MemberDelete.jsp?id=<%=rs.getString("empno") %>"
					class="btn btn-skin btn-lg">삭제</a>
				</td>
			</tr>

			<% }%>
		</table>

		<form action="empnosearch.do" method="post">
			사원번호 <input type="text" name="empnosearch" id="empnosearch"> <input
				type="submit"
				value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 검색  &nbsp;&nbsp;&nbsp;&nbsp;"
				id="empnosearch1" class="btn btn-skin btn-lg">
		</form>
		<br>
		<form action="deptnosearch.do" method="post">
			부서번호 <input type="text" name="deptnosearch" id="deptnosearch"> <input
				type="submit"
				value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 검색  &nbsp;&nbsp;&nbsp;&nbsp;"
				id="deptnosearch" class="btn btn-skin btn-lg">
		</form>
		<br>

		<%    
            }catch(Exception e){
               
            }finally{
               Singleton_Helper.close(rs);
               Singleton_Helper.close(pstmt);
            }
          
          %>


		<!-- </td> -->
		</tr>
		<tr>
			<%-- <td colspan="2"><jsp:include page="/common/Bottom.jsp"></jsp:include></td> --%>
		</tr>
	</table>
</section>


<jsp:include page="/Common/Bottom.jsp"></jsp:include>
</body>
</html>