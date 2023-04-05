package com.afwsamples.testdpc.common.preference;
public class DpcPreferenceHelper {
    public static final int ADMIN_ANY = 15;
    public static final int ADMIN_BYOD_PROFILE_OWNER = 4;
    public static final int ADMIN_DEFAULT = 14;
    public static final int ADMIN_DEVICE_OWNER = 2;
    public static final int ADMIN_NONE = 1;
    public static final int ADMIN_NOT_NONE = 14;
    public static final int ADMIN_ORG_OWNED_PROFILE_OWNER = 8;
    public static final int ADMIN_PROFILE_OWNER = 12;
    public static final int NO_CUSTOM_CONSTRAINT = 0;
    private static final int NUM_ADMIN_KINDS = 0;
    private static final int NUM_USER_KINDS = 0;
    public static final int USER_ANY = 7;
    public static final int USER_DEFAULT = 7;
    public static final int USER_MANAGED_PROFILE = 4;
    public static final int USER_NOT_MANAGED_PROFILE = 3;
    public static final int USER_NOT_PRIMARY_USER = 6;
    public static final int USER_NOT_SECONDARY_USER = 5;
    public static final int USER_PRIMARY_USER = 1;
    public static final int USER_SECONDARY_USER = 2;
    private int mAdminConstraint;
    private CharSequence mConstraintViolationSummary;
    private android.content.Context mContext;
    private java.util.List mCustomConstraints;
    private String mDelegationConstraint;
    private int mMinSdkVersion;
    private androidx.preference.Preference mPreference;
    private int mUserConstraint;

    static DpcPreferenceHelper()
    {
        com.afwsamples.testdpc.common.preference.DpcPreferenceHelper.NUM_ADMIN_KINDS = Integer.bitCount(15);
        com.afwsamples.testdpc.common.preference.DpcPreferenceHelper.NUM_USER_KINDS = Integer.bitCount(7);
        return;
    }

    public DpcPreferenceHelper(android.content.Context p4, androidx.preference.Preference p5, android.util.AttributeSet p6)
    {
        this.mConstraintViolationSummary = 0;
        this.mCustomConstraints = new java.util.ArrayList();
        this.mContext = p4;
        this.mPreference = p5;
        android.content.res.TypedArray v0 = p4.obtainStyledAttributes(p6, com.afwsamples.testdpc.R$styleable.DpcPreference);
        this.mMinSdkVersion = v0.getInt(2, 0);
        if (p6 == null) {
            this.mMinSdkVersion = 21;
        }
        if (this.mMinSdkVersion != 0) {
            this.mAdminConstraint = v0.getInt(0, 14);
            this.mUserConstraint = v0.getInt(3, 7);
            this.mDelegationConstraint = v0.getString(1);
            v0.recycle();
            return;
        } else {
            throw new RuntimeException("testdpc:minSdkVersion must be specified.");
        }
    }

    private CharSequence findConstraintViolation()
    {
        String v2_5;
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= this.mMinSdkVersion) {
            if (this.isSufficientlyPrivileged(this.getCurrentAdmin(), this.getCurrentDelegations())) {
                if (this.isEnabledForUser(this.getCurrentUser())) {
                    String v2_4 = this.mCustomConstraints.iterator();
                    while (v2_4.hasNext()) {
                        int v1 = ((com.afwsamples.testdpc.common.preference.CustomConstraint) v2_4.next()).validateConstraint();
                        if (v1 != 0) {
                            v2_5 = this.mContext.getString(v1);
                        }
                    }
                    v2_5 = 0;
                } else {
                    v2_5 = this.getUserConstraintSummary();
                }
            } else {
                v2_5 = this.getAdminConstraintSummary();
            }
        } else {
            String v2_7 = this.mContext;
            Object[] v4_1 = new Object[1];
            v4_1[0] = Integer.valueOf(this.mMinSdkVersion);
            v2_5 = v2_7.getString(2131690133, v4_1);
        }
        return v2_5;
    }

    private String getAdminConstraintSummary()
    {
        java.util.ArrayList v0_1 = new java.util.ArrayList(com.afwsamples.testdpc.common.preference.DpcPreferenceHelper.NUM_ADMIN_KINDS);
        if (this.isEnabledForAdmin(2)) {
            v0_1.add(this.mContext.getString(2131689698));
        }
        if ((!this.isEnabledForAdmin(8)) || (this.isEnabledForAdmin(12))) {
            if (this.isEnabledForAdmin(12)) {
                v0_1.add(this.mContext.getString(2131690088));
            }
        } else {
            v0_1.add(this.mContext.getString(2131690013));
        }
        if (!android.text.TextUtils.isEmpty(this.mDelegationConstraint)) {
            v0_1.add(this.mDelegationConstraint);
        }
        return this.joinRequirementList(v0_1);
    }

    private int getCurrentAdmin()
    {
        int v3_0 = 1;
        android.app.admin.DevicePolicyManager v0_1 = ((android.app.admin.DevicePolicyManager) this.mContext.getSystemService("device_policy"));
        String v2 = this.mContext.getPackageName();
        if (!v0_1.isDeviceOwnerApp(v2)) {
            if (v0_1.isProfileOwnerApp(v2)) {
                if ((com.afwsamples.testdpc.common.Util.SDK_INT < 30) || (!v0_1.isOrganizationOwnedDeviceWithManagedProfile())) {
                    v3_0 = 0;
                }
                if (!Boolean.valueOf(v3_0).booleanValue()) {
                    v3_0 = 12;
                } else {
                    v3_0 = 8;
                }
            }
        } else {
            v3_0 = 2;
        }
        return v3_0;
    }

    private java.util.List getCurrentDelegations()
    {
        java.util.List v2_2;
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 26) {
            v2_2 = ((android.app.admin.DevicePolicyManager) this.mContext.getSystemService("device_policy")).getDelegatedScopes(0, this.mContext.getPackageName());
        } else {
            v2_2 = java.util.Collections.emptyList();
        }
        return v2_2;
    }

    private int getCurrentUser()
    {
        int v0_1;
        if (!com.afwsamples.testdpc.common.Util.isPrimaryUser(this.mContext)) {
            if (!com.afwsamples.testdpc.common.Util.isManagedProfileOwner(this.mContext)) {
                v0_1 = 2;
            } else {
                v0_1 = 4;
            }
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    private String getUserConstraintSummary()
    {
        java.util.ArrayList v0_1 = new java.util.ArrayList(com.afwsamples.testdpc.common.preference.DpcPreferenceHelper.NUM_USER_KINDS);
        if (this.isEnabledForUser(1)) {
            v0_1.add(this.mContext.getString(2131690079));
        }
        if (this.isEnabledForUser(2)) {
            v0_1.add(this.mContext.getString(2131690170));
        }
        if (this.isEnabledForUser(4)) {
            v0_1.add(this.mContext.getString(2131689927));
        }
        return this.joinRequirementList(v0_1);
    }

    private boolean hasDelegation(java.util.List p2)
    {
        return p2.contains(this.mDelegationConstraint);
    }

    private boolean isEnabledForAdmin(int p2)
    {
        int v0_2;
        if ((this.mAdminConstraint & p2) != p2) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    private boolean isEnabledForUser(int p2)
    {
        int v0_2;
        if ((this.mUserConstraint & p2) != p2) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    private boolean isSufficientlyPrivileged(int p2, java.util.List p3)
    {
        if ((!this.isEnabledForAdmin(p2)) && (!this.hasDelegation(p3))) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    private String joinRequirementList(java.util.List p5)
    {
        StringBuilder v1_1 = new StringBuilder(this.mContext.getString(2131690132));
        String v0_1 = ((String) p5.remove((p5.size() - 1)));
        v1_1.append(android.text.TextUtils.join(this.mContext.getString(2131690134), p5));
        if (!p5.isEmpty()) {
            v1_1.append(this.mContext.getString(2131690139));
        }
        v1_1.append(v0_1);
        return v1_1.toString();
    }

    public void addCustomConstraint(com.afwsamples.testdpc.common.preference.CustomConstraint p2)
    {
        this.mCustomConstraints.add(p2);
        this.disableIfConstraintsNotMet();
        return;
    }

    public void clearAdminConstraint()
    {
        this.setAdminConstraint(14);
        return;
    }

    public void clearCustomConstraints()
    {
        this.mCustomConstraints.clear();
        return;
    }

    public void clearNonCustomConstraints()
    {
        this.clearAdminConstraint();
        this.clearUserConstraint();
        return;
    }

    public void clearUserConstraint()
    {
        this.setUserConstraint(7);
        return;
    }

    public boolean constraintsMet()
    {
        return android.text.TextUtils.isEmpty(this.mConstraintViolationSummary);
    }

    public void disableIfConstraintsNotMet()
    {
        this.mConstraintViolationSummary = this.findConstraintViolation();
        this.mPreference.setEnabled(this.constraintsMet());
        return;
    }

    public void onBindViewHolder(androidx.preference.PreferenceViewHolder p3)
    {
        if (!this.constraintsMet()) {
            android.widget.TextView v0_1 = ((android.widget.TextView) p3.findViewById(16908304));
            if (v0_1 != null) {
                v0_1.setText(this.mConstraintViolationSummary);
                v0_1.setVisibility(0);
            }
        }
        return;
    }

    public void setAdminConstraint(int p1)
    {
        this.mAdminConstraint = p1;
        this.disableIfConstraintsNotMet();
        return;
    }

    public void setCustomConstraint(com.afwsamples.testdpc.common.preference.CustomConstraint p1)
    {
        this.clearCustomConstraints();
        this.addCustomConstraint(p1);
        return;
    }

    public void setMinSdkVersion(int p1)
    {
        this.mMinSdkVersion = p1;
        this.disableIfConstraintsNotMet();
        return;
    }

    public void setUserConstraint(int p1)
    {
        this.mUserConstraint = p1;
        this.disableIfConstraintsNotMet();
        return;
    }
}
