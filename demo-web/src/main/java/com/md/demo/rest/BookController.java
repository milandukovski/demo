package com.md.demo.rest;

import com.md.demo.model.Book;
import com.md.demo.service.BookService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static org.apache.commons.lang3.StringUtils.EMPTY;

/**
 * Rest controller for Books
 */
@RestController
@RequestMapping(path = "/api/books", produces = MediaType.APPLICATION_JSON_VALUE)
public class BookController {

    private BookService bookService;

    /**
     * Public constructor
     *
     * @param bookService
     */
    public BookController(final BookService bookService) {
        this.bookService = bookService;
    }

    /**
     * Returns list of all the books where title, description or bookType matched the keyword
     *
     * @param keyword
     * @return
     */
    @GetMapping(path = "/")
    @ResponseStatus(HttpStatus.OK)
    public List<Book> getAllBooks(@RequestParam(name = "keyword", required = false, defaultValue = EMPTY) final String keyword) {
        return bookService.findAllBooksByKeyword(keyword);
    }

    /**
     * Returns list of all the books for given author
     *
     * @param id - author id
     * @return
     */
    @GetMapping(path = "/author/{id}")
    @ResponseStatus(HttpStatus.OK)
    public List<Book> getBookAuthors(@PathVariable("id") final Long id) {
        return bookService.findAllBooksByAuthor(id);
    }
}
