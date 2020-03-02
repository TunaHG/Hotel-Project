package erica.db.mvc;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class RoomDAO {
	@Autowired
	SqlSession session;
	
	// Select All Room
	public List<RoomVO> getAllRoom() {
		List<RoomVO> list = session.selectList("allroom");
		System.out.println("DAO:\tSelect All Room");
		return list;
	}
}
