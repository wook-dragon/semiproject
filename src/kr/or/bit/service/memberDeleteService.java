package kr.or.bit.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.action.Action;
import kr.or.bit.action.ActionForward;
import kr.or.bit.dao.MemberDao;
import kr.or.bit.dto.Member;

public class memberDeleteService implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = null;
		String id = request.getParameter("id");
		
		try {
		forward = new ActionForward();
		
		MemberDao memberdao = new MemberDao();
		int result =0;
	  	String board_msg="";
	  	String board_url="";
	  	
	  	result = memberdao.memberDelete(id);
		System.out.print("reuslt" + result);
	 	if(result > 0) {
	  		board_msg ="삭제성공";
	  		board_url ="GetMemberList.do";
	  	}else { //-1 (제약, 컬럼길이 문제)
	  		board_msg ="삭제실패";
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