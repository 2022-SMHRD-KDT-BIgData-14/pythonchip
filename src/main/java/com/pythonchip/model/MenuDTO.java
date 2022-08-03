package com.pythonchip.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class MenuDTO {
	


	@NonNull String menu_name;
	@NonNull String price;
	@NonNull BigDecimal store_seq;
	BigDecimal menu_seq;
	
}

