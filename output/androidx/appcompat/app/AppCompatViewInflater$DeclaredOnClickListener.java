package androidx.appcompat.app;
 class AppCompatViewInflater$DeclaredOnClickListener implements android.view.View$OnClickListener {
    private final android.view.View mHostView;
    private final String mMethodName;
    private android.content.Context mResolvedContext;
    private reflect.Method mResolvedMethod;

    public AppCompatViewInflater$DeclaredOnClickListener(android.view.View p1, String p2)
    {
        this.mHostView = p1;
        this.mMethodName = p2;
        return;
    }

    private void resolveMethod(android.content.Context p9, String p10)
    {
        while (p9 != 0) {
            try {
                if (!p9.isRestricted()) {
                    IllegalStateException v3_8 = p9.getClass();
                    String v4_14 = this.mMethodName;
                    Class v5_7 = new Class[1];
                    v5_7[0] = android.view.View;
                    reflect.Method v2 = v3_8.getMethod(v4_14, v5_7);
                    if (v2 != null) {
                        this.mResolvedMethod = v2;
                        this.mResolvedContext = p9;
                        return;
                    }
                }
                if (!(p9 instanceof android.content.ContextWrapper)) {
                    p9 = 0;
                } else {
                    p9 = ((android.content.ContextWrapper) p9).getBaseContext();
                }
            } catch (IllegalStateException v3) {
            }
        }
        String v1;
        int v0 = this.mHostView.getId();
        if (v0 != -1) {
            v1 = new StringBuilder().append(" with id \'").append(this.mHostView.getContext().getResources().getResourceEntryName(v0)).append("\'").toString();
        } else {
            v1 = "";
        }
        throw new IllegalStateException(new StringBuilder().append("Could not find method ").append(this.mMethodName).append("(View) in a parent or ancestor Context for android:onClick ").append("attribute defined on view ").append(this.mHostView.getClass()).append(v1).toString());
    }

    public void onClick(android.view.View p6)
    {
        if (this.mResolvedMethod == null) {
            this.resolveMethod(this.mHostView.getContext(), this.mMethodName);
        }
        try {
            IllegalStateException v1_7 = this.mResolvedMethod;
            String v2_3 = this.mResolvedContext;
            Object[] v3_0 = new Object[1];
            v3_0[0] = p6;
            v1_7.invoke(v2_3, v3_0);
            return;
        } catch (reflect.InvocationTargetException v0_1) {
            throw new IllegalStateException("Could not execute non-public method for android:onClick", v0_1);
        } catch (reflect.InvocationTargetException v0_0) {
            throw new IllegalStateException("Could not execute method for android:onClick", v0_0);
        }
    }
}
