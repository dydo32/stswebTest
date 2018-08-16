package emp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import emp.dao.MyEmpDAO;

@Controller
public class DeleteController {
	@Autowired
	MyEmpDAO dao;
	
	@RequestMapping(value="/delete.do")
	public String delete(String id){
		System.out.println("id=>"+id);
		int result = dao.delete(id);
		return "redirect:/list.do";
	}
}
