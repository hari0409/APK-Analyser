package androidx.appcompat.widget;
 class ListPopupWindow$3 implements android.widget.AdapterView$OnItemSelectedListener {
    final synthetic androidx.appcompat.widget.ListPopupWindow this$0;

    ListPopupWindow$3(androidx.appcompat.widget.ListPopupWindow p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onItemSelected(android.widget.AdapterView p3, android.view.View p4, int p5, long p6)
    {
        if (p5 != -1) {
            androidx.appcompat.widget.DropDownListView v0 = this.this$0.mDropDownList;
            if (v0 != null) {
                v0.setListSelectionHidden(0);
            }
        }
        return;
    }

    public void onNothingSelected(android.widget.AdapterView p1)
    {
        return;
    }
}
