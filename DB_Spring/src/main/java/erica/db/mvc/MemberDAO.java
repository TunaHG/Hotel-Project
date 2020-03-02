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
	
	// All Staff
	public List<MemberVO> getAllStaff(){
		List<MemberVO> list = session.selectList("allstaff");
		System.out.println("DAO:\tSelect All Staff");
		return list;
	}
	
	// One Member
	public MemberVO getOneMember(String memberid) {
		MemberVO vo = session.selectOne("onemember", memberid);
		System.out.println("DAO:\tSelect One Member");
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
	
	// Update Client to Staff
	public void updateToStaff(String memberid) {
		session.update("tostaff", memberid);
		System.out.println("DAO:\tUpdate Client To Staff");
	}
	
	// Update Staff to Client
	public void updateToClient(String memberid) {
		session.update("toclient", memberid);
		System.out.println("DAO:\tUpdate Staff To Client");
	}
}
