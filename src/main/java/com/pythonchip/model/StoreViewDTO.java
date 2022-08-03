package com.pythonchip.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
@AllArgsConstructor
public class StoreViewDTO {

	
	
	BigDecimal age10;
	BigDecimal age20;
	BigDecimal age30;
	BigDecimal age40;
	BigDecimal age50;
	BigDecimal age60;
	BigDecimal man;
	BigDecimal woman;
	BigDecimal store_seq;
	
	public int getView(){
		
		return age10.intValue()+
		age20.intValue()+
		age30.intValue()+
		age40.intValue()+
		age50.intValue()+
		age60.intValue();
	
	}
}
