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
            <li class="nav-item"><a class="nav-link active" href="./addBooks">Add Book</a></li>
            <li class="nav-item"><a class="nav-link" href="./viewBooks">View Books</a></li>
            <li class="nav-item"><a class="nav-link" href="./issueBook">Issue Book</a></li>
			<li class="nav-item"><a class="nav-link" href="./borrowedBooks">BorrowedBooks</a></li>
			<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
        </ul>
    </nav>
    <div class="container">
		<h1 class="display-6 py-2 text-white text-truncate text-center">Books In the Library</h1>
		<form action="/admin/addBooks" method="post">
		<div align="center">
            <div class="form-row justify-content-center">
                <div class="col-sm-4">
                  <label class="text-white">Book Id</label>
                  <input type="text" class="form-control" id="bookId" name="bookId" placeholder="Enter Book Id" required>
                </div>
                </div>
            
	    <div class="form-row justify-content-center">
	       <div class="col-sm-4">
                <label class="text-white">Book Name</label>
                <input type="text" class="form-control" id="bookName" name="bookName" placeholder="Enter Book Name" required>
               </div>
            </div>
              <div class="form-row justify-content-center" >
                <div class="col-sm-4">
                  <label class="text-white">Book Status</label>
                    <select class="form-select p-2 col-sm-12" id="bookStatus" name="bookStatus" aria-label="Default select example" required>
                        
                        <option value="Available">Available</option>
                        <option value="Borrowed">Borrowed</option>
                        <option value="Not Available">Not Available</option>
                    </select>
                </div>
               </div>
            <button type="submit" class="btn btn-primary my-4">Submit</button>
			</div>
          </form>
  </body>
  </html>