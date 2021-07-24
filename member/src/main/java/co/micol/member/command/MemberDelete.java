package co.micol.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.member.sevice.MemberService;
import co.micol.member.seviceImpl.MemberServiceImpl;
import co.micol.member.vo.MemberVO;

public class MemberDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		vo.setId(request.getParameter("id"));
		
		int n  = dao.memberDelete(vo);
		String view;
		if(n!=0) {
			view = "memberList.do";
		} else {
			request.setAttribute("message", "입력 실패");
			view = "member/memberDeleteFail";
		}
		return view;
	}
	
}
