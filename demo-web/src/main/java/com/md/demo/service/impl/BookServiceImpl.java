package com.md.demo.service.impl;

import com.md.demo.model.Book;
import com.md.demo.repository.AuthorBookRepository;
import com.md.demo.repository.BookRepository;
import com.md.demo.service.BookService;
import com.md.demo.specification.BookSpecifications;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    private BookRepository bookRepository;
    private AuthorBookRepository authorBookRepository;

    public BookServiceImpl(final BookRepository bookRepository, final AuthorBookRepository authorBookRepository) {
        this.bookRepository = bookRepository;
        this.authorBookRepository = authorBookRepository;
    }

    @Override
    public List<Book> findAllBooksByKeyword(final String keyword) {
        List<Book> books = StringUtils.isBlank(keyword) ? bookRepository.findAll() :
                bookRepository.findAll(BookSpecifications.getBookByKeyword(keyword));
        return books;
    }

    @Override
    public List<Book> findAllBooksByAuthor(final Long id) {
        return authorBookRepository.getAllBooksByAuthor(id);
    }
}
