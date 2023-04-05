package com.afwsamples.testdpc.common;
public abstract class ProfileOrParentFragment$Container extends android.app.Fragment {

    public ProfileOrParentFragment$Container()
    {
        return;
    }

    public abstract Class getContentClass();

    public void onCreate(android.os.Bundle p2)
    {
        super.onCreate(p2);
        this.setRetainInstance(1);
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p9, android.view.ViewGroup p10, android.os.Bundle p11)
    {
        int v1;
        androidx.legacy.app.FragmentTabHost v2_1 = new androidx.legacy.app.FragmentTabHost(this.getActivity());
        v2_1.setup(this.getActivity(), this.getChildFragmentManager(), p10.getId());
        if ((!com.afwsamples.testdpc.common.Util.isManagedProfileOwner(this.getActivity())) || (com.afwsamples.testdpc.common.Util.SDK_INT < 24)) {
            v1 = 0;
        } else {
            v1 = 1;
        }
        if (v1 != 0) {
            android.os.Bundle v0_1 = new android.os.Bundle();
            v0_1.putBoolean("com.afwsamples.testdpc.extra.PARENT", 1);
            v2_1.addTab(v2_1.newTabSpec("parent").setIndicator(this.getString(2131690066)), this.getContentClass(), v0_1);
        }
        android.os.Bundle v0_3 = new android.os.Bundle();
        v0_3.putBoolean("com.afwsamples.testdpc.extra.PARENT", 0);
        v2_1.addTab(v2_1.newTabSpec("profile").setIndicator(this.getString(2131690403)), this.getContentClass(), v0_3);
        if (v1 == 0) {
            v2_1.setCurrentTab(0);
            v2_1.getTabWidget().setVisibility(8);
        } else {
            v2_1.setCurrentTab(1);
        }
        return v2_1;
    }
}
