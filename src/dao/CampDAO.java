package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;

import dto.Camp;
import util.MybatisConnection;

public class CampDAO {
	private static final String NS="camp.";
	private Map<String, Object> map = new HashMap();
	
	public int CampInsert(Camp camp) {
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			
			return sqlSession.insert(NS+"CampInsert", camp);
		} catch (Exception e){
			e.printStackTrace();
		}finally {
			MybatisConnection.close(sqlSession);
		}
		return 0;
	}
	
	public int CampUpdate(Camp camp) {
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			return sqlSession.update(NS+"CampUpdate",camp);
		} catch (Exception e){
			e.printStackTrace();
		}finally {
			MybatisConnection.close(sqlSession);
		}
		return 0;
	}
	
	public int campDelete(int campidx) {
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			return sqlSession.delete(NS+"campDelete", campidx);
		} catch (Exception e){
			e.printStackTrace();
		}finally {
			MybatisConnection.close(sqlSession);
		}
		return 0;
	}
	
	public Camp selectCamp(int campidx) {
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			return sqlSession.selectOne(NS+"selectCamp",campidx);
		} catch (Exception e){
			e.printStackTrace();
		}finally {
			MybatisConnection.close(sqlSession);
		}
		return null;
	}
	public Camp chooseCamp(String campname) {
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			return sqlSession.selectOne(NS+"chooseCamp",campname);
		} catch (Exception e){
			e.printStackTrace();
		}finally {
			MybatisConnection.close(sqlSession);
		}
		return null;
	}

	public List<Camp> campList(Camp camp){
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			return sqlSession.selectList(NS+"campList",camp);
		} catch (Exception e){
			e.printStackTrace();
		}finally {
			MybatisConnection.close(sqlSession);
		}
		return null;
	}

	public List<Camp> CampList(){
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			return sqlSession.selectList(NS+"CampList");
		} catch (Exception e){
			e.printStackTrace();
		}finally {
			MybatisConnection.close(sqlSession);
		}
		return null;
	}
	public int nextSeq() { //예약번호를 차례로 받는 기능
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			return sqlSession.selectOne(NS+"nextSeq");
		} catch (Exception e){
			e.printStackTrace();
		}finally {
			MybatisConnection.close(sqlSession);
		}
		return 0;
	}
	
	public String RoomList() {
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			return sqlSession.selectOne(NS+"RoomList");
		} catch (Exception e){
			e.printStackTrace();
		}finally {
			MybatisConnection.close(sqlSession);
		}
		return null;
	}
} //end class
