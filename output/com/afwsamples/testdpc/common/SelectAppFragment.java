package com.afwsamples.testdpc.common;
public abstract class SelectAppFragment extends android.app.Fragment implements android.view.View$OnClickListener, android.widget.AdapterView$OnItemClickListener {
    private android.widget.ListView mAppListView;
    private java.util.List mAppPackages;
    private android.widget.EditText mCurrentSelectedPackage;
    private android.widget.EditText mNewSelectedPackage;

    public SelectAppFragment()
    {
        return;
    }

    protected abstract void clearSelectedPackage();

    protected java.util.List createAppList()
    {
        java.util.ArrayList v1_1 = new java.util.ArrayList();
        android.content.pm.PackageManager v3 = this.getActivity().getPackageManager();
        java.util.List v0 = v3.getInstalledApplications(0);
        java.util.Collections.sort(v0, new android.content.pm.ApplicationInfo$DisplayNameComparator(v3));
        java.util.Iterator v4_1 = v0.iterator();
        while (v4_1.hasNext()) {
            android.content.pm.ApplicationInfo v2_1 = ((android.content.pm.ApplicationInfo) v4_1.next());
            if (v3.getLaunchIntentForPackage(v2_1.packageName) != null) {
                v1_1.add(v2_1.packageName);
            }
        }
        return v1_1;
    }

    protected android.view.ViewGroup getExtensionLayout(android.view.View p2)
    {
        return ((android.view.ViewGroup) p2.findViewById(2131296437));
    }

    protected abstract String getSelectedPackage();

    public void onClick(android.view.View p3)
    {
        switch (p3.getId()) {
            case 2131296606:
                this.mNewSelectedPackage.setText("");
                this.clearSelectedPackage();
                this.reloadSelectedPackage();
            case 2131296607:
            case 2131296608:
            default:
                break;
            case 2131296607:
            case 2131296608:
                break;
            case 2131296609:
                this.setSelectedPackage(this.mNewSelectedPackage.getText().toString());
                this.reloadSelectedPackage();
                break;
        }
        return;
    }

    public void onCreate(android.os.Bundle p2)
    {
        super.onCreate(p2);
        this.mAppPackages = this.createAppList();
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p7, android.view.ViewGroup p8, android.os.Bundle p9)
    {
        android.view.View v1 = p7.inflate(2131427437, 0);
        this.mCurrentSelectedPackage = ((android.widget.EditText) v1.findViewById(2131296607));
        this.mNewSelectedPackage = ((android.widget.EditText) v1.findViewById(2131296608));
        this.mAppListView = ((android.widget.ListView) v1.findViewById(2131296598));
        this.mAppListView.setAdapter(new com.afwsamples.testdpc.common.AppInfoArrayAdapter(this.getActivity(), 2131296534, this.mAppPackages, 1));
        v1.findViewById(2131296609).setOnClickListener(this);
        v1.findViewById(2131296606).setOnClickListener(this);
        this.mAppListView.setOnItemClickListener(this);
        return v1;
    }

    public void onItemClick(android.widget.AdapterView p3, android.view.View p4, int p5, long p6)
    {
        this.mNewSelectedPackage.setText(((String) this.mAppPackages.get(p5)));
        return;
    }

    public void onResume()
    {
        super.onResume();
        this.reloadSelectedPackage();
        return;
    }

    protected void reloadSelectedPackage()
    {
        String v0 = this.getSelectedPackage();
        if (v0 != null) {
            this.mCurrentSelectedPackage.setText(v0);
        } else {
            this.mCurrentSelectedPackage.setText("");
        }
        return;
    }

    protected abstract void setSelectedPackage();
}
