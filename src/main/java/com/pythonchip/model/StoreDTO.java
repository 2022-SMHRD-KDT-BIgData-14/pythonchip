package com.pythonchip.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class StoreDTO {
	BigDecimal store_seq;
	String store_name;
	String location_gu;
	String location_dong;
	BigDecimal store_grade;
	String main_menu;
	String store_tel;
	BigDecimal store_x;
	BigDecimal store_y;
	String menu_picture;
	String keyword;
}
