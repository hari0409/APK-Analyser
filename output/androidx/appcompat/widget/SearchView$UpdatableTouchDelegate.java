package androidx.appcompat.widget;
 class SearchView$UpdatableTouchDelegate extends android.view.TouchDelegate {
    private final android.graphics.Rect mActualBounds;
    private boolean mDelegateTargeted;
    private final android.view.View mDelegateView;
    private final int mSlop;
    private final android.graphics.Rect mSlopBounds;
    private final android.graphics.Rect mTargetBounds;

    public SearchView$UpdatableTouchDelegate(android.graphics.Rect p2, android.graphics.Rect p3, android.view.View p4)
    {
        super(p2, p4);
        super.mSlop = android.view.ViewConfiguration.get(p4.getContext()).getScaledTouchSlop();
        super.mTargetBounds = new android.graphics.Rect();
        super.mSlopBounds = new android.graphics.Rect();
        super.mActualBounds = new android.graphics.Rect();
        super.setBounds(p2, p3);
        super.mDelegateView = p4;
        return;
    }

    public boolean onTouchEvent(android.view.MotionEvent p8)
    {
        int v3 = ((int) p8.getX());
        int v4 = ((int) p8.getY());
        int v2 = 0;
        int v1 = 1;
        boolean v0 = 0;
        switch (p8.getAction()) {
            case 0:
                if (!this.mTargetBounds.contains(v3, v4)) {
                } else {
                    this.mDelegateTargeted = 1;
                    v2 = 1;
                }
                break;
            case 1:
            case 2:
                v2 = this.mDelegateTargeted;
                if ((v2 == 0) || (this.mSlopBounds.contains(v3, v4))) {
                } else {
                    v1 = 0;
                }
                break;
            case 3:
                v2 = this.mDelegateTargeted;
                this.mDelegateTargeted = 0;
                break;
        }
        if (v2 != 0) {
            if ((v1 == 0) || (this.mActualBounds.contains(v3, v4))) {
                p8.setLocation(((float) (v3 - this.mActualBounds.left)), ((float) (v4 - this.mActualBounds.top)));
            } else {
                p8.setLocation(((float) (this.mDelegateView.getWidth() / 2)), ((float) (this.mDelegateView.getHeight() / 2)));
            }
            v0 = this.mDelegateView.dispatchTouchEvent(p8);
        }
        return v0;
    }

    public void setBounds(android.graphics.Rect p4, android.graphics.Rect p5)
    {
        this.mTargetBounds.set(p4);
        this.mSlopBounds.set(p4);
        this.mSlopBounds.inset((- this.mSlop), (- this.mSlop));
        this.mActualBounds.set(p5);
        return;
    }
}
