package com.pythonchip.model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import oracle.sql.TIMESTAMP;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class ReservationDTO {

	BigDecimal reservation_seq;
	String id;
	BigDecimal store_seq;
	TIMESTAMP go_time;
	TIMESTAMP res_time;
	String user_tel;
	String store_tel;

}
