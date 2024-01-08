<body><!DOCTYPE html>
<html lang="en">
<head>
<style>
body {
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background: linear-gradient(to right, #b92b27, #1565c0)
}
</style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href = "https://fonts.googleapis.com/icon?family=Material+Icons" rel = "stylesheet">
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css"/>
    <title>Library Books</title>
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
            <li class="nav-item"><a class="nav-link" href="./viewBooks">View Books</a></li>
            <li class="nav-item"><a class="nav-link active" href="./issueBook">Issue Book</a></li>
			<li class="nav-item"><a class="nav-link" href="./borrowedBooks">BorrowedBooks</a></li>
			<li class="nav-item"><a class="nav-link " href="./alert">Alert</a></li>
			<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
        </ul>
    </nav>
    <div class="container">
		<h1 class="display-6 py-2 text-white text-truncate text-center">User Books</h1>
        <div><p class="mt-4 text-warning" align="center" style = "font-size:150%;">${invalidMessage}</p></div>
     <form action="/admin/issueBook" method="post">
		<div align="center">
            <div class="form-row justify-content-center">
                <div class="col-sm-4">
                  <label class="text-white">Book Id</label>
                  <input type="text" class="form-control" id="bookId" name="bookId" placeholder="Enter Book Id" required>
                </div>
                </div>
            
	    <div class="form-row justify-content-center">
	       <div class="col-sm-4">
                <label class="text-white">User Id</label>
                <input type="text" class="form-control" id="userId" name="userId" placeholder="Enter User Id" required>
               </div>
            </div>
              <div class="form-row justify-content-center" >
                <div class="col-sm-4">
                  <label class="text-white">Enter Book Return Date</label>
                  <input type="date" class="form-control" id="bookReturnDate" name="bookReturnDate" placeholder="Enter Book Return Date" required>
                </div>
               </div>
			  
            <button type="submit" class="btn btn-primary my-4">Submit</button>
			</div>
          </form>
  </body>
  </html>