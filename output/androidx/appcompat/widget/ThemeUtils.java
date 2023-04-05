package androidx.appcompat.widget;
 class ThemeUtils {
    static final int[] ACTIVATED_STATE_SET;
    static final int[] CHECKED_STATE_SET;
    static final int[] DISABLED_STATE_SET;
    static final int[] EMPTY_STATE_SET;
    static final int[] FOCUSED_STATE_SET;
    static final int[] NOT_PRESSED_OR_FOCUSED_STATE_SET;
    static final int[] PRESSED_STATE_SET;
    static final int[] SELECTED_STATE_SET;
    private static final int[] TEMP_ARRAY;
    private static final ThreadLocal TL_TYPED_VALUE;

    static ThemeUtils()
    {
        androidx.appcompat.widget.ThemeUtils.TL_TYPED_VALUE = new ThreadLocal();
        int[] v0_10 = new int[1];
        v0_10[0] = -16842910;
        androidx.appcompat.widget.ThemeUtils.DISABLED_STATE_SET = v0_10;
        int[] v0_11 = new int[1];
        v0_11[0] = 16842908;
        androidx.appcompat.widget.ThemeUtils.FOCUSED_STATE_SET = v0_11;
        int[] v0_0 = new int[1];
        v0_0[0] = 16843518;
        androidx.appcompat.widget.ThemeUtils.ACTIVATED_STATE_SET = v0_0;
        int[] v0_1 = new int[1];
        v0_1[0] = 16842919;
        androidx.appcompat.widget.ThemeUtils.PRESSED_STATE_SET = v0_1;
        int[] v0_3 = new int[1];
        v0_3[0] = 16842912;
        androidx.appcompat.widget.ThemeUtils.CHECKED_STATE_SET = v0_3;
        int[] v0_4 = new int[1];
        v0_4[0] = 16842913;
        androidx.appcompat.widget.ThemeUtils.SELECTED_STATE_SET = v0_4;
        int[] v0_7 = new int[2];
        v0_7 = {-16842919, -16842908};
        androidx.appcompat.widget.ThemeUtils.NOT_PRESSED_OR_FOCUSED_STATE_SET = v0_7;
        int[] v0_8 = new int[0];
        androidx.appcompat.widget.ThemeUtils.EMPTY_STATE_SET = v0_8;
        int[] v0_9 = new int[1];
        androidx.appcompat.widget.ThemeUtils.TEMP_ARRAY = v0_9;
        return;
    }

    private ThemeUtils()
    {
        return;
    }

    public static android.content.res.ColorStateList createDisabledStateList(int p4, int p5)
    {
        int[][] v2 = new int[][2];
        int[] v0 = new int[2];
        v2[0] = androidx.appcompat.widget.ThemeUtils.DISABLED_STATE_SET;
        v0[0] = p5;
        int v1_1 = (0 + 1);
        v2[v1_1] = androidx.appcompat.widget.ThemeUtils.EMPTY_STATE_SET;
        v0[v1_1] = p4;
        return new android.content.res.ColorStateList(v2, v0);
    }

    public static int getDisabledThemeAttrColor(android.content.Context p6, int p7)
    {
        int v3_0;
        android.content.res.ColorStateList v0 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColorStateList(p6, p7);
        if ((v0 == null) || (!v0.isStateful())) {
            android.util.TypedValue v2 = androidx.appcompat.widget.ThemeUtils.getTypedValue();
            p6.getTheme().resolveAttribute(16842803, v2, 1);
            v3_0 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(p6, p7, v2.getFloat());
        } else {
            v3_0 = v0.getColorForState(androidx.appcompat.widget.ThemeUtils.DISABLED_STATE_SET, v0.getDefaultColor());
        }
        return v3_0;
    }

    public static int getThemeAttrColor(android.content.Context p3, int p4)
    {
        androidx.appcompat.widget.ThemeUtils.TEMP_ARRAY[0] = p4;
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(p3, 0, androidx.appcompat.widget.ThemeUtils.TEMP_ARRAY);
        try {
            Throwable v1_1 = v0.getColor(0, 0);
            v0.recycle();
            return v1_1;
        } catch (Throwable v1_2) {
            v0.recycle();
            throw v1_2;
        }
    }

    static int getThemeAttrColor(android.content.Context p3, int p4, float p5)
    {
        int v0 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(p3, p4);
        return androidx.core.graphics.ColorUtils.setAlphaComponent(v0, Math.round((((float) android.graphics.Color.alpha(v0)) * p5)));
    }

    public static android.content.res.ColorStateList getThemeAttrColorStateList(android.content.Context p3, int p4)
    {
        androidx.appcompat.widget.ThemeUtils.TEMP_ARRAY[0] = p4;
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(p3, 0, androidx.appcompat.widget.ThemeUtils.TEMP_ARRAY);
        try {
            Throwable v1_4 = v0.getColorStateList(0);
            v0.recycle();
            return v1_4;
        } catch (Throwable v1_1) {
            v0.recycle();
            throw v1_1;
        }
    }

    private static android.util.TypedValue getTypedValue()
    {
        android.util.TypedValue v0_1 = ((android.util.TypedValue) androidx.appcompat.widget.ThemeUtils.TL_TYPED_VALUE.get());
        if (v0_1 == null) {
            v0_1 = new android.util.TypedValue();
            androidx.appcompat.widget.ThemeUtils.TL_TYPED_VALUE.set(v0_1);
        }
        return v0_1;
    }
}
