package androidx.print;
 class PrintHelper$1 extends android.os.AsyncTask {
    final synthetic androidx.print.PrintHelper this$0;
    final synthetic android.print.PrintAttributes val$attributes;
    final synthetic android.graphics.Bitmap val$bitmap;
    final synthetic android.os.CancellationSignal val$cancellationSignal;
    final synthetic android.os.ParcelFileDescriptor val$fileDescriptor;
    final synthetic int val$fittingMode;
    final synthetic android.print.PrintAttributes val$pdfAttributes;
    final synthetic android.print.PrintDocumentAdapter$WriteResultCallback val$writeResultCallback;

    PrintHelper$1(androidx.print.PrintHelper p1, android.os.CancellationSignal p2, android.print.PrintAttributes p3, android.graphics.Bitmap p4, android.print.PrintAttributes p5, int p6, android.os.ParcelFileDescriptor p7, android.print.PrintDocumentAdapter$WriteResultCallback p8)
    {
        this.this$0 = p1;
        this.val$cancellationSignal = p2;
        this.val$pdfAttributes = p3;
        this.val$bitmap = p4;
        this.val$attributes = p5;
        this.val$fittingMode = p6;
        this.val$fileDescriptor = p7;
        this.val$writeResultCallback = p8;
        return;
    }

    protected bridge synthetic Object doInBackground(Object[] p2)
    {
        return this.doInBackground(((Void[]) p2));
    }

    protected varargs Throwable doInBackground(Void[] p12)
    {
        Throwable v7 = 0;
        try {
            if (!this.val$cancellationSignal.isCanceled()) {
                android.print.pdf.PrintedPdfDocument v6_1 = new android.print.pdf.PrintedPdfDocument(this.this$0.mContext, this.val$pdfAttributes);
                android.graphics.Bitmap v4 = androidx.print.PrintHelper.convertBitmapForColorMode(this.val$bitmap, this.val$pdfAttributes.getColorMode());
                if (!this.val$cancellationSignal.isCanceled()) {
                    try {
                        android.graphics.RectF v0_1;
                        android.graphics.pdf.PdfDocument$Page v5 = v6_1.startPage(1);
                    } catch (java.io.IOException v8_27) {
                        v6_1.close();
                        if (this.val$fileDescriptor != null) {
                            try {
                                this.val$fileDescriptor.close();
                            } catch (java.io.FileDescriptor v9) {
                            }
                        }
                        if (v4 != this.val$bitmap) {
                            v4.recycle();
                        }
                        throw v8_27;
                    }
                    if (!androidx.print.PrintHelper.IS_MIN_MARGINS_HANDLING_CORRECT) {
                        android.print.pdf.PrintedPdfDocument v1_1 = new android.print.pdf.PrintedPdfDocument(this.this$0.mContext, this.val$attributes);
                        android.graphics.pdf.PdfDocument$Page v2 = v1_1.startPage(1);
                        v0_1 = new android.graphics.RectF(v2.getInfo().getContentRect());
                        v1_1.finishPage(v2);
                        v1_1.close();
                    } else {
                        v0_1 = new android.graphics.RectF(v5.getInfo().getContentRect());
                    }
                    android.graphics.Matrix v3 = androidx.print.PrintHelper.getMatrix(v4.getWidth(), v4.getHeight(), v0_1, this.val$fittingMode);
                    if (!androidx.print.PrintHelper.IS_MIN_MARGINS_HANDLING_CORRECT) {
                        v3.postTranslate(v0_1.left, v0_1.top);
                        v5.getCanvas().clipRect(v0_1);
                    }
                    v5.getCanvas().drawBitmap(v4, v3, 0);
                    v6_1.finishPage(v5);
                    if (!this.val$cancellationSignal.isCanceled()) {
                        v6_1.writeTo(new java.io.FileOutputStream(this.val$fileDescriptor.getFileDescriptor()));
                        v6_1.close();
                        if (this.val$fileDescriptor != null) {
                            try {
                                this.val$fileDescriptor.close();
                            } catch (java.io.IOException v8) {
                            }
                        }
                        if (v4 != this.val$bitmap) {
                            v4.recycle();
                        }
                    } else {
                        v6_1.close();
                        if (this.val$fileDescriptor != null) {
                            try {
                                this.val$fileDescriptor.close();
                            } catch (java.io.IOException v8) {
                            }
                        }
                        if (v4 != this.val$bitmap) {
                            v4.recycle();
                        }
                    }
                }
            }
        } catch (Throwable v7) {
        }
        return v7;
    }

    protected bridge synthetic void onPostExecute(Object p1)
    {
        this.onPostExecute(((Throwable) p1));
        return;
    }

    protected void onPostExecute(Throwable p5)
    {
        if (!this.val$cancellationSignal.isCanceled()) {
            if (p5 != null) {
                android.util.Log.e("PrintHelper", "Error writing printed content", p5);
                this.val$writeResultCallback.onWriteFailed(0);
            } else {
                android.print.PrintDocumentAdapter$WriteResultCallback v0_1 = this.val$writeResultCallback;
                int v1_1 = new android.print.PageRange[1];
                v1_1[0] = android.print.PageRange.ALL_PAGES;
                v0_1.onWriteFinished(v1_1);
            }
        } else {
            this.val$writeResultCallback.onWriteCancelled();
        }
        return;
    }
}
