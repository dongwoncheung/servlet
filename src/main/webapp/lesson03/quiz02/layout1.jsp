<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
</style>
</head>
<body>
<div id="wrap" class="container">
<header class="d-flex">
			<jsp:include page="header.jsp" />
		</header>
<nav>
			<jsp:include page="menu.jsp" />
		</nav>
		<section class="contents">
<jsp:include page="listContent.jsp" />
		</section>
		<footer>
			<jsp:include page="footer.jsp" />
		</footer>
	</div>
</body>
</html>