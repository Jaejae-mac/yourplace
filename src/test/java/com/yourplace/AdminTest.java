package com.yourplace;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import com.yourplace.admin.login.service.AdminService;
import com.yourplace.admin.login.vo.AdminVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/resources/applicationContext.xml","file:src/main/webapp/WEB-INF/config/admin-layer.xml"})
public class AdminTest {
	@Autowired
	private AdminService adminService;
	
	@Test
	@Transactional
	public void selectOneTest() {

		AdminVO vo = new AdminVO();
		vo.setTestId("testAdmin1");
		vo.setAno(1);
		AdminVO admin = adminService.getAdmin(vo);
		System.out.println("test getAdmin : " + admin.toString());
		assertNotNull(admin);
		
	}
}
