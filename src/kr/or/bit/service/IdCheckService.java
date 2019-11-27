package kr.or.bit.service;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.action.Action;
import kr.or.bit.action.ActionForward;
import kr.or.bit.dao.MemberDao;
import kr.or.bit.dto.Member;


public class IdCheckService implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response){
		
		ActionForward forward = null;
		MemberDao memberdao = null;
		String idcheck = null;
		try {
			memberdao = new MemberDao();
			String id = request.getParameter("id");
			forward= new ActionForward();
			idcheck = memberdao.isIdcheck(id);
			request.setAttribute("message", idcheck);
			forward = new ActionForward();
		  	forward.setPath("/WEB-INF/uservalid.jsp");
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		
		return forward;
	}
	
	
	
}