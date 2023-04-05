package androidx.print;
 class PrintHelper$PrintUriAdapter extends android.print.PrintDocumentAdapter {
    android.print.PrintAttributes mAttributes;
    android.graphics.Bitmap mBitmap;
    final androidx.print.PrintHelper$OnPrintFinishCallback mCallback;
    final int mFittingMode;
    final android.net.Uri mImageFile;
    final String mJobName;
    android.os.AsyncTask mLoadBitmap;
    final synthetic androidx.print.PrintHelper this$0;

    PrintHelper$PrintUriAdapter(androidx.print.PrintHelper p2, String p3, android.net.Uri p4, androidx.print.PrintHelper$OnPrintFinishCallback p5, int p6)
    {
        this.this$0 = p2;
        this.mJobName = p3;
        this.mImageFile = p4;
        this.mCallback = p5;
        this.mFittingMode = p6;
        this.mBitmap = 0;
        return;
    }

    void cancelLoad()
    {
        try {
            if (this.this$0.mDecodeOptions != null) {
                if (android.os.Build$VERSION.SDK_INT < 24) {
                    this.this$0.mDecodeOptions.requestCancelDecode();
                }
                this.this$0.mDecodeOptions = 0;
            }
        } catch (androidx.print.PrintHelper v0_2) {
            throw v0_2;
        }
        return;
    }

    public void onFinish()
    {
        super.onFinish();
        this.cancelLoad();
        if (this.mLoadBitmap != null) {
            this.mLoadBitmap.cancel(1);
        }
        if (this.mCallback != null) {
            this.mCallback.onFinish();
        }
        if (this.mBitmap != null) {
            this.mBitmap.recycle();
            this.mBitmap = 0;
        }
        return;
    }

    public void onLayout(android.print.PrintAttributes p10, android.print.PrintAttributes p11, android.os.CancellationSignal p12, android.print.PrintDocumentAdapter$LayoutResultCallback p13, android.os.Bundle p14)
    {
        int v6 = 1;
        this.mAttributes = p11;
        if (!p12.isCanceled()) {
            if (this.mBitmap == null) {
                android.net.Uri[] v1_1 = new android.net.Uri[0];
                this.mLoadBitmap = new androidx.print.PrintHelper$PrintUriAdapter$1(this, p12, p11, p10, p13).execute(v1_1);
            } else {
                android.print.PrintDocumentInfo vtmp4 = new android.print.PrintDocumentInfo$Builder(this.mJobName).setContentType(1).setPageCount(1).build();
                if (p11.equals(p10)) {
                    v6 = 0;
                }
                p13.onLayoutFinished(vtmp4, v6);
            }
        } else {
            p13.onLayoutCancelled();
        }
        return;
    }

    public void onWrite(android.print.PageRange[] p8, android.os.ParcelFileDescriptor p9, android.os.CancellationSignal p10, android.print.PrintDocumentAdapter$WriteResultCallback p11)
    {
        this.this$0.writeBitmap(this.mAttributes, this.mFittingMode, this.mBitmap, p9, p10, p11);
        return;
    }
}
