package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import dao.CampDAO;
import dto.Camp;
import kic.MskimRequestMapping;
import kic.RequestMapping;

public class CampController extends MskimRequestMapping{
	
	@RequestMapping("main")
	public String main(HttpServletRequest request, HttpServletResponse response) {
		
		Camp c = new Camp();
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		request.setAttribute("c", c);
		    return "/view/main.jsp";
	}
	@RequestMapping("CampInsert")
	public String ReservatIoninput(HttpServletRequest request, HttpServletResponse response) {
		Camp c = new Camp();
		request.setAttribute("c", c);
		return "/view/camp/CampInsert.jsp";
	}
	
	@RequestMapping("CampInsertPro") //관리자만 등록가능하게if문 추가예정
	public String CampInsertPro(HttpServletRequest request, HttpServletResponse response) {
		String path = getServletContext().getRealPath("/")+"/campupload/";
		int size=10*1024*1024;
		MultipartRequest multi = null; 
		try {
			multi = new MultipartRequest(request, path, size, "UTF-8");
		} catch (IOException e) {
			e.printStackTrace();
		}
		Camp camp = new Camp();
		CampDAO cd = new CampDAO();
		camp.setCampidx(Integer.parseInt(multi.getParameter("campidx")));
		camp.setCampname(multi.getParameter("campname"));
		camp.setCampaddr(multi.getParameter("campaddr"));
		camp.setRoom(multi.getParameter("room"));
		camp.setCampimg(multi.getFilesystemName("campimg"));
		camp.setRoomcnt(Integer.parseInt(multi.getParameter("roomcnt")));
		camp.setPayidx(Integer.parseInt(multi.getParameter("payidx")));
		camp.setRoomno(Integer.parseInt(multi.getParameter("roomno")));
		camp.setChkin(multi.getParameter("chkin"));
		camp.setChkout(multi.getParameter("chkout"));
		if (camp.getCampimg()==null)camp.setCampimg("");
		
		int seq = cd.CampInsert(camp);
		String msg="캠핑장 등록 실패";
		String url=request.getContextPath()+"/camp/CampInsert";
		if(seq>=1) {
			msg="캠핑장 등록 성공";
			url = request.getContextPath()+"/camp/CampList";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "/view/alert.jsp";
	}
	
	@RequestMapping("campDelete") //관리자권한(캠핑장 삭제)
	public int campDelete(HttpServletRequest request, HttpServletResponse response) {
		int campidx = Integer.parseInt(request.getParameter("campidx"));
		CampDAO cd = new CampDAO();
		Camp c = cd.selectCamp(campidx);
		request.setAttribute("c", c);
		return 0;
	}
	
//	@RequestMapping("CampUpdate") //관리자권한 (캠핑장 수정)
//	public String CampUpdate(HttpServletRequest request, HttpServletResponse response) {
//		int campidx = Integer.parseInt(request.getParameter("campidx"));
//		CampDAO cd = new CampDAO();
//		Camp c = cd.CampUpdate(camp);
//		request.setAttribute("c", c);
//		return "/view/camp/CampUpdate.jsp";
//	}
	
	@RequestMapping("CampList") //캠핑장 조회 (유저)
	public String CampList(HttpServletRequest request, HttpServletResponse response) {
		
		return "/view/camp/CampList.jsp";
	}
	
	@RequestMapping("CampInfo") //캠핑장 상세보기 (유저)
	public String CampInfo(HttpServletRequest request, HttpServletResponse response) {
		int campidx = Integer.parseInt(request.getParameter("campidx"));
		CampDAO cd = new CampDAO();
		Camp c = cd.selectCamp(campidx);
		request.setAttribute("c", c);
		
		return "/view/camp/CampInfo.jsp";
	}
} //end class
