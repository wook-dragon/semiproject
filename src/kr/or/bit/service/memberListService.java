package kr.or.bit.service;

import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.action.Action;
import kr.or.bit.action.ActionForward;
import kr.or.bit.dao.MemberDao;
import kr.or.bit.dto.Member;

public class memberListService implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws NamingException {
		ActionForward forward = null;
		try {
  		  		  MemberDao memberdao = new MemberDao();
  		  		  ArrayList<Member> getmemberlist = memberdao.memberList();
  		  		  request.setAttribute("getmemberlist",getmemberlist);
		  		  System.out.println(getmemberlist);
  		  		  forward = new ActionForward();
  			  	  forward.setPath("/memberList.jsp");
  			  	  System.out.println("서비스 " + getmemberlist);
	
		  	}catch(Exception e){
		  		System.out.println(e.getMessage());
		  	}
		return forward;
	}
}