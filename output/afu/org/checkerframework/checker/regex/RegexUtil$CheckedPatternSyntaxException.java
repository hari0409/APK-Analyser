package afu.org.checkerframework.checker.regex;
public class RegexUtil$CheckedPatternSyntaxException extends java.lang.Exception {
    private static final long serialVersionUID = 6266881831979001480;
    private final java.util.regex.PatternSyntaxException pse;

    public RegexUtil$CheckedPatternSyntaxException(String p2, String p3, int p4)
    {
        this(new java.util.regex.PatternSyntaxException(p2, p3, p4));
        return;
    }

    public RegexUtil$CheckedPatternSyntaxException(java.util.regex.PatternSyntaxException p1)
    {
        this.pse = p1;
        return;
    }

    public String getDescription()
    {
        return this.pse.getDescription();
    }

    public int getIndex()
    {
        return this.pse.getIndex();
    }

    public String getMessage()
    {
        return this.pse.getMessage();
    }

    public String getPattern()
    {
        return this.pse.getPattern();
    }
}
