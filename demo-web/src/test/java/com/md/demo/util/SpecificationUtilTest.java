package com.md.demo.util;

import com.md.demo.model.domain.BookType;
import org.junit.Assert;
import org.junit.Test;

import static org.apache.commons.lang3.StringUtils.EMPTY;

public class SpecificationUtilTest {

    @Test
    public void testConvertKeywordToExpression() {
        final String keyword = "test";
        final String result = "%test%";

        Assert.assertEquals(SpecificationUtil.convertKeywordToExpression(keyword), result);
        Assert.assertEquals(SpecificationUtil.convertKeywordToExpression(keyword.toUpperCase()), result);
        Assert.assertEquals(SpecificationUtil.convertKeywordToExpression(null), EMPTY);
        Assert.assertEquals(SpecificationUtil.convertKeywordToExpression(EMPTY), EMPTY);
    }

    @Test
    public void testConvertStringToBookType() {
        Assert.assertEquals(SpecificationUtil.convertStringToBookType("java"), BookType.JAVA);
        Assert.assertEquals(SpecificationUtil.convertStringToBookType("Java"), BookType.JAVA);
        Assert.assertEquals(SpecificationUtil.convertStringToBookType("Jva"), null);
        Assert.assertEquals(SpecificationUtil.convertStringToBookType(""), null);
        Assert.assertEquals(SpecificationUtil.convertStringToBookType(null), null);
    }

}