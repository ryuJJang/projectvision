package controller.user;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.user.ReserveDAO;
import dto.Camp;
import dto.Reserve;
import kic.MskimRequestMapping;
import kic.RequestMapping;

public class ReserveController extends MskimRequestMapping{
	
	@RequestMapping("main")
	public String main(HttpServletRequest request, HttpServletResponse response) {
		ReserveDAO rd = new ReserveDAO();
		Camp c = new Camp();
		request.setAttribute("c", c);
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		    
		    return "/view/main.jsp";
	}
			
	
	@RequestMapping("ReserveInsert")
	public String ReservatIoninput(HttpServletRequest request, HttpServletResponse response) {
		
		return "/view/main.jsp";
	}
	@RequestMapping("ReserveInsertPro")
	public String ReserveInsertPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		ReserveDAO rd = new ReserveDAO();
		Reserve r = new Reserve();
		r.setUsername(request.getParameter("username"));
		r.setCampname(request.getParameter("campname"));
		r.setRoom(request.getParameter("room"));
		r.setCheckin(request.getParameter("chkin"));
		r.setCheckout(request.getParameter("chkout"));
		r.setPerson(Integer.parseInt(request.getParameter("person")));
		r.setPayidx(Integer.parseInt(request.getParameter("payidx")));
		r.setKid(Integer.parseInt(request.getParameter("kid")));
		r.setRoomno(Integer.parseInt(request.getParameter("roomno")));
		
		r.setReserveidx(rd.nextIdx());
		int reserveidx = rd.ReserveInsert(r);
		String msg = "";
		String url = "";
		if (reserveidx > 0) {
			msg = "예약이 완료되었습니다.";
			url = request.getContextPath()+"/reserve/main";
		}else {
				msg = "예약이 실패하였습니다.";
				url = request.getContextPath()+"/reserve/main";
			}
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			return "/view/alert.jsp";
		}
	@RequestMapping("ReserveDelete")
	public String ReserveDelete(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String login = (String) session.getAttribute("memberId");
		
		String msg = "회원정보를 알 수 없습니다";
		String url = request.getContextPath()+"/reserve/loginForm";
		//login 불가이면
		if (login == null || login.trim().equals("")) {
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			return "/view/alert.jsp";
		} 
		request.setAttribute("login", login);
		return "/view/reserve/ReserveDelete.jsp";
	}
	@RequestMapping("ReserveDeletePro")
	public String ReserveDeletePro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String msg = "로그인이 필요합니다";
		String url = request.getContextPath()+"/reserve/loginForm";
		int reserveidx = 0;
		if (username != null) {
			ReserveDAO rd = new ReserveDAO();
		Reserve r = rd.ReserveList(reserveidx);
			int idx = rd.ReserveDelete(reserveidx);
			if (idx == 0) { //delete no
				msg = username + "님이 예약취소시 오류 발생";
				url = request.getContextPath()+"/reserve/reserveinfo";
			} else { //delete ok
				session.invalidate(); //데이터 삭제
				msg = username + "님의 예약취소 완료";
				url = request.getContextPath()+"/reserve/main";
			}
	}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "/view/alert.jsp";
	}
	
	@RequestMapping("ReserveUpdate") //예약 수정
	public String ReserveUpdate(HttpServletRequest request, HttpServletResponse response) {
		Reserve r = new Reserve();
		request.setAttribute("r", r);
		
		return "/view/reserve/ReserveUpdatePro.jsp";
	}
	
	@RequestMapping("ReserveUpdatePro") //예약 수정
	public String ReserveUpdatePro(HttpServletRequest request, HttpServletResponse response) {
		
		return "/view/reserve/main.jsp";
	}
	
	@RequestMapping("ReserveList") //예약 조회
	public String ReserveList(HttpServletRequest request, HttpServletResponse response) {
		
		return "/view/reserve/ReserveList.jsp";
	}
}// end class
