package com.library.service;
import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.library.model.Book;
import com.library.repository.BookRepository;

@Service
public class BookService {
	@Autowired
	BookRepository bookRepository;

	public Optional<Book> searchById(int bookId) {
		return bookRepository.findById(bookId);
	}

	public Book storeBook(int bookId, String bookName, String bookStatus) {
		Book book = new Book(bookId, bookName, bookStatus, null, 0, null);
		return bookRepository.save(book);
	}

	public Book storeUserBook(int bookId, int userId, LocalDate bookReturnDate) {
		Optional<Book> book = bookRepository.findById(bookId);
		LocalDate localDate = LocalDate.now();
		if (book.isPresent()) {
			Book book1 = book.get();
			book1.setUserId(userId);
			book1.setBookStatus("Borrowed");
			book1.setBookIssuedDate(localDate);
			book1.setBookReturnDate(bookReturnDate);
			return bookRepository.save(book1);
		}
		return null;
	}

	public String alert(int userId) {
		LocalDate localDate = LocalDate.now();
		List<Book> bookList = bookRepository.findByUserId(userId);
		for (Book book : bookList) {
			LocalDate returnDate = book.getBookReturnDate();
			Period period = localDate.until(returnDate);
			int days = period.getDays();
			if (days <= 5) {
				return "book " + book.getBookName() + " needs to be submitted by " + book.getBookReturnDate();
			}

		}
		return "No books to be returned";
	}
	public List<Book> viewBooksByUserId(int userId)
	{
		return bookRepository.findByUserId(userId);
	}
	public List<Book> availableBooks()
	{
		return bookRepository.findByBookStatus("Available");
	}
	
	
	public List<Book> viewBooks(){
		List<Book> bookList= bookRepository.findAll();
		return bookList;
	}
	
	public List<Book> getBorrowedBooks(){
		List<Book> borrowedBookList= bookRepository.findByBookStatus("Borrowed");
		return borrowedBookList;
	}
	
	public List<Book> alert() {
		LocalDate localDate = LocalDate.now();
		List<Book> alertList=new ArrayList<Book>();
		List<Book> bookList = bookRepository.findAll();
		for (Book book : bookList) {
			
			LocalDate returnDate = book.getBookReturnDate();
			Period period = localDate.until(returnDate);
			int days = period.getDays();
			
			if (days == 0) {
				alertList.add(book);
			}
		}
		return alertList;
	}
	
	
}
