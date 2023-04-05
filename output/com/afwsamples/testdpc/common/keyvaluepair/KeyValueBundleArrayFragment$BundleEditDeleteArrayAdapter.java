package com.afwsamples.testdpc.common.keyvaluepair;
 class KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter extends com.afwsamples.testdpc.common.EditDeleteArrayAdapter {
    final synthetic com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleArrayFragment this$0;

    public KeyValueBundleArrayFragment$BundleEditDeleteArrayAdapter(com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleArrayFragment p1, android.content.Context p2, java.util.List p3, com.afwsamples.testdpc.common.EditDeleteArrayAdapter$OnEditButtonClickListener p4, com.afwsamples.testdpc.common.EditDeleteArrayAdapter$OnDeleteButtonClickListener p5)
    {
        this.this$0 = p1;
        super(p2, p3, p4, p5);
        return;
    }

    protected String getDisplayName(android.os.Bundle p3)
    {
        return String.valueOf(new StringBuilder().append("Bundle #").append(com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleArrayFragment.access$000(this.this$0).indexOf(p3)).toString());
    }

    protected bridge synthetic String getDisplayName(Object p2)
    {
        return this.getDisplayName(((android.os.Bundle) p2));
    }
}
