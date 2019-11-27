package kr.or.bit.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.action.Action;
import kr.or.bit.action.ActionForward;
import kr.or.bit.dao.MemberDao;
import kr.or.bit.dto.Member;
import net.sf.json.JSONObject;

public class idService implements Action{

	   @Override
	   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
	      
	      ActionForward forward = null;
	      
	      try {
	                 String id = request.getParameter("id");
	                 
	                  MemberDao memberdao = new MemberDao();
	                  Member member = new Member();
	                  
	                  member = memberdao.getById(id);
	                   
	                  JSONObject object = JSONObject.fromObject(member);
	             
	                  request.setAttribute("byid", object);
	                
	                  forward = new ActionForward();
	                  forward.setPath("/memberjson.jsp");

	           }catch(Exception e){
	              System.out.println(e.getMessage());
	           }
	      return forward;
	   }

	}

