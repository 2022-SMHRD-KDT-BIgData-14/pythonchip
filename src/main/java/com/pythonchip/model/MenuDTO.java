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
	

	BigDecimal menu_seq;
	@NonNull String price;
	@NonNull String menu_name;
	@NonNull String store_name;
	
}

