package com.md.demo.service;

import com.md.demo.model.Book;

import java.util.List;

public interface BookService {

    /**
     * Find all the books where the {@link Book#title}, {@link Book#type} or {@link Book#description} contains
     * {@link String keyword}
     *
     * @param keyword - criteria for searching
     * @return
     */
    List<Book> findAllBooksByKeyword(final String keyword);

    /**
     * Find all books for given author.
     *
     * @param authorId - author id
     * @return
     */
    List<Book> findAllBooksByAuthor(final Long authorId);
}
