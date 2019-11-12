package kr.or.bit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.action.Action;
import kr.or.bit.action.ActionForward;
import kr.or.bit.service.DeptnoSearchService;
import kr.or.bit.service.EmpEditService;
import kr.or.bit.service.EmpnoSearchService;
import kr.or.bit.service.LoginOkService;


@WebServlet("*.do")
public class FrontMemoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FrontMemoController() {
        super();
        // TODO Auto-generated constructor stub
    }

    private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String url_Command = requestURI.substring(contextPath.length());
	
    	Action action = null;
    	ActionForward forward = null;
    	if(url_Command.equals("/login.do")) { //로그인페이지로 이동
    		forward = new ActionForward();
    		forward.setRedirect(false);
    		forward.setPath("/Login.jsp");
    	}else if(url_Command.equals("/enroll.do")) { //사원추가페이지로 이동
    		forward = new ActionForward();
    		forward.setRedirect(false);
    		forward.setPath("/Enroll.jsp");

    	}else if(url_Command.equals("/printemplist.do")) { //사원목록보기 페이지로 이동
    	//UI 제공  //지금은 없는 서비스 .... 만약 ...
	    	forward = new ActionForward();
	    	forward.setRedirect(false);
	    	forward.setPath("/Memberlist.jsp");
    	}else if(url_Command.equals("/gomain.do")) { //메인으로 이동
    	//UI 제공  //지금은 없는 서비스 .... 만약 ...
	    	forward = new ActionForward();
	    	forward.setRedirect(false);
	    	forward.setPath("/Main.jsp");
    	}else if(url_Command.equals("/loginOk.do")) { //로그인OK 서비스
	    	try {
    			action = new LoginOkService();
        		forward = action.execute(request, response);
        		System.out.println("LoginOk");
		}catch(Exception e) {
			e.printStackTrace();
		}
    	}else if(url_Command.equals("/empedit.do")) { //사원정보 수정OK 서비스
	    	try {
				action = new EmpEditService();
	    		forward = action.execute(request, response);
	    		System.out.println("EmpeditOk");
		}catch(Exception e) {
			e.printStackTrace();
		}
    	}else if(url_Command.equals("/empnosearch.do")) { //사원번호로 검색 비동기 서비스
	    	try {
				action = new EmpnoSearchService();
	    		forward = action.execute(request, response);
	    		System.out.println("EmpnoSearchOk");
		}catch(Exception e) {
			e.printStackTrace();
		}
    	}else if(url_Command.equals("/deptnosearch.do")) { //부서번호로 검색 비동기 서비스
	    	try {
				action = new DeptnoSearchService();
	    		forward = action.execute(request, response);
	    		System.out.println("DeptnoSearchOk");
		}catch(Exception e) {
			e.printStackTrace();
		}
    	}else if(url_Command.equals("/empchart.do")) { //사원 차트 비동기 서비스
	    	try {
				action = new DeptnoSearchService();
	    		forward = action.execute(request, response);
	    		System.out.println("DeptnoSearchOk");
		}catch(Exception e) {
			e.printStackTrace();
		}
    	}
    	
    	
    	
    	if(forward != null) {
    		if(forward.isRedirect()) { //true
    			response.sendRedirect(forward.getPath());
    		}else {
    			RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
    			dis.forward(request, response);
    		}
    	}
    	
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
