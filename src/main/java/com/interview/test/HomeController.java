package com.interview.test;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.interview.test.dao.UserDao;
import com.interview.test.vo.User;

/**
 * Handles requests for the application home page.
 */

@Controller
@SessionAttributes
public class HomeController {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		return "home";
	}
	
	@RequestMapping(value = "/login")
	public String viewLogin() {
		
		return "login";
	}
	
	@RequestMapping(value = "/join")
	public ModelAndView viewJoin() {
		User user = new User();
		
		//�⺻�� ����
//		user.setEmail("�̸���");
//		user.setPassword("��й�ȣ");
//		user.setPhone("010-xxxx-xxxx");
		
		return new ModelAndView("join", "user", user);
	}
	
	
	@RequestMapping(value = "/findPwd")
	public String findPwd() {
		
		return "findPwd";
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "/loginProc")
	public String login(String email, String password, HttpServletRequest req) {
		UserDao userDao = sqlSession.getMapper(UserDao.class);
		
		if(email == null || email.isEmpty()) throw new IllegalArgumentException();//email����
		if(password == null || password.isEmpty()) throw new IllegalArgumentException();//password����
		
		User user = userDao.getUser(email);
		
		if(user == null){
			System.out.println("no id");
			//�������� �ʴ� ���̵��Դϴ�.
			return "login";
		}
		if(!user.getPassword().equals(password)){
			System.out.println("wrong pwd");
			//�߸��� ��й�ȣ�Դϴ�.
			return "login";
		}
		
		//�α��μ���
		HttpSession session = req.getSession();
		session.setAttribute("uid", email);
		return "redirect:/";
	}
	
	
	@RequestMapping(value = "/logoutProc")
	public String logout(HttpSession session){
		session.invalidate();
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/joinProc")
	public String join(User user) {
		
		UserDao userDao = sqlSession.getMapper(UserDao.class);
		userDao.insert(user);
		
		return "redirect:/";
	}
	
	@RequestMapping(value ="/findPwdProc")
	public String findPwdProc(String email, String phone, Model m) {
		UserDao userDao = sqlSession.getMapper(UserDao.class);
		
		User user = userDao.getUser(email);
		
		if(user.getPhone().equals(phone))
			m.addAttribute("pwd", user.getPassword());
		
		return "showPwd";
	}
	
}
