package com.Exhibition.home.Controller;
import java.io.IOException;
import java.util.ArrayList;
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
public class ReviewController {

	
	@Autowired
	private SqlSession sqlSession;
private String liker;
	
	
	@RequestMapping("review")
	public String review( ) {
		return "review/review";
	}
	

	@RequestMapping (value ="reviewOk")
	public String reviewOk(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		String rating = request.getParameter("rating");
		String rid = request.getParameter("rid");
		String rcontent = request.getParameter("rcontent");

		dao.rivewStar(rating, rid, rcontent);
		return "redirect:reviewList";
	}
	
	@RequestMapping (value ="reviewList")
	public String reviewOk2(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		List<ReviewStar> rList = dao.reviewList();
		
		model.addAttribute("rList", rList);
		return "review/reviewOk";
	}
	

	

	@RequestMapping (value ="reviewlikeStar")
	public String showview (HttpServletRequest request, Model model, HttpSession session) {
		
		String sessionId = (String) session.getAttribute("memberId");
		String snum = request.getParameter("snum");
		
		IDao dao = sqlSession.getMapper(IDao.class);

		FileDto fileDto = dao.getFileInfo(snum);
		ShowDto showdto = dao.showView(snum);
		
		dao.rivewLikeHit(snum);
		
		model.addAttribute("showView",showdto);
		model.addAttribute("fileDto", fileDto);
		
		return "showView/showview";
	}
	
	
	
}
