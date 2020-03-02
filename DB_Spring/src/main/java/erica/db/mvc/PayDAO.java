package erica.db.mvc;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class PayDAO {
	@Autowired
	SqlSession session;
	
	// Select All Pay
	public List<PayVO> getAllPay(){
		List<PayVO> list = session.selectList("allpay");
		System.out.println("DAO:\tSelect All Pay");
		return list;
	}
}
