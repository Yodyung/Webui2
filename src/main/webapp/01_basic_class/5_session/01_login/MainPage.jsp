<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	//# 1."id"로 저장된 세션값을 얻어온다.
	Object id=session.getAttribute("id");
	
	//# 2. 값이 null이라면 LoginForm.jsp로 페이지 이동
	if(id==null){
		response.sendRedirect("LoginForm.jsp");
		return;		//메인창이 뜨기 전에 로그인창 실행만 하고 바로 리턴해버린다.
	}
	//# 3. null이 아니라면 String 형변환하여 변수에 지정
	String userId = (String)id;
	
%>
    
<!DOCTYPE html>
<html>
<head>
<title> 우리 페이지 </title>
</head>
<body>

	<h2> 이 페이지는 로그인을 하셔야만 볼 수 있는 페이지 입니다 </h2><br/><br/><br/>
	<%=userId %>님, 로그인 중입니다.

</body>
</html>