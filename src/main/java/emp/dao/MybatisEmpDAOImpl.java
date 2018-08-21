package emp.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emp.dto.EmpDTO;
import kr.kitri.board.BoardDTO;

@Repository("empmybatis")
public class MybatisEmpDAOImpl implements MyEmpDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public EmpDTO read(String id) {
		EmpDTO user = sqlSession.selectOne("kr.kitri.emp.read", id);
		return user;
	}

	@Override
	public int count() {
		int count = sqlSession.selectOne("kr.kitri.emp.count");
		return count;
	}

	@Override
	public int insert(EmpDTO user) {
		int result = sqlSession.insert("kr.kitri.emp.insert", user);
		return result;
	}

	@Override
	public int update(EmpDTO userInfo) {
		return 0;
	}

	@Override
	public int delete(String id) {
		int result = sqlSession.delete("kr.kitri.emp.delete", id);
		return result;
	}

	@Override
	public EmpDTO login(String id, String pass) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pass", pass);
		EmpDTO loginUser = sqlSession.selectOne("kr.kitri.emp.login",map);
		return loginUser;
	}

	@Override
	public List<EmpDTO> getMemberList() {
		List<EmpDTO> emplist = sqlSession.selectList("kr.kitri.emp.listall");
		return emplist;
	}

	@Override
	public List<EmpDTO> findByAddr(String addr) {
		List<EmpDTO> emplist = sqlSession.selectList("kr.kitri.emp.findbyaddr", addr);
		return emplist;
	}

	@Override
	public boolean idCheck(String id) {
		boolean state = false;
		EmpDTO user = sqlSession.selectOne("kr.kitri.emp.idcheck", id);
		if(user!=null) {
			state = true;
		}
		return state;
	}

}
