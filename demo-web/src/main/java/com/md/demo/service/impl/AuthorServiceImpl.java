package com.md.demo.service.impl;

import com.md.demo.model.Author;
import com.md.demo.repository.AuthorRepository;
import com.md.demo.service.AuthorService;
import com.md.demo.specification.AuthorSpecifications;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuthorServiceImpl implements AuthorService {

    private AuthorRepository authorRepository;

    public AuthorServiceImpl(AuthorRepository authorRepository) {
        this.authorRepository = authorRepository;
    }

    @Override
    public List<Author> findAllAuthorsByKeyword(final String keyword) {
        List<Author> authors = StringUtils.isBlank(keyword) ? authorRepository.findAll() :
                authorRepository.findAll(AuthorSpecifications.getAuthorsByKeyword(keyword));
        return authors;
    }
}
