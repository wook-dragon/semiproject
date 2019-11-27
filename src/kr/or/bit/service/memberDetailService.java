package kr.or.bit.service;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.action.Action;
import kr.or.bit.action.ActionForward;
import kr.or.bit.dao.MemberDao;
import kr.or.bit.dto.Member;

public class memberDetailService implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws NamingException {
		ActionForward forward = null;
		try {
			String id = request.getParameter("id");
			System.out.println("id : "+id);
	  		MemberDao memberdao = new MemberDao();
	  		Member member = memberdao.getMemberDetail(id);
	  		request.setAttribute("memberdetail", member);
	  		forward = new ActionForward();
		  	forward.setPath("/memberDetail.jsp");

	  	}catch(Exception e){
	  		System.out.println(e.getMessage());
	  	}
	return forward;
}

}
