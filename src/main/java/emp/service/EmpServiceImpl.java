package emp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import emp.dao.MyEmpDAO;
import emp.dto.EmpDTO;

@Service
public class EmpServiceImpl implements EmpService {
	@Autowired
	@Qualifier("empmybatis")
	MyEmpDAO dao;
	
	@Override
	public EmpDTO login(String id, String pass) {
		return dao.login(id, pass);
	}

	@Override
	public boolean idCheck(String id) {
		return dao.idCheck(id);
	}
}
