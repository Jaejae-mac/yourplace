package com.yourplace;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yourplace.commons.jdbc.JDBCUtil;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/resources/applicationContext.xml")
public class TestMySqlConnection {
	@Test
	public void testJdbcUtil() {
//		String sql = "SELECT name FROM testtable";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			conn = JDBCUtil.getConnection();
			System.out.println(" GET Connection  Success");
//			pstmt = conn.prepareStatement(sql);
			
//			rs = pstmt.executeQuery();
//			while(rs.next()) {
//				String name = rs.getString("name");
//				System.out.println("--->   " + name);
//			}
		} catch (Exception e) {
			System.err.println("Get Connection Fail");
		}finally {
			System.out.println("------ [Close Success] --------");
//			JDBCUtil.close(rs, pstmt, conn);
			
		}
		
	}
}
