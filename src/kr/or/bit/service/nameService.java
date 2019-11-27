package kr.or.bit.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.bit.action.Action;
import kr.or.bit.action.ActionForward;
import kr.or.bit.dao.MemberDao;
import kr.or.bit.dto.Member;
import net.sf.json.JSONArray;

public class nameService implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {

		ActionForward forward = null;
		try {
			String name = request.getParameter("name");
			System.out.println(name);
			MemberDao memberdao = new MemberDao();
			List<Member> memberlist = memberdao.getByName(name);
			System.out.println("memberlist는 나오니 서비스야? " + memberlist);

			JSONArray jsonlistbyname = JSONArray.fromObject(memberlist);
			System.out.println("제이슨 : " + jsonlistbyname);
			System.out.println("나오니??????");

			request.setAttribute("memberlistbyname", jsonlistbyname);
		
			forward = new ActionForward(); 
			forward.setPath("/Memberlistbyname.jsp");
			  
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return forward;
	}
}