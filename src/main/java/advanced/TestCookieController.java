package advanced;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestCookieController {
	@RequestMapping(value="/advanced/testCookie.do")
	public String cookietest(@CookieValue(value="prdNoCookie", required=false) Cookie prdNoCookie, HttpServletResponse res, String id) {
		Cookie cookie = null;
		if(prdNoCookie==null) {//최초작업인 경우에는
			cookie = new Cookie("prdNoCookie", id);
			System.out.println("최초작업: "+id);
		}else {
			String value = prdNoCookie.getValue()+","+id;
			System.out.println("두 번째 작업: "+value);
			cookie = new Cookie("prdNoCookie", value);
		}
		cookie.setMaxAge(60*60*24);
		res.addCookie(cookie);
		return "index";
	}
}
//@CookieValue(value="쿠키이름" ,required=false) required=false이면 반드시 쿠키가 존재하지 않아도 된다. 
