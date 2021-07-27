package co.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.prj.common.Command;
import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.serviceImpl.MemberServiceImpl;
import co.micol.prj.member.vo.MemberVO;

public class Login implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 로그인 과정 처리
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession(); //세션객체 호출
		System.out.println(session.getId() + "=================");
		vo.setId(request.getParameter("id"));
		vo.setPassword(request.getParameter("password"));
		vo = dao.memberLogin(vo);
		String page="";
		if(!vo.getName().isEmpty()) { 
			session.setAttribute("name", vo.getName());
			session.setAttribute("author", vo.getAuthor());
			session.setAttribute("id", vo.getId());
			page = "member/loginSuccess";
		} else {
			String message = "존재하지 않는 아이디 또는 패스워드가 틀립니다.";
			request.setAttribute("message", message);
			page="member/memberError";
		}
		return page;
	}

}
