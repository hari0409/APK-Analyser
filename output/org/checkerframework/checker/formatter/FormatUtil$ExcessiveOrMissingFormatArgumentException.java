package org.checkerframework.checker.formatter;
public class FormatUtil$ExcessiveOrMissingFormatArgumentException extends java.util.MissingFormatArgumentException {
    private static final long serialVersionUID = 17000126;
    private final int expected;
    private final int found;

    public FormatUtil$ExcessiveOrMissingFormatArgumentException(int p2, int p3)
    {
        super("-");
        super.expected = p2;
        super.found = p3;
        return;
    }

    public int getExpected()
    {
        return this.expected;
    }

    public int getFound()
    {
        return this.found;
    }

    public String getMessage()
    {
        Object[] v1_1 = new Object[2];
        v1_1[0] = Integer.valueOf(this.expected);
        v1_1[1] = Integer.valueOf(this.found);
        return String.format("Expected %d arguments but found %d.", v1_1);
    }
}
