package androidx.appcompat.app;
 class AlertController {
    android.widget.ListAdapter mAdapter;
    private int mAlertDialogLayout;
    private final android.view.View$OnClickListener mButtonHandler;
    private final int mButtonIconDimen;
    android.widget.Button mButtonNegative;
    private android.graphics.drawable.Drawable mButtonNegativeIcon;
    android.os.Message mButtonNegativeMessage;
    private CharSequence mButtonNegativeText;
    android.widget.Button mButtonNeutral;
    private android.graphics.drawable.Drawable mButtonNeutralIcon;
    android.os.Message mButtonNeutralMessage;
    private CharSequence mButtonNeutralText;
    private int mButtonPanelLayoutHint;
    private int mButtonPanelSideLayout;
    android.widget.Button mButtonPositive;
    private android.graphics.drawable.Drawable mButtonPositiveIcon;
    android.os.Message mButtonPositiveMessage;
    private CharSequence mButtonPositiveText;
    int mCheckedItem;
    private final android.content.Context mContext;
    private android.view.View mCustomTitleView;
    final androidx.appcompat.app.AppCompatDialog mDialog;
    android.os.Handler mHandler;
    private android.graphics.drawable.Drawable mIcon;
    private int mIconId;
    private android.widget.ImageView mIconView;
    int mListItemLayout;
    int mListLayout;
    android.widget.ListView mListView;
    private CharSequence mMessage;
    private android.widget.TextView mMessageView;
    int mMultiChoiceItemLayout;
    androidx.core.widget.NestedScrollView mScrollView;
    private boolean mShowTitle;
    int mSingleChoiceItemLayout;
    private CharSequence mTitle;
    private android.widget.TextView mTitleView;
    private android.view.View mView;
    private int mViewLayoutResId;
    private int mViewSpacingBottom;
    private int mViewSpacingLeft;
    private int mViewSpacingRight;
    private boolean mViewSpacingSpecified;
    private int mViewSpacingTop;
    private final android.view.Window mWindow;

    public AlertController(android.content.Context p7, androidx.appcompat.app.AppCompatDialog p8, android.view.Window p9)
    {
        this.mViewSpacingSpecified = 0;
        this.mIconId = 0;
        this.mCheckedItem = -1;
        this.mButtonPanelLayoutHint = 0;
        this.mButtonHandler = new androidx.appcompat.app.AlertController$1(this);
        this.mContext = p7;
        this.mDialog = p8;
        this.mWindow = p9;
        this.mHandler = new androidx.appcompat.app.AlertController$ButtonHandler(p8);
        android.content.res.TypedArray v0 = p7.obtainStyledAttributes(0, androidx.appcompat.R$styleable.AlertDialog, androidx.appcompat.R$attr.alertDialogStyle, 0);
        this.mAlertDialogLayout = v0.getResourceId(androidx.appcompat.R$styleable.AlertDialog_android_layout, 0);
        this.mButtonPanelSideLayout = v0.getResourceId(androidx.appcompat.R$styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.mListLayout = v0.getResourceId(androidx.appcompat.R$styleable.AlertDialog_listLayout, 0);
        this.mMultiChoiceItemLayout = v0.getResourceId(androidx.appcompat.R$styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.mSingleChoiceItemLayout = v0.getResourceId(androidx.appcompat.R$styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.mListItemLayout = v0.getResourceId(androidx.appcompat.R$styleable.AlertDialog_listItemLayout, 0);
        this.mShowTitle = v0.getBoolean(androidx.appcompat.R$styleable.AlertDialog_showTitle, 1);
        this.mButtonIconDimen = v0.getDimensionPixelSize(androidx.appcompat.R$styleable.AlertDialog_buttonIconDimen, 0);
        v0.recycle();
        p8.supportRequestWindowFeature(1);
        return;
    }

    static boolean canTextInput(android.view.View p5)
    {
        int v2 = 1;
        if (!p5.onCheckIsTextEditor()) {
            if ((p5 instanceof android.view.ViewGroup)) {
                int v0 = ((android.view.ViewGroup) p5).getChildCount();
                while (v0 > 0) {
                    v0--;
                    if (androidx.appcompat.app.AlertController.canTextInput(((android.view.ViewGroup) p5).getChildAt(v0))) {
                    }
                }
                v2 = 0;
            } else {
                v2 = 0;
            }
        }
        return v2;
    }

    private void centerButton(android.widget.Button p3)
    {
        android.widget.LinearLayout$LayoutParams v0_1 = ((android.widget.LinearLayout$LayoutParams) p3.getLayoutParams());
        v0_1.gravity = 1;
        v0_1.weight = 1056964608;
        p3.setLayoutParams(v0_1);
        return;
    }

    static void manageScrollIndicators(android.view.View p3, android.view.View p4, android.view.View p5)
    {
        int v1 = 0;
        if (p4 != null) {
            boolean v0_4;
            if (!p3.canScrollVertically(-1)) {
                v0_4 = 4;
            } else {
                v0_4 = 0;
            }
            p4.setVisibility(v0_4);
        }
        if (p5 != null) {
            if (!p3.canScrollVertically(1)) {
                v1 = 4;
            }
            p5.setVisibility(v1);
        }
        return;
    }

    private android.view.ViewGroup resolvePanel(android.view.View p3, android.view.View p4)
    {
        android.view.ViewGroup v1_1;
        if (p3 != null) {
            if (p4 != null) {
                android.view.ViewGroup v0_0 = p4.getParent();
                if ((v0_0 instanceof android.view.ViewGroup)) {
                    ((android.view.ViewGroup) v0_0).removeView(p4);
                }
            }
            if ((p3 instanceof android.view.ViewStub)) {
                p3 = ((android.view.ViewStub) p3).inflate();
            }
            v1_1 = ((android.view.ViewGroup) p3);
        } else {
            if ((p4 instanceof android.view.ViewStub)) {
                p4 = ((android.view.ViewStub) p4).inflate();
            }
            v1_1 = ((android.view.ViewGroup) p4);
        }
        return v1_1;
    }

    private int selectContentView()
    {
        int v0_2;
        if (this.mButtonPanelSideLayout != 0) {
            if (this.mButtonPanelLayoutHint != 1) {
                v0_2 = this.mAlertDialogLayout;
            } else {
                v0_2 = this.mButtonPanelSideLayout;
            }
        } else {
            v0_2 = this.mAlertDialogLayout;
        }
        return v0_2;
    }

    private void setScrollIndicators(android.view.ViewGroup p7, android.view.View p8, int p9, int p10)
    {
        int v2 = this.mWindow.findViewById(androidx.appcompat.R$id.scrollIndicatorUp);
        int v1 = this.mWindow.findViewById(androidx.appcompat.R$id.scrollIndicatorDown);
        if (android.os.Build$VERSION.SDK_INT < 23) {
            if ((v2 != 0) && ((p9 & 1) == 0)) {
                p7.removeView(v2);
                v2 = 0;
            }
            if ((v1 != 0) && ((p9 & 2) == 0)) {
                p7.removeView(v1);
                v1 = 0;
            }
            if ((v2 != 0) || (v1 != 0)) {
                int v3 = v2;
                int v0 = v1;
                if (this.mMessage == null) {
                    if (this.mListView == null) {
                        if (v3 != 0) {
                            p7.removeView(v3);
                        }
                        if (v0 != 0) {
                            p7.removeView(v0);
                        }
                    } else {
                        this.mListView.setOnScrollListener(new androidx.appcompat.app.AlertController$4(this, v3, v0));
                        this.mListView.post(new androidx.appcompat.app.AlertController$5(this, v3, v0));
                    }
                } else {
                    this.mScrollView.setOnScrollChangeListener(new androidx.appcompat.app.AlertController$2(this, v3, v0));
                    this.mScrollView.post(new androidx.appcompat.app.AlertController$3(this, v3, v0));
                }
            }
        } else {
            androidx.core.view.ViewCompat.setScrollIndicators(p8, p9, p10);
            if (v2 != 0) {
                p7.removeView(v2);
            }
            if (v1 != 0) {
                p7.removeView(v1);
            }
        }
        return;
    }

    private void setupButtons(android.view.ViewGroup p11)
    {
        int v3 = 0;
        int v4 = 0;
        this.mButtonPositive = ((android.widget.Button) p11.findViewById(16908313));
        this.mButtonPositive.setOnClickListener(this.mButtonHandler);
        if ((!android.text.TextUtils.isEmpty(this.mButtonPositiveText)) || (this.mButtonPositiveIcon != null)) {
            this.mButtonPositive.setText(this.mButtonPositiveText);
            if (this.mButtonPositiveIcon != null) {
                this.mButtonPositiveIcon.setBounds(0, 0, this.mButtonIconDimen, this.mButtonIconDimen);
                this.mButtonPositive.setCompoundDrawables(this.mButtonPositiveIcon, 0, 0, 0);
            }
            this.mButtonPositive.setVisibility(0);
            v4 = (0 | 1);
        } else {
            this.mButtonPositive.setVisibility(8);
        }
        this.mButtonNegative = ((android.widget.Button) p11.findViewById(16908314));
        this.mButtonNegative.setOnClickListener(this.mButtonHandler);
        if ((!android.text.TextUtils.isEmpty(this.mButtonNegativeText)) || (this.mButtonNegativeIcon != null)) {
            this.mButtonNegative.setText(this.mButtonNegativeText);
            if (this.mButtonNegativeIcon != null) {
                this.mButtonNegativeIcon.setBounds(0, 0, this.mButtonIconDimen, this.mButtonIconDimen);
                this.mButtonNegative.setCompoundDrawables(this.mButtonNegativeIcon, 0, 0, 0);
            }
            this.mButtonNegative.setVisibility(0);
            v4 |= 2;
        } else {
            this.mButtonNegative.setVisibility(8);
        }
        this.mButtonNeutral = ((android.widget.Button) p11.findViewById(16908315));
        this.mButtonNeutral.setOnClickListener(this.mButtonHandler);
        if ((!android.text.TextUtils.isEmpty(this.mButtonNeutralText)) || (this.mButtonNeutralIcon != null)) {
            this.mButtonNeutral.setText(this.mButtonNeutralText);
            if (this.mButtonPositiveIcon != null) {
                this.mButtonPositiveIcon.setBounds(0, 0, this.mButtonIconDimen, this.mButtonIconDimen);
                this.mButtonPositive.setCompoundDrawables(this.mButtonPositiveIcon, 0, 0, 0);
            }
            this.mButtonNeutral.setVisibility(0);
            v4 |= 4;
        } else {
            this.mButtonNeutral.setVisibility(8);
        }
        if (androidx.appcompat.app.AlertController.shouldCenterSingleButton(this.mContext)) {
            if (v4 != 1) {
                if (v4 != 2) {
                    if (v4 == 4) {
                        this.centerButton(this.mButtonNeutral);
                    }
                } else {
                    this.centerButton(this.mButtonNegative);
                }
            } else {
                this.centerButton(this.mButtonPositive);
            }
        }
        if (v4 != 0) {
            v3 = 1;
        }
        if (v3 == 0) {
            p11.setVisibility(8);
        }
        return;
    }

    private void setupContent(android.view.ViewGroup p8)
    {
        this.mScrollView = ((androidx.core.widget.NestedScrollView) this.mWindow.findViewById(androidx.appcompat.R$id.scrollView));
        this.mScrollView.setFocusable(0);
        this.mScrollView.setNestedScrollingEnabled(0);
        this.mMessageView = ((android.widget.TextView) p8.findViewById(16908299));
        if (this.mMessageView != null) {
            if (this.mMessage == null) {
                this.mMessageView.setVisibility(8);
                this.mScrollView.removeView(this.mMessageView);
                if (this.mListView == null) {
                    p8.setVisibility(8);
                } else {
                    android.view.ViewGroup v1_1 = ((android.view.ViewGroup) this.mScrollView.getParent());
                    int v0 = v1_1.indexOfChild(this.mScrollView);
                    v1_1.removeViewAt(v0);
                    v1_1.addView(this.mListView, v0, new android.view.ViewGroup$LayoutParams(-1, -1));
                }
            } else {
                this.mMessageView.setText(this.mMessage);
            }
        }
        return;
    }

    private void setupCustomContent(android.view.ViewGroup p9)
    {
        int v1;
        int v2 = 0;
        if (this.mView == null) {
            if (this.mViewLayoutResId == 0) {
                v1 = 0;
            } else {
                v1 = android.view.LayoutInflater.from(this.mContext).inflate(this.mViewLayoutResId, p9, 0);
            }
        } else {
            v1 = this.mView;
        }
        if (v1 != 0) {
            v2 = 1;
        }
        if ((v2 == 0) || (!androidx.appcompat.app.AlertController.canTextInput(v1))) {
            this.mWindow.setFlags(131072, 131072);
        }
        if (v2 == 0) {
            p9.setVisibility(8);
        } else {
            android.widget.FrameLayout v0_1 = ((android.widget.FrameLayout) this.mWindow.findViewById(androidx.appcompat.R$id.custom));
            v0_1.addView(v1, new android.view.ViewGroup$LayoutParams(-1, -1));
            if (this.mViewSpacingSpecified) {
                v0_1.setPadding(this.mViewSpacingLeft, this.mViewSpacingTop, this.mViewSpacingRight, this.mViewSpacingBottom);
            }
            if (this.mListView != null) {
                ((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) p9.getLayoutParams()).weight = 0;
            }
        }
        return;
    }

    private void setupTitle(android.view.ViewGroup p10)
    {
        int v0 = 0;
        if (this.mCustomTitleView == null) {
            this.mIconView = ((android.widget.ImageView) this.mWindow.findViewById(16908294));
            if (!android.text.TextUtils.isEmpty(this.mTitle)) {
                v0 = 1;
            }
            if ((v0 == 0) || (!this.mShowTitle)) {
                this.mWindow.findViewById(androidx.appcompat.R$id.title_template).setVisibility(8);
                this.mIconView.setVisibility(8);
                p10.setVisibility(8);
            } else {
                this.mTitleView = ((android.widget.TextView) this.mWindow.findViewById(androidx.appcompat.R$id.alertTitle));
                this.mTitleView.setText(this.mTitle);
                if (this.mIconId == 0) {
                    if (this.mIcon == null) {
                        this.mTitleView.setPadding(this.mIconView.getPaddingLeft(), this.mIconView.getPaddingTop(), this.mIconView.getPaddingRight(), this.mIconView.getPaddingBottom());
                        this.mIconView.setVisibility(8);
                    } else {
                        this.mIconView.setImageDrawable(this.mIcon);
                    }
                } else {
                    this.mIconView.setImageResource(this.mIconId);
                }
            }
        } else {
            p10.addView(this.mCustomTitleView, 0, new android.view.ViewGroup$LayoutParams(-1, -2));
            this.mWindow.findViewById(androidx.appcompat.R$id.title_template).setVisibility(8);
        }
        return;
    }

    private void setupView()
    {
        int v16;
        android.view.View v20 = this.mWindow.findViewById(androidx.appcompat.R$id.parentPanel);
        android.view.View v13 = v20.findViewById(androidx.appcompat.R$id.topPanel);
        android.view.View v12 = v20.findViewById(androidx.appcompat.R$id.contentPanel);
        android.view.View v11 = v20.findViewById(androidx.appcompat.R$id.buttonPanel);
        android.view.ViewGroup v9_1 = ((android.view.ViewGroup) v20.findViewById(androidx.appcompat.R$id.customPanel));
        this.setupCustomContent(v9_1);
        android.view.View v10 = v9_1.findViewById(androidx.appcompat.R$id.topPanel);
        android.view.View v8 = v9_1.findViewById(androidx.appcompat.R$id.contentPanel);
        android.view.View v7 = v9_1.findViewById(androidx.appcompat.R$id.buttonPanel);
        android.view.ViewGroup v22 = this.resolvePanel(v10, v13);
        android.view.ViewGroup v6 = this.resolvePanel(v8, v12);
        android.view.ViewGroup v3 = this.resolvePanel(v7, v11);
        this.setupContent(v6);
        this.setupButtons(v3);
        this.setupTitle(v22);
        if ((v9_1 == null) || (v9_1.getVisibility() == 8)) {
            v16 = 0;
        } else {
            v16 = 1;
        }
        if ((v22 == null) || (v22.getVisibility() == 8)) {
            int v17 = 0;
        } else {
            v17 = 1;
        }
        if ((v3 == null) || (v3.getVisibility() == 8)) {
            int v15 = 0;
        } else {
            v15 = 1;
        }
        if ((v15 == 0) && (v6 != null)) {
            android.view.View v21_1 = v6.findViewById(androidx.appcompat.R$id.textSpacerNoButtons);
            if (v21_1 != null) {
                v21_1.setVisibility(0);
            }
        }
        if (v17 == 0) {
            if (v6 != null) {
                android.view.View v21_0 = v6.findViewById(androidx.appcompat.R$id.textSpacerNoTitle);
                if (v21_0 != null) {
                    v21_0.setVisibility(0);
                }
            }
        } else {
            if (this.mScrollView != null) {
                this.mScrollView.setClipToPadding(1);
            }
            android.view.View v14 = 0;
            if ((this.mMessage != null) || (this.mListView != null)) {
                v14 = v22.findViewById(androidx.appcompat.R$id.titleDividerNoCustom);
            }
            if (v14 != null) {
                v14.setVisibility(0);
            }
        }
        if ((this.mListView instanceof androidx.appcompat.app.AlertController$RecycleListView)) {
            ((androidx.appcompat.app.AlertController$RecycleListView) this.mListView).setHasDecor(v17, v15);
        }
        if (v16 == 0) {
            androidx.core.widget.NestedScrollView v5;
            if (this.mListView == null) {
                v5 = this.mScrollView;
            } else {
                v5 = this.mListView;
            }
            if (v5 != null) {
                int v24_1;
                if (v17 == 0) {
                    v24_1 = 0;
                } else {
                    v24_1 = 1;
                }
                int v23_16;
                if (v15 == 0) {
                    v23_16 = 0;
                } else {
                    v23_16 = 2;
                }
                this.setScrollIndicators(v6, v5, (v24_1 | v23_16), 3);
            }
        }
        android.widget.ListView v19 = this.mListView;
        if ((v19 != null) && (this.mAdapter != null)) {
            v19.setAdapter(this.mAdapter);
            int v4 = this.mCheckedItem;
            if (v4 > -1) {
                v19.setItemChecked(v4, 1);
                v19.setSelection(v4);
            }
        }
        return;
    }

    private static boolean shouldCenterSingleButton(android.content.Context p4)
    {
        int v1 = 1;
        android.util.TypedValue v0_1 = new android.util.TypedValue();
        p4.getTheme().resolveAttribute(androidx.appcompat.R$attr.alertDialogCenterButtons, v0_1, 1);
        if (v0_1.data == 0) {
            v1 = 0;
        }
        return v1;
    }

    public android.widget.Button getButton(int p2)
    {
        android.widget.Button v0;
        switch (p2) {
            case -3:
                v0 = this.mButtonNeutral;
                break;
            case -2:
                v0 = this.mButtonNegative;
                break;
            case -1:
                v0 = this.mButtonPositive;
                break;
            default:
                v0 = 0;
        }
        return v0;
    }

    public int getIconAttributeResId(int p4)
    {
        android.util.TypedValue v0_1 = new android.util.TypedValue();
        this.mContext.getTheme().resolveAttribute(p4, v0_1, 1);
        return v0_1.resourceId;
    }

    public android.widget.ListView getListView()
    {
        return this.mListView;
    }

    public void installContent()
    {
        this.mDialog.setContentView(this.selectContentView());
        this.setupView();
        return;
    }

    public boolean onKeyDown(int p2, android.view.KeyEvent p3)
    {
        if ((this.mScrollView == null) || (!this.mScrollView.executeKeyEvent(p3))) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public boolean onKeyUp(int p2, android.view.KeyEvent p3)
    {
        if ((this.mScrollView == null) || (!this.mScrollView.executeKeyEvent(p3))) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public void setButton(int p3, CharSequence p4, android.content.DialogInterface$OnClickListener p5, android.os.Message p6, android.graphics.drawable.Drawable p7)
    {
        if ((p6 == null) && (p5 != null)) {
            p6 = this.mHandler.obtainMessage(p3, p5);
        }
        switch (p3) {
            case -3:
                this.mButtonNeutralText = p4;
                this.mButtonNeutralMessage = p6;
                this.mButtonNeutralIcon = p7;
                break;
            case -2:
                this.mButtonNegativeText = p4;
                this.mButtonNegativeMessage = p6;
                this.mButtonNegativeIcon = p7;
                break;
            case -1:
                this.mButtonPositiveText = p4;
                this.mButtonPositiveMessage = p6;
                this.mButtonPositiveIcon = p7;
                break;
            default:
                throw new IllegalArgumentException("Button does not exist");
        }
        return;
    }

    public void setButtonPanelLayoutHint(int p1)
    {
        this.mButtonPanelLayoutHint = p1;
        return;
    }

    public void setCustomTitle(android.view.View p1)
    {
        this.mCustomTitleView = p1;
        return;
    }

    public void setIcon(int p3)
    {
        this.mIcon = 0;
        this.mIconId = p3;
        if (this.mIconView != null) {
            if (p3 == 0) {
                this.mIconView.setVisibility(8);
            } else {
                this.mIconView.setVisibility(0);
                this.mIconView.setImageResource(this.mIconId);
            }
        }
        return;
    }

    public void setIcon(android.graphics.drawable.Drawable p3)
    {
        this.mIcon = p3;
        this.mIconId = 0;
        if (this.mIconView != null) {
            if (p3 == null) {
                this.mIconView.setVisibility(8);
            } else {
                this.mIconView.setVisibility(0);
                this.mIconView.setImageDrawable(p3);
            }
        }
        return;
    }

    public void setMessage(CharSequence p2)
    {
        this.mMessage = p2;
        if (this.mMessageView != null) {
            this.mMessageView.setText(p2);
        }
        return;
    }

    public void setTitle(CharSequence p2)
    {
        this.mTitle = p2;
        if (this.mTitleView != null) {
            this.mTitleView.setText(p2);
        }
        return;
    }

    public void setView(int p2)
    {
        this.mView = 0;
        this.mViewLayoutResId = p2;
        this.mViewSpacingSpecified = 0;
        return;
    }

    public void setView(android.view.View p2)
    {
        this.mView = p2;
        this.mViewLayoutResId = 0;
        this.mViewSpacingSpecified = 0;
        return;
    }

    public void setView(android.view.View p2, int p3, int p4, int p5, int p6)
    {
        this.mView = p2;
        this.mViewLayoutResId = 0;
        this.mViewSpacingSpecified = 1;
        this.mViewSpacingLeft = p3;
        this.mViewSpacingTop = p4;
        this.mViewSpacingRight = p5;
        this.mViewSpacingBottom = p6;
        return;
    }
}
