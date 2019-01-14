<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>搜索demo</title>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div style="height: 150px"></div>

			<form action="scan.jsp" method="post">
				<div class="col-md-4 column">
					<div>
						<input type="text" class="form-control" name="scan1"
							placeholder="输入搜索内容">

					</div>
				</div>
				<div class="col-md-4 column">
					<button type="submit" class="btn btn-default">搜索</button>
				</div>
			</form>
		</div>
	</div>

</body>
</html>