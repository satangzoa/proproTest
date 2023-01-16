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
public class TicketController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping (value ="showview")
	public String showview (HttpServletRequest request, Model model, HttpSession session) {
		
		String sessionId = (String) session.getAttribute("memberId");
		String snum = request.getParameter("snum");
		
		IDao dao = sqlSession.getMapper(IDao.class);

		FileDto fileDto = dao.getFileInfo(snum);
		ShowDto showdto = dao.showView(snum);
		
//		dao.rivewLikeHit(snum);
		
		model.addAttribute("showView",showdto);
		model.addAttribute("fileDto", fileDto);
		
		return "showView/showview";
	}
	
	
	
	@RequestMapping(value="ticketingOk")
	public String ticketingOk(HttpServletRequest request,Model model) {
		
		String stitle = request.getParameter("stitle");
		String slocation = request.getParameter("slocation");
		String sdday = request.getParameter("sdday");
		String stime = request.getParameter("stime");
		String sage = request.getParameter("sage");
		String sprice = request.getParameter("sprice");
		String userid = request.getParameter("userid");
		String count = request.getParameter("count");
		 
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int joinFlag = dao.ticketing(stitle, slocation, sdday, stime, sage, sprice, userid, count);
		
		model.addAttribute("stitle", stitle);
		model.addAttribute("slocation", slocation);
		model.addAttribute("sdday", sdday);
		model.addAttribute("stime", stime);
		model.addAttribute("sage", sage);
		model.addAttribute("sprice", sprice);
		model.addAttribute("userid", userid);
		model.addAttribute("count",count);
		return "ticket/ticketingOk";
	}
	
	
//	
//	@RequestMapping(value = "ticketConfirm")
//	public String test(Model model, HttpServletResponse response,HttpServletRequest request,HttpSession session) throws IOException {
//			
//		IDao dao = sqlSession.getMapper(IDao.class);		
//		
//		String mid = (String) session.getAttribute("memberId");
//		
//		List<Ticketing> ticketConfirmList =dao.ticketConfirm(mid);
//		
//		//System.out.println(ticketConfirmList.get(0).getTnum()); 잘가져오는지 확인한댜
//		
//		model.addAttribute("ticketConfirm", ticketConfirmList);
//		
//		
//		return "ticketConfirm";
//	}
//	
	
	@RequestMapping(value="/ticketConfirm")
	public String showview2(Model model, HttpServletResponse response,HttpServletRequest request,HttpSession session)  throws IOException {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		String userid = (String) session.getAttribute("memberId");
		
		List<ShowDto2> ticketConfirmList = dao.ticketConfirm(userid);
		
		model.addAttribute("ticketConfirmList", ticketConfirmList);
		
		return "ticket/ticketConfirm";
	}
	
	@RequestMapping(value="/ticketDelete")
	public String dadada(HttpServletRequest request,Model model) {
		
		String snum = request.getParameter("snum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.ticketDelete(snum);
		
		return "redirect:ticketConfirm";
	}
	
//	@RequestMapping (value ="boardList")
//	public String boardList(Model model, Criteria2 cri,HttpServletRequest request) {//페이징해야하므로 Criteria 가져온다
//		
//		int pageNumInt=1;
//		if(request.getParameter("pageNum") == null) {
//			 pageNumInt =1;//1페이지부터 시작
//			cri.setPageNum(pageNumInt);
//		} else {
//			 pageNumInt =Integer.parseInt(request.getParameter("pageNum"));
//			 cri.setPageNum(pageNumInt);
//		}
//		IDao dao = sqlSession.getMapper(IDao.class);
//		
//		int totalRecord = dao.ticketAllCount();
//		//cri.setPageNum();
//		cri.setStartNum(cri.getPageNum()-1 * cri.getAmount()); 
//		
//		PageDto2 pageDto = new PageDto2(cri, totalRecord); 
//		
//		List<ShowDto> qboardDtos = dao.ticketList(null);
//		
//		model.addAttribute("pageMaker", pageDto);//pageMaker = pageDto
//		model.addAttribute("qdtos", qboardDtos );
//		model.addAttribute("currPage", pageNumInt );
//		
//		
//		
////		ArrayList<ShowDto> boardDtos = dao.tlist();//
////		int boardCount = dao.ticketAllCount();//
////		
////		model.addAttribute("boardList", boardDtos);//
////		model.addAttribute("boardCount", boardCount);//
//		
//		
//		
//
//		return "boardList";
//	}
//	
//	@RequestMapping(value = "search_list")
//	public String search_list(HttpServletRequest request, Model model) {
//		
//		String searchOption = request.getParameter("searchOption");
//		
//		String searchKey = request.getParameter("searchKey");
//		
//		IDao dao = sqlSession.getMapper(IDao.class);
//		
//		ArrayList<ShowDto> showDto = null;
//		
//		if(searchOption.equals("stitle")) {
//			showDto = dao.ShowSearchTitleList(searchKey);			
//		} else if(searchOption.equals("slocation")) {
//			showDto = dao.ShowSearchLocarionList(searchKey);
//		} else if(searchOption.equals("sprice")) {
//			showDto = dao.ShowSearchSpriceList(searchKey);
//		} 	
//		
//		
//		model.addAttribute("qdtos", showDto);
//		model.addAttribute("boardCount", showDto.size());
//		
//		return "boardList";
//	}
//	
	
	@RequestMapping (value ="boardList")
    public String boardList(Model model, Criteria2 cri, Criteria3 cri3, HttpServletRequest request) {//페이징해야하므로 Criteria2 가져온다 검색할 때 사용할 criteria3도 가져온다 
       
       String searchKey = request.getParameter("searchKey");
       
       if(searchKey != null && searchKey.length() !=0) {
          System.out.println("hi:"+searchKey);
          cri3.setSearchKey(searchKey);
          
          String searchOption = request.getParameter("searchOption");      
          
          IDao dao = sqlSession.getMapper(IDao.class);
          
          ArrayList<ShowDto> showDto = null;
          
          int pageNumInt=1;
          
          int totalRecord = 0;
          
          PageDto3 pageDto = null;
          
          model.addAttribute("searchKeyValue", searchKey);
          model.addAttribute("searchKeyOption", searchOption);
          
          if(request.getParameter("pageNum") == null) {
              pageNumInt =1;//1페이지부터 시작
             cri3.setPageNum(pageNumInt);
          } else {
              pageNumInt =Integer.parseInt(request.getParameter("pageNum"));
              cri3.setPageNum(pageNumInt);
          }
          
          if(searchOption.equals("stitle")) {
             
             cri3.setStartNum(cri.getPageNum()-1 * cri.getAmount());
             
             showDto = dao.ShowSearchTitleList(cri3);
             
             totalRecord = dao.searchTitleListCount(searchKey);//총 게시글수
             
             pageDto = new PageDto3(cri3, totalRecord); 
             
             
          } else if(searchOption.equals("slocation")) {
             
             cri3.setStartNum(cri.getPageNum()-1 * cri.getAmount());
             
             //showDto = dao.ShowSearchTitleList(cri3);
             
             showDto = dao.ShowSearchLocarionList(cri3);
             
             totalRecord = dao.searchLocationListCount(searchKey);//총 게시글수
             
             System.out.println("검색된 총게시글수:"+totalRecord+" / 검색어:"+searchKey);
             
             pageDto = new PageDto3(cri3, totalRecord);
             
          } else if(searchOption.equals("sprice")) {
             
             cri3.setStartNum(cri.getPageNum()-1 * cri.getAmount());
             
             //showDto = dao.ShowSearchTitleList(cri3);
             
             showDto = dao.ShowSearchSpriceList(cri3);
             
             totalRecord = dao.searchPriceListCount(searchKey);//총 게시글수
             
             pageDto = new PageDto3(cri3, totalRecord);
          }
          
          System.out.println("pagenumint:"+pageNumInt);         
          
          model.addAttribute("pageMaker", pageDto);//pageMaker = pageDto
          model.addAttribute("qdtos", showDto);
          model.addAttribute("boardCount", totalRecord);      
          model.addAttribute("currPage", pageNumInt );
          
          
       } else {
       
          int pageNumInt=1;
          if(request.getParameter("pageNum") == null) {
              pageNumInt =1;//1페이지부터 시작
             cri.setPageNum(pageNumInt);
          } else {
              pageNumInt =Integer.parseInt(request.getParameter("pageNum"));
              cri.setPageNum(pageNumInt);
          }
          IDao dao = sqlSession.getMapper(IDao.class);
          
          int totalRecord = dao.ticketAllCount();
          //cri.setPageNum();
          cri.setStartNum(cri.getPageNum()-1 * cri.getAmount()); 
          
          PageDto2 pageDto = new PageDto2(cri, totalRecord); 
          
    //      System.out.println("pagenum:"+cri.getPageNum());
    //      System.out.println("amount:"+cri.getAmount());
    //      System.out.println("startnum:"+cri.getStartNum());
    //      System.out.println("pagenumberint:"+pageNumInt);
          
          List<ShowDto> qboardDtos = dao.ticketList(cri);
          
          model.addAttribute("pageMaker", pageDto);//pageMaker = pageDto
          model.addAttribute("qdtos", qboardDtos );
          model.addAttribute("currPage", pageNumInt );
          model.addAttribute("boardCount", totalRecord);
          
       }
       
       
//       ArrayList<ShowDto> boardDtos = dao.tlist();//
//       int boardCount = dao.ticketAllCount();//
//       
//       model.addAttribute("boardList", boardDtos);//
//       model.addAttribute("boardCount", boardCount);//
       
       
       

       return "boardList";
    }
	
}
