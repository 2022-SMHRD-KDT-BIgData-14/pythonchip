package com.pythonchip.model;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor


public class MemberDTO {

	

		@NonNull private String id;
		@NonNull private String pw;
		private String gender;
		private String age;
		private String user_tel;
		

	

}
