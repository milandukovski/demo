package com.md.demo.rest;

import com.md.demo.model.Author;
import com.md.demo.service.AuthorService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static org.apache.commons.lang3.StringUtils.EMPTY;

/**
 * Rest controller for Authors
 */
@RestController
@RequestMapping(path = "/api/authors", produces = MediaType.APPLICATION_JSON_VALUE)
public class AuthorController {

    private AuthorService authorService;

    /**
     * Public constructor
     *
     * @param authorService
     */
    public AuthorController(final AuthorService authorService) {
        this.authorService = authorService;
    }

    /**
     * Returns list of all the authors where firstName, lastName, address or city matched the keyword
     *
     * @param keyword
     * @return
     */
    @GetMapping(path = "/")
    @ResponseStatus(HttpStatus.OK)
    public List<Author> getAuthors(@RequestParam(name = "keyword", required = false, defaultValue = EMPTY) final String keyword) {
        return authorService.findAllAuthorsByKeyword(keyword);
    }


}
