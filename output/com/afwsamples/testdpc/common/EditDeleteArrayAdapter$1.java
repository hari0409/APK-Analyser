package com.afwsamples.testdpc.common;
 class EditDeleteArrayAdapter$1 implements java.util.Comparator {
    final synthetic com.afwsamples.testdpc.common.EditDeleteArrayAdapter this$0;

    EditDeleteArrayAdapter$1(com.afwsamples.testdpc.common.EditDeleteArrayAdapter p1)
    {
        this.this$0 = p1;
        return;
    }

    public int compare(Object p3, Object p4)
    {
        return this.this$0.getDisplayName(p3).compareTo(this.this$0.getDisplayName(p4));
    }
}
