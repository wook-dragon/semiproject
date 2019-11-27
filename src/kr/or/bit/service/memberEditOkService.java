package kr.or.bit.service;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.action.Action;
import kr.or.bit.action.ActionForward;
import kr.or.bit.dao.MemberDao;
import kr.or.bit.dto.Member;

public class memberEditOkService implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward	forward = null;
		try {
		forward = new ActionForward();
		Member member = new Member();
		member.setId(request.getParameter("id"));
		member.setPwd(request.getParameter("pwd"));
		member.setName(request.getParameter("name")); 
		member.setHp(request.getParameter("hp"));
		member.setGrade(Integer.parseInt(request.getParameter("grade")));
		
		MemberDao memberdao = new MemberDao();
		int result =0;
	  	String board_msg="";
	  	String board_url="";
	  	
		result = memberdao.memberEdit(member);
		System.out.print("reuslt" + result);
	 	if(result > 0) {
	  		board_msg ="수정성공";
	  		board_url ="GetMemberList.do";
	  	}else { //-1 (제약, 컬럼길이 문제)
	  		board_msg ="수정실패";
	  		board_url ="GetMemberList.do";
	  	}
	  	request.setAttribute("board_msg", board_msg);
	  	request.setAttribute("board_url", board_url);
	  	  
		//이동경로 설정
	  	forward.setPath("/WEB-INF/redirect.jsp");
	  	

	  	}catch(Exception e){
	  		System.out.println(e.getMessage());
	  	}
	  	
	  	return forward;
		
		}
}
		
		