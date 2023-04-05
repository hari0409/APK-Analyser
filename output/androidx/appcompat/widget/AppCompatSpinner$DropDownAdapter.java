package androidx.appcompat.widget;
 class AppCompatSpinner$DropDownAdapter implements android.widget.ListAdapter, android.widget.SpinnerAdapter {
    private android.widget.SpinnerAdapter mAdapter;
    private android.widget.ListAdapter mListAdapter;

    public AppCompatSpinner$DropDownAdapter(android.widget.SpinnerAdapter p4, android.content.res.Resources$Theme p5)
    {
        this.mAdapter = p4;
        if ((p4 instanceof android.widget.ListAdapter)) {
            this.mListAdapter = ((android.widget.ListAdapter) p4);
        }
        if (p5 != null) {
            if ((android.os.Build$VERSION.SDK_INT < 23) || (!(p4 instanceof android.widget.ThemedSpinnerAdapter))) {
                if (((p4 instanceof androidx.appcompat.widget.ThemedSpinnerAdapter)) && (((androidx.appcompat.widget.ThemedSpinnerAdapter) p4).getDropDownViewTheme() == null)) {
                    ((androidx.appcompat.widget.ThemedSpinnerAdapter) p4).setDropDownViewTheme(p5);
                }
            } else {
                if (((android.widget.ThemedSpinnerAdapter) p4).getDropDownViewTheme() != p5) {
                    ((android.widget.ThemedSpinnerAdapter) p4).setDropDownViewTheme(p5);
                }
            }
        }
        return;
    }

    public boolean areAllItemsEnabled()
    {
        int v1;
        android.widget.ListAdapter v0 = this.mListAdapter;
        if (v0 == null) {
            v1 = 1;
        } else {
            v1 = v0.areAllItemsEnabled();
        }
        return v1;
    }

    public int getCount()
    {
        int v0_2;
        if (this.mAdapter != null) {
            v0_2 = this.mAdapter.getCount();
        } else {
            v0_2 = 0;
        }
        return v0_2;
    }

    public android.view.View getDropDownView(int p2, android.view.View p3, android.view.ViewGroup p4)
    {
        android.view.View v0_2;
        if (this.mAdapter != null) {
            v0_2 = this.mAdapter.getDropDownView(p2, p3, p4);
        } else {
            v0_2 = 0;
        }
        return v0_2;
    }

    public Object getItem(int p2)
    {
        Object v0_2;
        if (this.mAdapter != null) {
            v0_2 = this.mAdapter.getItem(p2);
        } else {
            v0_2 = 0;
        }
        return v0_2;
    }

    public long getItemId(int p3)
    {
        long v0_2;
        if (this.mAdapter != null) {
            v0_2 = this.mAdapter.getItemId(p3);
        } else {
            v0_2 = -1;
        }
        return v0_2;
    }

    public int getItemViewType(int p2)
    {
        return 0;
    }

    public android.view.View getView(int p2, android.view.View p3, android.view.ViewGroup p4)
    {
        return this.getDropDownView(p2, p3, p4);
    }

    public int getViewTypeCount()
    {
        return 1;
    }

    public boolean hasStableIds()
    {
        if ((this.mAdapter == null) || (!this.mAdapter.hasStableIds())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public boolean isEmpty()
    {
        int v0_1;
        if (this.getCount() != 0) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    public boolean isEnabled(int p3)
    {
        int v1;
        android.widget.ListAdapter v0 = this.mListAdapter;
        if (v0 == null) {
            v1 = 1;
        } else {
            v1 = v0.isEnabled(p3);
        }
        return v1;
    }

    public void registerDataSetObserver(android.database.DataSetObserver p2)
    {
        if (this.mAdapter != null) {
            this.mAdapter.registerDataSetObserver(p2);
        }
        return;
    }

    public void unregisterDataSetObserver(android.database.DataSetObserver p2)
    {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver(p2);
        }
        return;
    }
}
