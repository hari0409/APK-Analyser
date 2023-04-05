package org.checkerframework.checker.formatter;
public class FormatUtil$IllegalFormatConversionCategoryException extends java.util.IllegalFormatConversionException {
    private static final long serialVersionUID = 17000126;
    private final org.checkerframework.checker.formatter.qual.ConversionCategory expected;
    private final org.checkerframework.checker.formatter.qual.ConversionCategory found;

    public FormatUtil$IllegalFormatConversionCategoryException(org.checkerframework.checker.formatter.qual.ConversionCategory p4, org.checkerframework.checker.formatter.qual.ConversionCategory p5)
    {
        char v0_3;
        if (p4.chars.length() != 0) {
            v0_3 = p4.chars.charAt(0);
        } else {
            v0_3 = 45;
        }
        Class v1_1;
        if (p5.types != null) {
            v1_1 = p5.types[0];
        } else {
            v1_1 = Object;
        }
        super(v0_3, v1_1);
        super.expected = p4;
        super.found = p5;
        return;
    }

    public org.checkerframework.checker.formatter.qual.ConversionCategory getExpected()
    {
        return this.expected;
    }

    public org.checkerframework.checker.formatter.qual.ConversionCategory getFound()
    {
        return this.found;
    }

    public String getMessage()
    {
        Object[] v1_1 = new Object[2];
        v1_1[0] = this.expected;
        v1_1[1] = this.found;
        return String.format("Expected category %s but found %s.", v1_1);
    }
}
