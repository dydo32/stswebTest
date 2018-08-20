package emp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import emp.dto.EmpDTO;
import emp.service.EmpService;

@Controller
public class LoginController {
	@Autowired
	EmpService service;
	
	//login,logout메소드를 작성하고 로그인 처리
	@RequestMapping(value="/emp/login.do")
	public String login(HttpSession session, EmpDTO user) {
		String viewName="";
		EmpDTO loginUser = service.login(user.getId(), user.getPass());
		if(loginUser!=null){//로그인성공
			session.setAttribute("loginUser", loginUser);
			viewName=("redirect:/list.do");
		}else{//로그인실패
			viewName=("emp/login");
		}
		return viewName;
	}
	
	
	@RequestMapping(value="/emp/logout.do")
	public String logout(HttpServletRequest request) {
		HttpSession ses = request.getSession(false);
		if(ses!=null){
			//세션을 제거한다.
			ses.invalidate();
		}
		return "emp/login";
	}
	
}
