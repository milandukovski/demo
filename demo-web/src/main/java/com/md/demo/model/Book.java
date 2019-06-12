package com.md.demo.model;

import com.md.demo.model.base.BaseEntity;
import com.md.demo.model.domain.BookType;

import javax.persistence.*;
import java.time.LocalDateTime;

/**
 * Book Author
 */
@Entity
@Table(name = "books")
public class Book extends BaseEntity {

    @Column(name = "title")
    private String title;

    @Column(name = "type")
    @Enumerated(value = EnumType.STRING)
    private BookType type;

    @Column(name = "published_date")
    private LocalDateTime publishedDate;

    @Column(name = "description")
    private String description;

    @Column(name = "page_count")
    private Integer pageCount;

    @Column(name = "isbn")
    private String isbn;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public BookType getType() {
        return type;
    }

    public void setType(BookType type) {
        this.type = type;
    }

    public LocalDateTime getPublishedDate() {
        return publishedDate;
    }

    public void setPublishedDate(LocalDateTime publishedDate) {
        this.publishedDate = publishedDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getPageCount() {
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
}
