package com.afwsamples.testdpc.common;
 class MediaDisplayFragment$1 implements android.view.View$OnClickListener {
    final synthetic com.afwsamples.testdpc.common.MediaDisplayFragment this$0;
    final synthetic android.widget.VideoView val$videoView;

    MediaDisplayFragment$1(com.afwsamples.testdpc.common.MediaDisplayFragment p1, android.widget.VideoView p2)
    {
        this.this$0 = p1;
        this.val$videoView = p2;
        return;
    }

    public void onClick(android.view.View p2)
    {
        this.val$videoView.start();
        return;
    }
}
