<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>startAjax.jsp</title>
<script>
var xhr;
function init(){// �ʱ�ȭ �κ�
	xhr = new XMLHttpRequest();//��ü ����
	if(xhr==null){
		alert("�������� �����ϼž��� ^^!");
	}
	document.getElementById('btn_text').onclick=loadText;
	document.getElementById('btn_html').onclick=loadHtml
}

function loadText(){
	var url="mypage.jsp";
	xhr.open("get", url, true)//true�� �񵿱�ڽ����� �ϰڴٴ� ��(�⺻���)
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
	xhr.onreadystatechange=function(){ //on�� �پ������� �ڵ鷯 �̴�. on�� ������ �׼��̴�.
		if(xhr.readyState==4 && xhr.status==200){
			var rs = document.getElementById("result");
			re.innerHTML += "</br>" + xhr.responseText;
		}
	}
	
	
}
</script>

</head>
<body>
<h1>Ajax XMLHttpRequest ��ü ����!</h1>
<label>�ϴ��� ��ư�� Ŭ���ϼ���</label><p/>
<input type='button' value='TEXT' id='btn_text'>
<input type='button' value='HTML' id='btn_html'>
<p/>
<div id='result'>����� ǥ�õ� ��ġ</div>

<script>init();</script>
</body>
</html>