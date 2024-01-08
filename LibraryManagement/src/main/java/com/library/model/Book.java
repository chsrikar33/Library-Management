package com.library.model;

import java.time.LocalDate;
import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Book {
	@Id
	private int bookId;
	private String bookName;
	private String bookStatus;
	private LocalDate bookIssuedDate;
	private int userId;
	private LocalDate bookReturnDate;

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getBookStatus() {
		return bookStatus;
	}

	public void setBookStatus(String bookStatus) {
		this.bookStatus = bookStatus;
	}

	public LocalDate getBookIssuedDate() {
		return bookIssuedDate;
	}

	public void setBookIssuedDate(LocalDate bookIssuedDate) {
		this.bookIssuedDate = bookIssuedDate;
	}

	public int getUserId() {
		return userId;
	}

	public LocalDate getBookReturnDate() {
		return bookReturnDate;
	}

	public void setBookReturnDate(LocalDate bookReturnDate) {
		this.bookReturnDate = bookReturnDate;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Book(int bookId, String bookName, String bookStatus, LocalDate bookIssuedDate, int userId,LocalDate bookReturnDate) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.bookStatus = bookStatus;
		this.bookIssuedDate = bookIssuedDate;
		this.bookReturnDate = bookReturnDate;
		this.userId = userId;
	}

	public Book() {
		super();
	}

}
