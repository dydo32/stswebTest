package emp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import emp.dao.MyEmpDAO;
@Controller
public class CountController{
	@Autowired
	@Qualifier("empdao")
	MyEmpDAO dao;

	@RequestMapping(value="/count.do")
	protected String count() {
		System.out.println("인원수:"+dao.count());
		return "redirect:index.do";
	}
}







