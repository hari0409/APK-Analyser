package androidx.appcompat.widget;
public class ListPopupWindow implements androidx.appcompat.view.menu.ShowableListMenu {
    private static final boolean DEBUG = False;
    static final int EXPAND_LIST_TIMEOUT = 250;
    public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
    public static final int INPUT_METHOD_NEEDED = 1;
    public static final int INPUT_METHOD_NOT_NEEDED = 2;
    public static final int MATCH_PARENT = 255;
    public static final int POSITION_PROMPT_ABOVE = 0;
    public static final int POSITION_PROMPT_BELOW = 1;
    private static final String TAG = "ListPopupWindow";
    public static final int WRAP_CONTENT = 254;
    private static reflect.Method sClipToWindowEnabledMethod;
    private static reflect.Method sGetMaxAvailableHeightMethod;
    private static reflect.Method sSetEpicenterBoundsMethod;
    private android.widget.ListAdapter mAdapter;
    private android.content.Context mContext;
    private boolean mDropDownAlwaysVisible;
    private android.view.View mDropDownAnchorView;
    private int mDropDownGravity;
    private int mDropDownHeight;
    private int mDropDownHorizontalOffset;
    androidx.appcompat.widget.DropDownListView mDropDownList;
    private android.graphics.drawable.Drawable mDropDownListHighlight;
    private int mDropDownVerticalOffset;
    private boolean mDropDownVerticalOffsetSet;
    private int mDropDownWidth;
    private int mDropDownWindowLayoutType;
    private android.graphics.Rect mEpicenterBounds;
    private boolean mForceIgnoreOutsideTouch;
    final android.os.Handler mHandler;
    private final androidx.appcompat.widget.ListPopupWindow$ListSelectorHider mHideSelector;
    private boolean mIsAnimatedFromAnchor;
    private android.widget.AdapterView$OnItemClickListener mItemClickListener;
    private android.widget.AdapterView$OnItemSelectedListener mItemSelectedListener;
    int mListItemExpandMaximum;
    private boolean mModal;
    private android.database.DataSetObserver mObserver;
    private boolean mOverlapAnchor;
    private boolean mOverlapAnchorSet;
    android.widget.PopupWindow mPopup;
    private int mPromptPosition;
    private android.view.View mPromptView;
    final androidx.appcompat.widget.ListPopupWindow$ResizePopupRunnable mResizePopupRunnable;
    private final androidx.appcompat.widget.ListPopupWindow$PopupScrollListener mScrollListener;
    private Runnable mShowDropDownRunnable;
    private final android.graphics.Rect mTempRect;
    private final androidx.appcompat.widget.ListPopupWindow$PopupTouchInterceptor mTouchInterceptor;

    static ListPopupWindow()
    {
        try {
            Class[] v3_3 = new Class[1];
            v3_3[0] = Boolean.TYPE;
            androidx.appcompat.widget.ListPopupWindow.sClipToWindowEnabledMethod = android.widget.PopupWindow.getDeclaredMethod("setClipToScreenEnabled", v3_3);
            try {
                Class[] v3_1 = new Class[3];
                v3_1[0] = android.view.View;
                v3_1[1] = Integer.TYPE;
                v3_1[2] = Boolean.TYPE;
                androidx.appcompat.widget.ListPopupWindow.sGetMaxAvailableHeightMethod = android.widget.PopupWindow.getDeclaredMethod("getMaxAvailableHeight", v3_1);
                try {
                    Class[] v3_5 = new Class[1];
                    v3_5[0] = android.graphics.Rect;
                    androidx.appcompat.widget.ListPopupWindow.sSetEpicenterBoundsMethod = android.widget.PopupWindow.getDeclaredMethod("setEpicenterBounds", v3_5);
                } catch (NoSuchMethodException v0) {
                    android.util.Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
                }
                return;
            } catch (NoSuchMethodException v0) {
                android.util.Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        } catch (NoSuchMethodException v0) {
            android.util.Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
    }

    public ListPopupWindow(android.content.Context p3)
    {
        this(p3, 0, androidx.appcompat.R$attr.listPopupWindowStyle);
        return;
    }

    public ListPopupWindow(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, androidx.appcompat.R$attr.listPopupWindowStyle);
        return;
    }

    public ListPopupWindow(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        this(p2, p3, p4, 0);
        return;
    }

    public ListPopupWindow(android.content.Context p6, android.util.AttributeSet p7, int p8, int p9)
    {
        this.mDropDownHeight = -2;
        this.mDropDownWidth = -2;
        this.mDropDownWindowLayoutType = 1002;
        this.mIsAnimatedFromAnchor = 1;
        this.mDropDownGravity = 0;
        this.mDropDownAlwaysVisible = 0;
        this.mForceIgnoreOutsideTouch = 0;
        this.mListItemExpandMaximum = 2147483647;
        this.mPromptPosition = 0;
        this.mResizePopupRunnable = new androidx.appcompat.widget.ListPopupWindow$ResizePopupRunnable(this);
        this.mTouchInterceptor = new androidx.appcompat.widget.ListPopupWindow$PopupTouchInterceptor(this);
        this.mScrollListener = new androidx.appcompat.widget.ListPopupWindow$PopupScrollListener(this);
        this.mHideSelector = new androidx.appcompat.widget.ListPopupWindow$ListSelectorHider(this);
        this.mTempRect = new android.graphics.Rect();
        this.mContext = p6;
        this.mHandler = new android.os.Handler(p6.getMainLooper());
        android.content.res.TypedArray v0 = p6.obtainStyledAttributes(p7, androidx.appcompat.R$styleable.ListPopupWindow, p8, p9);
        this.mDropDownHorizontalOffset = v0.getDimensionPixelOffset(androidx.appcompat.R$styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        this.mDropDownVerticalOffset = v0.getDimensionPixelOffset(androidx.appcompat.R$styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        if (this.mDropDownVerticalOffset != 0) {
            this.mDropDownVerticalOffsetSet = 1;
        }
        v0.recycle();
        this.mPopup = new androidx.appcompat.widget.AppCompatPopupWindow(p6, p7, p8, p9);
        this.mPopup.setInputMethodMode(1);
        return;
    }

    private int buildDropDown()
    {
        int v19 = 0;
        if (this.mDropDownList != null) {
            this.mPopup.getContentView();
            android.view.View v21 = this.mPromptView;
            if (v21 != null) {
                android.widget.LinearLayout$LayoutParams v13_3 = ((android.widget.LinearLayout$LayoutParams) v21.getLayoutParams());
                v19 = ((v21.getMeasuredHeight() + v13_3.topMargin) + v13_3.bottomMargin);
            }
        } else {
            int v2_43;
            android.content.Context v9 = this.mContext;
            this.mShowDropDownRunnable = new androidx.appcompat.widget.ListPopupWindow$2(this);
            if (this.mModal) {
                v2_43 = 0;
            } else {
                v2_43 = 1;
            }
            this.mDropDownList = this.createDropDownListView(v9, v2_43);
            if (this.mDropDownListHighlight != null) {
                this.mDropDownList.setSelector(this.mDropDownListHighlight);
            }
            this.mDropDownList.setAdapter(this.mAdapter);
            this.mDropDownList.setOnItemClickListener(this.mItemClickListener);
            this.mDropDownList.setFocusable(1);
            this.mDropDownList.setFocusableInTouchMode(1);
            this.mDropDownList.setOnItemSelectedListener(new androidx.appcompat.widget.ListPopupWindow$3(this));
            this.mDropDownList.setOnScrollListener(this.mScrollListener);
            if (this.mItemSelectedListener != null) {
                this.mDropDownList.setOnItemSelectedListener(this.mItemSelectedListener);
            }
            android.widget.LinearLayout v10_0 = this.mDropDownList;
            android.view.View v14 = this.mPromptView;
            if (v14 != null) {
                android.widget.LinearLayout v12_1 = new android.widget.LinearLayout(v9);
                v12_1.setOrientation(1);
                android.widget.LinearLayout$LayoutParams v13_5 = new android.widget.LinearLayout$LayoutParams(-1, 0, 1065353216);
                switch (this.mPromptPosition) {
                    case 0:
                        v12_1.addView(v14);
                        v12_1.addView(v10_0, v13_5);
                        break;
                    case 1:
                        v12_1.addView(v10_0, v13_5);
                        v12_1.addView(v14);
                        break;
                    default:
                        android.util.Log.e("ListPopupWindow", new StringBuilder().append("Invalid hint position ").append(this.mPromptPosition).toString());
                }
                int v22;
                int v23;
                if (this.mDropDownWidth < 0) {
                    v22 = 0;
                    v23 = 0;
                } else {
                    v22 = -2147483648;
                    v23 = this.mDropDownWidth;
                }
                v14.measure(android.view.View$MeasureSpec.makeMeasureSpec(v23, v22), 0);
                android.widget.LinearLayout$LayoutParams v13_1 = ((android.widget.LinearLayout$LayoutParams) v14.getLayoutParams());
                v19 = ((v14.getMeasuredHeight() + v13_1.topMargin) + v13_1.bottomMargin);
                v10_0 = v12_1;
            }
            this.mPopup.setContentView(v10_0);
        }
        int v20;
        android.graphics.drawable.Drawable v8 = this.mPopup.getBackground();
        if (v8 == null) {
            this.mTempRect.setEmpty();
            v20 = 0;
        } else {
            v8.getPadding(this.mTempRect);
            v20 = (this.mTempRect.top + this.mTempRect.bottom);
            if (!this.mDropDownVerticalOffsetSet) {
                this.mDropDownVerticalOffset = (- this.mTempRect.top);
            }
        }
        int v15;
        if (this.mPopup.getInputMethodMode() != 2) {
            v15 = 0;
        } else {
            v15 = 1;
        }
        int v2_41;
        int v18 = this.getMaxAvailableHeight(this.getAnchorView(), this.mDropDownVerticalOffset, v15);
        if ((!this.mDropDownAlwaysVisible) && (this.mDropDownHeight != -1)) {
            int v3;
            switch (this.mDropDownWidth) {
                case -2:
                    v3 = android.view.View$MeasureSpec.makeMeasureSpec((this.mContext.getResources().getDisplayMetrics().widthPixels - (this.mTempRect.left + this.mTempRect.right)), -2147483648);
                    break;
                case -1:
                    v3 = android.view.View$MeasureSpec.makeMeasureSpec((this.mContext.getResources().getDisplayMetrics().widthPixels - (this.mTempRect.left + this.mTempRect.right)), 1073741824);
                    break;
                default:
                    v3 = android.view.View$MeasureSpec.makeMeasureSpec(this.mDropDownWidth, 1073741824);
            }
            int v16 = this.mDropDownList.measureHeightOfChildrenCompat(v3, 0, -1, (v18 - v19), -1);
            if (v16 > 0) {
                v19 += (v20 + (this.mDropDownList.getPaddingTop() + this.mDropDownList.getPaddingBottom()));
            }
            v2_41 = (v16 + v19);
        } else {
            v2_41 = (v18 + v20);
        }
        return v2_41;
    }

    private int getMaxAvailableHeight(android.view.View p7, int p8, boolean p9)
    {
        String v1_4;
        if (androidx.appcompat.widget.ListPopupWindow.sGetMaxAvailableHeightMethod == null) {
            v1_4 = this.mPopup.getMaxAvailableHeight(p7, p8);
        } else {
            try {
                String v2_1 = this.mPopup;
                Object[] v3_1 = new Object[3];
                v3_1[0] = p7;
                v3_1[1] = Integer.valueOf(p8);
                v3_1[2] = Boolean.valueOf(p9);
                v1_4 = ((Integer) androidx.appcompat.widget.ListPopupWindow.sGetMaxAvailableHeightMethod.invoke(v2_1, v3_1)).intValue();
            } catch (Exception v0) {
                android.util.Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
            }
        }
        return v1_4;
    }

    private static boolean isConfirmKey(int p1)
    {
        if ((p1 != 66) && (p1 != 23)) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    private void removePromptView()
    {
        if (this.mPromptView != null) {
            android.view.ViewParent v1 = this.mPromptView.getParent();
            if ((v1 instanceof android.view.ViewGroup)) {
                ((android.view.ViewGroup) v1).removeView(this.mPromptView);
            }
        }
        return;
    }

    private void setPopupClipToScreenEnabled(boolean p7)
    {
        if (androidx.appcompat.widget.ListPopupWindow.sClipToWindowEnabledMethod != null) {
            try {
                String v2_1 = this.mPopup;
                Object[] v3_1 = new Object[1];
                v3_1[0] = Boolean.valueOf(p7);
                androidx.appcompat.widget.ListPopupWindow.sClipToWindowEnabledMethod.invoke(v2_1, v3_1);
            } catch (Exception v0) {
                android.util.Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
        }
        return;
    }

    public void clearListSelection()
    {
        androidx.appcompat.widget.DropDownListView v0 = this.mDropDownList;
        if (v0 != null) {
            v0.setListSelectionHidden(1);
            v0.requestLayout();
        }
        return;
    }

    public android.view.View$OnTouchListener createDragToOpenListener(android.view.View p2)
    {
        return new androidx.appcompat.widget.ListPopupWindow$1(this, p2);
    }

    androidx.appcompat.widget.DropDownListView createDropDownListView(android.content.Context p2, boolean p3)
    {
        return new androidx.appcompat.widget.DropDownListView(p2, p3);
    }

    public void dismiss()
    {
        this.mPopup.dismiss();
        this.removePromptView();
        this.mPopup.setContentView(0);
        this.mDropDownList = 0;
        this.mHandler.removeCallbacks(this.mResizePopupRunnable);
        return;
    }

    public android.view.View getAnchorView()
    {
        return this.mDropDownAnchorView;
    }

    public int getAnimationStyle()
    {
        return this.mPopup.getAnimationStyle();
    }

    public android.graphics.drawable.Drawable getBackground()
    {
        return this.mPopup.getBackground();
    }

    public int getHeight()
    {
        return this.mDropDownHeight;
    }

    public int getHorizontalOffset()
    {
        return this.mDropDownHorizontalOffset;
    }

    public int getInputMethodMode()
    {
        return this.mPopup.getInputMethodMode();
    }

    public android.widget.ListView getListView()
    {
        return this.mDropDownList;
    }

    public int getPromptPosition()
    {
        return this.mPromptPosition;
    }

    public Object getSelectedItem()
    {
        Object v0_2;
        if (this.isShowing()) {
            v0_2 = this.mDropDownList.getSelectedItem();
        } else {
            v0_2 = 0;
        }
        return v0_2;
    }

    public long getSelectedItemId()
    {
        long v0_2;
        if (this.isShowing()) {
            v0_2 = this.mDropDownList.getSelectedItemId();
        } else {
            v0_2 = -0.0;
        }
        return v0_2;
    }

    public int getSelectedItemPosition()
    {
        int v0_2;
        if (this.isShowing()) {
            v0_2 = this.mDropDownList.getSelectedItemPosition();
        } else {
            v0_2 = -1;
        }
        return v0_2;
    }

    public android.view.View getSelectedView()
    {
        android.view.View v0_2;
        if (this.isShowing()) {
            v0_2 = this.mDropDownList.getSelectedView();
        } else {
            v0_2 = 0;
        }
        return v0_2;
    }

    public int getSoftInputMode()
    {
        return this.mPopup.getSoftInputMode();
    }

    public int getVerticalOffset()
    {
        int v0_1;
        if (this.mDropDownVerticalOffsetSet) {
            v0_1 = this.mDropDownVerticalOffset;
        } else {
            v0_1 = 0;
        }
        return v0_1;
    }

    public int getWidth()
    {
        return this.mDropDownWidth;
    }

    public boolean isDropDownAlwaysVisible()
    {
        return this.mDropDownAlwaysVisible;
    }

    public boolean isInputMethodNotNeeded()
    {
        int v0_2;
        if (this.mPopup.getInputMethodMode() != 2) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public boolean isModal()
    {
        return this.mModal;
    }

    public boolean isShowing()
    {
        return this.mPopup.isShowing();
    }

    public boolean onKeyDown(int p14, android.view.KeyEvent p15)
    {
        int v7 = 1;
        if ((!this.isShowing()) || ((p14 == 62) || ((this.mDropDownList.getSelectedItemPosition() < 0) && (androidx.appcompat.widget.ListPopupWindow.isConfirmKey(p14))))) {
            v7 = 0;
        } else {
            int v2;
            int v4 = this.mDropDownList.getSelectedItemPosition();
            if (this.mPopup.isAboveAnchor()) {
                v2 = 0;
            } else {
                v2 = 1;
            }
            android.widget.ListAdapter v0 = this.mAdapter;
            int v5 = 2147483647;
            int v6 = -2147483648;
            if (v0 != null) {
                boolean v1 = v0.areAllItemsEnabled();
                if (!v1) {
                    v5 = this.mDropDownList.lookForSelectablePosition(0, 1);
                } else {
                    v5 = 0;
                }
                if (!v1) {
                    v6 = this.mDropDownList.lookForSelectablePosition((v0.getCount() - 1), 0);
                } else {
                    v6 = (v0.getCount() - 1);
                }
            }
            if (((v2 == 0) || ((p14 != 19) || (v4 > v5))) && ((v2 != 0) || ((p14 != 20) || (v4 < v6)))) {
                this.mDropDownList.setListSelectionHidden(0);
                if (!this.mDropDownList.onKeyDown(p14, p15)) {
                    if ((v2 == 0) || (p14 != 20)) {
                        if ((v2 != 0) || ((p14 != 19) || (v4 != v5))) {
                        }
                    } else {
                        if (v4 != v6) {
                        }
                    }
                } else {
                    this.mPopup.setInputMethodMode(2);
                    this.mDropDownList.requestFocusFromTouch();
                    this.show();
                    switch (p14) {
                        case 19:
                        case 20:
                        case 23:
                        case 66:
                            break;
                        case 19:
                        case 20:
                        case 23:
                        case 66:
                            break;
                        case 19:
                        case 20:
                        case 23:
                        case 66:
                            break;
                        case 19:
                        case 20:
                        case 23:
                        case 66:
                            break;
                        default:
                    }
                }
            } else {
                this.clearListSelection();
                this.mPopup.setInputMethodMode(1);
                this.show();
            }
        }
        return v7;
    }

    public boolean onKeyPreIme(int p5, android.view.KeyEvent p6)
    {
        int v2 = 1;
        if ((p5 != 4) || (!this.isShowing())) {
            v2 = 0;
        } else {
            android.view.View v0 = this.mDropDownAnchorView;
            if ((p6.getAction() != 0) || (p6.getRepeatCount() != 0)) {
                if (p6.getAction() != 1) {
                } else {
                    android.view.KeyEvent$DispatcherState v1_0 = v0.getKeyDispatcherState();
                    if (v1_0 != null) {
                        v1_0.handleUpEvent(p6);
                    }
                    if ((!p6.isTracking()) || (p6.isCanceled())) {
                    } else {
                        this.dismiss();
                    }
                }
            } else {
                android.view.KeyEvent$DispatcherState v1_1 = v0.getKeyDispatcherState();
                if (v1_1 != null) {
                    v1_1.startTracking(p6, this);
                }
            }
        }
        return v2;
    }

    public boolean onKeyUp(int p3, android.view.KeyEvent p4)
    {
        if ((!this.isShowing()) || (this.mDropDownList.getSelectedItemPosition() < 0)) {
            boolean v0 = 0;
        } else {
            v0 = this.mDropDownList.onKeyUp(p3, p4);
            if ((v0) && (androidx.appcompat.widget.ListPopupWindow.isConfirmKey(p3))) {
                this.dismiss();
            }
        }
        return v0;
    }

    public boolean performItemClick(int p8)
    {
        int v0_2;
        if (!this.isShowing()) {
            v0_2 = 0;
        } else {
            if (this.mItemClickListener != null) {
                androidx.appcompat.widget.DropDownListView v1 = this.mDropDownList;
                this.mItemClickListener.onItemClick(v1, v1.getChildAt((p8 - v1.getFirstVisiblePosition())), p8, v1.getAdapter().getItemId(p8));
            }
            v0_2 = 1;
        }
        return v0_2;
    }

    public void postShow()
    {
        this.mHandler.post(this.mShowDropDownRunnable);
        return;
    }

    public void setAdapter(android.widget.ListAdapter p3)
    {
        if (this.mObserver != null) {
            if (this.mAdapter != null) {
                this.mAdapter.unregisterDataSetObserver(this.mObserver);
            }
        } else {
            this.mObserver = new androidx.appcompat.widget.ListPopupWindow$PopupDataSetObserver(this);
        }
        this.mAdapter = p3;
        if (p3 != null) {
            p3.registerDataSetObserver(this.mObserver);
        }
        if (this.mDropDownList != null) {
            this.mDropDownList.setAdapter(this.mAdapter);
        }
        return;
    }

    public void setAnchorView(android.view.View p1)
    {
        this.mDropDownAnchorView = p1;
        return;
    }

    public void setAnimationStyle(int p2)
    {
        this.mPopup.setAnimationStyle(p2);
        return;
    }

    public void setBackgroundDrawable(android.graphics.drawable.Drawable p2)
    {
        this.mPopup.setBackgroundDrawable(p2);
        return;
    }

    public void setContentWidth(int p4)
    {
        android.graphics.drawable.Drawable v0 = this.mPopup.getBackground();
        if (v0 == null) {
            this.setWidth(p4);
        } else {
            v0.getPadding(this.mTempRect);
            this.mDropDownWidth = ((this.mTempRect.left + this.mTempRect.right) + p4);
        }
        return;
    }

    public void setDropDownAlwaysVisible(boolean p1)
    {
        this.mDropDownAlwaysVisible = p1;
        return;
    }

    public void setDropDownGravity(int p1)
    {
        this.mDropDownGravity = p1;
        return;
    }

    public void setEpicenterBounds(android.graphics.Rect p1)
    {
        this.mEpicenterBounds = p1;
        return;
    }

    public void setForceIgnoreOutsideTouch(boolean p1)
    {
        this.mForceIgnoreOutsideTouch = p1;
        return;
    }

    public void setHeight(int p3)
    {
        if ((p3 >= 0) || ((-2 == p3) || (-1 == p3))) {
            this.mDropDownHeight = p3;
            return;
        } else {
            throw new IllegalArgumentException("Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT.");
        }
    }

    public void setHorizontalOffset(int p1)
    {
        this.mDropDownHorizontalOffset = p1;
        return;
    }

    public void setInputMethodMode(int p2)
    {
        this.mPopup.setInputMethodMode(p2);
        return;
    }

    void setListItemExpandMax(int p1)
    {
        this.mListItemExpandMaximum = p1;
        return;
    }

    public void setListSelector(android.graphics.drawable.Drawable p1)
    {
        this.mDropDownListHighlight = p1;
        return;
    }

    public void setModal(boolean p2)
    {
        this.mModal = p2;
        this.mPopup.setFocusable(p2);
        return;
    }

    public void setOnDismissListener(android.widget.PopupWindow$OnDismissListener p2)
    {
        this.mPopup.setOnDismissListener(p2);
        return;
    }

    public void setOnItemClickListener(android.widget.AdapterView$OnItemClickListener p1)
    {
        this.mItemClickListener = p1;
        return;
    }

    public void setOnItemSelectedListener(android.widget.AdapterView$OnItemSelectedListener p1)
    {
        this.mItemSelectedListener = p1;
        return;
    }

    public void setOverlapAnchor(boolean p2)
    {
        this.mOverlapAnchorSet = 1;
        this.mOverlapAnchor = p2;
        return;
    }

    public void setPromptPosition(int p1)
    {
        this.mPromptPosition = p1;
        return;
    }

    public void setPromptView(android.view.View p2)
    {
        boolean v0 = this.isShowing();
        if (v0) {
            this.removePromptView();
        }
        this.mPromptView = p2;
        if (v0) {
            this.show();
        }
        return;
    }

    public void setSelection(int p3)
    {
        androidx.appcompat.widget.DropDownListView v0 = this.mDropDownList;
        if ((this.isShowing()) && (v0 != null)) {
            v0.setListSelectionHidden(0);
            v0.setSelection(p3);
            if (v0.getChoiceMode() != 0) {
                v0.setItemChecked(p3, 1);
            }
        }
        return;
    }

    public void setSoftInputMode(int p2)
    {
        this.mPopup.setSoftInputMode(p2);
        return;
    }

    public void setVerticalOffset(int p2)
    {
        this.mDropDownVerticalOffset = p2;
        this.mDropDownVerticalOffsetSet = 1;
        return;
    }

    public void setWidth(int p1)
    {
        this.mDropDownWidth = p1;
        return;
    }

    public void setWindowLayoutType(int p1)
    {
        this.mDropDownWindowLayoutType = p1;
        return;
    }

    public void show()
    {
        int v2_0 = 1;
        androidx.appcompat.widget.ListPopupWindow$ListSelectorHider v1_0 = 0;
        int v5 = -1;
        int v7 = this.buildDropDown();
        boolean v9 = this.isInputMethodNotNeeded();
        androidx.core.widget.PopupWindowCompat.setWindowLayoutType(this.mPopup, this.mDropDownWindowLayoutType);
        if (!this.mPopup.isShowing()) {
            int v10_1;
            if (this.mDropDownWidth != -1) {
                if (this.mDropDownWidth != -2) {
                    v10_1 = this.mDropDownWidth;
                } else {
                    v10_1 = this.getAnchorView().getWidth();
                }
            } else {
                v10_1 = -1;
            }
            int v8_1;
            if (this.mDropDownHeight != -1) {
                if (this.mDropDownHeight != -2) {
                    v8_1 = this.mDropDownHeight;
                } else {
                    v8_1 = v7;
                }
            } else {
                v8_1 = -1;
            }
            this.mPopup.setWidth(v10_1);
            this.mPopup.setHeight(v8_1);
            this.setPopupClipToScreenEnabled(1);
            if ((this.mForceIgnoreOutsideTouch) || (this.mDropDownAlwaysVisible)) {
                v2_0 = 0;
            }
            this.mPopup.setOutsideTouchable(v2_0);
            this.mPopup.setTouchInterceptor(this.mTouchInterceptor);
            if (this.mOverlapAnchorSet) {
                androidx.core.widget.PopupWindowCompat.setOverlapAnchor(this.mPopup, this.mOverlapAnchor);
            }
            if (androidx.appcompat.widget.ListPopupWindow.sSetEpicenterBoundsMethod != null) {
                try {
                    androidx.appcompat.widget.ListPopupWindow$ListSelectorHider v1_4 = this.mPopup;
                    int v2_3 = new Object[1];
                    v2_3[0] = this.mEpicenterBounds;
                    androidx.appcompat.widget.ListPopupWindow.sSetEpicenterBoundsMethod.invoke(v1_4, v2_3);
                } catch (Exception v6) {
                    android.util.Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", v6);
                }
            }
            androidx.core.widget.PopupWindowCompat.showAsDropDown(this.mPopup, this.getAnchorView(), this.mDropDownHorizontalOffset, this.mDropDownVerticalOffset, this.mDropDownGravity);
            this.mDropDownList.setSelection(-1);
            if ((!this.mModal) || (this.mDropDownList.isInTouchMode())) {
                this.clearListSelection();
            }
            if (!this.mModal) {
                this.mHandler.post(this.mHideSelector);
            }
        } else {
            if (androidx.core.view.ViewCompat.isAttachedToWindow(this.getAnchorView())) {
                int v10_0;
                if (this.mDropDownWidth != -1) {
                    if (this.mDropDownWidth != -2) {
                        v10_0 = this.mDropDownWidth;
                    } else {
                        v10_0 = this.getAnchorView().getWidth();
                    }
                } else {
                    v10_0 = -1;
                }
                int v8_0;
                if (this.mDropDownHeight != -1) {
                    if (this.mDropDownHeight != -2) {
                        v8_0 = this.mDropDownHeight;
                    } else {
                        v8_0 = v7;
                    }
                } else {
                    if (!v9) {
                        v8_0 = -1;
                    } else {
                        v8_0 = v7;
                    }
                    if (!v9) {
                        android.os.Handler v0_4;
                        if (this.mDropDownWidth != -1) {
                            v0_4 = 0;
                        } else {
                            v0_4 = -1;
                        }
                        this.mPopup.setWidth(v0_4);
                        this.mPopup.setHeight(-1);
                    } else {
                        android.os.Handler v0_7;
                        if (this.mDropDownWidth != -1) {
                            v0_7 = 0;
                        } else {
                            v0_7 = -1;
                        }
                        this.mPopup.setWidth(v0_7);
                        this.mPopup.setHeight(0);
                    }
                }
                if ((!this.mForceIgnoreOutsideTouch) && (!this.mDropDownAlwaysVisible)) {
                    v1_0 = 1;
                }
                int v4_1;
                this.mPopup.setOutsideTouchable(v1_0);
                android.os.Handler v0_11 = this.mPopup;
                androidx.appcompat.widget.ListPopupWindow$ListSelectorHider v1_1 = this.getAnchorView();
                if (v10_0 >= 0) {
                    v4_1 = v10_0;
                } else {
                    v4_1 = -1;
                }
                if (v8_0 >= 0) {
                    v5 = v8_0;
                }
                v0_11.update(v1_1, this.mDropDownHorizontalOffset, this.mDropDownVerticalOffset, v4_1, v5);
            }
        }
        return;
    }
}
