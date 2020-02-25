package erica.db.mvc;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDAO {
	@Autowired
	SqlSession session;
	
	// Login
	public MemberVO login(MemberVO vo) {
		MemberVO result = session.selectOne("loginmember", vo);
		System.out.println("DAO:\tLogin Member Success!");
		return result;
	}
	
	// Join
	public void join(MemberVO vo) {
		// Staff의 Default값인 Client로 Join
		session.insert("insertmember", vo);
		System.out.println("DAO:\tInsert Member Success!");
	}
}
