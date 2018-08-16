package main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController{
	@RequestMapping("/index.do")
	public String main(){
		System.out.println("어노테이션 기반");
		return "index";
	}
	
	@RequestMapping("/menu/jdbc.do")
	public String showjdbcMenu(){
		System.out.println("springjdbc");
		return "redirect:/list.do";
	}
	
	@RequestMapping("/menu/mybatis.do")
	public String showmybatisMenu(){
		System.out.println("mybatis화면");
		return "redirect:/board/list.do?category=all";
	}
	
	@RequestMapping("/menu/advanced.do")
	public String showadvancedMenu(){
		System.out.println("advanced화면");
		return "menu/advanced";
	}
	
}
