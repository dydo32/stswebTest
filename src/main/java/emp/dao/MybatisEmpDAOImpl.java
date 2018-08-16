package emp.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import emp.dto.EmpDTO;

@Repository("empmybatis")
public class MybatisEmpDAOImpl implements MyEmpDAO {
	@Override
	public EmpDTO read(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(EmpDTO user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(EmpDTO userInfo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public EmpDTO login(String id, String pass) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EmpDTO> getMemberList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EmpDTO> findByAddr(String addr) {
		// TODO Auto-generated method stub
		return null;
	}

}
