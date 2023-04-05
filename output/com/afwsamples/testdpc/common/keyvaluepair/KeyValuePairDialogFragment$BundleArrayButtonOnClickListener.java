package com.afwsamples.testdpc.common.keyvaluepair;
 class KeyValuePairDialogFragment$BundleArrayButtonOnClickListener implements android.view.View$OnClickListener {
    private android.os.Bundle[] mBundles;
    final synthetic com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment this$0;

    private KeyValuePairDialogFragment$BundleArrayButtonOnClickListener(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment p1)
    {
        this.this$0 = p1;
        return;
    }

    synthetic KeyValuePairDialogFragment$BundleArrayButtonOnClickListener(com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment p1, com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment$1 p2)
    {
        this(p1);
        return;
    }

    public void onClick(android.view.View p5)
    {
        String v1 = com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.access$200(this.this$0).getText().toString();
        if (!android.text.TextUtils.isEmpty(v1)) {
            com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.access$1000(this.this$0, com.afwsamples.testdpc.common.keyvaluepair.KeyValueBundleArrayFragment.newInstance(v1, this.mBundles, com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.access$900(this.this$0)));
        } else {
            com.afwsamples.testdpc.common.keyvaluepair.KeyValuePairDialogFragment.access$300(this.this$0, 2131689881);
        }
        return;
    }

    public void setBundleArray(android.os.Bundle[] p1)
    {
        this.mBundles = p1;
        return;
    }
}
