package androidx.appcompat.graphics.drawable;
public class DrawerArrowDrawable extends android.graphics.drawable.Drawable {
    public static final int ARROW_DIRECTION_END = 3;
    public static final int ARROW_DIRECTION_LEFT = 0;
    public static final int ARROW_DIRECTION_RIGHT = 1;
    public static final int ARROW_DIRECTION_START = 2;
    private static final float ARROW_HEAD_ANGLE;
    private float mArrowHeadLength;
    private float mArrowShaftLength;
    private float mBarGap;
    private float mBarLength;
    private int mDirection;
    private float mMaxCutForBarSize;
    private final android.graphics.Paint mPaint;
    private final android.graphics.Path mPath;
    private float mProgress;
    private final int mSize;
    private boolean mSpin;
    private boolean mVerticalMirror;

    static DrawerArrowDrawable()
    {
        androidx.appcompat.graphics.drawable.DrawerArrowDrawable.ARROW_HEAD_ANGLE = ((float) Math.toRadians(45.0));
        return;
    }

    public DrawerArrowDrawable(android.content.Context p10)
    {
        this.mPaint = new android.graphics.Paint();
        this.mPath = new android.graphics.Path();
        this.mVerticalMirror = 0;
        this.mDirection = 2;
        this.mPaint.setStyle(android.graphics.Paint$Style.STROKE);
        this.mPaint.setStrokeJoin(android.graphics.Paint$Join.MITER);
        this.mPaint.setStrokeCap(android.graphics.Paint$Cap.BUTT);
        this.mPaint.setAntiAlias(1);
        android.content.res.TypedArray v0 = p10.getTheme().obtainStyledAttributes(0, androidx.appcompat.R$styleable.DrawerArrowToggle, androidx.appcompat.R$attr.drawerArrowStyle, androidx.appcompat.R$style.Base_Widget_AppCompat_DrawerArrowToggle);
        this.setColor(v0.getColor(androidx.appcompat.R$styleable.DrawerArrowToggle_color, 0));
        this.setBarThickness(v0.getDimension(androidx.appcompat.R$styleable.DrawerArrowToggle_thickness, 0));
        this.setSpinEnabled(v0.getBoolean(androidx.appcompat.R$styleable.DrawerArrowToggle_spinBars, 1));
        this.setGapSize(((float) Math.round(v0.getDimension(androidx.appcompat.R$styleable.DrawerArrowToggle_gapBetweenBars, 0))));
        this.mSize = v0.getDimensionPixelSize(androidx.appcompat.R$styleable.DrawerArrowToggle_drawableSize, 0);
        this.mBarLength = ((float) Math.round(v0.getDimension(androidx.appcompat.R$styleable.DrawerArrowToggle_barLength, 0)));
        this.mArrowHeadLength = ((float) Math.round(v0.getDimension(androidx.appcompat.R$styleable.DrawerArrowToggle_arrowHeadLength, 0)));
        this.mArrowShaftLength = v0.getDimension(androidx.appcompat.R$styleable.DrawerArrowToggle_arrowShaftLength, 0);
        v0.recycle();
        return;
    }

    private static float lerp(float p1, float p2, float p3)
    {
        return (((p2 - p1) * p3) + p1);
    }

    public void draw(android.graphics.Canvas p23)
    {
        int v13;
        android.graphics.Rect v11 = this.getBounds();
        switch (this.mDirection) {
            case 0:
                v13 = 0;
                break;
            case 1:
                v13 = 1;
                break;
            case 2:
            default:
                if (androidx.core.graphics.drawable.DrawableCompat.getLayoutDirection(this) != 1) {
                    v13 = 0;
                } else {
                    v13 = 1;
                }
                break;
            case 3:
                if (androidx.core.graphics.drawable.DrawableCompat.getLayoutDirection(this) != 0) {
                    v13 = 0;
                } else {
                    v13 = 1;
                }
                break;
        }
        android.graphics.Paint v19_24;
        float v5_1 = androidx.appcompat.graphics.drawable.DrawerArrowDrawable.lerp(this.mBarLength, ((float) Math.sqrt(((double) ((this.mArrowHeadLength * this.mArrowHeadLength) * 1073741824)))), this.mProgress);
        float v8 = androidx.appcompat.graphics.drawable.DrawerArrowDrawable.lerp(this.mBarLength, this.mArrowShaftLength, this.mProgress);
        float v7 = ((float) Math.round(androidx.appcompat.graphics.drawable.DrawerArrowDrawable.lerp(0, this.mMaxCutForBarSize, this.mProgress)));
        float v15 = androidx.appcompat.graphics.drawable.DrawerArrowDrawable.lerp(0, androidx.appcompat.graphics.drawable.DrawerArrowDrawable.ARROW_HEAD_ANGLE, this.mProgress);
        if (v13 == 0) {
            v19_24 = -1020002304;
        } else {
            v19_24 = 0;
        }
        float v18_52;
        if (v13 == 0) {
            v18_52 = 0;
        } else {
            v18_52 = 1127481344;
        }
        float v12 = androidx.appcompat.graphics.drawable.DrawerArrowDrawable.lerp(v19_24, v18_52, this.mProgress);
        float v9 = ((float) Math.round((((double) v5_1) * Math.cos(((double) v15)))));
        float v6 = ((float) Math.round((((double) v5_1) * Math.sin(((double) v15)))));
        this.mPath.rewind();
        float v16 = androidx.appcompat.graphics.drawable.DrawerArrowDrawable.lerp((this.mBarGap + this.mPaint.getStrokeWidth()), (- this.mMaxCutForBarSize), this.mProgress);
        float v4 = ((- v8) / 1073741824);
        this.mPath.moveTo((v4 + v7), 0);
        this.mPath.rLineTo((v8 - (1073741824 * v7)), 0);
        this.mPath.moveTo(v4, v16);
        this.mPath.rLineTo(v9, v6);
        this.mPath.moveTo(v4, (- v16));
        this.mPath.rLineTo(v9, (- v6));
        this.mPath.close();
        p23.save();
        float v10 = this.mPaint.getStrokeWidth();
        p23.translate(((float) v11.centerX()), (((float) ((((int) ((((float) v11.height()) - (1077936128 * v10)) - (this.mBarGap * 1073741824))) / 4) * 2)) + ((1069547520 * v10) + this.mBarGap)));
        if (!this.mSpin) {
            if (v13 != 0) {
                p23.rotate(1127481344);
            }
        } else {
            float v18_34;
            if ((this.mVerticalMirror ^ v13) == 0) {
                v18_34 = 1;
            } else {
                v18_34 = -1;
            }
            p23.rotate((((float) v18_34) * v12));
        }
        p23.drawPath(this.mPath, this.mPaint);
        p23.restore();
        return;
    }

    public float getArrowHeadLength()
    {
        return this.mArrowHeadLength;
    }

    public float getArrowShaftLength()
    {
        return this.mArrowShaftLength;
    }

    public float getBarLength()
    {
        return this.mBarLength;
    }

    public float getBarThickness()
    {
        return this.mPaint.getStrokeWidth();
    }

    public int getColor()
    {
        return this.mPaint.getColor();
    }

    public int getDirection()
    {
        return this.mDirection;
    }

    public float getGapSize()
    {
        return this.mBarGap;
    }

    public int getIntrinsicHeight()
    {
        return this.mSize;
    }

    public int getIntrinsicWidth()
    {
        return this.mSize;
    }

    public int getOpacity()
    {
        return -3;
    }

    public final android.graphics.Paint getPaint()
    {
        return this.mPaint;
    }

    public float getProgress()
    {
        return this.mProgress;
    }

    public boolean isSpinEnabled()
    {
        return this.mSpin;
    }

    public void setAlpha(int p2)
    {
        if (p2 != this.mPaint.getAlpha()) {
            this.mPaint.setAlpha(p2);
            this.invalidateSelf();
        }
        return;
    }

    public void setArrowHeadLength(float p2)
    {
        if (this.mArrowHeadLength != p2) {
            this.mArrowHeadLength = p2;
            this.invalidateSelf();
        }
        return;
    }

    public void setArrowShaftLength(float p2)
    {
        if (this.mArrowShaftLength != p2) {
            this.mArrowShaftLength = p2;
            this.invalidateSelf();
        }
        return;
    }

    public void setBarLength(float p2)
    {
        if (this.mBarLength != p2) {
            this.mBarLength = p2;
            this.invalidateSelf();
        }
        return;
    }

    public void setBarThickness(float p5)
    {
        if (this.mPaint.getStrokeWidth() != p5) {
            this.mPaint.setStrokeWidth(p5);
            this.mMaxCutForBarSize = ((float) (((double) (p5 / 1073741824)) * Math.cos(((double) androidx.appcompat.graphics.drawable.DrawerArrowDrawable.ARROW_HEAD_ANGLE))));
            this.invalidateSelf();
        }
        return;
    }

    public void setColor(int p2)
    {
        if (p2 != this.mPaint.getColor()) {
            this.mPaint.setColor(p2);
            this.invalidateSelf();
        }
        return;
    }

    public void setColorFilter(android.graphics.ColorFilter p2)
    {
        this.mPaint.setColorFilter(p2);
        this.invalidateSelf();
        return;
    }

    public void setDirection(int p2)
    {
        if (p2 != this.mDirection) {
            this.mDirection = p2;
            this.invalidateSelf();
        }
        return;
    }

    public void setGapSize(float p2)
    {
        if (p2 != this.mBarGap) {
            this.mBarGap = p2;
            this.invalidateSelf();
        }
        return;
    }

    public void setProgress(float p2)
    {
        if (this.mProgress != p2) {
            this.mProgress = p2;
            this.invalidateSelf();
        }
        return;
    }

    public void setSpinEnabled(boolean p2)
    {
        if (this.mSpin != p2) {
            this.mSpin = p2;
            this.invalidateSelf();
        }
        return;
    }

    public void setVerticalMirror(boolean p2)
    {
        if (this.mVerticalMirror != p2) {
            this.mVerticalMirror = p2;
            this.invalidateSelf();
        }
        return;
    }
}
