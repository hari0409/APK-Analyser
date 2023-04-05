package afu.org.checkerframework.checker.formatter;
public class FormatUtil {
    private static final String formatSpecifier = "%(\\d+\\$)?([-#+ 0,(\\<]*)?(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])";
    private static java.util.regex.Pattern fsPattern;

    static FormatUtil()
    {
        afu.org.checkerframework.checker.formatter.FormatUtil.fsPattern = java.util.regex.Pattern.compile("%(\\d+\\$)?([-#+ 0,(\\<]*)?(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])");
        return;
    }

    public FormatUtil()
    {
        return;
    }

    public static varargs String asFormat(String p5, afu.org.checkerframework.checker.formatter.qual.ConversionCategory[] p6)
    {
        afu.org.checkerframework.checker.formatter.qual.ConversionCategory[] v0 = afu.org.checkerframework.checker.formatter.FormatUtil.formatParameterCategories(p5);
        if (v0.length == p6.length) {
            int v1 = 0;
            while (v1 < p6.length) {
                if (p6[v1] == v0[v1]) {
                    v1++;
                } else {
                    throw new afu.org.checkerframework.checker.formatter.FormatUtil$IllegalFormatConversionCategoryException(p6[v1], v0[v1]);
                }
            }
            return p5;
        } else {
            throw new afu.org.checkerframework.checker.formatter.FormatUtil$ExcessiveOrMissingFormatArgumentException(p6.length, v0.length);
        }
    }

    private static char conversionCharFromFormat(java.util.regex.Matcher p3)
    {
        char v1_1;
        String v0 = p3.group(5);
        if (v0 != null) {
            v1_1 = v0.charAt(0);
        } else {
            v1_1 = p3.group(6).charAt(0);
        }
        return v1_1;
    }

    public static afu.org.checkerframework.checker.formatter.qual.ConversionCategory[] formatParameterCategories(String p14)
    {
        afu.org.checkerframework.checker.formatter.FormatUtil.tryFormatSatisfiability(p14);
        int v5 = -1;
        int v6 = -1;
        int v7 = -1;
        afu.org.checkerframework.checker.formatter.FormatUtil$Conversion[] v2 = afu.org.checkerframework.checker.formatter.FormatUtil.parse(p14);
        java.util.HashMap v1_1 = new java.util.HashMap();
        int v11 = v2.length;
        int v10 = 0;
        while (v10 < v11) {
            afu.org.checkerframework.checker.formatter.FormatUtil$Conversion v0 = v2[v10];
            int v4 = v0.index();
            switch (v4) {
                case -1:
                    break;
                case 0:
                    v6++;
                    v5 = v6;
                    break;
                default:
                    v5 = (v4 - 1);
            }
            afu.org.checkerframework.checker.formatter.qual.ConversionCategory v9_8;
            v7 = Math.max(v7, v5);
            Integer v12 = Integer.valueOf(v5);
            if (!v1_1.containsKey(Integer.valueOf(v5))) {
                v9_8 = afu.org.checkerframework.checker.formatter.qual.ConversionCategory.UNUSED;
            } else {
                v9_8 = ((afu.org.checkerframework.checker.formatter.qual.ConversionCategory) v1_1.get(Integer.valueOf(v5)));
            }
            v1_1.put(v12, afu.org.checkerframework.checker.formatter.qual.ConversionCategory.intersect(v9_8, v0.category()));
            v10++;
        }
        afu.org.checkerframework.checker.formatter.qual.ConversionCategory[] v8 = new afu.org.checkerframework.checker.formatter.qual.ConversionCategory[(v7 + 1)];
        int v3 = 0;
        while (v3 <= v7) {
            afu.org.checkerframework.checker.formatter.qual.ConversionCategory v9_3;
            if (!v1_1.containsKey(Integer.valueOf(v3))) {
                v9_3 = afu.org.checkerframework.checker.formatter.qual.ConversionCategory.UNUSED;
            } else {
                v9_3 = ((afu.org.checkerframework.checker.formatter.qual.ConversionCategory) v1_1.get(Integer.valueOf(v3)));
            }
            v8[v3] = v9_3;
            v3++;
        }
        return v8;
    }

    private static int indexFromFormat(java.util.regex.Matcher p4)
    {
        int v0;
        String v1 = p4.group(1);
        if (v1 == null) {
            if ((p4.group(2) == null) || (!p4.group(2).contains(String.valueOf(60)))) {
                v0 = 0;
            } else {
                v0 = -1;
            }
        } else {
            v0 = Integer.parseInt(v1.substring(0, (v1.length() - 1)));
        }
        return v0;
    }

    private static afu.org.checkerframework.checker.formatter.FormatUtil$Conversion[] parse(String p5)
    {
        java.util.ArrayList v1_1 = new java.util.ArrayList();
        java.util.regex.Matcher v2 = afu.org.checkerframework.checker.formatter.FormatUtil.fsPattern.matcher(p5);
        while (v2.find()) {
            char v0 = afu.org.checkerframework.checker.formatter.FormatUtil.conversionCharFromFormat(v2);
            switch (v0) {
                default:
                    v1_1.add(new afu.org.checkerframework.checker.formatter.FormatUtil$Conversion(v0, afu.org.checkerframework.checker.formatter.FormatUtil.indexFromFormat(v2)));
            }
        }
        afu.org.checkerframework.checker.formatter.FormatUtil$Conversion v3_0 = new afu.org.checkerframework.checker.formatter.FormatUtil$Conversion[v1_1.size()];
        return ((afu.org.checkerframework.checker.formatter.FormatUtil$Conversion[]) v1_1.toArray(v3_0));
    }

    public static void tryFormatSatisfiability(String p1)
    {
        String.format(p1, ((Object[]) 0));
        return;
    }
}
