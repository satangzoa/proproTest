package com.Exhibition.home.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartDTO {
	private String name;	//상품명
	private int price;		//가격
	private int cnt;		//수량
	
}
