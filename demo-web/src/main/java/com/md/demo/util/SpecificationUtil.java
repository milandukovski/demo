package com.md.demo.util;

import com.md.demo.model.domain.BookType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import static org.apache.commons.lang3.StringUtils.*;

/**
 * Utility class for specifications
 */
public final class SpecificationUtil {
    private final static Logger LOGGER = LoggerFactory.getLogger(SpecificationUtil.class);

    /**
     * Private constructor
     */
    private SpecificationUtil() {
        throw new IllegalStateException("Utility static class");
    }

    /**
     * Transforms string keyword for expression
     *
     * @param keyword
     * @return
     */
    public static String convertKeywordToExpression(final String keyword) {
        return isBlank(keyword) ? EMPTY : String.format("%%%s%%", keyword.toLowerCase());
    }

    /**
     * Converting string value to BookType. If bookType is invalid value then is returned null
     *
     * @param bookType
     * @return
     */
    public static BookType convertStringToBookType(final String bookType) {
        BookType type = null;

        try {
            type = BookType.valueOf(defaultString(bookType).toUpperCase());
        } catch (Exception e) {
            LOGGER.warn("Value: '{}' cannot be converted to BookType", bookType);
        }

        return type;
    }


}
