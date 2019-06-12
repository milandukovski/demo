package com.md.demo.service;

import com.md.demo.model.Author;
import org.springframework.stereotype.Service;

import java.util.List;

public interface AuthorService {

    /**
     * Find all the authors that the {@link Author#firstName}, {@link Author#lastName},
     * {@link Author#address} or {@link Author#city} contains {@link String keyword}
     *
     * @param keyword - criteria for searching
     * @return Specification<Author>
     */
    List<Author> findAllAuthorsByKeyword(final String keyword);
}
