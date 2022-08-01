package com.pythonchip.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import oracle.sql.TIMESTAMP;
@Getter
@AllArgsConstructor
@RequiredArgsConstructor

public class ReviewDTO {

	BigDecimal review_seq;
	BigDecimal store_seq;
	String id;
	TIMESTAMP write_date;
	String rev_content;
	String grade;
	
}

