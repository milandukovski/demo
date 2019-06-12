package com.md.demo.specification;

import com.md.demo.model.Author;
import org.springframework.data.jpa.domain.Specification;

import static com.md.demo.util.SpecificationUtil.convertKeywordToExpression;

public class AuthorSpecifications {

    /**
     * Find all authors whose {@link Author#lastName} contains {@link String keyword}
     *
     * @param keyword - criteria for searching
     * @return Specification<Author>
     */
    public static Specification<Author> getAuthorByLastName(final String keyword) {
        return (root, query, cb) -> cb.like(cb.lower(root.get("lastName")), convertKeywordToExpression(keyword));
    }

    /**
     * Find all authors whose {@link Author#firstName} contains {@link String keyword}
     *
     * @param keyword - criteria for searching
     * @return Specification<Author>
     */
    public static Specification<Author> getAuthorByFirstName(final String keyword) {
        return (root, query, cb) -> cb.like(cb.lower(root.get("firstName")), convertKeywordToExpression(keyword));
    }

    /**
     * Find all the authors that the {@link Author#address} contains {@link String keyword}
     *
     * @param keyword - criteria for searching
     * @return Specification<Author>
     */
    public static Specification<Author> getAuthorByAddress(final String keyword) {
        return (root, query, cb) -> cb.like(cb.lower(root.get("address")), convertKeywordToExpression(keyword));
    }

    /**
     * Find all the authors that the {@link Author#city} contains {@link String keyword}
     *
     * @param keyword - criteria for searching
     * @return Specification<Author>
     */
    public static Specification<Author> getAuthorByCity(final String keyword) {
        return (root, query, cb) -> cb.like(cb.lower(root.get("city")), convertKeywordToExpression(keyword));
    }

    /**
     * Find all the authors where the {@link Author#firstName}, {@link Author#lastName},
     * {@link Author#address} or {@link Author#city} contains {@link String keyword}
     *
     * @param keyword - criteria for searching
     * @return Specification<Author>
     */
    public static Specification<Author> getAuthorsByKeyword(final String keyword) {
        return Specification.where(getAuthorByFirstName(keyword)).or(getAuthorByLastName(keyword))
                .or(getAuthorByAddress(keyword)).or(getAuthorByCity(keyword));
    }
}
