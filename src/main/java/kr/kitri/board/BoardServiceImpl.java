package kr.kitri.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	@Qualifier("boarddao")
	BoardDAO dao;
	
	@Override
	public List<BoardDTO> boardList() {
		return dao.boardList();
	}

	@Override
	public int insert(BoardDTO board) {
		return dao.insert(board);
	}

	@Override
	public BoardDTO read(String board_no) {
		return dao.read(board_no);
	}

	@Override
	public int update(BoardDTO board) {
		return dao.update(board);
	}

	@Override
	public int delete(String board_no) {
		return dao.delete(board_no);
	}


	@Override
	public List<BoardDTO> searchList(String category) {
		return dao.searchList(category);
	}

	@Override
	public List<BoardDTO> searchList(String tag, String search) {
		return dao.searchList(tag, search);
	}

	@Override
	public List<BoardDTO> pageList() {
		return null;
	}

}
