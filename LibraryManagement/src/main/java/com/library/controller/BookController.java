 package com.library.controller;

import java.time.LocalDate;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.library.model.Book;
import com.library.service.BookService;

@Controller
public class BookController {
	@Autowired
	BookService bookService;
	@GetMapping("/admin/home")
	public String adminHome() {
		return "AdminHome";
	}
	@GetMapping("/user/home")
	public String UserHome() {
		return "UserHome";
	}
	@GetMapping("/admin/addBooks")
	public ModelAndView adminAddBooks() {
		ModelAndView mv = new ModelAndView("AdminAddBooks");
		return mv;
	}
	@PostMapping("/admin/addBooks")
	public ModelAndView EnterAddAdminBooks(@RequestParam("bookId") int bookId,
			@RequestParam("bookName") String bookName, @RequestParam("bookStatus") String bookStatus) {
		ModelAndView mv = new ModelAndView("AdminAddBooksOutput");
		Book book = bookService.storeBook(bookId, bookName, bookStatus);
		mv.addObject("book", book);
		return mv;
	}

	@GetMapping("/admin/issueBook")
	public ModelAndView userAddBooks() {
		ModelAndView mv = new ModelAndView("UserAddBooks");
		return mv;
	}

	@PostMapping("/admin/issueBook")
	public ModelAndView EnterAddUserBooks(ModelMap model, @RequestParam("bookId") int bookId,
			@RequestParam("userId") int userId,
			@RequestParam("bookReturnDate") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate bookReturnDate) {
		ModelAndView mv = new ModelAndView("UserAddBooksOutput");
		Book userDetails = bookService.storeUserBook(bookId, userId, bookReturnDate);
		mv.addObject("userDetails", userDetails);
		return mv;
	}
	@GetMapping("/admin/viewBooks")
	public ModelAndView viewBooks() {
		ModelAndView mv = new ModelAndView("AdminViewBookOutput");
		List<Book> bookList = bookService.viewBooks();
		mv.addObject("bookList", bookList);
		return mv;
	}

	@GetMapping("/admin/borrowedBooks")
	public ModelAndView viewBorrowedBooks() {
		ModelAndView mv = new ModelAndView("BorrowedBooksOutput");
		List<Book> borrowedBookList = bookService.getBorrowedBooks();
		mv.addObject("borrowedBookList", borrowedBookList);
		return mv;
	}
	@GetMapping("/admin/alert")
	public ModelAndView adminAlert() {
		ModelAndView mv = new ModelAndView("AdminAlertOutput");
		List<Book> alertBookList = bookService.alert();
		if(alertBookList.size()>0)
		{
			int numOfBooks=alertBookList.size();
			mv.addObject("alertBookList", alertBookList);
			mv.addObject("alertMessage",  numOfBooks+" Books to be returned Today");
		}
		else {
			mv.addObject("alertMessage","No Books to be returned today");
		}
		
		return mv;
	}
	@GetMapping("/user/alert")
	public ModelAndView userAlert() {
		ModelAndView mv = new ModelAndView("UserAlert");
		return mv;
	}

	@PostMapping("/user/alert")
	public ModelAndView userAlert( @RequestParam("userId") int userId) {
		ModelAndView mv = new ModelAndView("UserAlertOutput");
		String alertMessage = bookService.alert(userId);
		mv.addObject("alertMessage", alertMessage);
		return mv;
	}
	@GetMapping("/user/viewBooks")
	public ModelAndView userViewBooks() {
		ModelAndView mv = new ModelAndView("UserViewBooks");
		return mv;
	}
	@PostMapping("/user/viewBooks")
	public ModelAndView userViewBooks(@RequestParam("userId") int userId) {
		ModelAndView mv = new ModelAndView("UserViewBooksOutput");
		 List<Book> userBookList=bookService.viewBooksByUserId(userId);
		mv.addObject("userBookList", userBookList);
		return mv;
	}
	@GetMapping("/user/available")
	public ModelAndView userAvailableBooks() {
		ModelAndView mv = new ModelAndView("UserAvailableBooks");
		List<Book> availableBookList=bookService.availableBooks();
		mv.addObject("availableBookList", availableBookList);
		return mv;
	}
	@GetMapping("/user/accessdenied")
	public ModelAndView accessDenied() {
		ModelAndView mv = new ModelAndView("UserAccessDenied");
		return mv;
	}
	
	@GetMapping("/welcome")
	public String homePage () {
		return "Home";
	}
	
	@GetMapping("/")
	public String loginPage () {
		return "Login";
	}
}
