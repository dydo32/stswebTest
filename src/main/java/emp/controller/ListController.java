package emp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import emp.dao.MyEmpDAO;
import emp.dto.EmpDTO;
@Controller
public class ListController{
	@Autowired
	MyEmpDAO dao;
	
	@RequestMapping(value="/list.do")
	protected ModelAndView showlist() {
		ModelAndView mav = new ModelAndView();
		List<EmpDTO> emplist = dao.getMemberList();
		mav.addObject("emplist", emplist);
		mav.setViewName("emp/list");		
		return mav;
	}
}





