package com.library.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.library.model.Book;
@Repository
public interface BookRepository extends JpaRepository<Book,Integer> {
	public List<Book> findByUserId(int userId);
	public List<Book> findByBookStatus(String bookstatus);
	
	
}
