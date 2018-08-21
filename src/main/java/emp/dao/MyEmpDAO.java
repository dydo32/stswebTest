package emp.dao;
import java.util.List;

import emp.dto.EmpDTO;

public interface MyEmpDAO {
	EmpDTO read(String id);
	int count();
	int insert(EmpDTO user);
	int update(EmpDTO userInfo);
	int delete(String id);
	EmpDTO login(String id,String pass);
	List<EmpDTO> getMemberList();
	List<EmpDTO> findByAddr(String addr);
	boolean idCheck(String id);
}









