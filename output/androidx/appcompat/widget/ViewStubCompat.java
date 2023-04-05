package androidx.appcompat.widget;
public final class ViewStubCompat extends android.view.View {
    private androidx.appcompat.widget.ViewStubCompat$OnInflateListener mInflateListener;
    private int mInflatedId;
    private ref.WeakReference mInflatedViewRef;
    private android.view.LayoutInflater mInflater;
    private int mLayoutResource;

    public ViewStubCompat(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, 0);
        return;
    }

    public ViewStubCompat(android.content.Context p5, android.util.AttributeSet p6, int p7)
    {
        super(p5, p6, p7);
        super.mLayoutResource = 0;
        android.content.res.TypedArray v0 = p5.obtainStyledAttributes(p6, androidx.appcompat.R$styleable.ViewStubCompat, p7, 0);
        super.mInflatedId = v0.getResourceId(androidx.appcompat.R$styleable.ViewStubCompat_android_inflatedId, -1);
        super.mLayoutResource = v0.getResourceId(androidx.appcompat.R$styleable.ViewStubCompat_android_layout, 0);
        super.setId(v0.getResourceId(androidx.appcompat.R$styleable.ViewStubCompat_android_id, -1));
        v0.recycle();
        super.setVisibility(8);
        super.setWillNotDraw(1);
        return;
    }

    protected void dispatchDraw(android.graphics.Canvas p1)
    {
        return;
    }

    public void draw(android.graphics.Canvas p1)
    {
        return;
    }

    public int getInflatedId()
    {
        return this.mInflatedId;
    }

    public android.view.LayoutInflater getLayoutInflater()
    {
        return this.mInflater;
    }

    public int getLayoutResource()
    {
        return this.mLayoutResource;
    }

    public android.view.View inflate()
    {
        android.view.ViewParent v5 = this.getParent();
        if ((v5 == null) || (!(v5 instanceof android.view.ViewGroup))) {
            throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        } else {
            if (this.mLayoutResource == 0) {
                throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
            } else {
                android.view.LayoutInflater v0;
                android.view.ViewGroup v3_1 = ((android.view.ViewGroup) v5);
                if (this.mInflater == null) {
                    v0 = android.view.LayoutInflater.from(this.getContext());
                } else {
                    v0 = this.mInflater;
                }
                android.view.View v4 = v0.inflate(this.mLayoutResource, v3_1, 0);
                if (this.mInflatedId != -1) {
                    v4.setId(this.mInflatedId);
                }
                int v1 = v3_1.indexOfChild(this);
                v3_1.removeViewInLayout(this);
                android.view.ViewGroup$LayoutParams v2 = this.getLayoutParams();
                if (v2 == null) {
                    v3_1.addView(v4, v1);
                } else {
                    v3_1.addView(v4, v1, v2);
                }
                this.mInflatedViewRef = new ref.WeakReference(v4);
                if (this.mInflateListener != null) {
                    this.mInflateListener.onInflate(this, v4);
                }
                return v4;
            }
        }
    }

    protected void onMeasure(int p2, int p3)
    {
        this.setMeasuredDimension(0, 0);
        return;
    }

    public void setInflatedId(int p1)
    {
        this.mInflatedId = p1;
        return;
    }

    public void setLayoutInflater(android.view.LayoutInflater p1)
    {
        this.mInflater = p1;
        return;
    }

    public void setLayoutResource(int p1)
    {
        this.mLayoutResource = p1;
        return;
    }

    public void setOnInflateListener(androidx.appcompat.widget.ViewStubCompat$OnInflateListener p1)
    {
        this.mInflateListener = p1;
        return;
    }

    public void setVisibility(int p4)
    {
        if (this.mInflatedViewRef == null) {
            super.setVisibility(p4);
            if ((p4 == 0) || (p4 == 4)) {
                this.inflate();
            }
        } else {
            android.view.View v0_0 = ((android.view.View) this.mInflatedViewRef.get());
            if (v0_0 == null) {
                throw new IllegalStateException("setVisibility called on un-referenced view");
            } else {
                v0_0.setVisibility(p4);
            }
        }
        return;
    }
}
