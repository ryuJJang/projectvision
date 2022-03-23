package controller;


import java.io.UnsupportedEncodingException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserdataDao;
import dto.UserData;
import kic.MskimRequestMapping;
import kic.RequestMapping;






public class UserdataController  extends MskimRequestMapping{
	
	
	@RequestMapping("sendMailForm")
	public String sendMailForm(HttpServletRequest request, HttpServletResponse response) {
		
		return "/view/userdata/sendMailForm.jsp";
	}
	
	@RequestMapping("sendMail")
	public String sendMail(HttpServletRequest request, HttpServletResponse response) {
		//랜덤 코드 발생
		Random random = new Random();
		String key = "";
		
		for (int i = 0; i < 3; i++) {
			int index = random.nextInt(25) + 65; // A~Z까지 랜덤 알파벳 생성(3자리)
			key += (char) index;
		}
		int numIndex = random.nextInt(8999) + 1000; // 4자리 정수를 생성
		key += numIndex;
		
		
		//메일 보내기
		final String username = "dalkey23";
		final String password = "vision1111*";
		
		
		String toMail = request.getParameter("toMail");
		String subject = "회원가입을 위한 인증코드 입니다.";
		String body = "인증코드: "+key;
		
		
		
		// 정보를 담기 위한 객체 생성 
		Properties props = new Properties();
		
		// SMTP 서버 정보 설정 

		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

	
		Session session = Session.getDefaultInstance(props,
				new javax.mail.Authenticator() { String un=username; String pw=password; 
					protected javax.mail.PasswordAuthentication getPasswordAuthentication() { 
						return new javax.mail.PasswordAuthentication(un, pw); } }); 
		session.setDebug(true); //for debug 
						
		MimeMessage mimeMessage = new MimeMessage(session); 
		//MimeMessage 생성 
		try {
			mimeMessage.setFrom(new InternetAddress("dalkey23@gmail.com"));
			//발신자 셋팅 ,이메일 풀 주소
			mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(toMail)); 
			//수신자셋팅 //.TO 외에 .CC(참조) .BCC(숨은참조) 도 있음 
			mimeMessage.setSubject(subject);
			
			mimeMessage.setText(body); 
			
			Transport.send(mimeMessage); 
			
			System.out.println("메일 전송 완료");
			
			//javax.mail.Transport.send() 이용
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		request.setAttribute("toMail", toMail);
		request.setAttribute("key", key);
		
		return "/view/userdata/certifyForm.jsp";
	}


	
	@RequestMapping("joinForm")
	public String joinForm(HttpServletRequest request, HttpServletResponse response) {
		
		String email = request.getParameter("email");
		
		request.setAttribute("email", email);
		
		return "/view/userdata/joinForm.jsp";
	}
	
	@RequestMapping("joinPro")
	public String joinPro(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			String addr1 = request.getParameter("addr1");
			String addr2 = request.getParameter("addr2");
			String addr3 = request.getParameter("addr3");
			String addr4 = request.getParameter("addr4");
			String address = "("+addr1+") "+addr2+ " " + addr3 + " " + addr4;
			
			String name = request.getParameter("name");
		
			UserdataDao ud = new UserdataDao();
			UserData u = new UserData();
			
			u.setUseridx(ud.nextUseridx());
			u.setUserid(request.getParameter("id"));
			u.setPassword(request.getParameter("pw"));
			u.setName(name);
			u.setGender(Integer.parseInt(request.getParameter("gender")));
			u.setBirthday(request.getParameter("birthday"));
			u.setTel(request.getParameter("tel"));
			u.setEmail(request.getParameter("email"));
			u.setAddress(address);
			
			
			
			
			int num =ud.insertUserdata(u);
			
			
		  	String msg = "";
		  	String url = "";
		  	if(num > 0){
		  		msg = name + "님의 가입이 완료되었습니다.";
		  		url = request.getContextPath()+"/userdata/loginForm";
		  	} else {
		  		msg = "회원가입이 실패하였습니다.";
		  		url = request.getContextPath()+"/reserve/main";
		  		///member/main : url-pattern
		  	}
		  	
		  	request.setAttribute("msg", msg);
		  	request.setAttribute("url", url);
		  	
			return "/view/alert.jsp"; 
			//기존 pro 페이지는 다 alert페이지(temporary페이지로 이동)
		
	}
	
	@RequestMapping("loginForm")
	public String loginForm(HttpServletRequest request, HttpServletResponse response) {
		
	
		
		return "/view/userdata/loginForm.jsp";
	}
	
	@RequestMapping("manager")
	public String manager(HttpServletRequest request, HttpServletResponse response) {
		
	
		
		return "/single/manager.jsp";
	}

	@RequestMapping("loginPro")
	public String loginPro(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pw");
		UserdataDao ud = new UserdataDao();
		UserData u = ud.selectUserdata(id);
		
		String msg = "아이디를 확인하세요";
		String url = request.getContextPath()+"/userdata/loginForm"; 
		
		if(u != null){  
			
			if(u.getUserid().equals("vision")) { //로그인 아이디가 vision인지 확인
				if(pass.equals(u.getPassword())){ //비밀번호 확인
				
					request.getSession().setAttribute("memberId", id);
					msg = u.getName()+"님이 로그인 하셨습니다.";
					url = request.getContextPath()+"/userdata/manager"; //관리자페이지로 이동
		
				} else { //비밀번호 틀린경우
					msg = "비밀번호를 확인하세요";
				}
			} else {
				if(pass.equals(u.getPassword())){
					if(!u.getBlack().equals("0")) {
						msg = "로그인에 실패하였습니다. 관리자에게 문의하세요.";
						url = request.getContextPath()+"/userdata/loginForm";
					} else {
						msg = u.getName() + "님이 로그인 하셨습니다";
						url = request.getContextPath() + "/reserve/main";}
					}
					
				}
			}
		
			request.setAttribute("msg", msg);
	  		request.setAttribute("url", url);
		
			return "/view/alert.jsp";		
		
	}
	
	@RequestMapping("logout") 
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession(); 
		//import 하고 session.getAttribute만 써도 됨 
		String login = (String) session.getAttribute("memberId");
		request.getSession().invalidate();
		
		String msg = login+"님이 로그아웃하였습니다.";
		String url = request.getContextPath()+"/reserve/main";
		
		request.setAttribute("msg", msg);
  		request.setAttribute("url", url);
  	
		return "/view/alert.jsp";
	}
	
	
	@RequestMapping("mypageForm")
	public String mypageForm(HttpServletRequest request, HttpServletResponse response) {
		//session 받아서 처리해야함
	
		
		return "/view/userdata/mypageForm.jsp";
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping("userdataUpdata")
	public String userdataUpdata(HttpServletRequest request, HttpServletResponse response) {
		

		HttpSession session = request.getSession(); 
		String login = (String) session.getAttribute("memberId");
		
		String msg = "로그인이 필요합니다.";
		String url = request.getContextPath()+"/userdata/loginForm";	
		
		if (login != null  && !login.trim().equals(""))  {
			UserdataDao ud = new UserdataDao();
			UserData u = ud.selectUserdata(login);
			
			request.setAttribute("userdata", u);
			
			return "/view/userdata/updateForm.jsp";
		}
		
		request.setAttribute("msg", msg);
  		request.setAttribute("url", url);
			
		return "/view/alert.jsp";
		
	
		
	}
	
}