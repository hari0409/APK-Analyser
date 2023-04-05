package com.afwsamples.testdpc.common.preference;
public interface DpcPreferenceBase {

    public abstract void addCustomConstraint();

    public abstract void clearAdminConstraint();

    public abstract void clearNonCustomConstraints();

    public abstract void clearUserConstraint();

    public abstract void refreshEnabledState();

    public abstract void setAdminConstraint();

    public abstract void setCustomConstraint();

    public abstract void setMinSdkVersion();

    public abstract void setUserConstraint();
}
