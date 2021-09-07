package com.yourplace;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/resources/applicationContext.xml")
public class BeanTest {
	private static final Logger logger = LoggerFactory.getLogger(BeanTest.class);
	
	@Autowired
	DataSource ds;
	
	@Autowired
	SqlSessionTemplate st;
	
	
	@Test
	public void dsTest() {
		assertNotNull(ds);
	}
	@Test
	public void templateTest() {
		assertNotNull(st);
	}
}
