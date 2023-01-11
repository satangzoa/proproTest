package com.Exhibition.home.Controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShoppingController {
	
	@Autowired
	private SqlSession sqlSession;

	
	@RequestMapping(value="ShopMallMain")
	public String ShopMallMain() {
		
		
		return "ShopMallMain";
	}

	@RequestMapping(value="CartProcess")
	public String CartProcess() {
		
		
		return "CartProcess";
	}

	@RequestMapping(value="CartView")
	public String CartView() {
		
		
		return "CartView";
	}
	
	@RequestMapping(value="CartClear")
	public String CartClear() {
		
		
		return "CartClear";
	}

}
