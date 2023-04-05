package com.afwsamples.testdpc.common;
 class ToggleComponentsArrayAdapter$1 implements android.view.View$OnClickListener {
    final synthetic com.afwsamples.testdpc.common.ToggleComponentsArrayAdapter this$0;
    final synthetic int val$position;

    ToggleComponentsArrayAdapter$1(com.afwsamples.testdpc.common.ToggleComponentsArrayAdapter p1, int p2)
    {
        this.this$0 = p1;
        this.val$position = p2;
        return;
    }

    public void onClick(android.view.View p4)
    {
        if (!this.this$0.canModifyComponent(this.val$position)) {
            ((android.widget.CheckBox) p4).setChecked(((Boolean) this.this$0.mIsComponentCheckedList.get(this.val$position)).booleanValue());
        } else {
            this.this$0.mIsComponentCheckedList.set(this.val$position, Boolean.valueOf(((android.widget.CheckBox) p4).isChecked()));
        }
        return;
    }
}
