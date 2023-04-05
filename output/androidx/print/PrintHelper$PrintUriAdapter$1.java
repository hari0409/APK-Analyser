package androidx.print;
 class PrintHelper$PrintUriAdapter$1 extends android.os.AsyncTask {
    final synthetic androidx.print.PrintHelper$PrintUriAdapter this$1;
    final synthetic android.os.CancellationSignal val$cancellationSignal;
    final synthetic android.print.PrintDocumentAdapter$LayoutResultCallback val$layoutResultCallback;
    final synthetic android.print.PrintAttributes val$newPrintAttributes;
    final synthetic android.print.PrintAttributes val$oldPrintAttributes;

    PrintHelper$PrintUriAdapter$1(androidx.print.PrintHelper$PrintUriAdapter p1, android.os.CancellationSignal p2, android.print.PrintAttributes p3, android.print.PrintAttributes p4, android.print.PrintDocumentAdapter$LayoutResultCallback p5)
    {
        this.this$1 = p1;
        this.val$cancellationSignal = p2;
        this.val$newPrintAttributes = p3;
        this.val$oldPrintAttributes = p4;
        this.val$layoutResultCallback = p5;
        return;
    }

    protected varargs android.graphics.Bitmap doInBackground(android.net.Uri[] p3)
    {
        try {
            int v0_2 = this.this$1.this$0.loadConstrainedBitmap(this.this$1.mImageFile);
        } catch (int v0) {
            v0_2 = 0;
        }
        return v0_2;
    }

    protected bridge synthetic Object doInBackground(Object[] p2)
    {
        return this.doInBackground(((android.net.Uri[]) p2));
    }

    protected void onCancelled(android.graphics.Bitmap p3)
    {
        this.val$layoutResultCallback.onLayoutCancelled();
        this.this$1.mLoadBitmap = 0;
        return;
    }

    protected bridge synthetic void onCancelled(Object p1)
    {
        this.onCancelled(((android.graphics.Bitmap) p1));
        return;
    }

    protected void onPostExecute(android.graphics.Bitmap p12)
    {
        super.onPostExecute(p12);
        if ((p12 != null) && ((!androidx.print.PrintHelper.PRINT_ACTIVITY_RESPECTS_ORIENTATION) || (this.this$1.this$0.mOrientation == 0))) {
            android.print.PrintAttributes$MediaSize v9 = this.this$1.mAttributes.getMediaSize();
            if ((v9 != null) && (v9.isPortrait() != androidx.print.PrintHelper.isPortrait(p12))) {
                android.graphics.Matrix v5_1 = new android.graphics.Matrix();
                v5_1.postRotate(1119092736);
                p12 = android.graphics.Bitmap.createBitmap(p12, 0, 0, p12.getWidth(), p12.getHeight(), v5_1, 1);
            }
        }
        this.this$1.mBitmap = p12;
        if (p12 == null) {
            this.val$layoutResultCallback.onLayoutFailed(0);
        } else {
            int v7;
            android.print.PrintDocumentInfo v8 = new android.print.PrintDocumentInfo$Builder(this.this$1.mJobName).setContentType(1).setPageCount(1).build();
            if (this.val$newPrintAttributes.equals(this.val$oldPrintAttributes)) {
                v7 = 0;
            } else {
                v7 = 1;
            }
            this.val$layoutResultCallback.onLayoutFinished(v8, v7);
        }
        this.this$1.mLoadBitmap = 0;
        return;
    }

    protected bridge synthetic void onPostExecute(Object p1)
    {
        this.onPostExecute(((android.graphics.Bitmap) p1));
        return;
    }

    protected void onPreExecute()
    {
        this.val$cancellationSignal.setOnCancelListener(new androidx.print.PrintHelper$PrintUriAdapter$1$1(this));
        return;
    }
}
