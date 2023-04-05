package androidx.appcompat.widget;
 class AppCompatProgressBarHelper {
    private static final int[] TINT_ATTRS;
    private android.graphics.Bitmap mSampleTile;
    private final android.widget.ProgressBar mView;

    static AppCompatProgressBarHelper()
    {
        int[] v0_1 = new int[2];
        v0_1 = {16843067, 16843068};
        androidx.appcompat.widget.AppCompatProgressBarHelper.TINT_ATTRS = v0_1;
        return;
    }

    AppCompatProgressBarHelper(android.widget.ProgressBar p1)
    {
        this.mView = p1;
        return;
    }

    private android.graphics.drawable.shapes.Shape getDrawableShape()
    {
        float[] v0 = new float[8];
        v0 = {1084227584, 1084227584, 1084227584, 1084227584, 1084227584, 1084227584, 1084227584, 1084227584};
        return new android.graphics.drawable.shapes.RoundRectShape(v0, 0, 0);
    }

    private android.graphics.drawable.Drawable tileify(android.graphics.drawable.Drawable p16, boolean p17)
    {
        android.graphics.drawable.ClipDrawable v8_0;
        if (!(p16 instanceof androidx.core.graphics.drawable.WrappedDrawable)) {
            if (!(p16 instanceof android.graphics.drawable.LayerDrawable)) {
                if (!(p16 instanceof android.graphics.drawable.BitmapDrawable)) {
                    v8_0 = p16;
                } else {
                    android.graphics.Bitmap v11 = ((android.graphics.drawable.BitmapDrawable) p16).getBitmap();
                    if (this.mSampleTile == null) {
                        this.mSampleTile = v11;
                    }
                    android.graphics.drawable.ClipDrawable v10_1 = new android.graphics.drawable.ShapeDrawable(this.getDrawableShape());
                    v10_1.getPaint().setShader(new android.graphics.BitmapShader(v11, android.graphics.Shader$TileMode.REPEAT, android.graphics.Shader$TileMode.CLAMP));
                    v10_1.getPaint().setColorFilter(((android.graphics.drawable.BitmapDrawable) p16).getPaint().getColorFilter());
                    if (p17) {
                        v10_1 = new android.graphics.drawable.ClipDrawable(v10_1, 3, 1);
                    }
                    v8_0 = v10_1;
                }
            } else {
                int v1 = ((android.graphics.drawable.LayerDrawable) p16).getNumberOfLayers();
                android.graphics.drawable.Drawable[] v9 = new android.graphics.drawable.Drawable[v1];
                int v5_0 = 0;
                while (v5_0 < v1) {
                    int v12_12;
                    int v6 = ((android.graphics.drawable.LayerDrawable) p16).getId(v5_0);
                    int v13_4 = ((android.graphics.drawable.LayerDrawable) p16).getDrawable(v5_0);
                    if ((v6 != 16908301) && (v6 != 16908303)) {
                        v12_12 = 0;
                    } else {
                        v12_12 = 1;
                    }
                    v9[v5_0] = this.tileify(v13_4, v12_12);
                    v5_0++;
                }
                v8_0 = new android.graphics.drawable.LayerDrawable(v9);
                int v5_1 = 0;
                while (v5_1 < v1) {
                    v8_0.setId(v5_1, ((android.graphics.drawable.LayerDrawable) p16).getId(v5_1));
                    v5_1++;
                }
            }
        } else {
            android.graphics.drawable.Drawable v7_0 = ((androidx.core.graphics.drawable.WrappedDrawable) p16).getWrappedDrawable();
            if (v7_0 == null) {
            } else {
                ((androidx.core.graphics.drawable.WrappedDrawable) p16).setWrappedDrawable(this.tileify(v7_0, p17));
            }
        }
        return v8_0;
    }

    private android.graphics.drawable.Drawable tileifyIndeterminate(android.graphics.drawable.Drawable p9)
    {
        if ((p9 instanceof android.graphics.drawable.AnimationDrawable)) {
            int v0 = ((android.graphics.drawable.AnimationDrawable) p9).getNumberOfFrames();
            android.graphics.drawable.AnimationDrawable v4_1 = new android.graphics.drawable.AnimationDrawable();
            v4_1.setOneShot(((android.graphics.drawable.AnimationDrawable) p9).isOneShot());
            int v3 = 0;
            while (v3 < v0) {
                android.graphics.drawable.Drawable v2 = this.tileify(((android.graphics.drawable.AnimationDrawable) p9).getFrame(v3), 1);
                v2.setLevel(10000);
                v4_1.addFrame(v2, ((android.graphics.drawable.AnimationDrawable) p9).getDuration(v3));
                v3++;
            }
            v4_1.setLevel(10000);
            p9 = v4_1;
        }
        return p9;
    }

    android.graphics.Bitmap getSampleTime()
    {
        return this.mSampleTile;
    }

    void loadFromAttributes(android.util.AttributeSet p6, int p7)
    {
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(this.mView.getContext(), p6, androidx.appcompat.widget.AppCompatProgressBarHelper.TINT_ATTRS, p7, 0);
        android.graphics.drawable.Drawable v1_1 = v0.getDrawableIfKnown(0);
        if (v1_1 != null) {
            this.mView.setIndeterminateDrawable(this.tileifyIndeterminate(v1_1));
        }
        android.graphics.drawable.Drawable v1_0 = v0.getDrawableIfKnown(1);
        if (v1_0 != null) {
            this.mView.setProgressDrawable(this.tileify(v1_0, 0));
        }
        v0.recycle();
        return;
    }
}
