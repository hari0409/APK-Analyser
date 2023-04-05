package androidx.appcompat.widget;
 class TooltipPopup {
    private static final String TAG = "TooltipPopup";
    private final android.view.View mContentView;
    private final android.content.Context mContext;
    private final android.view.WindowManager$LayoutParams mLayoutParams;
    private final android.widget.TextView mMessageView;
    private final int[] mTmpAnchorPos;
    private final int[] mTmpAppPos;
    private final android.graphics.Rect mTmpDisplayFrame;

    TooltipPopup(android.content.Context p5)
    {
        this.mLayoutParams = new android.view.WindowManager$LayoutParams();
        this.mTmpDisplayFrame = new android.graphics.Rect();
        android.view.WindowManager$LayoutParams v0_19 = new int[2];
        this.mTmpAnchorPos = v0_19;
        android.view.WindowManager$LayoutParams v0_0 = new int[2];
        this.mTmpAppPos = v0_0;
        this.mContext = p5;
        this.mContentView = android.view.LayoutInflater.from(this.mContext).inflate(androidx.appcompat.R$layout.abc_tooltip, 0);
        this.mMessageView = ((android.widget.TextView) this.mContentView.findViewById(androidx.appcompat.R$id.message));
        this.mLayoutParams.setTitle(this.getClass().getSimpleName());
        this.mLayoutParams.packageName = this.mContext.getPackageName();
        this.mLayoutParams.type = 1002;
        this.mLayoutParams.width = -2;
        this.mLayoutParams.height = -2;
        this.mLayoutParams.format = -3;
        this.mLayoutParams.windowAnimations = androidx.appcompat.R$style.Animation_AppCompat_Tooltip;
        this.mLayoutParams.flags = 24;
        return;
    }

    private void computePosition(android.view.View p25, int p26, int p27, boolean p28, android.view.WindowManager$LayoutParams p29)
    {
        int v9;
        p29.token = p25.getApplicationWindowToken();
        int v16 = this.mContext.getResources().getDimensionPixelOffset(androidx.appcompat.R$dimen.tooltip_precise_anchor_threshold);
        if (p25.getWidth() < v16) {
            v9 = (p25.getWidth() / 2);
        } else {
            v9 = p26;
        }
        int v7;
        int v6;
        if (p25.getHeight() < v16) {
            v7 = p25.getHeight();
            v6 = 0;
        } else {
            int v8 = this.mContext.getResources().getDimensionPixelOffset(androidx.appcompat.R$dimen.tooltip_precise_anchor_extra_offset);
            v7 = (p27 + v8);
            v6 = (p27 - v8);
        }
        android.graphics.Rect v19_28;
        p29.gravity = 49;
        int v20_14 = this.mContext.getResources();
        if (!p28) {
            v19_28 = androidx.appcompat.R$dimen.tooltip_y_offset_non_touch;
        } else {
            v19_28 = androidx.appcompat.R$dimen.tooltip_y_offset_touch;
        }
        int v15 = v20_14.getDimensionPixelOffset(v19_28);
        android.view.View v4 = androidx.appcompat.widget.TooltipPopup.getAppRootView(p25);
        if (v4 != null) {
            v4.getWindowVisibleDisplayFrame(this.mTmpDisplayFrame);
            if ((this.mTmpDisplayFrame.left < 0) && (this.mTmpDisplayFrame.top < 0)) {
                int v13;
                android.content.res.Resources v10 = this.mContext.getResources();
                int v11 = v10.getIdentifier("status_bar_height", "dimen", "android");
                if (v11 == 0) {
                    v13 = 0;
                } else {
                    v13 = v10.getDimensionPixelSize(v11);
                }
                android.util.DisplayMetrics v5 = v10.getDisplayMetrics();
                this.mTmpDisplayFrame.set(0, v13, v5.widthPixels, v5.heightPixels);
            }
            v4.getLocationOnScreen(this.mTmpAppPos);
            p25.getLocationOnScreen(this.mTmpAnchorPos);
            android.graphics.Rect v19_3 = this.mTmpAnchorPos;
            v19_3[0] = (v19_3[0] - this.mTmpAppPos[0]);
            android.graphics.Rect v19_4 = this.mTmpAnchorPos;
            v19_4[1] = (v19_4[1] - this.mTmpAppPos[1]);
            p29.x = ((this.mTmpAnchorPos[0] + v9) - (v4.getWidth() / 2));
            this.mContentView.measure(android.view.View$MeasureSpec.makeMeasureSpec(0, 0), android.view.View$MeasureSpec.makeMeasureSpec(0, 0));
            int v14 = this.mContentView.getMeasuredHeight();
            int v17 = (((this.mTmpAnchorPos[1] + v6) - v15) - v14);
            int v18 = ((this.mTmpAnchorPos[1] + v7) + v15);
            if (!p28) {
                if ((v18 + v14) > this.mTmpDisplayFrame.height()) {
                    p29.y = v17;
                } else {
                    p29.y = v18;
                }
            } else {
                if (v17 < 0) {
                    p29.y = v18;
                } else {
                    p29.y = v17;
                }
            }
        } else {
            android.util.Log.e("TooltipPopup", "Cannot find app view");
        }
        return;
    }

    private static android.view.View getAppRootView(android.view.View p5)
    {
        android.view.View v2 = p5.getRootView();
        android.view.WindowManager$LayoutParams v1_0 = v2.getLayoutParams();
        if ((!(v1_0 instanceof android.view.WindowManager$LayoutParams)) || (((android.view.WindowManager$LayoutParams) v1_0).type != 2)) {
            android.content.Context v0_0 = p5.getContext();
            while ((v0_0 instanceof android.content.ContextWrapper)) {
                if (!(v0_0 instanceof android.app.Activity)) {
                    v0_0 = ((android.content.ContextWrapper) v0_0).getBaseContext();
                } else {
                    v2 = ((android.app.Activity) v0_0).getWindow().getDecorView();
                    break;
                }
            }
        }
        return v2;
    }

    void hide()
    {
        if (this.isShowing()) {
            ((android.view.WindowManager) this.mContext.getSystemService("window")).removeView(this.mContentView);
        }
        return;
    }

    boolean isShowing()
    {
        int v0_2;
        if (this.mContentView.getParent() == null) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    void show(android.view.View p8, int p9, int p10, boolean p11, CharSequence p12)
    {
        if (this.isShowing()) {
            this.hide();
        }
        this.mMessageView.setText(p12);
        this.computePosition(p8, p9, p10, p11, this.mLayoutParams);
        ((android.view.WindowManager) this.mContext.getSystemService("window")).addView(this.mContentView, this.mLayoutParams);
        return;
    }
}
