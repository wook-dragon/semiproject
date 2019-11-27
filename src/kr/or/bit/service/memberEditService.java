package kr.or.bit.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.action.Action;
import kr.or.bit.action.ActionForward;
import kr.or.bit.dao.MemberDao;
import kr.or.bit.dto.Member;

public class memberEditService implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
	ActionForward forward = new ActionForward();
		
	String id = request.getParameter("id");
	System.out.println("id?"+id);

	MemberDao memberdao = null;
	try {
		memberdao = new MemberDao();
		Member member = memberdao.getById(id);			
		request.setAttribute("member",member);
		forward.setPath("/memberEdit.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return forward;
	}

	
	
	
	
	
}
