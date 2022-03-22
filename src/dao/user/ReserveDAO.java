package dao.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;

import dto.Camp;
import dto.Reserve;
import util.MybatisConnection;

public class ReserveDAO {
	private static final String NS="reserve.";
	private Map<String, Object> map = new HashMap();
	
public int ReserveInsert(Reserve r) {//예약추가
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			
			return sqlSession.insert(NS+"ReserveInsert", r);
		} catch (Exception e){
			e.printStackTrace();
		}finally {
			MybatisConnection.close(sqlSession);
		}
		return 0;
	}
	public int ReserveUpdate(Reserve reserve) {//예약변경
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			return sqlSession.update(NS+"ReserveUpdate",reserve);
		} catch (Exception e){
			e.printStackTrace();
		}finally {
			MybatisConnection.close(sqlSession);
		}
		return 0;
	}
	public int ReserveDelete(int reserveidx) {//예약취소
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			return sqlSession.delete(NS+"ReserveDelete", reserveidx);
		} catch (Exception e){
			e.printStackTrace();
		}finally {
			MybatisConnection.close(sqlSession);
		}
		return 0;
	}
	public Reserve ReserveList(int reserveidx) {//예약번호로 예약내용을 조회
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			return sqlSession.selectOne(NS+"ReserveList",reserveidx);
		} catch (Exception e){
			e.printStackTrace();
		}finally {
			MybatisConnection.close(sqlSession);
		}
		return null;
	}
	public int nextIdx() { //예약번호를 차례로 받는 기능
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			return sqlSession.selectOne(NS+"nextIdx");
		} catch (Exception e){
			e.printStackTrace();
		}finally {
			MybatisConnection.close(sqlSession);
		}
		return 0;
	}
	public List<Camp> selectCamp(){
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			return sqlSession.selectList(NS+"selectCamp");
		} catch (Exception e){
			e.printStackTrace();
		}finally {
			MybatisConnection.close(sqlSession);
		}
		return null;
	}
} //end class
