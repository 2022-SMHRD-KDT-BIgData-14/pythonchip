package com.pythonchip.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;


@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class BoardDTO {
	
	private BigDecimal num;
	@NonNull private String writer;	
	@NonNull private String title;
	@NonNull private String content;
	private Timestamp b_date;
	String filename;

}
