package emp.service;

import org.springframework.stereotype.Service;

import emp.dto.EmpDTO;

public interface EmpService {
	EmpDTO login(String id, String pass);
	boolean idCheck(String id);
}
