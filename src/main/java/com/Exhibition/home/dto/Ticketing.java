package com.Exhibition.home.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Ticketing { //ticket 

	private int reservNo;//예매번호
	private String tid; //사용자 아이디
	private String selectedDate;//선택날짜
	private String ticketName; //티켓이름
	private int count;//티켓 매수
	private String tprice;//티켓가격

	
}
