package co.micol.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 수정하는 form호출
    	request.setAttribute("bId", request.getParameter("bId"));
		request.setAttribute("bTitle", request.getParameter("bTitle"));
		request.setAttribute("bContent", request.getParameter("bContent"));
		request.setAttribute("bWriter", request.getParameter("bWriter"));
		request.setAttribute("bHit", request.getParameter("bHit"));
		request.setAttribute("bDate", request.getParameter("bDate"));
		return "board/updateForm";
	}

}
