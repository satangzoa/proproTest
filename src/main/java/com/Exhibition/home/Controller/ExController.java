package com.Exhibition.home.Controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.Exhibition.home.dao.IDao;
import com.Exhibition.home.dto.*;


@Controller
public class ExController {
	
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping (value ="showview4")
	public String showview4() {
		
		
		return "showView/showview4";
	}

	@RequestMapping (value ="showview2") 
	public String showview2 () {
		
		return "showView/showview2";
	}
	
	@RequestMapping (value ="showview6") 
	public String showview6 () {
		
		return "showView/showview6";
	}
	
	@RequestMapping (value ="showview7") 
	public String showview7 () {
		
		return "showView/showview7";
	}
	
	@RequestMapping (value ="Child")
	public String Child() {
		
		
		return "showView/Child";
	}
	
	@RequestMapping (value ="index3")
	public String index3() {
		
		
		return "index3";
	}
	
	@RequestMapping (value ="testda")
	public String testda() {
		
		
		return "testda";
	}
	
	@RequestMapping (value ="dasi")
	public String dasi() {
		
		
		return "dasi";
	}
		
}
