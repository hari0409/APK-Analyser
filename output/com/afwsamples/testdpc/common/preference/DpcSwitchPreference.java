package com.afwsamples.testdpc.common.preference;
public class DpcSwitchPreference extends androidx.preference.SwitchPreference implements com.afwsamples.testdpc.common.preference.DpcPreferenceBase {
    private com.afwsamples.testdpc.common.preference.DpcPreferenceHelper mHelper;

    public DpcSwitchPreference(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public DpcSwitchPreference(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, 2130968966);
        return;
    }

    public DpcSwitchPreference(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        this(p2, p3, p4, 0);
        return;
    }

    public DpcSwitchPreference(android.content.Context p2, android.util.AttributeSet p3, int p4, int p5)
    {
        super(p2, p3, p4, p5);
        super.mHelper = new com.afwsamples.testdpc.common.preference.DpcPreferenceHelper(p2, super, p3);
        return;
    }

    public void addCustomConstraint(com.afwsamples.testdpc.common.preference.CustomConstraint p2)
    {
        this.mHelper.addCustomConstraint(p2);
        return;
    }

    public void clearAdminConstraint()
    {
        this.mHelper.clearAdminConstraint();
        return;
    }

    public void clearNonCustomConstraints()
    {
        this.mHelper.clearNonCustomConstraints();
        return;
    }

    public void clearUserConstraint()
    {
        this.mHelper.clearUserConstraint();
        return;
    }

    protected void onAttachedToHierarchy(androidx.preference.PreferenceManager p2)
    {
        this.mHelper.disableIfConstraintsNotMet();
        super.onAttachedToHierarchy(p2);
        return;
    }

    public void onBindViewHolder(androidx.preference.PreferenceViewHolder p2)
    {
        super.onBindViewHolder(p2);
        this.mHelper.onBindViewHolder(p2);
        return;
    }

    public void refreshEnabledState()
    {
        this.mHelper.disableIfConstraintsNotMet();
        return;
    }

    public void setAdminConstraint(int p2)
    {
        this.mHelper.setAdminConstraint(p2);
        return;
    }

    public void setCustomConstraint(com.afwsamples.testdpc.common.preference.CustomConstraint p2)
    {
        this.mHelper.setCustomConstraint(p2);
        return;
    }

    public void setEnabled(boolean p2)
    {
        if ((!p2) || (this.mHelper.constraintsMet())) {
            super.setEnabled(p2);
        }
        return;
    }

    public void setMinSdkVersion(int p2)
    {
        this.mHelper.setMinSdkVersion(p2);
        return;
    }

    public void setUserConstraint(int p2)
    {
        this.mHelper.setUserConstraint(p2);
        return;
    }
}
