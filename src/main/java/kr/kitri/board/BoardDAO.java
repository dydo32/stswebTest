package kr.kitri.board;

import java.util.List;

public interface BoardDAO {
	List<BoardDTO> boardList();
	int insert(BoardDTO board);
	List<BoardDTO> searchList(String search);
	List<BoardDTO> searchList(String tag,String search);
	List<BoardDTO> pageList();
	
	BoardDTO read(String board_no);
	int update(BoardDTO board);	
	int delete(String board_no);
}
