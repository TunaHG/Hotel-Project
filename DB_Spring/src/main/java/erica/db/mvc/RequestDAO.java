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
	
	// Select One Request
	public RequestVO getOneRequest(int reqno) {
		RequestVO vo = session.selectOne("onerequest", reqno);
		System.out.println("DAO:\tSelect One Request");
		return vo;
	}
	
	// Insert New Request
	public void insertRequest(RequestVO vo) {
		session.insert("insertrequest", vo);
		System.out.println("DAO:\tInsert New Request");
	}
	
	// Update Request
	public void updateRequest(RequestVO vo) {
		session.update("updaterequest", vo);
		System.out.println("DAO:\tUpdate Request");
	}
	
	// Delete Request
	public void deleteRequest(int reqno) {
		session.delete("deleterequest", reqno);
		System.out.println("DAO:\tDelete Request");
	}
}
