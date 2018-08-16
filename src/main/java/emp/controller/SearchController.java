package emp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import emp.dao.MyEmpDAO;
import emp.dto.EmpDTO;

@Controller
public class SearchController {
	@Autowired
	@Qualifier("empmybatis")
	MyEmpDAO dao;

	@RequestMapping(value="/search.do",method=RequestMethod.GET)
	public String showView(){
		return "emp/search";
	}
	
	@RequestMapping(value="/search.do",method=RequestMethod.POST)
	public ModelAndView search(@RequestParam String addr,
							String test){
		System.out.println("addr=>"+addr);
		System.out.println("test=>"+test);
		ModelAndView mav = new ModelAndView();
		List<EmpDTO> emplist = dao.findByAddr(addr);
		mav.addObject("emplist",emplist);
		mav.setViewName("emp/list");
		return mav;
	}
}














