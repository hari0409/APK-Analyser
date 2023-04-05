package androidx.appcompat.widget;
public class AppCompatSpinner extends android.widget.Spinner implements androidx.core.view.TintableBackgroundView {
    private static final int[] ATTRS_ANDROID_SPINNERMODE = None;
    private static final int MAX_ITEMS_MEASURED = 15;
    private static final int MODE_DIALOG = 0;
    private static final int MODE_DROPDOWN = 1;
    private static final int MODE_THEME = 255;
    private static final String TAG = "AppCompatSpinner";
    private final androidx.appcompat.widget.AppCompatBackgroundHelper mBackgroundTintHelper;
    int mDropDownWidth;
    private androidx.appcompat.widget.ForwardingListener mForwardingListener;
    androidx.appcompat.widget.AppCompatSpinner$DropdownPopup mPopup;
    private final android.content.Context mPopupContext;
    private final boolean mPopupSet;
    private android.widget.SpinnerAdapter mTempAdapter;
    final android.graphics.Rect mTempRect;

    static AppCompatSpinner()
    {
        int[] v0_1 = new int[1];
        v0_1[0] = 16843505;
        androidx.appcompat.widget.AppCompatSpinner.ATTRS_ANDROID_SPINNERMODE = v0_1;
        return;
    }

    public AppCompatSpinner(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public AppCompatSpinner(android.content.Context p3, int p4)
    {
        this(p3, 0, androidx.appcompat.R$attr.spinnerStyle, p4);
        return;
    }

    public AppCompatSpinner(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, androidx.appcompat.R$attr.spinnerStyle);
        return;
    }

    public AppCompatSpinner(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        this(p2, p3, p4, -1);
        return;
    }

    public AppCompatSpinner(android.content.Context p7, android.util.AttributeSet p8, int p9, int p10)
    {
        this(p7, p8, p9, p10, 0);
        return;
    }

    public AppCompatSpinner(android.content.Context p13, android.util.AttributeSet p14, int p15, int p16, android.content.res.Resources$Theme p17)
    {
        super(p13, p14, p15);
        super.mTempRect = new android.graphics.Rect();
        androidx.appcompat.widget.TintTypedArray v1 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(p13, p14, androidx.appcompat.R$styleable.Spinner, p15, 0);
        super.mBackgroundTintHelper = new androidx.appcompat.widget.AppCompatBackgroundHelper(super);
        if (p17 == null) {
            int v8 = v1.getResourceId(androidx.appcompat.R$styleable.Spinner_popupTheme, 0);
            if (v8 == 0) {
                String v9_9;
                if (android.os.Build$VERSION.SDK_INT >= 23) {
                    v9_9 = 0;
                } else {
                    v9_9 = p13;
                }
                super.mPopupContext = v9_9;
            } else {
                super.mPopupContext = new androidx.appcompat.view.ContextThemeWrapper(p13, v8);
            }
        } else {
            super.mPopupContext = new androidx.appcompat.view.ContextThemeWrapper(p13, p17);
        }
        if (super.mPopupContext != null) {
            if (p16 == -1) {
                try {
                    android.content.res.TypedArray v2 = p13.obtainStyledAttributes(p14, androidx.appcompat.widget.AppCompatSpinner.ATTRS_ANDROID_SPINNERMODE, p15, 0);
                } catch (Exception v4) {
                    android.util.Log.i("AppCompatSpinner", "Could not read android:spinnerMode", v4);
                    if (v2 != null) {
                        v2.recycle();
                    }
                } catch (String v9_21) {
                    if (v2 != null) {
                        v2.recycle();
                    }
                    throw v9_21;
                }
                if (v2.hasValue(0)) {
                    p16 = v2.getInt(0, 0);
                }
                if (v2 != null) {
                    v2.recycle();
                }
            }
            if (p16 == 1) {
                androidx.appcompat.widget.AppCompatSpinner$DropdownPopup v7_1 = new androidx.appcompat.widget.AppCompatSpinner$DropdownPopup(super, super.mPopupContext, p14, p15);
                androidx.appcompat.widget.TintTypedArray v6 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(super.mPopupContext, p14, androidx.appcompat.R$styleable.Spinner, p15, 0);
                super.mDropDownWidth = v6.getLayoutDimension(androidx.appcompat.R$styleable.Spinner_android_dropDownWidth, -2);
                v7_1.setBackgroundDrawable(v6.getDrawable(androidx.appcompat.R$styleable.Spinner_android_popupBackground));
                v7_1.setPromptText(v1.getString(androidx.appcompat.R$styleable.Spinner_android_prompt));
                v6.recycle();
                super.mPopup = v7_1;
                super.mForwardingListener = new androidx.appcompat.widget.AppCompatSpinner$1(super, super, v7_1);
            }
        }
        CharSequence[] v5 = v1.getTextArray(androidx.appcompat.R$styleable.Spinner_android_entries);
        if (v5 != null) {
            android.widget.ArrayAdapter v3_1 = new android.widget.ArrayAdapter(p13, 17367048, v5);
            v3_1.setDropDownViewResource(androidx.appcompat.R$layout.support_simple_spinner_dropdown_item);
            super.setAdapter(v3_1);
        }
        v1.recycle();
        super.mPopupSet = 1;
        if (super.mTempAdapter != null) {
            super.setAdapter(super.mTempAdapter);
            super.mTempAdapter = 0;
        }
        super.mBackgroundTintHelper.loadFromAttributes(p14, p15);
        return;
    }

    int compatMeasureContentWidth(android.widget.SpinnerAdapter p14, android.graphics.drawable.Drawable p15)
    {
        int v8;
        if (p14 != null) {
            v8 = 0;
            android.view.View v5 = 0;
            int v4 = 0;
            int v9 = android.view.View$MeasureSpec.makeMeasureSpec(this.getMeasuredWidth(), 0);
            int v2 = android.view.View$MeasureSpec.makeMeasureSpec(this.getMeasuredHeight(), 0);
            int v7_0 = Math.max(0, this.getSelectedItemPosition());
            int v1 = Math.min(p14.getCount(), (v7_0 + 15));
            int v3 = Math.max(0, (v7_0 - (15 - (v1 - v7_0))));
            while (v3 < v1) {
                int v6 = p14.getItemViewType(v3);
                if (v6 != v4) {
                    v4 = v6;
                    v5 = 0;
                }
                v5 = p14.getView(v3, v5, this);
                if (v5.getLayoutParams() == null) {
                    v5.setLayoutParams(new android.view.ViewGroup$LayoutParams(-2, -2));
                }
                v5.measure(v9, v2);
                v8 = Math.max(v8, v5.getMeasuredWidth());
                v3++;
            }
            if (p15 != null) {
                p15.getPadding(this.mTempRect);
                v8 += (this.mTempRect.left + this.mTempRect.right);
            }
        } else {
            v8 = 0;
        }
        return v8;
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.applySupportBackgroundTint();
        }
        return;
    }

    public int getDropDownHorizontalOffset()
    {
        int v0_1;
        if (this.mPopup == null) {
            if (android.os.Build$VERSION.SDK_INT < 16) {
                v0_1 = 0;
            } else {
                v0_1 = super.getDropDownHorizontalOffset();
            }
        } else {
            v0_1 = this.mPopup.getHorizontalOffset();
        }
        return v0_1;
    }

    public int getDropDownVerticalOffset()
    {
        int v0_1;
        if (this.mPopup == null) {
            if (android.os.Build$VERSION.SDK_INT < 16) {
                v0_1 = 0;
            } else {
                v0_1 = super.getDropDownVerticalOffset();
            }
        } else {
            v0_1 = this.mPopup.getVerticalOffset();
        }
        return v0_1;
    }

    public int getDropDownWidth()
    {
        int v0_2;
        if (this.mPopup == null) {
            if (android.os.Build$VERSION.SDK_INT < 16) {
                v0_2 = 0;
            } else {
                v0_2 = super.getDropDownWidth();
            }
        } else {
            v0_2 = this.mDropDownWidth;
        }
        return v0_2;
    }

    public android.graphics.drawable.Drawable getPopupBackground()
    {
        int v0_1;
        if (this.mPopup == null) {
            if (android.os.Build$VERSION.SDK_INT < 16) {
                v0_1 = 0;
            } else {
                v0_1 = super.getPopupBackground();
            }
        } else {
            v0_1 = this.mPopup.getBackground();
        }
        return v0_1;
    }

    public android.content.Context getPopupContext()
    {
        int v0_2;
        if (this.mPopup == null) {
            if (android.os.Build$VERSION.SDK_INT < 23) {
                v0_2 = 0;
            } else {
                v0_2 = super.getPopupContext();
            }
        } else {
            v0_2 = this.mPopupContext;
        }
        return v0_2;
    }

    public CharSequence getPrompt()
    {
        CharSequence v0_1;
        if (this.mPopup == null) {
            v0_1 = super.getPrompt();
        } else {
            v0_1 = this.mPopup.getHintText();
        }
        return v0_1;
    }

    public android.content.res.ColorStateList getSupportBackgroundTintList()
    {
        int v0_1;
        if (this.mBackgroundTintHelper == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mBackgroundTintHelper.getSupportBackgroundTintList();
        }
        return v0_1;
    }

    public android.graphics.PorterDuff$Mode getSupportBackgroundTintMode()
    {
        int v0_1;
        if (this.mBackgroundTintHelper == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mBackgroundTintHelper.getSupportBackgroundTintMode();
        }
        return v0_1;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if ((this.mPopup != null) && (this.mPopup.isShowing())) {
            this.mPopup.dismiss();
        }
        return;
    }

    protected void onMeasure(int p4, int p5)
    {
        super.onMeasure(p4, p5);
        if ((this.mPopup != null) && (android.view.View$MeasureSpec.getMode(p4) == -2147483648)) {
            this.setMeasuredDimension(Math.min(Math.max(this.getMeasuredWidth(), this.compatMeasureContentWidth(this.getAdapter(), this.getBackground())), android.view.View$MeasureSpec.getSize(p4)), this.getMeasuredHeight());
        }
        return;
    }

    public boolean onTouchEvent(android.view.MotionEvent p2)
    {
        if ((this.mForwardingListener == null) || (!this.mForwardingListener.onTouch(this, p2))) {
            int v0_3 = super.onTouchEvent(p2);
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public boolean performClick()
    {
        int v0_1;
        if (this.mPopup == null) {
            v0_1 = super.performClick();
        } else {
            if (!this.mPopup.isShowing()) {
                this.mPopup.show();
            }
            v0_1 = 1;
        }
        return v0_1;
    }

    public bridge synthetic void setAdapter(android.widget.Adapter p1)
    {
        this.setAdapter(((android.widget.SpinnerAdapter) p1));
        return;
    }

    public void setAdapter(android.widget.SpinnerAdapter p5)
    {
        if (this.mPopupSet) {
            super.setAdapter(p5);
            if (this.mPopup != null) {
                android.content.Context v0;
                if (this.mPopupContext != null) {
                    v0 = this.mPopupContext;
                } else {
                    v0 = this.getContext();
                }
                this.mPopup.setAdapter(new androidx.appcompat.widget.AppCompatSpinner$DropDownAdapter(p5, v0.getTheme()));
            }
        } else {
            this.mTempAdapter = p5;
        }
        return;
    }

    public void setBackgroundDrawable(android.graphics.drawable.Drawable p2)
    {
        super.setBackgroundDrawable(p2);
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.onSetBackgroundDrawable(p2);
        }
        return;
    }

    public void setBackgroundResource(int p2)
    {
        super.setBackgroundResource(p2);
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.onSetBackgroundResource(p2);
        }
        return;
    }

    public void setDropDownHorizontalOffset(int p3)
    {
        if (this.mPopup == null) {
            if (android.os.Build$VERSION.SDK_INT >= 16) {
                super.setDropDownHorizontalOffset(p3);
            }
        } else {
            this.mPopup.setHorizontalOffset(p3);
        }
        return;
    }

    public void setDropDownVerticalOffset(int p3)
    {
        if (this.mPopup == null) {
            if (android.os.Build$VERSION.SDK_INT >= 16) {
                super.setDropDownVerticalOffset(p3);
            }
        } else {
            this.mPopup.setVerticalOffset(p3);
        }
        return;
    }

    public void setDropDownWidth(int p3)
    {
        if (this.mPopup == null) {
            if (android.os.Build$VERSION.SDK_INT >= 16) {
                super.setDropDownWidth(p3);
            }
        } else {
            this.mDropDownWidth = p3;
        }
        return;
    }

    public void setPopupBackgroundDrawable(android.graphics.drawable.Drawable p3)
    {
        if (this.mPopup == null) {
            if (android.os.Build$VERSION.SDK_INT >= 16) {
                super.setPopupBackgroundDrawable(p3);
            }
        } else {
            this.mPopup.setBackgroundDrawable(p3);
        }
        return;
    }

    public void setPopupBackgroundResource(int p2)
    {
        this.setPopupBackgroundDrawable(androidx.appcompat.content.res.AppCompatResources.getDrawable(this.getPopupContext(), p2));
        return;
    }

    public void setPrompt(CharSequence p2)
    {
        if (this.mPopup == null) {
            super.setPrompt(p2);
        } else {
            this.mPopup.setPromptText(p2);
        }
        return;
    }

    public void setSupportBackgroundTintList(android.content.res.ColorStateList p2)
    {
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.setSupportBackgroundTintList(p2);
        }
        return;
    }

    public void setSupportBackgroundTintMode(android.graphics.PorterDuff$Mode p2)
    {
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.setSupportBackgroundTintMode(p2);
        }
        return;
    }
}
