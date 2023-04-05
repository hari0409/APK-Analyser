package androidx.print;
public final class PrintHelper {
    public static final int COLOR_MODE_COLOR = 2;
    public static final int COLOR_MODE_MONOCHROME = 1;
    static final boolean IS_MIN_MARGINS_HANDLING_CORRECT = False;
    private static final String LOG_TAG = "PrintHelper";
    private static final int MAX_PRINT_SIZE = 3500;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    static final boolean PRINT_ACTIVITY_RESPECTS_ORIENTATION = False;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;
    int mColorMode;
    final android.content.Context mContext;
    android.graphics.BitmapFactory$Options mDecodeOptions;
    final Object mLock;
    int mOrientation;
    int mScaleMode;

    static PrintHelper()
    {
        int v0_3;
        int v2 = 1;
        if ((android.os.Build$VERSION.SDK_INT >= 20) && (android.os.Build$VERSION.SDK_INT <= 23)) {
            v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        androidx.print.PrintHelper.PRINT_ACTIVITY_RESPECTS_ORIENTATION = v0_3;
        if (android.os.Build$VERSION.SDK_INT == 23) {
            v2 = 0;
        }
        androidx.print.PrintHelper.IS_MIN_MARGINS_HANDLING_CORRECT = v2;
        return;
    }

    public PrintHelper(android.content.Context p3)
    {
        this.mDecodeOptions = 0;
        this.mLock = new Object();
        this.mScaleMode = 2;
        this.mColorMode = 2;
        this.mOrientation = 1;
        this.mContext = p3;
        return;
    }

    static android.graphics.Bitmap convertBitmapForColorMode(android.graphics.Bitmap p9, int p10)
    {
        if (p10 == 1) {
            android.graphics.Bitmap v3 = android.graphics.Bitmap.createBitmap(p9.getWidth(), p9.getHeight(), android.graphics.Bitmap$Config.ARGB_8888);
            android.graphics.Canvas v0_1 = new android.graphics.Canvas(v3);
            android.graphics.Paint v4_1 = new android.graphics.Paint();
            android.graphics.ColorMatrix v1_1 = new android.graphics.ColorMatrix();
            v1_1.setSaturation(0);
            v4_1.setColorFilter(new android.graphics.ColorMatrixColorFilter(v1_1));
            v0_1.drawBitmap(p9, 0, 0, v4_1);
            v0_1.setBitmap(0);
            p9 = v3;
        }
        return p9;
    }

    private static android.print.PrintAttributes$Builder copyAttributes(android.print.PrintAttributes p3)
    {
        android.print.PrintAttributes$Builder v0 = new android.print.PrintAttributes$Builder().setMediaSize(p3.getMediaSize()).setResolution(p3.getResolution()).setMinMargins(p3.getMinMargins());
        if (p3.getColorMode() != 0) {
            v0.setColorMode(p3.getColorMode());
        }
        if ((android.os.Build$VERSION.SDK_INT >= 23) && (p3.getDuplexMode() != 0)) {
            v0.setDuplexMode(p3.getDuplexMode());
        }
        return v0;
    }

    static android.graphics.Matrix getMatrix(int p7, int p8, android.graphics.RectF p9, int p10)
    {
        float v1_0;
        android.graphics.Matrix v0_1 = new android.graphics.Matrix();
        float v1_1 = (p9.width() / ((float) p7));
        if (p10 != 2) {
            v1_0 = Math.min(v1_1, (p9.height() / ((float) p8)));
        } else {
            v1_0 = Math.max(v1_1, (p9.height() / ((float) p8)));
        }
        v0_1.postScale(v1_0, v1_0);
        v0_1.postTranslate(((p9.width() - (((float) p7) * v1_0)) / 1073741824), ((p9.height() - (((float) p8) * v1_0)) / 1073741824));
        return v0_1;
    }

    static boolean isPortrait(android.graphics.Bitmap p2)
    {
        int v0_1;
        if (p2.getWidth() > p2.getHeight()) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    private android.graphics.Bitmap loadBitmap(android.net.Uri p6, android.graphics.BitmapFactory$Options p7)
    {
        if ((p6 != null) && (this.mContext != null)) {
            try {
                java.io.InputStream v0 = this.mContext.getContentResolver().openInputStream(p6);
                Throwable v2_1 = android.graphics.BitmapFactory.decodeStream(v0, 0, p7);
            } catch (Throwable v2_2) {
                if (v0 != null) {
                    try {
                        v0.close();
                    } catch (java.io.IOException v1_0) {
                        android.util.Log.w("PrintHelper", "close fail ", v1_0);
                    }
                }
                throw v2_2;
            }
            if (v0 != null) {
                try {
                    v0.close();
                } catch (java.io.IOException v1_1) {
                    android.util.Log.w("PrintHelper", "close fail ", v1_1);
                }
            }
            return v2_1;
        } else {
            throw new IllegalArgumentException("bad argument to loadBitmap");
        }
    }

    public static boolean systemSupportsPrint()
    {
        int v0_1;
        if (android.os.Build$VERSION.SDK_INT < 19) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    public int getColorMode()
    {
        return this.mColorMode;
    }

    public int getOrientation()
    {
        if ((android.os.Build$VERSION.SDK_INT < 19) || (this.mOrientation != 0)) {
            int v0_2 = this.mOrientation;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public int getScaleMode()
    {
        return this.mScaleMode;
    }

    android.graphics.Bitmap loadConstrainedBitmap(android.net.Uri p10)
    {
        Throwable v6_0 = 0;
        if ((p10 != null) && (this.mContext != null)) {
            android.graphics.BitmapFactory$Options v3_1 = new android.graphics.BitmapFactory$Options();
            v3_1.inJustDecodeBounds = 1;
            this.loadBitmap(p10, v3_1);
            int v5 = v3_1.outWidth;
            int v1 = v3_1.outHeight;
            if ((v5 > 0) && (v1 > 0)) {
                int v2 = Math.max(v5, v1);
                int v4 = 1;
                while (v2 > 3500) {
                    v2 >>= 1;
                    v4 <<= 1;
                }
                if ((v4 > 0) && ((Math.min(v5, v1) / v4) > 0)) {
                    this.mDecodeOptions = new android.graphics.BitmapFactory$Options();
                    this.mDecodeOptions.inMutable = 1;
                    this.mDecodeOptions.inSampleSize = v4;
                    try {
                        v6_0 = this.loadBitmap(p10, this.mDecodeOptions);
                        try {
                            this.mDecodeOptions = 0;
                        } catch (Throwable v6_8) {
                            throw v6_8;
                        }
                    } catch (Throwable v6_6) {
                        this.mDecodeOptions = 0;
                        throw v6_6;
                    }
                }
            }
            return v6_0;
        } else {
            throw new IllegalArgumentException("bad argument to getScaledBitmap");
        }
    }

    public void printBitmap(String p2, android.graphics.Bitmap p3)
    {
        this.printBitmap(p2, p3, 0);
        return;
    }

    public void printBitmap(String p10, android.graphics.Bitmap p11, androidx.print.PrintHelper$OnPrintFinishCallback p12)
    {
        if ((android.os.Build$VERSION.SDK_INT >= 19) && (p11 != null)) {
            android.print.PrintAttributes$MediaSize v7;
            if (!androidx.print.PrintHelper.isPortrait(p11)) {
                v7 = android.print.PrintAttributes$MediaSize.UNKNOWN_LANDSCAPE;
            } else {
                v7 = android.print.PrintAttributes$MediaSize.UNKNOWN_PORTRAIT;
            }
            ((android.print.PrintManager) this.mContext.getSystemService("print")).print(p10, new androidx.print.PrintHelper$PrintBitmapAdapter(this, p10, this.mScaleMode, p11, p12), new android.print.PrintAttributes$Builder().setMediaSize(v7).setColorMode(this.mColorMode).build());
        }
        return;
    }

    public void printBitmap(String p2, android.net.Uri p3)
    {
        this.printBitmap(p2, p3, 0);
        return;
    }

    public void printBitmap(String p10, android.net.Uri p11, androidx.print.PrintHelper$OnPrintFinishCallback p12)
    {
        if (android.os.Build$VERSION.SDK_INT >= 19) {
            androidx.print.PrintHelper$PrintUriAdapter v0_1 = new androidx.print.PrintHelper$PrintUriAdapter(this, p10, p11, p12, this.mScaleMode);
            android.print.PrintManager v8_1 = ((android.print.PrintManager) this.mContext.getSystemService("print"));
            android.print.PrintAttributes$Builder v7_1 = new android.print.PrintAttributes$Builder();
            v7_1.setColorMode(this.mColorMode);
            if ((this.mOrientation != 1) && (this.mOrientation != 0)) {
                if (this.mOrientation == 2) {
                    v7_1.setMediaSize(android.print.PrintAttributes$MediaSize.UNKNOWN_PORTRAIT);
                }
            } else {
                v7_1.setMediaSize(android.print.PrintAttributes$MediaSize.UNKNOWN_LANDSCAPE);
            }
            v8_1.print(p10, v0_1, v7_1.build());
        }
        return;
    }

    public void setColorMode(int p1)
    {
        this.mColorMode = p1;
        return;
    }

    public void setOrientation(int p1)
    {
        this.mOrientation = p1;
        return;
    }

    public void setScaleMode(int p1)
    {
        this.mScaleMode = p1;
        return;
    }

    void writeBitmap(android.print.PrintAttributes p10, int p11, android.graphics.Bitmap p12, android.os.ParcelFileDescriptor p13, android.os.CancellationSignal p14, android.print.PrintDocumentAdapter$WriteResultCallback p15)
    {
        android.print.PrintAttributes v3;
        if (!androidx.print.PrintHelper.IS_MIN_MARGINS_HANDLING_CORRECT) {
            v3 = androidx.print.PrintHelper.copyAttributes(p10).setMinMargins(new android.print.PrintAttributes$Margins(0, 0, 0, 0)).build();
        } else {
            v3 = p10;
        }
        Void[] v1_2 = new Void[0];
        new androidx.print.PrintHelper$1(this, p14, v3, p12, p10, p11, p13, p15).execute(v1_2);
        return;
    }
}
