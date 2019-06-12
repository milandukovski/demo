package com.md.demo.repository;

import com.md.demo.model.AuthorBook;
import com.md.demo.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface AuthorBookRepository extends JpaRepository<AuthorBook, Long> {

    @Query("select distinct ab.book from AuthorBook ab where ab.author.id = :authorId")
    List<Book> getAllBooksByAuthor(@Param("authorId") Long authorId);
}
