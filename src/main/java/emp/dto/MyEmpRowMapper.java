package emp.dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MyEmpRowMapper implements RowMapper<EmpDTO>{
	@Override
	public EmpDTO mapRow(ResultSet rs, int rowNum) 
							throws SQLException {
		System.out.println("maprow=>"+rowNum);
		EmpDTO user = 
				new EmpDTO(rs.getString(1), rs.getString(2),
						rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6)
						, rs.getInt(7), rs.getString(8));
		return user;
	}

}






