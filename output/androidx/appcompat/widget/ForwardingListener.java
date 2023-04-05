package androidx.appcompat.widget;
public abstract class ForwardingListener implements android.view.View$OnTouchListener, android.view.View$OnAttachStateChangeListener {
    private int mActivePointerId;
    private Runnable mDisallowIntercept;
    private boolean mForwarding;
    private final int mLongPressTimeout;
    private final float mScaledTouchSlop;
    final android.view.View mSrc;
    private final int mTapTimeout;
    private final int[] mTmpLocation;
    private Runnable mTriggerLongPress;

    public ForwardingListener(android.view.View p3)
    {
        int v0_6 = new int[2];
        this.mTmpLocation = v0_6;
        this.mSrc = p3;
        p3.setLongClickable(1);
        p3.addOnAttachStateChangeListener(this);
        this.mScaledTouchSlop = ((float) android.view.ViewConfiguration.get(p3.getContext()).getScaledTouchSlop());
        this.mTapTimeout = android.view.ViewConfiguration.getTapTimeout();
        this.mLongPressTimeout = ((this.mTapTimeout + android.view.ViewConfiguration.getLongPressTimeout()) / 2);
        return;
    }

    private void clearCallbacks()
    {
        if (this.mTriggerLongPress != null) {
            this.mSrc.removeCallbacks(this.mTriggerLongPress);
        }
        if (this.mDisallowIntercept != null) {
            this.mSrc.removeCallbacks(this.mDisallowIntercept);
        }
        return;
    }

    private boolean onTouchForwarded(android.view.MotionEvent p11)
    {
        int v7 = 1;
        int v8 = 0;
        android.view.View v6 = this.mSrc;
        androidx.appcompat.view.menu.ShowableListMenu v5 = this.getPopup();
        if ((v5 != null) && (v5.isShowing())) {
            androidx.appcompat.widget.DropDownListView v1_1 = ((androidx.appcompat.widget.DropDownListView) v5.getListView());
            if ((v1_1 != null) && (v1_1.isShown())) {
                int v4;
                android.view.MotionEvent v2 = android.view.MotionEvent.obtainNoHistory(p11);
                this.toGlobalMotionEvent(v6, v2);
                this.toLocalMotionEvent(v1_1, v2);
                boolean v3 = v1_1.onForwardedEvent(v2, this.mActivePointerId);
                v2.recycle();
                int v0 = p11.getActionMasked();
                if ((v0 == 1) || (v0 == 3)) {
                    v4 = 0;
                } else {
                    v4 = 1;
                }
                if ((!v3) || (v4 == 0)) {
                    v7 = 0;
                }
                v8 = v7;
            }
        }
        return v8;
    }

    private boolean onTouchObserved(android.view.MotionEvent p11)
    {
        Runnable v5_0 = 0;
        android.view.View v2 = this.mSrc;
        if (v2.isEnabled()) {
            switch (p11.getActionMasked()) {
                case 0:
                    this.mActivePointerId = p11.getPointerId(0);
                    if (this.mDisallowIntercept == null) {
                        this.mDisallowIntercept = new androidx.appcompat.widget.ForwardingListener$DisallowIntercept(this);
                    }
                    v2.postDelayed(this.mDisallowIntercept, ((long) this.mTapTimeout));
                    if (this.mTriggerLongPress == null) {
                        this.mTriggerLongPress = new androidx.appcompat.widget.ForwardingListener$TriggerLongPress(this);
                    }
                    v2.postDelayed(this.mTriggerLongPress, ((long) this.mLongPressTimeout));
                    break;
                case 1:
                case 3:
                    this.clearCallbacks();
                    break;
                case 2:
                    int v1 = p11.findPointerIndex(this.mActivePointerId);
                    if ((v1 >= 0) && (!androidx.appcompat.widget.ForwardingListener.pointInView(v2, p11.getX(v1), p11.getY(v1), this.mScaledTouchSlop))) {
                        this.clearCallbacks();
                        v2.getParent().requestDisallowInterceptTouchEvent(1);
                        v5_0 = 1;
                    }
                    break;
                default:
            }
        }
        return v5_0;
    }

    private static boolean pointInView(android.view.View p2, float p3, float p4, float p5)
    {
        if ((p3 < (- p5)) || ((p4 < (- p5)) || ((p3 >= (((float) (p2.getRight() - p2.getLeft())) + p5)) || (p4 >= (((float) (p2.getBottom() - p2.getTop())) + p5))))) {
            int v0_11 = 0;
        } else {
            v0_11 = 1;
        }
        return v0_11;
    }

    private boolean toGlobalMotionEvent(android.view.View p5, android.view.MotionEvent p6)
    {
        int[] v0 = this.mTmpLocation;
        p5.getLocationOnScreen(v0);
        p6.offsetLocation(((float) v0[0]), ((float) v0[1]));
        return 1;
    }

    private boolean toLocalMotionEvent(android.view.View p5, android.view.MotionEvent p6)
    {
        int[] v0 = this.mTmpLocation;
        p5.getLocationOnScreen(v0);
        p6.offsetLocation(((float) (- v0[0])), ((float) (- v0[1])));
        return 1;
    }

    public abstract androidx.appcompat.view.menu.ShowableListMenu getPopup();

    protected boolean onForwardingStarted()
    {
        androidx.appcompat.view.menu.ShowableListMenu v0 = this.getPopup();
        if ((v0 != null) && (!v0.isShowing())) {
            v0.show();
        }
        return 1;
    }

    protected boolean onForwardingStopped()
    {
        androidx.appcompat.view.menu.ShowableListMenu v0 = this.getPopup();
        if ((v0 != null) && (v0.isShowing())) {
            v0.dismiss();
        }
        return 1;
    }

    void onLongPress()
    {
        this.clearCallbacks();
        android.view.View v9 = this.mSrc;
        if ((v9.isEnabled()) && ((!v9.isLongClickable()) && (this.onForwardingStarted()))) {
            v9.getParent().requestDisallowInterceptTouchEvent(1);
            long v0 = android.os.SystemClock.uptimeMillis();
            android.view.MotionEvent v8 = android.view.MotionEvent.obtain(v0, v0, 3, 0, 0, 0);
            v9.onTouchEvent(v8);
            v8.recycle();
            this.mForwarding = 1;
        }
        return;
    }

    public boolean onTouch(android.view.View p13, android.view.MotionEvent p14)
    {
        int v9;
        int v7 = 0;
        boolean v10 = this.mForwarding;
        if (!v10) {
            if ((!this.onTouchObserved(p14)) || (!this.onForwardingStarted())) {
                v9 = 0;
            } else {
                v9 = 1;
            }
            if (v9 != 0) {
                long v0 = android.os.SystemClock.uptimeMillis();
                android.view.MotionEvent v8 = android.view.MotionEvent.obtain(v0, v0, 3, 0, 0, 0);
                this.mSrc.onTouchEvent(v8);
                v8.recycle();
            }
        } else {
            if ((!this.onTouchForwarded(p14)) && (this.onForwardingStopped())) {
                v9 = 0;
            } else {
                v9 = 1;
            }
        }
        this.mForwarding = v9;
        if ((v9 != 0) || (v10)) {
            v7 = 1;
        }
        return v7;
    }

    public void onViewAttachedToWindow(android.view.View p1)
    {
        return;
    }

    public void onViewDetachedFromWindow(android.view.View p3)
    {
        this.mForwarding = 0;
        this.mActivePointerId = -1;
        if (this.mDisallowIntercept != null) {
            this.mSrc.removeCallbacks(this.mDisallowIntercept);
        }
        return;
    }
}
