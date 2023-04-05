package com.afwsamples.testdpc.common;
 class MediaDisplayFragment$3 implements android.view.View$OnClickListener {
    final synthetic com.afwsamples.testdpc.common.MediaDisplayFragment this$0;

    MediaDisplayFragment$3(com.afwsamples.testdpc.common.MediaDisplayFragment p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onClick(android.view.View p4)
    {
        this.this$0.getActivity().getContentResolver().delete(com.afwsamples.testdpc.common.MediaDisplayFragment.access$000(this.this$0), 0, 0);
        this.this$0.getActivity().getFragmentManager().popBackStack();
        return;
    }
}
