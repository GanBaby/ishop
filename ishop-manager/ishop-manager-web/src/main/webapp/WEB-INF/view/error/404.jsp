<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>

	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

	<title>404 - 当前页面不存在</title>

	<style>

	body{

		background: #ccc;

	}

	.xy{

		width: 650px;

		height: 400px;

		position: absolute;

		top: 20%;

		left: 50%;

		margin-left: -325px;

		margin-top: -200px;

	}
	/*img{*/
		/*width:200%;*/
		/*height:200%;*/
	/*}*/

	</style>

</head>

<body>

	<div class="xy">

		<img src="${pageContext.request.contextPath}/basic/images/error/404.png" alt=""/>

	</div>

</body>

</html>