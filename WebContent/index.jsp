<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Ajax Project</title>
<link rel='stylesheet' type='text/css' href='./style/index.css'>
</head>
<body>
<%
String inc ="none.jsp";
if(request.getParameter("inc") != null){
	inc = request.getParameter("inc");
}
%>
<div id = 'main'>
	<div id='top'></div>
	<div id='center'>
		<div id='Left'>
			<jsp:include page="left.jsp"/>
		</div>
		<div id='content'>
			<jsp:include page="<%=inc %>"/><!-- 동적으로 (변수 사용가능) -->
		</div>
	</div>
</div>
</body>
</html>