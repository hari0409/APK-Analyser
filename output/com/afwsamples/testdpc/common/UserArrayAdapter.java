package com.afwsamples.testdpc.common;
public class UserArrayAdapter extends android.widget.ArrayAdapter {
    private static final String TAG = "UserArrayAdapter";
    private android.content.res.Resources mResources;
    private android.os.UserManager mUserManager;

    public UserArrayAdapter(android.content.Context p2, int p3, java.util.List p4)
    {
        super(p2, p3, p4);
        super.mUserManager = ((android.os.UserManager) p2.getSystemService(android.os.UserManager));
        super.mResources = p2.getResources();
        return;
    }

    public android.view.View getView(int p10, android.view.View p11, android.view.ViewGroup p12)
    {
        if (p11 == null) {
            p11 = android.view.LayoutInflater.from(this.getContext()).inflate(2131427513, p12, 0);
        }
        android.widget.TextView v0_1 = ((android.widget.TextView) p11.findViewById(2131296722));
        android.content.res.Resources v2_0 = this.mResources;
        Object[] v4 = new Object[1];
        v4[0] = Long.valueOf(this.mUserManager.getSerialNumberForUser(((android.os.UserHandle) this.getItem(p10))));
        v0_1.setText(v2_0.getString(2131690368, v4));
        return p11;
    }
}
