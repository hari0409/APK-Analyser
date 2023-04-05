package androidx.appcompat.widget;
 class ActivityChooserView$Callbacks implements android.widget.AdapterView$OnItemClickListener, android.view.View$OnClickListener, android.view.View$OnLongClickListener, android.widget.PopupWindow$OnDismissListener {
    final synthetic androidx.appcompat.widget.ActivityChooserView this$0;

    ActivityChooserView$Callbacks(androidx.appcompat.widget.ActivityChooserView p1)
    {
        this.this$0 = p1;
        return;
    }

    private void notifyOnDismissListener()
    {
        if (this.this$0.mOnDismissListener != null) {
            this.this$0.mOnDismissListener.onDismiss();
        }
        return;
    }

    public void onClick(android.view.View p6)
    {
        if (p6 != this.this$0.mDefaultActivityButton) {
            if (p6 != this.this$0.mExpandActivityOverflowButton) {
                throw new IllegalArgumentException();
            } else {
                this.this$0.mIsSelectingDefaultActivity = 0;
                this.this$0.showPopupUnchecked(this.this$0.mInitialActivityCount);
            }
        } else {
            this.this$0.dismissPopup();
            android.content.Intent v2 = this.this$0.mAdapter.getDataModel().chooseActivity(this.this$0.mAdapter.getDataModel().getActivityIndex(this.this$0.mAdapter.getDefaultActivity()));
            if (v2 != null) {
                v2.addFlags(524288);
                this.this$0.getContext().startActivity(v2);
            }
        }
        return;
    }

    public void onDismiss()
    {
        this.notifyOnDismissListener();
        if (this.this$0.mProvider != null) {
            this.this$0.mProvider.subUiVisibilityChanged(0);
        }
        return;
    }

    public void onItemClick(android.widget.AdapterView p6, android.view.View p7, int p8, long p9)
    {
        switch (((androidx.appcompat.widget.ActivityChooserView$ActivityChooserViewAdapter) p6.getAdapter()).getItemViewType(p8)) {
            case 0:
                this.this$0.dismissPopup();
                if (!this.this$0.mIsSelectingDefaultActivity) {
                    if (!this.this$0.mAdapter.getShowDefaultActivity()) {
                        p8++;
                    }
                    android.content.Intent v2 = this.this$0.mAdapter.getDataModel().chooseActivity(p8);
                    if (v2 == null) {
                    } else {
                        v2.addFlags(524288);
                        this.this$0.getContext().startActivity(v2);
                    }
                } else {
                    if (p8 <= 0) {
                    } else {
                        this.this$0.mAdapter.getDataModel().setDefaultActivity(p8);
                    }
                }
                break;
            case 1:
                this.this$0.showPopupUnchecked(2147483647);
                break;
            default:
                throw new IllegalArgumentException();
        }
        return;
    }

    public boolean onLongClick(android.view.View p4)
    {
        if (p4 != this.this$0.mDefaultActivityButton) {
            throw new IllegalArgumentException();
        } else {
            if (this.this$0.mAdapter.getCount() > 0) {
                this.this$0.mIsSelectingDefaultActivity = 1;
                this.this$0.showPopupUnchecked(this.this$0.mInitialActivityCount);
            }
            return 1;
        }
    }
}
