package com.afwsamples.testdpc.profilepolicy.delegation;
 class DelegationScopesArrayAdapter extends android.widget.ArrayAdapter {
    private static final String DELEGATION_SECURITY_LOGGING = "delegation-security-logging";

    public DelegationScopesArrayAdapter(android.content.Context p1, int p2, java.util.List p3)
    {
        super(p1, p2, p3);
        return;
    }

    public android.view.View getView(int p7, android.view.View p8, android.view.ViewGroup p9)
    {
        android.widget.CheckBox v1_1;
        int v2_0 = 0;
        if ((p8 != null) && ((p8.getTag() instanceof android.widget.CheckBox))) {
            v1_1 = ((android.widget.CheckBox) p8.getTag());
        } else {
            p8 = android.view.LayoutInflater.from(this.getContext()).inflate(2131427375, p9, 0);
            v1_1 = ((android.widget.CheckBox) p8.findViewById(2131296362));
            p8.setTag(v1_1);
        }
        com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope v0_1 = ((com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope) this.getItem(p7));
        v1_1.setChecked(v0_1.granted);
        boolean v4_1 = v0_1.scope;
        switch (v4_1.hashCode()) {
            case -1611329117:
                if (!v4_1.equals("delegation-permission-grant")) {
                    v2_0 = -1;
                } else {
                    v2_0 = 3;
                }
                break;
            case -1446212504:
                if (!v4_1.equals("delegation-cert-selection")) {
                } else {
                    v2_0 = 8;
                }
                break;
            case -676074840:
                if (!v4_1.equals("delegation-enable-system-app")) {
                } else {
                    v2_0 = 5;
                }
                break;
            case -335242152:
                if (!v4_1.equals("delegation-app-restrictions")) {
                } else {
                    v2_0 = 1;
                }
                break;
            case 1043879963:
                if (!v4_1.equals("delegation-network-logging")) {
                } else {
                    v2_0 = 6;
                }
                break;
            case 1381081341:
                if (!v4_1.equals("delegation-block-uninstall")) {
                } else {
                    v2_0 = 2;
                }
                break;
            case 1489157136:
                if (!v4_1.equals("delegation-package-access")) {
                } else {
                    v2_0 = 4;
                }
                break;
            case 1703102327:
                if (!v4_1.equals("delegation-cert-install")) {
                } else {
                }
                break;
            case 1751462871:
                if (!v4_1.equals("delegation-security-logging")) {
                } else {
                    v2_0 = 7;
                }
                break;
            default:
        }
        switch (v2_0) {
            case 0:
                v1_1.setText(2131689681);
                break;
            case 1:
                v1_1.setText(2131689679);
                break;
            case 2:
                v1_1.setText(2131689680);
                break;
            case 3:
                v1_1.setText(2131689688);
                break;
            case 4:
                v1_1.setText(2131689687);
                break;
            case 5:
                v1_1.setText(2131689683);
                break;
            case 6:
                v1_1.setText(2131689686);
                break;
            case 7:
                v1_1.setText(2131689690);
                break;
            case 8:
                v1_1.setText(2131689682);
                break;
        }
        return p8;
    }
}
