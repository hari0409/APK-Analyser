package com.afwsamples.testdpc.common;
 class ColorPicker$1 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.common.ColorPicker this$0;

    ColorPicker$1(com.afwsamples.testdpc.common.ColorPicker p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onClick(android.content.DialogInterface p4, int p5)
    {
        com.afwsamples.testdpc.common.ColorPicker$OnColorSelectListener v0_1 = ((com.afwsamples.testdpc.common.ColorPicker$OnColorSelectListener) this.this$0.getFragmentManager().findFragmentByTag(com.afwsamples.testdpc.common.ColorPicker.access$000(this.this$0)));
        if (v0_1 != null) {
            v0_1.onColorSelected(com.afwsamples.testdpc.common.ColorPicker.access$100(this.this$0), com.afwsamples.testdpc.common.ColorPicker.access$200(this.this$0));
        }
        return;
    }
}
