<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StoreJoin</title>
</head>
<body>
<div>
		<form action="StoreService.do" method="post">
			<table>
				<h1>업체 등록 신청</h1>
				<tr>
					<td>업체명</td>
					<td><input type="text" name="store_name"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="store_tel"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="address"></td>
				</tr>
				<tr>
					<td>상세주소(시군구)</td>
					<td><input type="text" name="location_gu"></td>
				</tr>
				<tr>
					<td>상세주소(읍면동)</td>
					<td><input type="text" name="location_dong"></td>
				</tr>
				<tr>
					<td>키워드</td>
					<td><input type="text" name="keyword"></td>
				</tr>
				<tr>
					<td>대표메뉴</td>
					<td><input type="text" name="main_menu"></td>
				</tr>
				<tr>
					<td>사업자등록증</td>
					<td><input type="file"></td>
				</tr>
				<tr>
					<td>업체 이미지</td>
					<td><input type="file"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="신청하기"> <input
						type="reset" value="내용초기화"></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>