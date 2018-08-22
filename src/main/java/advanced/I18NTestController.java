package advanced;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.LocaleResolver;

@Controller
public class I18NTestController {
	@Autowired
	LocaleResolver resolver;
	
	@RequestMapping("/advanced/i18ntest.do")
	public String i18ntest(String lang, HttpServletRequest request, HttpServletResponse response) {
		//언어정보를 이용해서 Locale객체를 생성
		Locale locale = new Locale(lang);
		//Locale객체, request, response객체를 이용해서 언어에 대한 정보를 
		//MessageSource객체에 적용할 수 있도록 LocaleResolver에 셋팅
		resolver.setLocale(request, response, locale);
		return "index";
	}
}
