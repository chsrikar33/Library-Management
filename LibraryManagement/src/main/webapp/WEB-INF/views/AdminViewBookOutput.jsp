<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
body {
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background: linear-gradient(to right, #b92b27, #1565c0)
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  background-color: #96D4D4;
}
</style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href = "https://fonts.googleapis.com/icon?family=Material+Icons" rel = "stylesheet">
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css"/>
    <title>View Books</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <ul class="navbar-nav collapse navbar-collapse justify-content-end" id="navbarTogglerDemo01">
            <li class="nav-item"><a class="nav-link" href="./addBooks">Add Book</a></li>
            <li class="nav-item"><a class="nav-link active" href="./viewBooks">View Books</a></li>
            <li class="nav-item"><a class="nav-link " href="./issueBook">Issue Book</a></li>
			<li class="nav-item"><a class="nav-link" href="./borrowedBooks">BorrowedBooks</a></li>
			<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
        </ul>
    </nav>
    <div class="container">
        <h3 style="text-align: center; margin: 50px 0px;" class="text-white">View Books</h3>
        <table style="width:70%">
        <tr
        	  <th>
    			<td>BookId</td>
    			<td>BookName</td>
    			<td>BookStatus</td>
  			</th>
  		</tr>	
          <c:forEach items="${bookList}" var="book">
          	<tr>
          		<td>${book.bookId}</td>
          		<td>${book.bookName}</td>
          		<td>${book.bookStatus}</td>	
          	</tr>
          </c:forEach>
          </table>
    </div>

</body>
</html>