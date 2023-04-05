package androidx.appcompat.app;
public class AlertController$AlertParams {
    public android.widget.ListAdapter mAdapter;
    public boolean mCancelable;
    public int mCheckedItem;
    public boolean[] mCheckedItems;
    public final android.content.Context mContext;
    public android.database.Cursor mCursor;
    public android.view.View mCustomTitleView;
    public boolean mForceInverseBackground;
    public android.graphics.drawable.Drawable mIcon;
    public int mIconAttrId;
    public int mIconId;
    public final android.view.LayoutInflater mInflater;
    public String mIsCheckedColumn;
    public boolean mIsMultiChoice;
    public boolean mIsSingleChoice;
    public CharSequence[] mItems;
    public String mLabelColumn;
    public CharSequence mMessage;
    public android.graphics.drawable.Drawable mNegativeButtonIcon;
    public android.content.DialogInterface$OnClickListener mNegativeButtonListener;
    public CharSequence mNegativeButtonText;
    public android.graphics.drawable.Drawable mNeutralButtonIcon;
    public android.content.DialogInterface$OnClickListener mNeutralButtonListener;
    public CharSequence mNeutralButtonText;
    public android.content.DialogInterface$OnCancelListener mOnCancelListener;
    public android.content.DialogInterface$OnMultiChoiceClickListener mOnCheckboxClickListener;
    public android.content.DialogInterface$OnClickListener mOnClickListener;
    public android.content.DialogInterface$OnDismissListener mOnDismissListener;
    public android.widget.AdapterView$OnItemSelectedListener mOnItemSelectedListener;
    public android.content.DialogInterface$OnKeyListener mOnKeyListener;
    public androidx.appcompat.app.AlertController$AlertParams$OnPrepareListViewListener mOnPrepareListViewListener;
    public android.graphics.drawable.Drawable mPositiveButtonIcon;
    public android.content.DialogInterface$OnClickListener mPositiveButtonListener;
    public CharSequence mPositiveButtonText;
    public boolean mRecycleOnMeasure;
    public CharSequence mTitle;
    public android.view.View mView;
    public int mViewLayoutResId;
    public int mViewSpacingBottom;
    public int mViewSpacingLeft;
    public int mViewSpacingRight;
    public boolean mViewSpacingSpecified;
    public int mViewSpacingTop;

    public AlertController$AlertParams(android.content.Context p3)
    {
        this.mIconId = 0;
        this.mIconAttrId = 0;
        this.mViewSpacingSpecified = 0;
        this.mCheckedItem = -1;
        this.mRecycleOnMeasure = 1;
        this.mContext = p3;
        this.mCancelable = 1;
        this.mInflater = ((android.view.LayoutInflater) p3.getSystemService("layout_inflater"));
        return;
    }

    private void createListView(androidx.appcompat.app.AlertController p11)
    {
        androidx.appcompat.app.AlertController$CheckedItemAdapter v0_1;
        androidx.appcompat.app.AlertController$RecycleListView v6_1 = ((androidx.appcompat.app.AlertController$RecycleListView) this.mInflater.inflate(p11.mListLayout, 0));
        if (!this.mIsMultiChoice) {
            int v2_0;
            if (!this.mIsSingleChoice) {
                v2_0 = p11.mListItemLayout;
            } else {
                v2_0 = p11.mSingleChoiceItemLayout;
            }
            if (this.mCursor == null) {
                if (this.mAdapter == null) {
                    v0_1 = new androidx.appcompat.app.AlertController$CheckedItemAdapter(this.mContext, v2_0, 16908308, this.mItems);
                } else {
                    v0_1 = this.mAdapter;
                }
            } else {
                int v1_4 = this.mContext;
                CharSequence[] v3_1 = this.mCursor;
                String[] v7_0 = new String[1];
                v7_0[0] = this.mLabelColumn;
                int[] v8_1 = new int[1];
                v8_1[0] = 16908308;
                v0_1 = new android.widget.SimpleCursorAdapter(v1_4, v2_0, v3_1, v7_0, v8_1);
            }
        } else {
            if (this.mCursor != null) {
                v0_1 = new androidx.appcompat.app.AlertController$AlertParams$2;
                v0_1(this, this.mContext, this.mCursor, 0, v6_1, p11);
            } else {
                v0_1 = new androidx.appcompat.app.AlertController$AlertParams$1(this, this.mContext, p11.mMultiChoiceItemLayout, 16908308, this.mItems, v6_1);
            }
        }
        if (this.mOnPrepareListViewListener != null) {
            this.mOnPrepareListViewListener.onPrepareListView(v6_1);
        }
        p11.mAdapter = v0_1;
        p11.mCheckedItem = this.mCheckedItem;
        if (this.mOnClickListener == null) {
            if (this.mOnCheckboxClickListener != null) {
                v6_1.setOnItemClickListener(new androidx.appcompat.app.AlertController$AlertParams$4(this, v6_1, p11));
            }
        } else {
            v6_1.setOnItemClickListener(new androidx.appcompat.app.AlertController$AlertParams$3(this, p11));
        }
        if (this.mOnItemSelectedListener != null) {
            v6_1.setOnItemSelectedListener(this.mOnItemSelectedListener);
        }
        if (!this.mIsSingleChoice) {
            if (this.mIsMultiChoice) {
                v6_1.setChoiceMode(2);
            }
        } else {
            v6_1.setChoiceMode(1);
        }
        p11.mListView = v6_1;
        return;
    }

    public void apply(androidx.appcompat.app.AlertController p7)
    {
        if (this.mCustomTitleView == null) {
            if (this.mTitle != null) {
                p7.setTitle(this.mTitle);
            }
            if (this.mIcon != null) {
                p7.setIcon(this.mIcon);
            }
            if (this.mIconId != 0) {
                p7.setIcon(this.mIconId);
            }
            if (this.mIconAttrId != 0) {
                p7.setIcon(p7.getIconAttributeResId(this.mIconAttrId));
            }
        } else {
            p7.setCustomTitle(this.mCustomTitleView);
        }
        if (this.mMessage != null) {
            p7.setMessage(this.mMessage);
        }
        if ((this.mPositiveButtonText != null) || (this.mPositiveButtonIcon != null)) {
            p7.setButton(-1, this.mPositiveButtonText, this.mPositiveButtonListener, 0, this.mPositiveButtonIcon);
        }
        if ((this.mNegativeButtonText != null) || (this.mNegativeButtonIcon != null)) {
            p7.setButton(-2, this.mNegativeButtonText, this.mNegativeButtonListener, 0, this.mNegativeButtonIcon);
        }
        if ((this.mNeutralButtonText != null) || (this.mNeutralButtonIcon != null)) {
            p7.setButton(-3, this.mNeutralButtonText, this.mNeutralButtonListener, 0, this.mNeutralButtonIcon);
        }
        if ((this.mItems != null) || ((this.mCursor != null) || (this.mAdapter != null))) {
            this.createListView(p7);
        }
        if (this.mView == null) {
            if (this.mViewLayoutResId != 0) {
                p7.setView(this.mViewLayoutResId);
            }
        } else {
            if (!this.mViewSpacingSpecified) {
                p7.setView(this.mView);
            } else {
                p7.setView(this.mView, this.mViewSpacingLeft, this.mViewSpacingTop, this.mViewSpacingRight, this.mViewSpacingBottom);
            }
        }
        return;
    }
}
