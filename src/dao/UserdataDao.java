package dao;

import org.apache.ibatis.session.SqlSession;

import dto.UserData;
import util.MybatisConnection;

public class UserdataDao {
	private static final String ns = "userdata.";

	public int insertUserdata(UserData ud) {
	
		SqlSession sqlsession = MybatisConnection.getConnection();
		
		try {
			
			return sqlsession.insert(ns+"insertUserdata",ud);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			MybatisConnection.close(sqlsession);
			
		}
		
		return 0;
		
	}
	
	 public int nextUseridx() {
		 
		 SqlSession sqlSession = MybatisConnection.getConnection();
		 
		 try {
	
			 return sqlSession.selectOne(ns+"nextUseridx");
			 
		 } catch(Exception e) {
			 e.printStackTrace();
		 } finally {
			 MybatisConnection.close(sqlSession);
		 }	
		 
		 return 0;
		
	 }
	
	public UserData selectUserdata (String id) {
		
		SqlSession sqlsession = MybatisConnection.getConnection();
		
		try {
			
			return sqlsession.selectOne(ns+"selectUserdata",id);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			MybatisConnection.close(sqlsession);
			
		}
		
		return null;
		
	}
	
	
	
	
	
}
