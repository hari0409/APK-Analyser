package androidx.appcompat.widget;
public class ActivityChooserView extends android.view.ViewGroup implements androidx.appcompat.widget.ActivityChooserModel$ActivityChooserModelClient {
    private static final String LOG_TAG = "ActivityChooserView";
    private final android.view.View mActivityChooserContent;
    private final android.graphics.drawable.Drawable mActivityChooserContentBackground;
    final androidx.appcompat.widget.ActivityChooserView$ActivityChooserViewAdapter mAdapter;
    private final androidx.appcompat.widget.ActivityChooserView$Callbacks mCallbacks;
    private int mDefaultActionButtonContentDescription;
    final android.widget.FrameLayout mDefaultActivityButton;
    private final android.widget.ImageView mDefaultActivityButtonImage;
    final android.widget.FrameLayout mExpandActivityOverflowButton;
    private final android.widget.ImageView mExpandActivityOverflowButtonImage;
    int mInitialActivityCount;
    private boolean mIsAttachedToWindow;
    boolean mIsSelectingDefaultActivity;
    private final int mListPopupMaxWidth;
    private androidx.appcompat.widget.ListPopupWindow mListPopupWindow;
    final android.database.DataSetObserver mModelDataSetObserver;
    android.widget.PopupWindow$OnDismissListener mOnDismissListener;
    private final android.view.ViewTreeObserver$OnGlobalLayoutListener mOnGlobalLayoutListener;
    androidx.core.view.ActionProvider mProvider;

    public ActivityChooserView(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public ActivityChooserView(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, 0);
        return;
    }

    public ActivityChooserView(android.content.Context p9, android.util.AttributeSet p10, int p11)
    {
        super(p9, p10, p11);
        super.mModelDataSetObserver = new androidx.appcompat.widget.ActivityChooserView$1(super);
        super.mOnGlobalLayoutListener = new androidx.appcompat.widget.ActivityChooserView$2(super);
        super.mInitialActivityCount = 4;
        android.content.res.TypedArray v0 = p9.obtainStyledAttributes(p10, androidx.appcompat.R$styleable.ActivityChooserView, p11, 0);
        super.mInitialActivityCount = v0.getInt(androidx.appcompat.R$styleable.ActivityChooserView_initialActivityCount, 4);
        android.graphics.drawable.Drawable v1 = v0.getDrawable(androidx.appcompat.R$styleable.ActivityChooserView_expandActivityOverflowButtonDrawable);
        v0.recycle();
        android.view.LayoutInflater.from(super.getContext()).inflate(androidx.appcompat.R$layout.abc_activity_chooser_view, super, 1);
        super.mCallbacks = new androidx.appcompat.widget.ActivityChooserView$Callbacks(super);
        super.mActivityChooserContent = super.findViewById(androidx.appcompat.R$id.activity_chooser_view_content);
        super.mActivityChooserContentBackground = super.mActivityChooserContent.getBackground();
        super.mDefaultActivityButton = ((android.widget.FrameLayout) super.findViewById(androidx.appcompat.R$id.default_activity_button));
        super.mDefaultActivityButton.setOnClickListener(super.mCallbacks);
        super.mDefaultActivityButton.setOnLongClickListener(super.mCallbacks);
        super.mDefaultActivityButtonImage = ((android.widget.ImageView) super.mDefaultActivityButton.findViewById(androidx.appcompat.R$id.image));
        android.widget.FrameLayout v2_1 = ((android.widget.FrameLayout) super.findViewById(androidx.appcompat.R$id.expand_activities_button));
        v2_1.setOnClickListener(super.mCallbacks);
        v2_1.setAccessibilityDelegate(new androidx.appcompat.widget.ActivityChooserView$3(super));
        v2_1.setOnTouchListener(new androidx.appcompat.widget.ActivityChooserView$4(super, v2_1));
        super.mExpandActivityOverflowButton = v2_1;
        super.mExpandActivityOverflowButtonImage = ((android.widget.ImageView) v2_1.findViewById(androidx.appcompat.R$id.image));
        super.mExpandActivityOverflowButtonImage.setImageDrawable(v1);
        super.mAdapter = new androidx.appcompat.widget.ActivityChooserView$ActivityChooserViewAdapter(super);
        super.mAdapter.registerDataSetObserver(new androidx.appcompat.widget.ActivityChooserView$5(super));
        android.content.res.Resources v4 = p9.getResources();
        super.mListPopupMaxWidth = Math.max((v4.getDisplayMetrics().widthPixels / 2), v4.getDimensionPixelSize(androidx.appcompat.R$dimen.abc_config_prefDialogWidth));
        return;
    }

    public boolean dismissPopup()
    {
        if (this.isShowingPopup()) {
            this.getListPopupWindow().dismiss();
            android.view.ViewTreeObserver v0 = this.getViewTreeObserver();
            if (v0.isAlive()) {
                v0.removeGlobalOnLayoutListener(this.mOnGlobalLayoutListener);
            }
        }
        return 1;
    }

    public androidx.appcompat.widget.ActivityChooserModel getDataModel()
    {
        return this.mAdapter.getDataModel();
    }

    androidx.appcompat.widget.ListPopupWindow getListPopupWindow()
    {
        if (this.mListPopupWindow == null) {
            this.mListPopupWindow = new androidx.appcompat.widget.ListPopupWindow(this.getContext());
            this.mListPopupWindow.setAdapter(this.mAdapter);
            this.mListPopupWindow.setAnchorView(this);
            this.mListPopupWindow.setModal(1);
            this.mListPopupWindow.setOnItemClickListener(this.mCallbacks);
            this.mListPopupWindow.setOnDismissListener(this.mCallbacks);
        }
        return this.mListPopupWindow;
    }

    public boolean isShowingPopup()
    {
        return this.getListPopupWindow().isShowing();
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        androidx.appcompat.widget.ActivityChooserModel v0 = this.mAdapter.getDataModel();
        if (v0 != null) {
            v0.registerObserver(this.mModelDataSetObserver);
        }
        this.mIsAttachedToWindow = 1;
        return;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        androidx.appcompat.widget.ActivityChooserModel v0 = this.mAdapter.getDataModel();
        if (v0 != null) {
            v0.unregisterObserver(this.mModelDataSetObserver);
        }
        android.view.ViewTreeObserver v1 = this.getViewTreeObserver();
        if (v1.isAlive()) {
            v1.removeGlobalOnLayoutListener(this.mOnGlobalLayoutListener);
        }
        if (this.isShowingPopup()) {
            this.dismissPopup();
        }
        this.mIsAttachedToWindow = 0;
        return;
    }

    protected void onLayout(boolean p5, int p6, int p7, int p8, int p9)
    {
        this.mActivityChooserContent.layout(0, 0, (p8 - p6), (p9 - p7));
        if (!this.isShowingPopup()) {
            this.dismissPopup();
        }
        return;
    }

    protected void onMeasure(int p4, int p5)
    {
        android.view.View v0 = this.mActivityChooserContent;
        if (this.mDefaultActivityButton.getVisibility() != 0) {
            p5 = android.view.View$MeasureSpec.makeMeasureSpec(android.view.View$MeasureSpec.getSize(p5), 1073741824);
        }
        this.measureChild(v0, p4, p5);
        this.setMeasuredDimension(v0.getMeasuredWidth(), v0.getMeasuredHeight());
        return;
    }

    public void setActivityChooserModel(androidx.appcompat.widget.ActivityChooserModel p2)
    {
        this.mAdapter.setDataModel(p2);
        if (this.isShowingPopup()) {
            this.dismissPopup();
            this.showPopup();
        }
        return;
    }

    public void setDefaultActionButtonContentDescription(int p1)
    {
        this.mDefaultActionButtonContentDescription = p1;
        return;
    }

    public void setExpandActivityOverflowButtonContentDescription(int p3)
    {
        this.mExpandActivityOverflowButtonImage.setContentDescription(this.getContext().getString(p3));
        return;
    }

    public void setExpandActivityOverflowButtonDrawable(android.graphics.drawable.Drawable p2)
    {
        this.mExpandActivityOverflowButtonImage.setImageDrawable(p2);
        return;
    }

    public void setInitialActivityCount(int p1)
    {
        this.mInitialActivityCount = p1;
        return;
    }

    public void setOnDismissListener(android.widget.PopupWindow$OnDismissListener p1)
    {
        this.mOnDismissListener = p1;
        return;
    }

    public void setProvider(androidx.core.view.ActionProvider p1)
    {
        this.mProvider = p1;
        return;
    }

    public boolean showPopup()
    {
        int v0_0 = 0;
        if ((!this.isShowingPopup()) && (this.mIsAttachedToWindow)) {
            this.mIsSelectingDefaultActivity = 0;
            this.showPopupUnchecked(this.mInitialActivityCount);
            v0_0 = 1;
        }
        return v0_0;
    }

    void showPopupUnchecked(int p10)
    {
        if (this.mAdapter.getDataModel() != null) {
            String v2;
            this.getViewTreeObserver().addOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
            if (this.mDefaultActivityButton.getVisibility() != 0) {
                v2 = 0;
            } else {
                v2 = 1;
            }
            String v3;
            int vtmp4 = this.mAdapter.getActivityCount();
            if (v2 == null) {
                v3 = 0;
            } else {
                v3 = 1;
            }
            if ((p10 == 2147483647) || (vtmp4 <= (p10 + v3))) {
                this.mAdapter.setShowFooterView(0);
                this.mAdapter.setMaxActivityCount(p10);
            } else {
                this.mAdapter.setShowFooterView(1);
                this.mAdapter.setMaxActivityCount((p10 - 1));
            }
            androidx.appcompat.widget.ListPopupWindow v4 = this.getListPopupWindow();
            if (!v4.isShowing()) {
                if ((!this.mIsSelectingDefaultActivity) && (v2 != null)) {
                    this.mAdapter.setShowDefaultActivity(0, 0);
                } else {
                    this.mAdapter.setShowDefaultActivity(1, v2);
                }
                v4.setContentWidth(Math.min(this.mAdapter.measureContentWidth(), this.mListPopupMaxWidth));
                v4.show();
                if (this.mProvider != null) {
                    this.mProvider.subUiVisibilityChanged(1);
                }
                v4.getListView().setContentDescription(this.getContext().getString(androidx.appcompat.R$string.abc_activitychooserview_choose_application));
                v4.getListView().setSelector(new android.graphics.drawable.ColorDrawable(0));
            }
            return;
        } else {
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }
    }

    void updateAppearance()
    {
        if (this.mAdapter.getCount() <= 0) {
            this.mExpandActivityOverflowButton.setEnabled(0);
        } else {
            this.mExpandActivityOverflowButton.setEnabled(1);
        }
        int v1 = this.mAdapter.getActivityCount();
        int vtmp3 = this.mAdapter.getHistorySize();
        if ((v1 != 1) && ((v1 <= 1) || (vtmp3 <= 0))) {
            this.mDefaultActivityButton.setVisibility(8);
        } else {
            this.mDefaultActivityButton.setVisibility(0);
            android.content.pm.ResolveInfo v0 = this.mAdapter.getDefaultActivity();
            android.content.pm.PackageManager v5 = this.getContext().getPackageManager();
            this.mDefaultActivityButtonImage.setImageDrawable(v0.loadIcon(v5));
            if (this.mDefaultActionButtonContentDescription != 0) {
                CharSequence v4 = v0.loadLabel(v5);
                android.view.View v6_10 = this.getContext();
                int v7_2 = this.mDefaultActionButtonContentDescription;
                Object[] v8_1 = new Object[1];
                v8_1[0] = v4;
                this.mDefaultActivityButton.setContentDescription(v6_10.getString(v7_2, v8_1));
            }
        }
        if (this.mDefaultActivityButton.getVisibility() != 0) {
            this.mActivityChooserContent.setBackgroundDrawable(0);
        } else {
            this.mActivityChooserContent.setBackgroundDrawable(this.mActivityChooserContentBackground);
        }
        return;
    }
}
