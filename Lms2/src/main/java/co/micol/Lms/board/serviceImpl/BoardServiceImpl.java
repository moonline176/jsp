package co.micol.Lms.board.serviceImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.micol.Lms.board.service.BoardService;
import co.micol.Lms.board.vo.BoardVO;
import co.micol.Lms.common.DAO;

public class BoardServiceImpl implements BoardService {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	@Override
	public List<BoardVO> boardSelectList() {
		// TODO 보드목록 가져오기
		List<BoardVO> list = new ArrayList<BoardVO>();
		BoardVO vo;
		String sql = "select * from board";
		try {
			conn = DAO.getConnection();
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				vo = new BoardVO();
				vo.setbId(rs.getInt("bid"));
				vo.setbWriter(rs.getString("bwriter"));
				vo.setbTitle(rs.getString("btitle"));
				vo.setbDate(rs.getDate("bdate"));
				vo.setbHit(rs.getInt("bhit"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}

	private void close() {
		// TODO Auto-generated method stub
		try {
			if(rs!=null) rs.close();
			if(psmt!=null) psmt.close();
			if(conn!=null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public BoardVO boardSelect(BoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int BoardInsert(BoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int BoardDelete(BoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int BoardUpdate(BoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
