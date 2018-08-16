package emp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import emp.dao.MyEmpDAO;
import emp.dto.EmpDTO;

@Controller
public class ReadController {
	@Autowired
	@Qualifier("empmybatis")
	MyEmpDAO dao;
	
	@RequestMapping(value="/read.do")
	public ModelAndView read(String id){
		ModelAndView mav = new ModelAndView();
		System.out.println("id=>"+id);
		EmpDTO userInfo  = dao.read(id);
		mav.addObject("user", userInfo);
		mav.setViewName("emp/read");
		return mav;
	}
}
