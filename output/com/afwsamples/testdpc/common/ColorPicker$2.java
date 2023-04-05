package com.afwsamples.testdpc.common;
 class ColorPicker$2 implements android.content.DialogInterface$OnShowListener {
    final synthetic com.afwsamples.testdpc.common.ColorPicker this$0;

    ColorPicker$2(com.afwsamples.testdpc.common.ColorPicker p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onShow(android.content.DialogInterface p4)
    {
        com.afwsamples.testdpc.common.ColorPicker.access$302(this.this$0, ((android.app.AlertDialog) p4).getButton(-1));
        com.afwsamples.testdpc.common.ColorPicker.access$300(this.this$0).setTextColor(com.afwsamples.testdpc.common.ColorPicker.access$100(this.this$0));
        com.afwsamples.testdpc.common.ColorPicker.access$402(this.this$0, ((android.app.AlertDialog) p4).getButton(-2));
        com.afwsamples.testdpc.common.ColorPicker.access$400(this.this$0).setTextColor(com.afwsamples.testdpc.common.ColorPicker.access$100(this.this$0));
        com.afwsamples.testdpc.common.ColorPicker.access$500(this.this$0);
        return;
    }
}
