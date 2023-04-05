package com.afwsamples.testdpc.common;
public abstract class ManageResolveInfoFragment extends com.afwsamples.testdpc.common.BaseManageComponentFragment {
    protected java.util.List mResolveInfos;

    public ManageResolveInfoFragment()
    {
        return;
    }

    protected android.widget.SpinnerAdapter createSpinnerAdapter()
    {
        this.mResolveInfos = this.loadResolveInfoList();
        return new com.afwsamples.testdpc.common.ResolveInfoSpinnerAdapter(this.getActivity(), 2131427362, 2131296534, this.mResolveInfos);
    }

    protected abstract java.util.List loadResolveInfoList();

    public void onCreate(android.os.Bundle p1)
    {
        super.onCreate(p1);
        return;
    }
}
