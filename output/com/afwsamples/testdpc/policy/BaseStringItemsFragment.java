package com.afwsamples.testdpc.policy;
public abstract class BaseStringItemsFragment extends com.afwsamples.testdpc.common.BaseManageComponentFragment implements com.afwsamples.testdpc.common.EditDeleteArrayAdapter$OnEditButtonClickListener {
    private final int mDialogTitleResId;
    private final int mEmptyItemResId;
    private final int mFragmentTitleResId;
    private com.afwsamples.testdpc.common.EditDeleteArrayAdapter mItemArrayAdapter;
    private java.util.List mItems;
    private java.util.List mLastItems;

    public BaseStringItemsFragment(int p2, int p3, int p4)
    {
        this.mItems = new java.util.ArrayList();
        this.mLastItems = new java.util.ArrayList();
        this.mFragmentTitleResId = p2;
        this.mDialogTitleResId = p3;
        this.mEmptyItemResId = p4;
        return;
    }

    private void showToast(int p3)
    {
        android.widget.Toast.makeText(this.getActivity(), p3, 1).show();
        return;
    }

    protected void addNewRow()
    {
        this.onEditButtonClick(0);
        return;
    }

    protected android.widget.BaseAdapter createListAdapter()
    {
        this.mItemArrayAdapter = new com.afwsamples.testdpc.policy.BaseStringItemsFragment$ItemEntryArrayAdapter(this.getActivity(), this.mItems, this);
        return this.mItemArrayAdapter;
    }

    protected android.widget.SpinnerAdapter createSpinnerAdapter()
    {
        return 0;
    }

    final synthetic void lambda$null$177$BaseStringItemsFragment(android.widget.EditText p3, String p4, android.app.AlertDialog p5, android.view.View p6)
    {
        String v0 = p3.getText().toString();
        if (!android.text.TextUtils.isEmpty(v0)) {
            if (p4 != null) {
                this.mItemArrayAdapter.remove(p4);
            }
            this.mItemArrayAdapter.add(v0);
            p5.dismiss();
        } else {
            this.showToast(this.mEmptyItemResId);
        }
        return;
    }

    final synthetic void lambda$onEditButtonClick$178$BaseStringItemsFragment(android.app.AlertDialog p3, android.widget.EditText p4, String p5, android.content.DialogInterface p6)
    {
        p3.getButton(-1).setOnClickListener(new com.afwsamples.testdpc.policy.BaseStringItemsFragment$$Lambda$1(this, p4, p5, p3));
        return;
    }

    protected void loadDefault()
    {
        this.mItemArrayAdapter.clear();
        this.mItemArrayAdapter.addAll(this.loadItems());
        this.mLastItems = new java.util.ArrayList(this.mItems);
        return;
    }

    protected abstract java.util.Collection loadItems();

    public android.view.View onCreateView(android.view.LayoutInflater p4, android.view.ViewGroup p5, android.os.Bundle p6)
    {
        android.view.View v0 = super.onCreateView(p4, p5, p6);
        this.mManagedAppsSpinner.setVisibility(4);
        this.loadDefault();
        return v0;
    }

    public bridge synthetic void onEditButtonClick(Object p1)
    {
        this.onEditButtonClick(((String) p1));
        return;
    }

    public void onEditButtonClick(String p7)
    {
        android.view.View v2 = android.view.LayoutInflater.from(this.getActivity()).inflate(2131427446, 0);
        android.widget.EditText v1_1 = ((android.widget.EditText) v2.findViewById(2131296472));
        if (p7 != null) {
            v1_1.setText(p7);
        }
        android.app.AlertDialog v0 = new android.app.AlertDialog$Builder(this.getActivity()).setTitle(this.mDialogTitleResId).setView(v2).setPositiveButton(17039370, 0).setNegativeButton(17039360, 0).create();
        v0.setOnShowListener(new com.afwsamples.testdpc.policy.BaseStringItemsFragment$$Lambda$0(this, v0, v1_1, p7));
        v0.show();
        return;
    }

    public void onResume()
    {
        super.onResume();
        this.getActivity().getActionBar().setTitle(this.mFragmentTitleResId);
        return;
    }

    protected bridge synthetic void onSpinnerItemSelected(Object p1)
    {
        this.onSpinnerItemSelected(((Void) p1));
        return;
    }

    protected void onSpinnerItemSelected(Void p1)
    {
        return;
    }

    protected void resetConfig()
    {
        this.mItemArrayAdapter.clear();
        this.mItemArrayAdapter.addAll(this.mLastItems);
        return;
    }

    protected void saveConfig()
    {
        this.saveItems(this.mItems);
        this.mLastItems = new java.util.ArrayList(this.mItems);
        return;
    }

    protected abstract void saveItems();
}
