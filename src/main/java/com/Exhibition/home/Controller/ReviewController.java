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
	
	@RequestMapping (value ="reviewLike")
	public String reviewLike() {
	
		return "reviewLike";
	}

	
	@RequestMapping (value ="reviewLike2")//리뷰보내고 별점 가져온다
	public String reviewLike2(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		String rating = request.getParameter("rating");
		String rid = request.getParameter("rid");
		String rcontent = request.getParameter("rcontent");

	dao.rivewLike(rating, rid, rcontent);
		return "redirect:reviewList2";
	}
	
	@RequestMapping (value ="reviewList2")
	public String reviewOk2(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		List<ReviewLike> rList = dao.reviewList2();
		
		model.addAttribute("rList", rList);
		return "reviewLike2";
	}
	

	@RequestMapping(value = "commentlike")//좋아요 확인하기
		public String commentlike(HttpServletRequest request, HttpSession session) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		String mid = (String) session.getAttribute("memberId");
		int lnum=Integer.parseInt(request.getParameter("lnum"));
		int mnum = Integer.parseInt(request.getParameter("mnum")); 
		
		int checkCount = dao.likementCheck(mid, mnum);
	
	
		if(checkCount != 0) {
			return String.format("redirerct:reviewLike?mnum=%s",mnum);
		
		}else {
			
			dao.likement(mnum, mid);
			
		}
		return String.format("redirerct:reviewLike2?mnum=%s",mnum);
	}
	
	
}
