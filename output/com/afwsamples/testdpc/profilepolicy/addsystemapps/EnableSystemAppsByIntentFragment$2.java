package com.afwsamples.testdpc.profilepolicy.addsystemapps;
 class EnableSystemAppsByIntentFragment$2 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment this$0;
    final synthetic android.widget.EditText val$customInputEditText;

    EnableSystemAppsByIntentFragment$2(com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment p1, android.widget.EditText p2)
    {
        this.this$0 = p1;
        this.val$customInputEditText = p2;
        return;
    }

    public void onClick(android.content.DialogInterface p5, int p6)
    {
        String v0 = this.val$customInputEditText.getText().toString();
        if (android.text.TextUtils.isEmpty(v0)) {
            android.widget.Toast.makeText(this.this$0.getActivity(), 2131689875, 0).show();
            com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment.access$300(this.this$0).setSelection(0);
        } else {
            com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment.access$100(this.this$0).clear();
            com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment.access$200(this.this$0).add(v0);
            this.this$0.updateStatusTextView();
        }
        p5.dismiss();
        return;
    }
}
