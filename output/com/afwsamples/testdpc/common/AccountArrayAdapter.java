package com.afwsamples.testdpc.common;
public class AccountArrayAdapter extends android.widget.ArrayAdapter {
    private static final String TAG = "AccountArrayAdapter";
    private java.util.Map mAuthenticatorMap;
    private android.content.pm.PackageManager mPackageManager;

    public AccountArrayAdapter(android.content.Context p8, int p9, java.util.List p10)
    {
        super(p8, p9, p10);
        super.mPackageManager = p8.getPackageManager();
        super.mAuthenticatorMap = new java.util.HashMap();
        android.accounts.AuthenticatorDescription[] v3 = android.accounts.AccountManager.get(p8).getAuthenticatorTypes();
        int v4 = v3.length;
        int v2_0 = 0;
        while (v2_0 < v4) {
            android.accounts.AuthenticatorDescription v1 = v3[v2_0];
            super.mAuthenticatorMap.put(v1.type, v1);
            v2_0++;
        }
        return;
    }

    public android.view.View getView(int p9, android.view.View p10, android.view.ViewGroup p11)
    {
        if (p10 == null) {
            p10 = android.view.LayoutInflater.from(this.getContext()).inflate(2131427356, p11, 0);
        }
        android.accounts.Account v0_1 = ((android.accounts.Account) this.getItem(p9));
        android.accounts.AuthenticatorDescription v2_1 = ((android.accounts.AuthenticatorDescription) this.mAuthenticatorMap.get(v0_1.type));
        android.widget.TextView v1_1 = ((android.widget.TextView) p10.findViewById(2131296274));
        ((android.widget.ImageView) p10.findViewById(2131296275)).setImageDrawable(this.mPackageManager.getDrawable(v2_1.packageName, v2_1.iconId, 0));
        v1_1.setText(v0_1.name);
        return p10;
    }
}
