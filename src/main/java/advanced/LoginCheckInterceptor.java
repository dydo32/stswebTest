package advanced;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import emp.dto.EmpDTO;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession ses = request.getSession(false);
		if(ses!=null) {
			EmpDTO loginUser = (EmpDTO)ses.getAttribute("loginUser");
			if(loginUser==null) {	//로그아웃상태
				response.sendRedirect("/stswebTest/view/emp/loginView.do");
				return false;
			}
		}
		return true;
	}
}
