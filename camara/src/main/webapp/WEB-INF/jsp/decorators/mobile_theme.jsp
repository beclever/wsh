<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="from"%>
<%-- <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%> --%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title><!-- <decorator:title default="" /> --></title>
<base href="<%=basePath%>">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>pub/css/SaPublic.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>pub/css/newWechat.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>pub/css/SaMobile.css">
<script src="<%=basePath%>pub/js/jquery-1.8.3.min.js"></script>
	<script src="<%=basePath%>/pub/js/layer/layer.js"></script>
<script type="text/javascript">
		document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
			WeixinJSBridge.call('hideOptionMenu');
			var u = navigator.userAgent, app = navigator.appVersion;
			var isAndroid = u.indexOf('Android') > -1 || u.indexOf('Linux') > -1; //android终端或者uc浏览器
			var isiOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); //ios终端
			if(isiOS){
				alert("本版本暂不支持iOS系统手机");
				wx.closeWindow();//调用微信JS接口
			}
		});
	</script>

<script type="text/javascript">
  	var basePath = "<%=basePath%>";
 </script>
<%-- <decorator:head /> --%>
</head>
<body class="<decorator:getProperty property="body.class"/>"
	onload="<decorator:getProperty property="body.onload"/>"
	style="<decorator:getProperty property="body.style"/>">
	<div class="subject" id="pageContent">
		<%-- <decorator:body /> --%>
	</div>
</body>
</html>
