package erica.db.mvc;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class RequestDAO {
	@Autowired
	SqlSession session;
	
	// Select All Request
	public List<RequestVO> getAllRequest(){
		List<RequestVO> list = session.selectList("allrequest");
		System.out.println("DAO:\tSelect All Request");
		return list;
	}
}
