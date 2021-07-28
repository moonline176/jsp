package co.micol.Lms.board.service;

import java.util.List;

import co.micol.Lms.board.vo.BoardVO;

public interface BoardService {
	List<BoardVO> boardSelectList();
	BoardVO boardSelect(BoardVO vo);
	int BoardInsert(BoardVO vo);
	int BoardUpdate(BoardVO vo);
	int BoardDelete(BoardVO vo);
	
	
}
