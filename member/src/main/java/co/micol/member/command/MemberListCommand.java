package co.micol.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.member.sevice.MemberService;
import co.micol.member.seviceImpl.MemberServiceImpl;
import co.micol.member.vo.MemberVO;

public class MemberListCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 회원 전체 목록 보기
		MemberService dao = new MemberServiceImpl(); //모델을 호출
		List<MemberVO> members = new ArrayList<MemberVO>(); //추상클래스이기 때문에 ArrayList로 작성
		members = dao.memberSelectList(); //데이터를 가져옴
		request.setAttribute("list", members); //jsp에서 쓸 변수, 페이지에 값을 전달하기 위해
		return "member/memberList"; //보여줄 페이지 선택
	}

}
