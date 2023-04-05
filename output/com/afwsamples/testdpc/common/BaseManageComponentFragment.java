package com.afwsamples.testdpc.common;
public abstract class BaseManageComponentFragment extends android.app.Fragment implements android.view.View$OnClickListener {
    protected android.widget.BaseAdapter mAdapter;
    protected android.widget.ListView mAppListView;
    protected android.widget.TextView mHeaderView;
    protected android.widget.Spinner mManagedAppsSpinner;
    protected android.content.pm.PackageManager mPackageManager;

    public BaseManageComponentFragment()
    {
        return;
    }

    protected abstract void addNewRow();

    protected abstract android.widget.BaseAdapter createListAdapter();

    protected abstract android.widget.SpinnerAdapter createSpinnerAdapter();

    protected abstract void loadDefault();

    public void onActivityCreated(android.os.Bundle p2)
    {
        super.onActivityCreated(p2);
        this.onSpinnerItemSelected(this.mManagedAppsSpinner.getSelectedItem());
        return;
    }

    public void onClick(android.view.View p2)
    {
        switch (p2.getId()) {
            case 2131296304:
                this.addNewRow();
                break;
            case 2131296491:
                this.loadDefault();
                break;
            case 2131296570:
                this.resetConfig();
                break;
            case 2131296577:
                this.saveConfig();
                break;
        }
        return;
    }

    public void onCreate(android.os.Bundle p2)
    {
        super.onCreate(p2);
        this.mPackageManager = this.getActivity().getPackageManager();
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p4, android.view.ViewGroup p5, android.os.Bundle p6)
    {
        android.view.View v0 = p4.inflate(2131427393, 0);
        this.mHeaderView = ((android.widget.TextView) v0.findViewById(2131296452));
        this.mManagedAppsSpinner = ((android.widget.Spinner) v0.findViewById(2131296501));
        this.mManagedAppsSpinner.setAdapter(this.createSpinnerAdapter());
        this.mManagedAppsSpinner.setOnItemSelectedListener(new com.afwsamples.testdpc.common.BaseManageComponentFragment$1(this));
        this.mAppListView = ((android.widget.ListView) v0.findViewById(2131296332));
        this.mAdapter = this.createListAdapter();
        this.mAppListView.setAdapter(this.mAdapter);
        v0.findViewById(2131296577).setOnClickListener(this);
        v0.findViewById(2131296570).setOnClickListener(this);
        v0.findViewById(2131296304).setOnClickListener(this);
        v0.findViewById(2131296491).setOnClickListener(this);
        return v0;
    }

    public void onResume()
    {
        super.onResume();
        this.getActivity().getActionBar().setTitle(2131689920);
        return;
    }

    protected abstract void onSpinnerItemSelected();

    protected abstract void resetConfig();

    protected abstract void saveConfig();
}
