package com.yourplace;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/resources/applicationContext.xml")
public class TestMyBatisSqlSession {
	@Inject
	private SqlSessionFactory sqlSessionFactory;
	
	@Test
	public void testFactory() {
		System.out.println("sqlSessionFactory : "+sqlSessionFactory);
		
	}
	
	@Test
	public void testSession() throws Exception{
		try (SqlSession session = sqlSessionFactory.openSession()){
			System.out.println("sqlSession : "+session);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
