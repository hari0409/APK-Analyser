package androidx.appcompat.app;
public class AppCompatViewInflater {
    private static final String LOG_TAG = "AppCompatViewInflater";
    private static final String[] sClassPrefixList;
    private static final java.util.Map sConstructorMap;
    private static final Class[] sConstructorSignature;
    private static final int[] sOnClickAttrs;
    private final Object[] mConstructorArgs;

    static AppCompatViewInflater()
    {
        androidx.collection.ArrayMap v0_4 = new Class[2];
        v0_4[0] = android.content.Context;
        v0_4[1] = android.util.AttributeSet;
        androidx.appcompat.app.AppCompatViewInflater.sConstructorSignature = v0_4;
        androidx.collection.ArrayMap v0_5 = new int[1];
        v0_5[0] = 16843375;
        androidx.appcompat.app.AppCompatViewInflater.sOnClickAttrs = v0_5;
        androidx.collection.ArrayMap v0_1 = new String[3];
        v0_1[0] = "android.widget.";
        v0_1[1] = "android.view.";
        v0_1[2] = "android.webkit.";
        androidx.appcompat.app.AppCompatViewInflater.sClassPrefixList = v0_1;
        androidx.appcompat.app.AppCompatViewInflater.sConstructorMap = new androidx.collection.ArrayMap();
        return;
    }

    public AppCompatViewInflater()
    {
        Object[] v0_1 = new Object[2];
        this.mConstructorArgs = v0_1;
        return;
    }

    private void checkOnClickListener(android.view.View p6, android.util.AttributeSet p7)
    {
        android.content.Context v1 = p6.getContext();
        if (((v1 instanceof android.content.ContextWrapper)) && ((android.os.Build$VERSION.SDK_INT < 15) || (androidx.core.view.ViewCompat.hasOnClickListeners(p6)))) {
            android.content.res.TypedArray v0 = v1.obtainStyledAttributes(p7, androidx.appcompat.app.AppCompatViewInflater.sOnClickAttrs);
            String v2 = v0.getString(0);
            if (v2 != null) {
                p6.setOnClickListener(new androidx.appcompat.app.AppCompatViewInflater$DeclaredOnClickListener(p6, v2));
            }
            v0.recycle();
        }
        return;
    }

    private android.view.View createViewByPrefix(android.content.Context p6, String p7, String p8)
    {
        reflect.Constructor v1_1 = ((reflect.Constructor) androidx.appcompat.app.AppCompatViewInflater.sConstructorMap.get(p7));
        try {
            if (v1_1 != null) {
                v1_1.setAccessible(1);
                java.util.Map v3_11 = ((android.view.View) v1_1.newInstance(this.mConstructorArgs));
            } else {
                java.util.Map v3_4;
                Class v4_1 = p6.getClassLoader();
                if (p8 == null) {
                    v3_4 = p7;
                } else {
                    v3_4 = new StringBuilder().append(p8).append(p7).toString();
                }
                v1_1 = v4_1.loadClass(v3_4).asSubclass(android.view.View).getConstructor(androidx.appcompat.app.AppCompatViewInflater.sConstructorSignature);
                androidx.appcompat.app.AppCompatViewInflater.sConstructorMap.put(p7, v1_1);
            }
        } catch (Exception v2) {
            v3_11 = 0;
        }
        return v3_11;
    }

    private android.view.View createViewFromTag(android.content.Context p9, String p10, android.util.AttributeSet p11)
    {
        if (p10.equals("view")) {
            p10 = p11.getAttributeValue(0, "class");
        }
        try {
            int v2;
            this.mConstructorArgs[0] = p9;
            this.mConstructorArgs[1] = p11;
        } catch (Object[] v4_11) {
            this.mConstructorArgs[0] = 0;
            this.mConstructorArgs[1] = 0;
            throw v4_11;
        } catch (Exception v0) {
            this.mConstructorArgs[0] = 0;
            this.mConstructorArgs[1] = 0;
            v2 = 0;
            return v2;
        }
        if (-1 != p10.indexOf(46)) {
            v2 = this.createViewByPrefix(p9, p10, 0);
            this.mConstructorArgs[0] = 0;
            this.mConstructorArgs[1] = 0;
            return v2;
        } else {
            int v1 = 0;
            while (v1 < androidx.appcompat.app.AppCompatViewInflater.sClassPrefixList.length) {
                v2 = this.createViewByPrefix(p9, p10, androidx.appcompat.app.AppCompatViewInflater.sClassPrefixList[v1]);
                if (v2 == 0) {
                    v1++;
                } else {
                    this.mConstructorArgs[0] = 0;
                    this.mConstructorArgs[1] = 0;
                    return v2;
                }
            }
            this.mConstructorArgs[0] = 0;
            this.mConstructorArgs[1] = 0;
            v2 = 0;
            return v2;
        }
    }

    private static android.content.Context themifyContext(android.content.Context p5, android.util.AttributeSet p6, boolean p7, boolean p8)
    {
        android.content.res.TypedArray v0 = p5.obtainStyledAttributes(p6, androidx.appcompat.R$styleable.View, 0, 0);
        int v2 = 0;
        if (p7) {
            v2 = v0.getResourceId(androidx.appcompat.R$styleable.View_android_theme, 0);
        }
        if ((p8) && (v2 == 0)) {
            v2 = v0.getResourceId(androidx.appcompat.R$styleable.View_theme, 0);
            if (v2 != 0) {
                android.util.Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
            }
        }
        v0.recycle();
        if ((v2 != 0) && ((!(p5 instanceof androidx.appcompat.view.ContextThemeWrapper)) || (((androidx.appcompat.view.ContextThemeWrapper) p5).getThemeResId() != v2))) {
            p5 = new androidx.appcompat.view.ContextThemeWrapper(p5, v2);
        }
        return p5;
    }

    private void verifyNotNull(android.view.View p4, String p5)
    {
        if (p4 != null) {
            return;
        } else {
            throw new IllegalStateException(new StringBuilder().append(this.getClass().getName()).append(" asked to inflate view for <").append(p5).append(">, but returned null").toString());
        }
    }

    protected androidx.appcompat.widget.AppCompatAutoCompleteTextView createAutoCompleteTextView(android.content.Context p2, android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.AppCompatAutoCompleteTextView(p2, p3);
    }

    protected androidx.appcompat.widget.AppCompatButton createButton(android.content.Context p2, android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.AppCompatButton(p2, p3);
    }

    protected androidx.appcompat.widget.AppCompatCheckBox createCheckBox(android.content.Context p2, android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.AppCompatCheckBox(p2, p3);
    }

    protected androidx.appcompat.widget.AppCompatCheckedTextView createCheckedTextView(android.content.Context p2, android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.AppCompatCheckedTextView(p2, p3);
    }

    protected androidx.appcompat.widget.AppCompatEditText createEditText(android.content.Context p2, android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.AppCompatEditText(p2, p3);
    }

    protected androidx.appcompat.widget.AppCompatImageButton createImageButton(android.content.Context p2, android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.AppCompatImageButton(p2, p3);
    }

    protected androidx.appcompat.widget.AppCompatImageView createImageView(android.content.Context p2, android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.AppCompatImageView(p2, p3);
    }

    protected androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView createMultiAutoCompleteTextView(android.content.Context p2, android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView(p2, p3);
    }

    protected androidx.appcompat.widget.AppCompatRadioButton createRadioButton(android.content.Context p2, android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.AppCompatRadioButton(p2, p3);
    }

    protected androidx.appcompat.widget.AppCompatRatingBar createRatingBar(android.content.Context p2, android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.AppCompatRatingBar(p2, p3);
    }

    protected androidx.appcompat.widget.AppCompatSeekBar createSeekBar(android.content.Context p2, android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.AppCompatSeekBar(p2, p3);
    }

    protected androidx.appcompat.widget.AppCompatSpinner createSpinner(android.content.Context p2, android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.AppCompatSpinner(p2, p3);
    }

    protected androidx.appcompat.widget.AppCompatTextView createTextView(android.content.Context p2, android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.AppCompatTextView(p2, p3);
    }

    protected android.view.View createView(android.content.Context p2, String p3, android.util.AttributeSet p4)
    {
        return 0;
    }

    final android.view.View createView(android.view.View p5, String p6, android.content.Context p7, android.util.AttributeSet p8, boolean p9, boolean p10, boolean p11, boolean p12)
    {
        if ((p9) && (p5 != null)) {
            p7 = p5.getContext();
        }
        if ((p10) || (p11)) {
            p7 = androidx.appcompat.app.AppCompatViewInflater.themifyContext(p7, p8, p10, p11);
        }
        if (p12) {
            p7 = androidx.appcompat.widget.TintContextWrapper.wrap(p7);
        }
        int v2 = -1;
        switch (p6.hashCode()) {
            case -1946472170:
                if (!p6.equals("RatingBar")) {
                } else {
                    v2 = 11;
                }
                break;
            case -1455429095:
                if (!p6.equals("CheckedTextView")) {
                } else {
                    v2 = 8;
                }
                break;
            case -1346021293:
                if (!p6.equals("MultiAutoCompleteTextView")) {
                } else {
                    v2 = 10;
                }
                break;
            case -938935918:
                if (!p6.equals("TextView")) {
                } else {
                    v2 = 0;
                }
                break;
            case -937446323:
                if (!p6.equals("ImageButton")) {
                } else {
                    v2 = 5;
                }
                break;
            case -658531749:
                if (!p6.equals("SeekBar")) {
                } else {
                    v2 = 12;
                }
                break;
            case -339785223:
                if (!p6.equals("Spinner")) {
                } else {
                    v2 = 4;
                }
                break;
            case 776382189:
                if (!p6.equals("RadioButton")) {
                } else {
                    v2 = 7;
                }
                break;
            case 1125864064:
                if (!p6.equals("ImageView")) {
                } else {
                    v2 = 1;
                }
                break;
            case 1413872058:
                if (!p6.equals("AutoCompleteTextView")) {
                } else {
                    v2 = 9;
                }
                break;
            case 1601505219:
                if (!p6.equals("CheckBox")) {
                } else {
                    v2 = 6;
                }
                break;
            case 1666676343:
                if (!p6.equals("EditText")) {
                } else {
                    v2 = 3;
                }
                break;
            case 2001146706:
                if (!p6.equals("Button")) {
                } else {
                    v2 = 2;
                }
                break;
        }
        android.view.View v1;
        switch (v2) {
            case 0:
                v1 = this.createTextView(p7, p8);
                this.verifyNotNull(v1, p6);
                break;
            case 1:
                v1 = this.createImageView(p7, p8);
                this.verifyNotNull(v1, p6);
                break;
            case 2:
                v1 = this.createButton(p7, p8);
                this.verifyNotNull(v1, p6);
                break;
            case 3:
                v1 = this.createEditText(p7, p8);
                this.verifyNotNull(v1, p6);
                break;
            case 4:
                v1 = this.createSpinner(p7, p8);
                this.verifyNotNull(v1, p6);
                break;
            case 5:
                v1 = this.createImageButton(p7, p8);
                this.verifyNotNull(v1, p6);
                break;
            case 6:
                v1 = this.createCheckBox(p7, p8);
                this.verifyNotNull(v1, p6);
                break;
            case 7:
                v1 = this.createRadioButton(p7, p8);
                this.verifyNotNull(v1, p6);
                break;
            case 8:
                v1 = this.createCheckedTextView(p7, p8);
                this.verifyNotNull(v1, p6);
                break;
            case 9:
                v1 = this.createAutoCompleteTextView(p7, p8);
                this.verifyNotNull(v1, p6);
                break;
            case 10:
                v1 = this.createMultiAutoCompleteTextView(p7, p8);
                this.verifyNotNull(v1, p6);
                break;
            case 11:
                v1 = this.createRatingBar(p7, p8);
                this.verifyNotNull(v1, p6);
                break;
            case 12:
                v1 = this.createSeekBar(p7, p8);
                this.verifyNotNull(v1, p6);
                break;
            default:
                v1 = this.createView(p7, p6, p8);
        }
        if ((v1 == null) && (p7 != p7)) {
            v1 = this.createViewFromTag(p7, p6, p8);
        }
        if (v1 != null) {
            this.checkOnClickListener(v1, p8);
        }
        return v1;
    }
}
