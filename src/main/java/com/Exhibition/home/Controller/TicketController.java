package com.Exhibition.home.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Exhibition.home.dao.IDao;
import com.Exhibition.home.dto.*;
@Controller
public class TicketController {

	@Autowired
	private SqlSession sqlSession;
	
	
//	@RequestMapping(value="/ticketing")
//	public String confirm() {
//		return "ticketing";
//	}
	
	@RequestMapping(value="/ticketing")
	public String ticketing(HttpServletRequest request,Model model) {
		

		
		return "ticketing";
	}
//	
	@RequestMapping(value="/ticketingOk")
	public String ticketingOk(HttpServletResponse response,HttpSession session) {
		return "ticketingOk";
	}
	@RequestMapping(value="/buy")
	public String buy() {
		return "buy";
	}
	

}





