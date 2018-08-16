package kr.kitri.board;

import java.util.List;

public interface BoardService {
	List<BoardDTO> boardList();
	int insert(BoardDTO board);
	List<BoardDTO> searchList(String search);
	List<BoardDTO> searchList(String tag,String search);
	List<BoardDTO> pageList();
	
	
	//title을 클릭하면 board의 상세보기가 실행 될 수 있도록
	//mapper에 <select>태그를 이용해서 작업 parameterType을 String으로 정의하고 사용
	//요청 /board/read.do
	//작업이 완료되면 menu와 board_read.jsp가 연결되도록
	// 			---------------------(tiles의 뷰이름: board/read)
	BoardDTO read(String board_no);
	
	//게시물읽기를 할 때는 state=READ, 게시물 수정은 state=UPDATE
	//state가 READ이면 뷰의 이름은 board/read, UPDATE이면 뷰의 이름은 board/update
	//게시물번호를 받아서 제목,내용수정
	//수정이 완료되면 board/list.do로 redirect
	//controller에는 /board/update.do
	//dao에서 update메소드 - update는 dto에 파라미터 셋팅
	int update(BoardDTO board);	
	//board_read.jsp에서 삭제버튼을 누르면 게시물이 삭제되도록 작업
	//삭제가 완료되면 board/list.do로 redirect
	//board/delete.do => 게시물을 직접 삭제
	//mapper에서 <delete>태그
	//dao에서는 delete메소드
	int delete(String board_no);
	
}
