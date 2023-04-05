package com.afwsamples.testdpc.policy;
public abstract class GetAvailableComponentsTask extends android.os.AsyncTask {
    private final android.app.Activity mActivity;
    private android.app.AlertDialog mAlertDialog;
    private android.widget.ListView mListView;
    private android.widget.Button mNegativeButton;
    private android.widget.Button mNeutralButton;
    private android.widget.Button mPositiveButton;
    private android.view.View mProgressView;
    private final int mTitleResId;

    public GetAvailableComponentsTask(android.app.Activity p1, int p2)
    {
        this.mActivity = p1;
        this.mTitleResId = p2;
        return;
    }

    static synthetic android.app.AlertDialog access$000(com.afwsamples.testdpc.policy.GetAvailableComponentsTask p1)
    {
        return p1.mAlertDialog;
    }

    private void showProgressBar(boolean p5)
    {
        int v1 = 1;
        if (!p5) {
            this.mProgressView.setVisibility(8);
            this.mListView.setVisibility(0);
        } else {
            this.mProgressView.setVisibility(0);
            this.mListView.setVisibility(8);
        }
        android.widget.Button v0_1;
        if (p5) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        android.widget.Button v0_2;
        this.mPositiveButton.setEnabled(v0_1);
        if (p5) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        this.mNeutralButton.setEnabled(v0_2);
        if (p5) {
            v1 = 0;
        }
        this.mNegativeButton.setEnabled(v1);
        return;
    }

    protected abstract java.util.List getPermittedComponentsList();

    protected abstract java.util.List getResolveInfoListFromAvailableComponents();

    protected bridge synthetic void onPostExecute(Object p1)
    {
        this.onPostExecute(((java.util.List) p1));
        return;
    }

    protected void onPostExecute(java.util.List p7)
    {
        if ((this.mActivity != null) && (!this.mActivity.isFinishing())) {
            java.util.List v1 = this.getResolveInfoListFromAvailableComponents(p7);
            java.util.Collections.sort(v1, new android.content.pm.ResolveInfo$DisplayNameComparator(this.mActivity.getPackageManager()));
            com.afwsamples.testdpc.policy.AvailableComponentsInfoArrayAdapter v0_1 = new com.afwsamples.testdpc.policy.AvailableComponentsInfoArrayAdapter(this.mActivity, v1, this.getPermittedComponentsList());
            this.mListView.setAdapter(v0_1);
            this.mListView.setOnItemClickListener(new com.afwsamples.testdpc.policy.GetAvailableComponentsTask$1(this, v0_1));
            this.showProgressBar(0);
            this.mPositiveButton.setOnClickListener(new com.afwsamples.testdpc.policy.GetAvailableComponentsTask$2(this, v0_1));
            this.mNeutralButton.setOnClickListener(new com.afwsamples.testdpc.policy.GetAvailableComponentsTask$3(this));
        }
        return;
    }

    protected void onPreExecute()
    {
        android.view.View v0 = android.view.View.inflate(this.mActivity, 2131427363, 0);
        this.mAlertDialog = new android.app.AlertDialog$Builder(this.mActivity).setTitle(this.mTitleResId).setView(v0).setPositiveButton(17039370, 0).setNeutralButton(2131689546, 0).setNegativeButton(17039360, 0).show();
        this.mProgressView = v0.findViewById(2131296558);
        this.mListView = ((android.widget.ListView) v0.findViewById(16908298));
        this.mPositiveButton = this.mAlertDialog.getButton(-1);
        this.mNeutralButton = this.mAlertDialog.getButton(-3);
        this.mNegativeButton = this.mAlertDialog.getButton(-2);
        this.showProgressBar(1);
        return;
    }

    protected abstract void setPermittedComponentsList();
}
