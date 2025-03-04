<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table, tr, td, th {
	border: 1px solid;
	
}
</style>

<script type="text/javascript">

	function addUser() {
		document.fn.action ="registretion.jsp";
		document.fn.submit();
	}
	
	function deleteUser() {
		alert("Delete Data");
		document.fn.action="delete";
		document.fn.submit();
	}
	
	
	function editUser() {
		document.fn.action="edit";
		document.fn.submit();
	}
</script>
</head>
<body>
	<div style="text-align: center;">
		<form name="fn">


			<table style="text-align: center;">
				<thead>

					<tr>
						<th>SR No</th>
						<th>Id</th>
						<th>Name</th>
						<th>Gender</th>
						<th>Email</th>
						<th>Salary</th>

					</tr>

				</thead>


				<c:forEach items="${data}" var="s">
					<tr>
						<td><input type="radio" name="id" value="${s.id}"></td>
						<td>${s.id}</td>
						<td>${s.name}</td>
						<td>${s.gender}</td>
						<td>${s.email}</td>
						<td>${s.salary}</td>

					</tr>

				</c:forEach>


			</table>
			<table border="2px">
				<tr>
					<td><input type="button" value="EDIT" onclick="editUser()"></td>
					<td><input type="button" value="ADD" onclick="addUser()"></td>
					<td><input type="button" value="DELETE" onclick="deleteUser()"></td>

				</tr>

			</table>




		</form>


	</div>
</body>
</html>