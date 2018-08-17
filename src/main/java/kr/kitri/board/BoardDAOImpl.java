package kr.kitri.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("boarddao")
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	SqlSession sqlSession;	//dao연동하는 메소드가 정의되어 있는 템플릿 클래스
	
	@Override
	public List<BoardDTO> boardList() {
		List<BoardDTO> boardlist = sqlSession.selectList("kr.kitri.board.listall");
		return boardlist;
	}

	@Override
	public int insert(BoardDTO board) {
		int result = sqlSession.insert("kr.kitri.board.insert", board);
		return result;
	}
	
	@Override
	public BoardDTO read(String board_no) {
		BoardDTO board = sqlSession.selectOne("kr.kitri.board.read", board_no);
		return board;
	}

	@Override
	public int update(BoardDTO board) {
		int result = sqlSession.update("kr.kitri.board.update", board);
		return result;
	}

	@Override
	public int delete(String board_no) {
		int result = sqlSession.delete("kr.kitri.board.delete", board_no);
		return result;
	}
	
	@Override
	public List<BoardDTO> searchList(String category) {
		List<BoardDTO> categorylist = sqlSession.selectList("kr.kitri.board.category", category);
		return categorylist;
	}

	@Override
	public List<BoardDTO> searchList(String tag, String search) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("tag", tag);
		map.put("search", search);
		return sqlSession.selectList("kr.kitri.board.dynamicsearch", map);
	}

	@Override
	public List<BoardDTO> pageList() {
		// TODO Auto-generated method stub
		return null;
	}

}
