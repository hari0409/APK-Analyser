package androidx.appcompat.widget;
 class SearchView$AutoCompleteTextViewReflector {
    private reflect.Method doAfterTextChanged;
    private reflect.Method doBeforeTextChanged;
    private reflect.Method ensureImeVisible;
    private reflect.Method showSoftInputUnchecked;

    SearchView$AutoCompleteTextViewReflector()
    {
        try {
            Class[] v2_5 = new Class[0];
            this.doBeforeTextChanged = android.widget.AutoCompleteTextView.getDeclaredMethod("doBeforeTextChanged", v2_5);
            this.doBeforeTextChanged.setAccessible(1);
            try {
                Class[] v2_1 = new Class[0];
                this.doAfterTextChanged = android.widget.AutoCompleteTextView.getDeclaredMethod("doAfterTextChanged", v2_1);
                this.doAfterTextChanged.setAccessible(1);
                try {
                    Class[] v2_3 = new Class[1];
                    v2_3[0] = Boolean.TYPE;
                    this.ensureImeVisible = android.widget.AutoCompleteTextView.getMethod("ensureImeVisible", v2_3);
                    this.ensureImeVisible.setAccessible(1);
                } catch (NoSuchMethodException v0) {
                }
                return;
            } catch (NoSuchMethodException v0) {
            }
        } catch (NoSuchMethodException v0) {
        }
    }

    void doAfterTextChanged(android.widget.AutoCompleteTextView p3)
    {
        if (this.doAfterTextChanged != null) {
            try {
                Object[] v1_1 = new Object[0];
                this.doAfterTextChanged.invoke(p3, v1_1);
            } catch (Exception v0) {
            }
        }
        return;
    }

    void doBeforeTextChanged(android.widget.AutoCompleteTextView p3)
    {
        if (this.doBeforeTextChanged != null) {
            try {
                Object[] v1_1 = new Object[0];
                this.doBeforeTextChanged.invoke(p3, v1_1);
            } catch (Exception v0) {
            }
        }
        return;
    }

    void ensureImeVisible(android.widget.AutoCompleteTextView p5, boolean p6)
    {
        if (this.ensureImeVisible != null) {
            try {
                Exception v0_1 = this.ensureImeVisible;
                Object[] v1_1 = new Object[1];
                v1_1[0] = Boolean.valueOf(p6);
                v0_1.invoke(p5, v1_1);
            } catch (Exception v0) {
            }
        }
        return;
    }
}
