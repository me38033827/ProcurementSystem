package test;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ProcurementSystem.dao.IBuyerUserGroupDao;
import com.ProcurementSystem.entity.User;

/**
 * 测试类
 * @CreateDate: 2018年4月5日 上午11:21:01
 * @author lrq
 * @history Sr Date Modified By Why &amp; What is modified
 *   1.2018年4月5日 lrq &amp; new
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:/applicationContext.xml","classpath:/config.properties","classpath:/jdbc.properties"}) 
public class Test {

	@Autowired
	private IBuyerUserGroupDao userGroupDao;
	
	@org.junit.Test
	public void test1() {
		Map<String, String> params = new HashMap<String, String>();
		params.put("uniqueName", "10001");
		List<User> users = userGroupDao.getUsersByGroupUniqueName(params);
		for (User user : users) {
			System.err.println(user);
		}
	}
}
