package androidx.appcompat.widget;
 class TooltipCompatHandler implements android.view.View$OnLongClickListener, android.view.View$OnHoverListener, android.view.View$OnAttachStateChangeListener {
    private static final long HOVER_HIDE_TIMEOUT_MS = 15000;
    private static final long HOVER_HIDE_TIMEOUT_SHORT_MS = 3000;
    private static final long LONG_CLICK_HIDE_TIMEOUT_MS = 2500;
    private static final String TAG = "TooltipCompatHandler";
    private static androidx.appcompat.widget.TooltipCompatHandler sActiveHandler;
    private static androidx.appcompat.widget.TooltipCompatHandler sPendingHandler;
    private final android.view.View mAnchor;
    private int mAnchorX;
    private int mAnchorY;
    private boolean mFromTouch;
    private final Runnable mHideRunnable;
    private final int mHoverSlop;
    private androidx.appcompat.widget.TooltipPopup mPopup;
    private final Runnable mShowRunnable;
    private final CharSequence mTooltipText;

    private TooltipCompatHandler(android.view.View p2, CharSequence p3)
    {
        this.mShowRunnable = new androidx.appcompat.widget.TooltipCompatHandler$1(this);
        this.mHideRunnable = new androidx.appcompat.widget.TooltipCompatHandler$2(this);
        this.mAnchor = p2;
        this.mTooltipText = p3;
        this.mHoverSlop = androidx.core.view.ViewConfigurationCompat.getScaledHoverSlop(android.view.ViewConfiguration.get(this.mAnchor.getContext()));
        this.clearAnchorPos();
        this.mAnchor.setOnLongClickListener(this);
        this.mAnchor.setOnHoverListener(this);
        return;
    }

    private void cancelPendingShow()
    {
        this.mAnchor.removeCallbacks(this.mShowRunnable);
        return;
    }

    private void clearAnchorPos()
    {
        this.mAnchorX = 2147483647;
        this.mAnchorY = 2147483647;
        return;
    }

    private void scheduleShow()
    {
        this.mAnchor.postDelayed(this.mShowRunnable, ((long) android.view.ViewConfiguration.getLongPressTimeout()));
        return;
    }

    private static void setPendingHandler(androidx.appcompat.widget.TooltipCompatHandler p1)
    {
        if (androidx.appcompat.widget.TooltipCompatHandler.sPendingHandler != null) {
            androidx.appcompat.widget.TooltipCompatHandler.sPendingHandler.cancelPendingShow();
        }
        androidx.appcompat.widget.TooltipCompatHandler.sPendingHandler = p1;
        if (androidx.appcompat.widget.TooltipCompatHandler.sPendingHandler != null) {
            androidx.appcompat.widget.TooltipCompatHandler.sPendingHandler.scheduleShow();
        }
        return;
    }

    public static void setTooltipText(android.view.View p2, CharSequence p3)
    {
        if ((androidx.appcompat.widget.TooltipCompatHandler.sPendingHandler != null) && (androidx.appcompat.widget.TooltipCompatHandler.sPendingHandler.mAnchor == p2)) {
            androidx.appcompat.widget.TooltipCompatHandler.setPendingHandler(0);
        }
        if (!android.text.TextUtils.isEmpty(p3)) {
            new androidx.appcompat.widget.TooltipCompatHandler(p2, p3);
        } else {
            if ((androidx.appcompat.widget.TooltipCompatHandler.sActiveHandler != null) && (androidx.appcompat.widget.TooltipCompatHandler.sActiveHandler.mAnchor == p2)) {
                androidx.appcompat.widget.TooltipCompatHandler.sActiveHandler.hide();
            }
            p2.setOnLongClickListener(0);
            p2.setLongClickable(0);
            p2.setOnHoverListener(0);
        }
        return;
    }

    private boolean updateAnchorPos(android.view.MotionEvent p5)
    {
        int v2_4;
        int v0 = ((int) p5.getX());
        int v1 = ((int) p5.getY());
        if ((Math.abs((v0 - this.mAnchorX)) > this.mHoverSlop) || (Math.abs((v1 - this.mAnchorY)) > this.mHoverSlop)) {
            this.mAnchorX = v0;
            this.mAnchorY = v1;
            v2_4 = 1;
        } else {
            v2_4 = 0;
        }
        return v2_4;
    }

    void hide()
    {
        if (androidx.appcompat.widget.TooltipCompatHandler.sActiveHandler == this) {
            androidx.appcompat.widget.TooltipCompatHandler.sActiveHandler = 0;
            if (this.mPopup == null) {
                android.util.Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            } else {
                this.mPopup.hide();
                this.mPopup = 0;
                this.clearAnchorPos();
                this.mAnchor.removeOnAttachStateChangeListener(this);
            }
        }
        if (androidx.appcompat.widget.TooltipCompatHandler.sPendingHandler == this) {
            androidx.appcompat.widget.TooltipCompatHandler.setPendingHandler(0);
        }
        this.mAnchor.removeCallbacks(this.mHideRunnable);
        return;
    }

    public boolean onHover(android.view.View p5, android.view.MotionEvent p6)
    {
        if ((this.mPopup == null) || (!this.mFromTouch)) {
            android.view.accessibility.AccessibilityManager v0_1 = ((android.view.accessibility.AccessibilityManager) this.mAnchor.getContext().getSystemService("accessibility"));
            if ((!v0_1.isEnabled()) || (!v0_1.isTouchExplorationEnabled())) {
                switch (p6.getAction()) {
                    case 7:
                        if ((this.mAnchor.isEnabled()) && ((this.mPopup == null) && (this.updateAnchorPos(p6)))) {
                            androidx.appcompat.widget.TooltipCompatHandler.setPendingHandler(this);
                        }
                        break;
                    case 8:
                    case 9:
                    default:
                        break;
                    case 10:
                        this.clearAnchorPos();
                        this.hide();
                        break;
                }
            }
        }
        return 0;
    }

    public boolean onLongClick(android.view.View p3)
    {
        this.mAnchorX = (p3.getWidth() / 2);
        this.mAnchorY = (p3.getHeight() / 2);
        this.show(1);
        return 1;
    }

    public void onViewAttachedToWindow(android.view.View p1)
    {
        return;
    }

    public void onViewDetachedFromWindow(android.view.View p1)
    {
        this.hide();
        return;
    }

    void show(boolean p9)
    {
        if (androidx.core.view.ViewCompat.isAttachedToWindow(this.mAnchor)) {
            androidx.appcompat.widget.TooltipCompatHandler.setPendingHandler(0);
            if (androidx.appcompat.widget.TooltipCompatHandler.sActiveHandler != null) {
                androidx.appcompat.widget.TooltipCompatHandler.sActiveHandler.hide();
            }
            long v6;
            androidx.appcompat.widget.TooltipCompatHandler.sActiveHandler = this;
            this.mFromTouch = p9;
            this.mPopup = new androidx.appcompat.widget.TooltipPopup(this.mAnchor.getContext());
            this.mPopup.show(this.mAnchor, this.mAnchorX, this.mAnchorY, this.mFromTouch, this.mTooltipText);
            this.mAnchor.addOnAttachStateChangeListener(this);
            if (!this.mFromTouch) {
                if ((androidx.core.view.ViewCompat.getWindowSystemUiVisibility(this.mAnchor) & 1) != 1) {
                    v6 = (15000 - ((long) android.view.ViewConfiguration.getLongPressTimeout()));
                } else {
                    v6 = (3000 - ((long) android.view.ViewConfiguration.getLongPressTimeout()));
                }
            } else {
                v6 = 2500;
            }
            this.mAnchor.removeCallbacks(this.mHideRunnable);
            this.mAnchor.postDelayed(this.mHideRunnable, v6);
        }
        return;
    }
}
