package androidx.appcompat.app;
public class AlertDialog$Builder {
    private final androidx.appcompat.app.AlertController$AlertParams P;
    private final int mTheme;

    public AlertDialog$Builder(android.content.Context p2)
    {
        this(p2, androidx.appcompat.app.AlertDialog.resolveDialogTheme(p2, 0));
        return;
    }

    public AlertDialog$Builder(android.content.Context p4, int p5)
    {
        this.P = new androidx.appcompat.app.AlertController$AlertParams(new android.view.ContextThemeWrapper(p4, androidx.appcompat.app.AlertDialog.resolveDialogTheme(p4, p5)));
        this.mTheme = p5;
        return;
    }

    public androidx.appcompat.app.AlertDialog create()
    {
        androidx.appcompat.app.AlertDialog v0_1 = new androidx.appcompat.app.AlertDialog(this.P.mContext, this.mTheme);
        this.P.apply(v0_1.mAlert);
        v0_1.setCancelable(this.P.mCancelable);
        if (this.P.mCancelable) {
            v0_1.setCanceledOnTouchOutside(1);
        }
        v0_1.setOnCancelListener(this.P.mOnCancelListener);
        v0_1.setOnDismissListener(this.P.mOnDismissListener);
        if (this.P.mOnKeyListener != null) {
            v0_1.setOnKeyListener(this.P.mOnKeyListener);
        }
        return v0_1;
    }

    public android.content.Context getContext()
    {
        return this.P.mContext;
    }

    public androidx.appcompat.app.AlertDialog$Builder setAdapter(android.widget.ListAdapter p2, android.content.DialogInterface$OnClickListener p3)
    {
        this.P.mAdapter = p2;
        this.P.mOnClickListener = p3;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setCancelable(boolean p2)
    {
        this.P.mCancelable = p2;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setCursor(android.database.Cursor p2, android.content.DialogInterface$OnClickListener p3, String p4)
    {
        this.P.mCursor = p2;
        this.P.mLabelColumn = p4;
        this.P.mOnClickListener = p3;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setCustomTitle(android.view.View p2)
    {
        this.P.mCustomTitleView = p2;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setIcon(int p2)
    {
        this.P.mIconId = p2;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setIcon(android.graphics.drawable.Drawable p2)
    {
        this.P.mIcon = p2;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setIconAttribute(int p4)
    {
        android.util.TypedValue v0_1 = new android.util.TypedValue();
        this.P.mContext.getTheme().resolveAttribute(p4, v0_1, 1);
        this.P.mIconId = v0_1.resourceId;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setInverseBackgroundForced(boolean p2)
    {
        this.P.mForceInverseBackground = p2;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setItems(int p3, android.content.DialogInterface$OnClickListener p4)
    {
        this.P.mItems = this.P.mContext.getResources().getTextArray(p3);
        this.P.mOnClickListener = p4;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setItems(CharSequence[] p2, android.content.DialogInterface$OnClickListener p3)
    {
        this.P.mItems = p2;
        this.P.mOnClickListener = p3;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setMessage(int p3)
    {
        this.P.mMessage = this.P.mContext.getText(p3);
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setMessage(CharSequence p2)
    {
        this.P.mMessage = p2;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setMultiChoiceItems(int p3, boolean[] p4, android.content.DialogInterface$OnMultiChoiceClickListener p5)
    {
        this.P.mItems = this.P.mContext.getResources().getTextArray(p3);
        this.P.mOnCheckboxClickListener = p5;
        this.P.mCheckedItems = p4;
        this.P.mIsMultiChoice = 1;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setMultiChoiceItems(android.database.Cursor p3, String p4, String p5, android.content.DialogInterface$OnMultiChoiceClickListener p6)
    {
        this.P.mCursor = p3;
        this.P.mOnCheckboxClickListener = p6;
        this.P.mIsCheckedColumn = p4;
        this.P.mLabelColumn = p5;
        this.P.mIsMultiChoice = 1;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setMultiChoiceItems(CharSequence[] p3, boolean[] p4, android.content.DialogInterface$OnMultiChoiceClickListener p5)
    {
        this.P.mItems = p3;
        this.P.mOnCheckboxClickListener = p5;
        this.P.mCheckedItems = p4;
        this.P.mIsMultiChoice = 1;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setNegativeButton(int p3, android.content.DialogInterface$OnClickListener p4)
    {
        this.P.mNegativeButtonText = this.P.mContext.getText(p3);
        this.P.mNegativeButtonListener = p4;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setNegativeButton(CharSequence p2, android.content.DialogInterface$OnClickListener p3)
    {
        this.P.mNegativeButtonText = p2;
        this.P.mNegativeButtonListener = p3;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setNegativeButtonIcon(android.graphics.drawable.Drawable p2)
    {
        this.P.mNegativeButtonIcon = p2;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setNeutralButton(int p3, android.content.DialogInterface$OnClickListener p4)
    {
        this.P.mNeutralButtonText = this.P.mContext.getText(p3);
        this.P.mNeutralButtonListener = p4;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setNeutralButton(CharSequence p2, android.content.DialogInterface$OnClickListener p3)
    {
        this.P.mNeutralButtonText = p2;
        this.P.mNeutralButtonListener = p3;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setNeutralButtonIcon(android.graphics.drawable.Drawable p2)
    {
        this.P.mNeutralButtonIcon = p2;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setOnCancelListener(android.content.DialogInterface$OnCancelListener p2)
    {
        this.P.mOnCancelListener = p2;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setOnDismissListener(android.content.DialogInterface$OnDismissListener p2)
    {
        this.P.mOnDismissListener = p2;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setOnItemSelectedListener(android.widget.AdapterView$OnItemSelectedListener p2)
    {
        this.P.mOnItemSelectedListener = p2;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setOnKeyListener(android.content.DialogInterface$OnKeyListener p2)
    {
        this.P.mOnKeyListener = p2;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setPositiveButton(int p3, android.content.DialogInterface$OnClickListener p4)
    {
        this.P.mPositiveButtonText = this.P.mContext.getText(p3);
        this.P.mPositiveButtonListener = p4;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setPositiveButton(CharSequence p2, android.content.DialogInterface$OnClickListener p3)
    {
        this.P.mPositiveButtonText = p2;
        this.P.mPositiveButtonListener = p3;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setPositiveButtonIcon(android.graphics.drawable.Drawable p2)
    {
        this.P.mPositiveButtonIcon = p2;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setRecycleOnMeasureEnabled(boolean p2)
    {
        this.P.mRecycleOnMeasure = p2;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setSingleChoiceItems(int p3, int p4, android.content.DialogInterface$OnClickListener p5)
    {
        this.P.mItems = this.P.mContext.getResources().getTextArray(p3);
        this.P.mOnClickListener = p5;
        this.P.mCheckedItem = p4;
        this.P.mIsSingleChoice = 1;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setSingleChoiceItems(android.database.Cursor p3, int p4, String p5, android.content.DialogInterface$OnClickListener p6)
    {
        this.P.mCursor = p3;
        this.P.mOnClickListener = p6;
        this.P.mCheckedItem = p4;
        this.P.mLabelColumn = p5;
        this.P.mIsSingleChoice = 1;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setSingleChoiceItems(android.widget.ListAdapter p3, int p4, android.content.DialogInterface$OnClickListener p5)
    {
        this.P.mAdapter = p3;
        this.P.mOnClickListener = p5;
        this.P.mCheckedItem = p4;
        this.P.mIsSingleChoice = 1;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setSingleChoiceItems(CharSequence[] p3, int p4, android.content.DialogInterface$OnClickListener p5)
    {
        this.P.mItems = p3;
        this.P.mOnClickListener = p5;
        this.P.mCheckedItem = p4;
        this.P.mIsSingleChoice = 1;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setTitle(int p3)
    {
        this.P.mTitle = this.P.mContext.getText(p3);
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setTitle(CharSequence p2)
    {
        this.P.mTitle = p2;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setView(int p3)
    {
        this.P.mView = 0;
        this.P.mViewLayoutResId = p3;
        this.P.mViewSpacingSpecified = 0;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setView(android.view.View p3)
    {
        this.P.mView = p3;
        this.P.mViewLayoutResId = 0;
        this.P.mViewSpacingSpecified = 0;
        return this;
    }

    public androidx.appcompat.app.AlertDialog$Builder setView(android.view.View p3, int p4, int p5, int p6, int p7)
    {
        this.P.mView = p3;
        this.P.mViewLayoutResId = 0;
        this.P.mViewSpacingSpecified = 1;
        this.P.mViewSpacingLeft = p4;
        this.P.mViewSpacingTop = p5;
        this.P.mViewSpacingRight = p6;
        this.P.mViewSpacingBottom = p7;
        return this;
    }

    public androidx.appcompat.app.AlertDialog show()
    {
        androidx.appcompat.app.AlertDialog v0 = this.create();
        v0.show();
        return v0;
    }
}
