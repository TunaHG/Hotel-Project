package erica.db.mvc;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDAO {
	@Autowired
	SqlSession session;
	
	// Login
	public int login(MemberVO vo) {
		int result = session.selectOne("loginmember", vo);
		return result;
	}
}
