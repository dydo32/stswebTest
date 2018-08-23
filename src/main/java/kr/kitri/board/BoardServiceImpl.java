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
	
	//트랜잭션 메소드 - 논리적인 작업단위(계좌이체, 책구매, 물건구매, ..., 사원등록-가족사항,경력사항...)
	@Override
	public int txinsert(BoardDTO board) {
		dao.insert(board);	//주문테이블에 insert - 주문의 일반적인 내용
		dao.insert(null);	//주문상품테이블에 insert - 내가 주문한 상품의 목록
		//주문같은 경우 수량을 -1 하는 메소드도 호출
		return 0;
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
