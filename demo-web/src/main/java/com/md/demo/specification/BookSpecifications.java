package com.md.demo.specification;

import com.md.demo.model.Book;
import org.springframework.data.jpa.domain.Specification;

import static com.md.demo.util.SpecificationUtil.convertKeywordToExpression;
import static com.md.demo.util.SpecificationUtil.convertStringToBookType;

public class BookSpecifications {

    /**
     * Find all the books that the {@link Book#title} contains {@link String keyword}
     *
     * @param keyword - criteria for searching
     * @return Specification<Book>
     */
    public static Specification<Book> getBookByTitle(final String keyword) {
        return (root, query, cb) -> cb.like(cb.lower(root.get("title")), convertKeywordToExpression(keyword));
    }

    /**
     * Find all the books that the {@link Book#type} contains {@link String keyword}
     *
     * @param keyword - criteria for searching
     * @return Specification<Book>
     */
    public static Specification<Book> getBookByType(final String keyword) {
        return (root, query, cb) -> cb.equal((root.get("type")), convertStringToBookType(keyword));
    }

    /**
     * Find all the books that the {@link Book#description} contains {@link String keyword}
     *
     * @param keyword - criteria for searching
     * @return Specification<Book>
     */
    public static Specification<Book> getBookByDescription(final String keyword) {
        return (root, query, cb) -> cb.like(cb.lower(root.get("description")), convertKeywordToExpression(keyword));
    }

    /**
     * Find all the books where the {@link Book#title}, {@link Book#type} or {@link Book#description}  contains
     * {@link String keyword}
     *
     * @param keyword - criteria for searching
     * @return Specification<Book>
     */
    public static Specification<Book> getBookByKeyword(final String keyword) {
        return Specification.where(getBookByTitle(keyword)).or(getBookByType(keyword))
                .or(getBookByDescription(keyword));
    }
}
