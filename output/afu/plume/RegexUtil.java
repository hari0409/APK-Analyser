package afu.plume;
public final class RegexUtil {

    private RegexUtil()
    {
        throw new Error("do not instantiate");
    }

    public static String asRegex(String p1)
    {
        return afu.plume.RegexUtil.asRegex(p1, 0);
    }

    public static String asRegex(String p5, int p6)
    {
        try {
            int v0 = afu.plume.RegexUtil.getGroupCount(java.util.regex.Pattern.compile(p5));
        } catch (java.util.regex.PatternSyntaxException v1) {
            throw new Error(v1);
        }
        if (v0 >= p6) {
            return p5;
        } else {
            throw new Error(afu.plume.RegexUtil.regexErrorMessage(p5, p6, v0));
        }
    }

    private static int getGroupCount(java.util.regex.Pattern p1)
    {
        return p1.matcher("").groupCount();
    }

    public static boolean isRegex(char p1)
    {
        return afu.plume.RegexUtil.isRegex(Character.toString(p1));
    }

    public static boolean isRegex(String p1)
    {
        return afu.plume.RegexUtil.isRegex(p1, 0);
    }

    public static boolean isRegex(String p4, int p5)
    {
        int v2 = 0;
        try {
            if (afu.plume.RegexUtil.getGroupCount(java.util.regex.Pattern.compile(p4)) >= p5) {
                v2 = 1;
            }
        } catch (java.util.regex.PatternSyntaxException v0) {
        }
        return v2;
    }

    public static String regexError(String p1)
    {
        return afu.plume.RegexUtil.regexError(p1, 0);
    }

    public static String regexError(String p4, int p5)
    {
        try {
            int v3;
            int v0 = afu.plume.RegexUtil.getGroupCount(java.util.regex.Pattern.compile(p4));
        } catch (java.util.regex.PatternSyntaxException v1) {
            v3 = v1.getMessage();
            return v3;
        }
        if (v0 >= p5) {
            v3 = 0;
            return v3;
        } else {
            v3 = afu.plume.RegexUtil.regexErrorMessage(p4, p5, v0);
            return v3;
        }
    }

    private static String regexErrorMessage(String p2, int p3, int p4)
    {
        return new StringBuilder().append("regex \"").append(p2).append("\" has ").append(p4).append(" groups, but ").append(p3).append(" groups are needed.").toString();
    }

    public static java.util.regex.PatternSyntaxException regexException(String p1)
    {
        return afu.plume.RegexUtil.regexException(p1, 0);
    }

    public static java.util.regex.PatternSyntaxException regexException(String p5, int p6)
    {
        try {
            int v2_0;
            int v0 = afu.plume.RegexUtil.getGroupCount(java.util.regex.Pattern.compile(p5));
        } catch (int v2_0) {
            return v2_0;
        }
        if (v0 >= p6) {
            v2_0 = 0;
            return v2_0;
        } else {
            v2_0 = new java.util.regex.PatternSyntaxException(afu.plume.RegexUtil.regexErrorMessage(p5, p6, v0), p5, -1);
            return v2_0;
        }
    }
}
