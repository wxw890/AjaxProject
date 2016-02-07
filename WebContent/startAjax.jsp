<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>startAjax.jsp</title>
<script>
var xhr;
function init(){// 초기화 부분
	xhr = new XMLHttpRequest();//객체 생성
	if(xhr==null){
		alert("브라우저를 업글하셔야함 ^^!");
	}
	document.getElementById('btn_text').onclick=loadText;
	document.getElementById('btn_html').onclick=loadHtml
}

function loadText(){
	var url="mypage.jsp";
	xhr.open("get", url, true)//true는 비동기박식으로 하겠다는 뜻(기본방식)
	xhr.send();
	xhr.onreadystatechange=function(){
		if(xhr.readyState==4 && xhr.status ==200){
			var rs = document.getElementById('result');
			rs.innerHTML += "</br>" + xhr.responseText;
		}
	}
}

function loadHtml(){
	var url="gugudan.jsp";
	xhr.open("get", url, true);
	xhr.send();
	xhr.onreadystatechange=function(){ //on이 붙어있으면 핸들러 이다. on이 없으면 액션이다.
		if(xhr.readyState==4 && xhr.status==200){
			var rs = document.getElementById("result");
			re.innerHTML += "</br>" + xhr.responseText;
		}
	}
	
	
}
</script>

</head>
<body>
<h1>Ajax XMLHttpRequest 객체 생성!</h1>
<label>하단의 버튼을 클릭하세요</label><p/>
<input type='button' value='TEXT' id='btn_text'>
<input type='button' value='HTML' id='btn_html'>
<p/>
<div id='result'>결과가 표시될 위치</div>

<script>init();</script>
</body>
</html>