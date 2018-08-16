package kr.kitri.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	
	@Autowired
	BoardService service;
	
	@RequestMapping(value="/board/write.do",method=RequestMethod.POST)
	public String write(BoardDTO board) {
		//System.out.println(board);
		int result = service.insert(board);
		System.out.println(result+"개행삽입성공!");
		return "redirect:/board/list.do?category=all"; 
	}
	
	@RequestMapping(value="/board/list.do")
	public ModelAndView showlist(String category) {
		ModelAndView mav = new ModelAndView();
		List<BoardDTO> boardlist = null;
		System.out.println("category==>"+category);
		if(category!=null) {
			if(category.equals("all")) {
				boardlist =service.boardList();
			}else {
				boardlist = service.searchList(category);
			}
		}
		mav.addObject("category",category);
		mav.addObject("boardlist", boardlist);
		mav.setViewName("board/list"); //tiles에 등록
		return mav;
	}
	
	@RequestMapping(value="/board/read.do")
	public ModelAndView read(String board_no, String state) {
		//System.out.println("readcontroller=>"+board_no+","+state);
		ModelAndView mav = new ModelAndView();
		BoardDTO board = service.read(board_no);
		String viewName="";
		if(state.equals("READ")) {
			viewName="board/read";
		}else if(state.equals("UPDATE")) {
			viewName="board/update";
		}
		mav.addObject("board",board);
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value="/board/update.do")
	public String update(BoardDTO board) {
		int result = service.update(board);
		System.out.println(result+"개 수정 성공");
		return "redirect:/board/list.do?category=all";
	}
	
	@RequestMapping(value="/board/delete.do")
	public String delete(String board_no) {
		int result = service.delete(board_no);
		System.out.println(result+"개 삭제 성공");
		return "redirect:/board/list.do?category=all";
	}
}
