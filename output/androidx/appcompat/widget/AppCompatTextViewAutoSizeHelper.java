package androidx.appcompat.widget;
 class AppCompatTextViewAutoSizeHelper {
    private static final int DEFAULT_AUTO_SIZE_GRANULARITY_IN_PX = 1;
    private static final int DEFAULT_AUTO_SIZE_MAX_TEXT_SIZE_IN_SP = 112;
    private static final int DEFAULT_AUTO_SIZE_MIN_TEXT_SIZE_IN_SP = 12;
    private static final String TAG = "ACTVAutoSizeHelper";
    private static final android.graphics.RectF TEMP_RECTF = None;
    static final float UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE = 49024;
    private static final int VERY_WIDE = 1048576;
    private static java.util.concurrent.ConcurrentHashMap sTextViewMethodByNameCache;
    private float mAutoSizeMaxTextSizeInPx;
    private float mAutoSizeMinTextSizeInPx;
    private float mAutoSizeStepGranularityInPx;
    private int[] mAutoSizeTextSizesInPx;
    private int mAutoSizeTextType;
    private final android.content.Context mContext;
    private boolean mHasPresetAutoSizeValues;
    private boolean mNeedsAutoSizeText;
    private android.text.TextPaint mTempTextPaint;
    private final android.widget.TextView mTextView;

    static AppCompatTextViewAutoSizeHelper()
    {
        androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.TEMP_RECTF = new android.graphics.RectF();
        androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.sTextViewMethodByNameCache = new java.util.concurrent.ConcurrentHashMap();
        return;
    }

    AppCompatTextViewAutoSizeHelper(android.widget.TextView p3)
    {
        this.mAutoSizeTextType = 0;
        this.mNeedsAutoSizeText = 0;
        this.mAutoSizeStepGranularityInPx = -1082130432;
        this.mAutoSizeMinTextSizeInPx = -1082130432;
        this.mAutoSizeMaxTextSizeInPx = -1082130432;
        android.content.Context v0_3 = new int[0];
        this.mAutoSizeTextSizesInPx = v0_3;
        this.mHasPresetAutoSizeValues = 0;
        this.mTextView = p3;
        this.mContext = this.mTextView.getContext();
        return;
    }

    private int[] cleanupAutoSizePresetSizes(int[] p8)
    {
        int v3 = p8.length;
        if (v3 != 0) {
            java.util.Arrays.sort(p8);
            java.util.ArrayList v4_1 = new java.util.ArrayList();
            int v2_1 = 0;
            while (v2_1 < v3) {
                int v1 = p8[v2_1];
                if ((v1 > 0) && (java.util.Collections.binarySearch(v4_1, Integer.valueOf(v1)) < 0)) {
                    v4_1.add(Integer.valueOf(v1));
                }
                v2_1++;
            }
            if (v3 != v4_1.size()) {
                int v5 = v4_1.size();
                int[] v0 = new int[v5];
                int v2_0 = 0;
                while (v2_0 < v5) {
                    v0[v2_0] = ((Integer) v4_1.get(v2_0)).intValue();
                    v2_0++;
                }
                p8 = v0;
            }
        }
        return p8;
    }

    private void clearAutoSizeConfiguration()
    {
        this.mAutoSizeTextType = 0;
        this.mAutoSizeMinTextSizeInPx = -1082130432;
        this.mAutoSizeMaxTextSizeInPx = -1082130432;
        this.mAutoSizeStepGranularityInPx = -1082130432;
        int[] v0_1 = new int[0];
        this.mAutoSizeTextSizesInPx = v0_1;
        this.mNeedsAutoSizeText = 0;
        return;
    }

    private android.text.StaticLayout createStaticLayoutForMeasuring(CharSequence p6, android.text.Layout$Alignment p7, int p8, int p9)
    {
        android.text.TextDirectionHeuristic v1_1 = ((android.text.TextDirectionHeuristic) this.invokeAndReturnWithDefault(this.mTextView, "getTextDirectionHeuristic", android.text.TextDirectionHeuristics.FIRSTSTRONG_LTR));
        android.text.StaticLayout$Builder vtmp13 = android.text.StaticLayout$Builder.obtain(p6, 0, p6.length(), this.mTempTextPaint, p8).setAlignment(p7).setLineSpacing(this.mTextView.getLineSpacingExtra(), this.mTextView.getLineSpacingMultiplier()).setIncludePad(this.mTextView.getIncludeFontPadding()).setBreakStrategy(this.mTextView.getBreakStrategy()).setHyphenationFrequency(this.mTextView.getHyphenationFrequency());
        if (p9 == -1) {
            p9 = 2147483647;
        }
        return vtmp13.setMaxLines(p9).setTextDirection(v1_1).build();
    }

    private android.text.StaticLayout createStaticLayoutForMeasuringPre23(CharSequence p9, android.text.Layout$Alignment p10, int p11)
    {
        float v6_1;
        boolean v7_1;
        float v5_1;
        if (android.os.Build$VERSION.SDK_INT < 16) {
            v5_1 = ((Float) this.invokeAndReturnWithDefault(this.mTextView, "getLineSpacingMultiplier", Float.valueOf(1065353216))).floatValue();
            v6_1 = ((Float) this.invokeAndReturnWithDefault(this.mTextView, "getLineSpacingExtra", Float.valueOf(0))).floatValue();
            v7_1 = ((Boolean) this.invokeAndReturnWithDefault(this.mTextView, "getIncludeFontPadding", Boolean.valueOf(1))).booleanValue();
        } else {
            v5_1 = this.mTextView.getLineSpacingMultiplier();
            v6_1 = this.mTextView.getLineSpacingExtra();
            v7_1 = this.mTextView.getIncludeFontPadding();
        }
        return new android.text.StaticLayout(p9, this.mTempTextPaint, p11, p10, v5_1, v6_1, v7_1);
    }

    private int findLargestTextSizeWhichFits(android.graphics.RectF p8)
    {
        int v4 = this.mAutoSizeTextSizesInPx.length;
        if (v4 != 0) {
            int v0 = 0;
            int v2 = (0 + 1);
            int v1 = (v4 - 1);
            while (v2 <= v1) {
                int v3 = ((v2 + v1) / 2);
                if (!this.suggestedSizeFitsInSpace(this.mAutoSizeTextSizesInPx[v3], p8)) {
                    v1 = (v3 - 1);
                    v0 = v1;
                } else {
                    v0 = v2;
                    v2 = (v3 + 1);
                }
            }
            return this.mAutoSizeTextSizesInPx[v0];
        } else {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
    }

    private reflect.Method getTextViewMethod(String p6)
    {
        try {
            reflect.Method v1_1 = ((reflect.Method) androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.sTextViewMethodByNameCache.get(p6));
        } catch (Exception v0) {
            android.util.Log.w("ACTVAutoSizeHelper", new StringBuilder().append("Failed to retrieve TextView#").append(p6).append("() method").toString(), v0);
            v1_1 = 0;
            return v1_1;
        }
        if (v1_1 != null) {
            return v1_1;
        } else {
            Class[] v3_7 = new Class[0];
            v1_1 = android.widget.TextView.getDeclaredMethod(p6, v3_7);
            if (v1_1 == null) {
                return v1_1;
            } else {
                v1_1.setAccessible(1);
                androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.sTextViewMethodByNameCache.put(p6, v1_1);
                return v1_1;
            }
        }
    }

    private Object invokeAndReturnWithDefault(Object p8, String p9, Object p10)
    {
        int v1 = 0;
        try {
            String v4_3 = new Object[0];
            Object v3 = this.getTextViewMethod(p9).invoke(p8, v4_3);
        } catch (Exception v0) {
            v1 = 1;
            android.util.Log.w("ACTVAutoSizeHelper", new StringBuilder().append("Failed to invoke TextView#").append(p9).append("() method").toString(), v0);
            if (v3 != null) {
                return v3;
            } else {
                if (1 == 0) {
                    return v3;
                } else {
                    v3 = p10;
                    return v3;
                }
            }
        } catch (String v4_1) {
            if (v3 == null) {
                // Both branches of the condition point to the same code.
                // if (v1 == 0) {
                // }
            }
            throw v4_1;
        }
        if ((v3 != null) || (0 == 0)) {
            return v3;
        } else {
            v3 = p10;
            return v3;
        }
    }

    private void setRawTextSize(float p8)
    {
        if (p8 != this.mTextView.getPaint().getTextSize()) {
            this.mTextView.getPaint().setTextSize(p8);
            boolean v1 = 0;
            if (android.os.Build$VERSION.SDK_INT >= 18) {
                v1 = this.mTextView.isInLayout();
            }
            if (this.mTextView.getLayout() != null) {
                this.mNeedsAutoSizeText = 0;
                try {
                    reflect.Method v2 = this.getTextViewMethod("nullLayouts");
                } catch (Exception v0) {
                    android.util.Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", v0);
                    if (v1) {
                        this.mTextView.forceLayout();
                    } else {
                        this.mTextView.requestLayout();
                    }
                    this.mTextView.invalidate();
                }
                if (v2 == null) {
                } else {
                    Object[] v5_2 = new Object[0];
                    v2.invoke(this.mTextView, v5_2);
                }
            }
        }
        return;
    }

    private boolean setupAutoSizeText()
    {
        if ((!this.supportsAutoSizeText()) || (this.mAutoSizeTextType != 1)) {
            this.mNeedsAutoSizeText = 0;
        } else {
            if ((!this.mHasPresetAutoSizeValues) || (this.mAutoSizeTextSizesInPx.length == 0)) {
                int v1 = 1;
                float v2 = ((float) Math.round(this.mAutoSizeMinTextSizeInPx));
                while (Math.round((this.mAutoSizeStepGranularityInPx + v2)) <= Math.round(this.mAutoSizeMaxTextSizeInPx)) {
                    v1++;
                    v2 += this.mAutoSizeStepGranularityInPx;
                }
                int[] v0 = new int[v1];
                float v4 = this.mAutoSizeMinTextSizeInPx;
                int v3 = 0;
                while (v3 < v1) {
                    v0[v3] = Math.round(v4);
                    v4 += this.mAutoSizeStepGranularityInPx;
                    v3++;
                }
                this.mAutoSizeTextSizesInPx = this.cleanupAutoSizePresetSizes(v0);
            }
            this.mNeedsAutoSizeText = 1;
        }
        return this.mNeedsAutoSizeText;
    }

    private void setupAutoSizeUniformPresetSizes(android.content.res.TypedArray p5)
    {
        int v2 = p5.length();
        int[] v1 = new int[v2];
        if (v2 > 0) {
            int v0 = 0;
            while (v0 < v2) {
                v1[v0] = p5.getDimensionPixelSize(v0, -1);
                v0++;
            }
            this.mAutoSizeTextSizesInPx = this.cleanupAutoSizePresetSizes(v1);
            this.setupAutoSizeUniformPresetSizesConfiguration();
        }
        return;
    }

    private boolean setupAutoSizeUniformPresetSizesConfiguration()
    {
        boolean v1_9;
        int v0 = this.mAutoSizeTextSizesInPx.length;
        if (v0 <= 0) {
            v1_9 = 0;
        } else {
            v1_9 = 1;
        }
        this.mHasPresetAutoSizeValues = v1_9;
        if (this.mHasPresetAutoSizeValues) {
            this.mAutoSizeTextType = 1;
            this.mAutoSizeMinTextSizeInPx = ((float) this.mAutoSizeTextSizesInPx[0]);
            this.mAutoSizeMaxTextSizeInPx = ((float) this.mAutoSizeTextSizesInPx[(v0 - 1)]);
            this.mAutoSizeStepGranularityInPx = -1082130432;
        }
        return this.mHasPresetAutoSizeValues;
    }

    private boolean suggestedSizeFitsInSpace(int p12, android.graphics.RectF p13)
    {
        CharSequence v3 = this.mTextView.getText();
        android.text.method.TransformationMethod v4 = this.mTextView.getTransformationMethod();
        if (v4 != null) {
            CharSequence v5 = v4.getTransformation(v3, this.mTextView);
            if (v5 != null) {
                v3 = v5;
            }
        }
        int v2;
        if (android.os.Build$VERSION.SDK_INT < 16) {
            v2 = -1;
        } else {
            v2 = this.mTextView.getMaxLines();
        }
        if (this.mTempTextPaint != null) {
            this.mTempTextPaint.reset();
        } else {
            this.mTempTextPaint = new android.text.TextPaint();
        }
        android.text.StaticLayout v1;
        this.mTempTextPaint.set(this.mTextView.getPaint());
        this.mTempTextPaint.setTextSize(((float) p12));
        android.text.Layout$Alignment v0_1 = ((android.text.Layout$Alignment) this.invokeAndReturnWithDefault(this.mTextView, "getLayoutAlignment", android.text.Layout$Alignment.ALIGN_NORMAL));
        if (android.os.Build$VERSION.SDK_INT < 23) {
            v1 = this.createStaticLayoutForMeasuringPre23(v3, v0_1, Math.round(p13.right));
        } else {
            v1 = this.createStaticLayoutForMeasuring(v3, v0_1, Math.round(p13.right), v2);
        }
        if ((v2 == -1) || ((v1.getLineCount() <= v2) && (v1.getLineEnd((v1.getLineCount() - 1)) == v3.length()))) {
            if (((float) v1.getHeight()) <= p13.bottom) {
                int v6_8 = 1;
            } else {
                v6_8 = 0;
            }
        } else {
            v6_8 = 0;
        }
        return v6_8;
    }

    private boolean supportsAutoSizeText()
    {
        int v0_2;
        if ((this.mTextView instanceof androidx.appcompat.widget.AppCompatEditText)) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    private void validateAndSetAutoSizeTextTypeUniformConfiguration(float p4, float p5, float p6)
    {
        if (p4 > 0) {
            if (p5 > p4) {
                if (p6 > 0) {
                    this.mAutoSizeTextType = 1;
                    this.mAutoSizeMinTextSizeInPx = p4;
                    this.mAutoSizeMaxTextSizeInPx = p5;
                    this.mAutoSizeStepGranularityInPx = p6;
                    this.mHasPresetAutoSizeValues = 0;
                    return;
                } else {
                    throw new IllegalArgumentException(new StringBuilder().append("The auto-size step granularity (").append(p6).append("px) is less or equal to (0px)").toString());
                }
            } else {
                throw new IllegalArgumentException(new StringBuilder().append("Maximum auto-size text size (").append(p5).append("px) is less or equal to minimum auto-size ").append("text size (").append(p4).append("px)").toString());
            }
        } else {
            throw new IllegalArgumentException(new StringBuilder().append("Minimum auto-size text size (").append(p4).append("px) is less or equal to (0px)").toString());
        }
    }

    void autoSizeText()
    {
        if (this.isAutoSizeEnabled()) {
            if (this.mNeedsAutoSizeText) {
                if ((this.mTextView.getMeasuredHeight() <= 0) || (this.mTextView.getMeasuredWidth() <= 0)) {
                    return;
                } else {
                    int v1;
                    if (!((Boolean) this.invokeAndReturnWithDefault(this.mTextView, "getHorizontallyScrolling", Boolean.valueOf(0))).booleanValue()) {
                        v1 = ((this.mTextView.getMeasuredWidth() - this.mTextView.getTotalPaddingLeft()) - this.mTextView.getTotalPaddingRight());
                    } else {
                        v1 = 1048576;
                    }
                    int v0 = ((this.mTextView.getHeight() - this.mTextView.getCompoundPaddingBottom()) - this.mTextView.getCompoundPaddingTop());
                    if ((v1 <= 0) || (v0 <= 0)) {
                        return;
                    } else {
                        androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.TEMP_RECTF.setEmpty();
                        androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.TEMP_RECTF.right = ((float) v1);
                        androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.TEMP_RECTF.bottom = ((float) v0);
                        float v3 = ((float) this.findLargestTextSizeWhichFits(androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper.TEMP_RECTF));
                        if (v3 != this.mTextView.getTextSize()) {
                            this.setTextSizeInternal(0, v3);
                        }
                    }
                }
            }
            this.mNeedsAutoSizeText = 1;
        }
        return;
    }

    int getAutoSizeMaxTextSize()
    {
        return Math.round(this.mAutoSizeMaxTextSizeInPx);
    }

    int getAutoSizeMinTextSize()
    {
        return Math.round(this.mAutoSizeMinTextSizeInPx);
    }

    int getAutoSizeStepGranularity()
    {
        return Math.round(this.mAutoSizeStepGranularityInPx);
    }

    int[] getAutoSizeTextAvailableSizes()
    {
        return this.mAutoSizeTextSizesInPx;
    }

    int getAutoSizeTextType()
    {
        return this.mAutoSizeTextType;
    }

    boolean isAutoSizeEnabled()
    {
        if ((!this.supportsAutoSizeText()) || (this.mAutoSizeTextType == 0)) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    void loadFromAttributes(android.util.AttributeSet p13, int p14)
    {
        float v2 = -1082130432;
        float v1 = -1082130432;
        int v4 = -1082130432;
        android.content.res.TypedArray v0 = this.mContext.obtainStyledAttributes(p13, androidx.appcompat.R$styleable.AppCompatTextView, p14, 0);
        if (v0.hasValue(androidx.appcompat.R$styleable.AppCompatTextView_autoSizeTextType)) {
            this.mAutoSizeTextType = v0.getInt(androidx.appcompat.R$styleable.AppCompatTextView_autoSizeTextType, 0);
        }
        if (v0.hasValue(androidx.appcompat.R$styleable.AppCompatTextView_autoSizeStepGranularity)) {
            v4 = v0.getDimension(androidx.appcompat.R$styleable.AppCompatTextView_autoSizeStepGranularity, -1082130432);
        }
        if (v0.hasValue(androidx.appcompat.R$styleable.AppCompatTextView_autoSizeMinTextSize)) {
            v2 = v0.getDimension(androidx.appcompat.R$styleable.AppCompatTextView_autoSizeMinTextSize, -1082130432);
        }
        if (v0.hasValue(androidx.appcompat.R$styleable.AppCompatTextView_autoSizeMaxTextSize)) {
            v1 = v0.getDimension(androidx.appcompat.R$styleable.AppCompatTextView_autoSizeMaxTextSize, -1082130432);
        }
        if (v0.hasValue(androidx.appcompat.R$styleable.AppCompatTextView_autoSizePresetSizes)) {
            int v5 = v0.getResourceId(androidx.appcompat.R$styleable.AppCompatTextView_autoSizePresetSizes, 0);
            if (v5 > 0) {
                android.content.res.TypedArray v3 = v0.getResources().obtainTypedArray(v5);
                this.setupAutoSizeUniformPresetSizes(v3);
                v3.recycle();
            }
        }
        v0.recycle();
        if (!this.supportsAutoSizeText()) {
            this.mAutoSizeTextType = 0;
        } else {
            if (this.mAutoSizeTextType == 1) {
                if (!this.mHasPresetAutoSizeValues) {
                    android.util.DisplayMetrics v6 = this.mContext.getResources().getDisplayMetrics();
                    if (v2 == -1082130432) {
                        v2 = android.util.TypedValue.applyDimension(2, 1094713344, v6);
                    }
                    if (v1 == -1082130432) {
                        v1 = android.util.TypedValue.applyDimension(2, 1121976320, v6);
                    }
                    if (v4 == -1082130432) {
                        v4 = 1065353216;
                    }
                    this.validateAndSetAutoSizeTextTypeUniformConfiguration(v2, v1, v4);
                }
                this.setupAutoSizeText();
            }
        }
        return;
    }

    void setAutoSizeTextTypeUniformWithConfiguration(int p6, int p7, int p8, int p9)
    {
        if (this.supportsAutoSizeText()) {
            android.util.DisplayMetrics v3 = this.mContext.getResources().getDisplayMetrics();
            this.validateAndSetAutoSizeTextTypeUniformConfiguration(android.util.TypedValue.applyDimension(p9, ((float) p6), v3), android.util.TypedValue.applyDimension(p9, ((float) p7), v3), android.util.TypedValue.applyDimension(p9, ((float) p8), v3));
            if (this.setupAutoSizeText()) {
                this.autoSizeText();
            }
        }
        return;
    }

    void setAutoSizeTextTypeUniformWithPresetSizes(int[] p8, int p9)
    {
        if (this.supportsAutoSizeText()) {
            int v3 = p8.length;
            if (v3 <= 0) {
                this.mHasPresetAutoSizeValues = 0;
            } else {
                int[] v2 = new int[v3];
                if (p9 != 0) {
                    android.util.DisplayMetrics vtmp4 = this.mContext.getResources().getDisplayMetrics();
                    int v1 = 0;
                    while (v1 < v3) {
                        v2[v1] = Math.round(android.util.TypedValue.applyDimension(p9, ((float) p8[v1]), vtmp4));
                        v1++;
                    }
                } else {
                    v2 = java.util.Arrays.copyOf(p8, v3);
                }
                this.mAutoSizeTextSizesInPx = this.cleanupAutoSizePresetSizes(v2);
                if (!this.setupAutoSizeUniformPresetSizesConfiguration()) {
                    throw new IllegalArgumentException(new StringBuilder().append("None of the preset sizes is valid: ").append(java.util.Arrays.toString(p8)).toString());
                }
            }
            if (this.setupAutoSizeText()) {
                this.autoSizeText();
            }
        }
        return;
    }

    void setAutoSizeTextTypeWithDefaults(int p7)
    {
        if (this.supportsAutoSizeText()) {
            switch (p7) {
                case 0:
                    this.clearAutoSizeConfiguration();
                    break;
                case 1:
                    android.util.DisplayMetrics v2 = this.mContext.getResources().getDisplayMetrics();
                    this.validateAndSetAutoSizeTextTypeUniformConfiguration(android.util.TypedValue.applyDimension(2, 1094713344, v2), android.util.TypedValue.applyDimension(2, 1121976320, v2), 1065353216);
                    if (this.setupAutoSizeText()) {
                        this.autoSizeText();
                    }
                    break;
                default:
                    throw new IllegalArgumentException(new StringBuilder().append("Unknown auto-size text type: ").append(p7).toString());
            }
        }
        return;
    }

    void setTextSizeInternal(int p3, float p4)
    {
        android.content.res.Resources v0;
        if (this.mContext != null) {
            v0 = this.mContext.getResources();
        } else {
            v0 = android.content.res.Resources.getSystem();
        }
        this.setRawTextSize(android.util.TypedValue.applyDimension(p3, p4, v0.getDisplayMetrics()));
        return;
    }
}
