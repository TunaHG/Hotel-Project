package erica.db.mvc;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDAO {
	@Autowired
	SqlSession session;
	
	// Login
	public MemberVO loginMember(MemberVO vo) {
		// MemberID와 Password가 동일한 1개의 Record를 가져옴, 없다면 null
		MemberVO result = session.selectOne("loginmember", vo);
		System.out.println("DAO:\tLogin Member Success!");
		return result;
	}
	
	// Join
	public void joinMember(MemberVO vo) {
		// Staff의 Default값인 Client로 Join
		session.insert("insertmember", vo);
		System.out.println("DAO:\tInsert Member Success!");
	}
	
	// All Client
	public List<MemberVO> getAllClient(){
		// staff Column이 Client인 모든 Record 가져옴
		List<MemberVO> list = session.selectList("allclient");
		System.out.println("DAO:\tSelect All Client");
		return list;
	}
	
	// One Client
	public MemberVO getOneClient(String memberid) {
		MemberVO vo = session.selectOne("onemember", memberid);
		System.out.println("DAO:\tSelect One Client");
		return vo;
	}
	
	// MemberID, Phone Duplication Check in Member
	public int checkJoin(MemberVO vo) {
		int result = session.selectOne("checkjoin", vo);
		System.out.println("DAO:\tCheck Duplicated Member in Join");
		return result;
	}
	
	// Update Client data
	public void updateMember(MemberVO vo) {
		session.update("updatemember", vo);
		System.out.println("DAO:\tUpdate Member Data");
	}
	
	// Delete Client data
	public void deleteMember(String memberid) {
		session.delete("deletemember", memberid);
		System.out.println("DAO:\tDelete Member Data");
	}
}
