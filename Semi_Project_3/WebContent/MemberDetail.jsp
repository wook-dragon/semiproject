<%@page import="kr.or.bit.utils.Singleton_Helper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
String empno = request.getParameter("empno");

%>
	<jsp:include page="/Common/Admin.jsp"></jsp:include>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<jsp:include page="/Common/Top.jsp"></jsp:include>

	<table style="width: 900px; height: 500px; margin-left: auto; margin-right: auto;">
		<tr>
		<%-- 	<td colspan="2"><jsp:include page="/common/Top.jsp"></jsp:include> --%>
			</td>
		</tr>
		<tr>
			<%-- <td style="width: 200px"><jsp:include page="/common/Left.jsp"></jsp:include> --%>
			</td>
			<td style="width: 700px">
			
				 <% 
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try{
					conn = Singleton_Helper.getConnection("oracle");
					String sql="select empno, ename, job, mgr, hiredate, sal, comm, deptno from emp where empno=?";
					
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, empno);
					rs = pstmt.executeQuery();  // 데이터베이스에서 정보를 가져올때 사용 
				%>

				<table class="table table-hover"
					style="width: 500px; height: 100px; margin-left: auto; margin-right: auto;" >
				
					<tr>
						<h3 style="text-align:center">Employee Detail</h3>
					</tr>
					<% while(rs.next()){ %>   <!-- while아닌 if사용해도 ok  -->
					
					<tr>
						<td>사원번호</td>
						<td><%=rs.getString("empno") %></td>
					</tr> 
					<tr>
						<td>사원이름</td>
						<td><%=rs.getString("ename") %></td>
					</tr>
					<tr>
						<td>직종</td>
						<td><%=rs.getString("job") %></td>
					</tr>
					<tr>
						<td>사수번호</td>
						<td><%=rs.getString("mgr") %></td>
					</tr>
					<tr>
						<td>입사일</td>
						<td><%=rs.getString("hiredate") %></td>
					</tr>
					<tr>
						<td>임금</td>
						<td><%=rs.getString("sal") %></td>
					</tr>
					
					<tr>
						<td>커미션</td>
						<td><%=rs.getString("comm") %></td>
					</tr>
					<tr>
						<td>부서번호</td>
						<td><%=rs.getString("deptno") %></td>
					</tr>

					<tr style="text-align:right">
					<td colspan="2">
						<a href="Memberlist.jsp" class="btn btn-skin">목록보기</a>
					</td>
					</tr>
					<% }%>
				</table> 
			<% 	
				}catch(Exception e){
					
				}finally{
					Singleton_Helper.close(rs);
					Singleton_Helper.close(pstmt);
				}
			 %>

			</td>
		</tr>


		</td>
		</tr>
		<tr>
			<%-- <td colspan="2"><jsp:include page="/common/Bottom.jsp"></jsp:include></td> --%>
		</tr>
	</table>
	
		<jsp:include page="/Common/Bottom.jsp"></jsp:include>
</body>
</html>