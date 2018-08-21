package advanced;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import emp.dto.EmpDTO;
import emp.service.EmpService;
import kr.kitri.board.BoardDTO;

//spring에서 ajax를 처리하기
@Controller
public class AjaxTestController {
	@Autowired
	EmpService service;

	@RequestMapping(value = "/ajaxidcheck.do", method=RequestMethod.GET,
			produces="application/text;charset=utf-8")
	public @ResponseBody String idCheck(String id) {
		String result = "";
		boolean check = service.idCheck(id);
		if (check) {
			result = "사용불가능한 아이디";
		} else {
			result = "사용가능한 아이디";
		}
		return result;
	}

	//ajax요청 후 처리결과를 json으로 변환해서 리턴
	@RequestMapping(value = "/ajaxidcheck2.do",method=RequestMethod.GET,
			produces="application/json;charset=utf-8")
		public @ResponseBody EmpDTO jsontest() {
		String result = "";
		EmpDTO user = service.login("jang","4567");
		System.out.println("ajax통신:"+user);
		return user;
	}
	
	
}







