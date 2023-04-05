package androidx.appcompat.widget;
public class SearchView$SearchAutoComplete extends androidx.appcompat.widget.AppCompatAutoCompleteTextView {
    private boolean mHasPendingShowSoftInputRequest;
    final Runnable mRunShowSoftInputIfNecessary;
    private androidx.appcompat.widget.SearchView mSearchView;
    private int mThreshold;

    public SearchView$SearchAutoComplete(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public SearchView$SearchAutoComplete(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, androidx.appcompat.R$attr.autoCompleteTextViewStyle);
        return;
    }

    public SearchView$SearchAutoComplete(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        super(p2, p3, p4);
        super.mRunShowSoftInputIfNecessary = new androidx.appcompat.widget.SearchView$SearchAutoComplete$1(super);
        super.mThreshold = super.getThreshold();
        return;
    }

    private int getSearchViewTextMinWidthDp()
    {
        int v3_5;
        android.content.res.Configuration v0 = this.getResources().getConfiguration();
        int v2 = v0.screenWidthDp;
        int v1 = v0.screenHeightDp;
        if ((v2 < 960) || ((v1 < 720) || (v0.orientation != 2))) {
            if ((v2 < 600) && ((v2 < 640) || (v1 < 480))) {
                v3_5 = 160;
            } else {
                v3_5 = 192;
            }
        } else {
            v3_5 = 256;
        }
        return v3_5;
    }

    public boolean enoughToFilter()
    {
        if ((this.mThreshold > 0) && (!super.enoughToFilter())) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    boolean isEmpty()
    {
        int v0_2;
        if (android.text.TextUtils.getTrimmedLength(this.getText()) != 0) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo p3)
    {
        android.view.inputmethod.InputConnection v0 = super.onCreateInputConnection(p3);
        if (this.mHasPendingShowSoftInputRequest) {
            this.removeCallbacks(this.mRunShowSoftInputIfNecessary);
            this.post(this.mRunShowSoftInputIfNecessary);
        }
        return v0;
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        this.setMinWidth(((int) android.util.TypedValue.applyDimension(1, ((float) this.getSearchViewTextMinWidthDp()), this.getResources().getDisplayMetrics())));
        return;
    }

    protected void onFocusChanged(boolean p2, int p3, android.graphics.Rect p4)
    {
        super.onFocusChanged(p2, p3, p4);
        this.mSearchView.onTextFocusChanged();
        return;
    }

    public boolean onKeyPreIme(int p4, android.view.KeyEvent p5)
    {
        boolean v1 = 1;
        if (p4 != 4) {
            v1 = super.onKeyPreIme(p4, p5);
        } else {
            if ((p5.getAction() != 0) || (p5.getRepeatCount() != 0)) {
                if (p5.getAction() != 1) {
                } else {
                    android.view.KeyEvent$DispatcherState v0_0 = this.getKeyDispatcherState();
                    if (v0_0 != null) {
                        v0_0.handleUpEvent(p5);
                    }
                    if ((!p5.isTracking()) || (p5.isCanceled())) {
                    } else {
                        this.mSearchView.clearFocus();
                        this.setImeVisibility(0);
                    }
                }
            } else {
                android.view.KeyEvent$DispatcherState v0_1 = this.getKeyDispatcherState();
                if (v0_1 != null) {
                    v0_1.startTracking(p5, this);
                }
            }
        }
        return v1;
    }

    public void onWindowFocusChanged(boolean p3)
    {
        super.onWindowFocusChanged(p3);
        if ((p3) && ((this.mSearchView.hasFocus()) && (this.getVisibility() == 0))) {
            this.mHasPendingShowSoftInputRequest = 1;
            if (androidx.appcompat.widget.SearchView.isLandscapeMode(this.getContext())) {
                androidx.appcompat.widget.SearchView.HIDDEN_METHOD_INVOKER.ensureImeVisible(this, 1);
            }
        }
        return;
    }

    public void performCompletion()
    {
        return;
    }

    protected void replaceText(CharSequence p1)
    {
        return;
    }

    void setImeVisibility(boolean p5)
    {
        android.view.inputmethod.InputMethodManager v0_1 = ((android.view.inputmethod.InputMethodManager) this.getContext().getSystemService("input_method"));
        if (p5) {
            if (!v0_1.isActive(this)) {
                this.mHasPendingShowSoftInputRequest = 1;
            } else {
                this.mHasPendingShowSoftInputRequest = 0;
                this.removeCallbacks(this.mRunShowSoftInputIfNecessary);
                v0_1.showSoftInput(this, 0);
            }
        } else {
            this.mHasPendingShowSoftInputRequest = 0;
            this.removeCallbacks(this.mRunShowSoftInputIfNecessary);
            v0_1.hideSoftInputFromWindow(this.getWindowToken(), 0);
        }
        return;
    }

    void setSearchView(androidx.appcompat.widget.SearchView p1)
    {
        this.mSearchView = p1;
        return;
    }

    public void setThreshold(int p1)
    {
        super.setThreshold(p1);
        this.mThreshold = p1;
        return;
    }

    void showSoftInputIfNecessary()
    {
        if (this.mHasPendingShowSoftInputRequest) {
            ((android.view.inputmethod.InputMethodManager) this.getContext().getSystemService("input_method")).showSoftInput(this, 0);
            this.mHasPendingShowSoftInputRequest = 0;
        }
        return;
    }
}
