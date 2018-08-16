package emp.dao;
import java.util.List;

import emp.dto.EmpDTO;

public interface MyEmpDAO {
	EmpDTO read(String id);
	//ȸ���ο��� ��ȸ
	int count();
	//ȸ������
	int insert(EmpDTO user);
	//ȸ����������
	int update(EmpDTO userInfo);
	//ȸ��Ż��
	int delete(String id);
	//�α���
	EmpDTO login(String id,String pass);
	//ȸ����Ϻ���
	List<EmpDTO> getMemberList();
	//�ּҷ� �˻�
	List<EmpDTO> findByAddr(String addr);
	
}









