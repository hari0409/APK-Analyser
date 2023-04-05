package afu.org.checkerframework.checker.formatter;
 class FormatUtil$Conversion {
    private final afu.org.checkerframework.checker.formatter.qual.ConversionCategory cath;
    private final int index;

    public FormatUtil$Conversion(char p2, int p3)
    {
        this.index = p3;
        this.cath = afu.org.checkerframework.checker.formatter.qual.ConversionCategory.fromConversionChar(p2);
        return;
    }

    afu.org.checkerframework.checker.formatter.qual.ConversionCategory category()
    {
        return this.cath;
    }

    int index()
    {
        return this.index;
    }
}
