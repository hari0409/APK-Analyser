package androidx.print;
 class PrintHelper$PrintBitmapAdapter extends android.print.PrintDocumentAdapter {
    private android.print.PrintAttributes mAttributes;
    private final android.graphics.Bitmap mBitmap;
    private final androidx.print.PrintHelper$OnPrintFinishCallback mCallback;
    private final int mFittingMode;
    private final String mJobName;
    final synthetic androidx.print.PrintHelper this$0;

    PrintHelper$PrintBitmapAdapter(androidx.print.PrintHelper p1, String p2, int p3, android.graphics.Bitmap p4, androidx.print.PrintHelper$OnPrintFinishCallback p5)
    {
        this.this$0 = p1;
        this.mJobName = p2;
        this.mFittingMode = p3;
        this.mBitmap = p4;
        this.mCallback = p5;
        return;
    }

    public void onFinish()
    {
        if (this.mCallback != null) {
            this.mCallback.onFinish();
        }
        return;
    }

    public void onLayout(android.print.PrintAttributes p5, android.print.PrintAttributes p6, android.os.CancellationSignal p7, android.print.PrintDocumentAdapter$LayoutResultCallback p8, android.os.Bundle p9)
    {
        int v0 = 1;
        this.mAttributes = p6;
        android.print.PrintDocumentInfo vtmp3 = new android.print.PrintDocumentInfo$Builder(this.mJobName).setContentType(1).setPageCount(1).build();
        if (p6.equals(p5)) {
            v0 = 0;
        }
        p8.onLayoutFinished(vtmp3, v0);
        return;
    }

    public void onWrite(android.print.PageRange[] p8, android.os.ParcelFileDescriptor p9, android.os.CancellationSignal p10, android.print.PrintDocumentAdapter$WriteResultCallback p11)
    {
        this.this$0.writeBitmap(this.mAttributes, this.mFittingMode, this.mBitmap, p9, p10, p11);
        return;
    }
}
