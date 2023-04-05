package androidx.appcompat.view;
 class SupportMenuInflater$InflatedOnMenuItemClickListener implements android.view.MenuItem$OnMenuItemClickListener {
    private static final Class[] PARAM_TYPES;
    private reflect.Method mMethod;
    private Object mRealOwner;

    static SupportMenuInflater$InflatedOnMenuItemClickListener()
    {
        Class[] v0_1 = new Class[1];
        v0_1[0] = android.view.MenuItem;
        androidx.appcompat.view.SupportMenuInflater$InflatedOnMenuItemClickListener.PARAM_TYPES = v0_1;
        return;
    }

    public SupportMenuInflater$InflatedOnMenuItemClickListener(Object p6, String p7)
    {
        this.mRealOwner = p6;
        Class v0 = p6.getClass();
        try {
            this.mMethod = v0.getMethod(p7, androidx.appcompat.view.SupportMenuInflater$InflatedOnMenuItemClickListener.PARAM_TYPES);
            return;
        } catch (Exception v1) {
            android.view.InflateException v2_1 = new android.view.InflateException(new StringBuilder().append("Couldn\'t resolve menu item onClick handler ").append(p7).append(" in class ").append(v0.getName()).toString());
            v2_1.initCause(v1);
            throw v2_1;
        }
    }

    public boolean onMenuItemClick(android.view.MenuItem p7)
    {
        boolean v1_0 = 1;
        try {
            if (this.mMethod.getReturnType() != Boolean.TYPE) {
                reflect.Method v2_3 = this.mMethod;
                Object v3_3 = this.mRealOwner;
                Object[] v4_2 = new Object[1];
                v4_2[0] = p7;
                v2_3.invoke(v3_3, v4_2);
            } else {
                boolean v1_1 = this.mMethod;
                reflect.Method v2_1 = this.mRealOwner;
                Object v3_1 = new Object[1];
                v3_1[0] = p7;
                v1_0 = ((Boolean) v1_1.invoke(v2_1, v3_1)).booleanValue();
            }
        } catch (Exception v0) {
            throw new RuntimeException(v0);
        }
        return v1_0;
    }
}
