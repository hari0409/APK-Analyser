package androidx.appcompat.widget;
public class SearchView extends androidx.appcompat.widget.LinearLayoutCompat implements androidx.appcompat.view.CollapsibleActionView {
    static final boolean DBG = False;
    static final androidx.appcompat.widget.SearchView$AutoCompleteTextViewReflector HIDDEN_METHOD_INVOKER = None;
    private static final String IME_OPTION_NO_MICROPHONE = "nm";
    static final String LOG_TAG = "SearchView";
    private android.os.Bundle mAppSearchData;
    private boolean mClearingFocus;
    final android.widget.ImageView mCloseButton;
    private final android.widget.ImageView mCollapsedIcon;
    private int mCollapsedImeOptions;
    private final CharSequence mDefaultQueryHint;
    private final android.view.View mDropDownAnchor;
    private boolean mExpandedInActionView;
    final android.widget.ImageView mGoButton;
    private boolean mIconified;
    private boolean mIconifiedByDefault;
    private int mMaxWidth;
    private CharSequence mOldQueryText;
    private final android.view.View$OnClickListener mOnClickListener;
    private androidx.appcompat.widget.SearchView$OnCloseListener mOnCloseListener;
    private final android.widget.TextView$OnEditorActionListener mOnEditorActionListener;
    private final android.widget.AdapterView$OnItemClickListener mOnItemClickListener;
    private final android.widget.AdapterView$OnItemSelectedListener mOnItemSelectedListener;
    private androidx.appcompat.widget.SearchView$OnQueryTextListener mOnQueryChangeListener;
    android.view.View$OnFocusChangeListener mOnQueryTextFocusChangeListener;
    private android.view.View$OnClickListener mOnSearchClickListener;
    private androidx.appcompat.widget.SearchView$OnSuggestionListener mOnSuggestionListener;
    private final java.util.WeakHashMap mOutsideDrawablesCache;
    private CharSequence mQueryHint;
    private boolean mQueryRefinement;
    private Runnable mReleaseCursorRunnable;
    final android.widget.ImageView mSearchButton;
    private final android.view.View mSearchEditFrame;
    private final android.graphics.drawable.Drawable mSearchHintIcon;
    private final android.view.View mSearchPlate;
    final androidx.appcompat.widget.SearchView$SearchAutoComplete mSearchSrcTextView;
    private android.graphics.Rect mSearchSrcTextViewBounds;
    private android.graphics.Rect mSearchSrtTextViewBoundsExpanded;
    android.app.SearchableInfo mSearchable;
    private final android.view.View mSubmitArea;
    private boolean mSubmitButtonEnabled;
    private final int mSuggestionCommitIconResId;
    private final int mSuggestionRowLayout;
    androidx.cursoradapter.widget.CursorAdapter mSuggestionsAdapter;
    private int[] mTemp;
    private int[] mTemp2;
    android.view.View$OnKeyListener mTextKeyListener;
    private android.text.TextWatcher mTextWatcher;
    private androidx.appcompat.widget.SearchView$UpdatableTouchDelegate mTouchDelegate;
    private final Runnable mUpdateDrawableStateRunnable;
    private CharSequence mUserQuery;
    private final android.content.Intent mVoiceAppSearchIntent;
    final android.widget.ImageView mVoiceButton;
    private boolean mVoiceButtonEnabled;
    private final android.content.Intent mVoiceWebSearchIntent;

    static SearchView()
    {
        androidx.appcompat.widget.SearchView.HIDDEN_METHOD_INVOKER = new androidx.appcompat.widget.SearchView$AutoCompleteTextViewReflector();
        return;
    }

    public SearchView(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public SearchView(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, androidx.appcompat.R$attr.searchViewStyle);
        return;
    }

    public SearchView(android.content.Context p11, android.util.AttributeSet p12, int p13)
    {
        super(p11, p12, p13);
        super.mSearchSrcTextViewBounds = new android.graphics.Rect();
        super.mSearchSrtTextViewBoundsExpanded = new android.graphics.Rect();
        boolean v7_94 = new int[2];
        super.mTemp = v7_94;
        boolean v7_4 = new int[2];
        super.mTemp2 = v7_4;
        super.mUpdateDrawableStateRunnable = new androidx.appcompat.widget.SearchView$1(super);
        super.mReleaseCursorRunnable = new androidx.appcompat.widget.SearchView$2(super);
        super.mOutsideDrawablesCache = new java.util.WeakHashMap();
        super.mOnClickListener = new androidx.appcompat.widget.SearchView$5(super);
        super.mTextKeyListener = new androidx.appcompat.widget.SearchView$6(super);
        super.mOnEditorActionListener = new androidx.appcompat.widget.SearchView$7(super);
        super.mOnItemClickListener = new androidx.appcompat.widget.SearchView$8(super);
        super.mOnItemSelectedListener = new androidx.appcompat.widget.SearchView$9(super);
        super.mTextWatcher = new androidx.appcompat.widget.SearchView$10(super);
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(p11, p12, androidx.appcompat.R$styleable.SearchView, p13, 0);
        android.view.LayoutInflater.from(p11).inflate(v0.getResourceId(androidx.appcompat.R$styleable.SearchView_layout, androidx.appcompat.R$layout.abc_search_view), super, 1);
        super.mSearchSrcTextView = ((androidx.appcompat.widget.SearchView$SearchAutoComplete) super.findViewById(androidx.appcompat.R$id.search_src_text));
        super.mSearchSrcTextView.setSearchView(super);
        super.mSearchEditFrame = super.findViewById(androidx.appcompat.R$id.search_edit_frame);
        super.mSearchPlate = super.findViewById(androidx.appcompat.R$id.search_plate);
        super.mSubmitArea = super.findViewById(androidx.appcompat.R$id.submit_area);
        super.mSearchButton = ((android.widget.ImageView) super.findViewById(androidx.appcompat.R$id.search_button));
        super.mGoButton = ((android.widget.ImageView) super.findViewById(androidx.appcompat.R$id.search_go_btn));
        super.mCloseButton = ((android.widget.ImageView) super.findViewById(androidx.appcompat.R$id.search_close_btn));
        super.mVoiceButton = ((android.widget.ImageView) super.findViewById(androidx.appcompat.R$id.search_voice_btn));
        super.mCollapsedIcon = ((android.widget.ImageView) super.findViewById(androidx.appcompat.R$id.search_mag_icon));
        androidx.core.view.ViewCompat.setBackground(super.mSearchPlate, v0.getDrawable(androidx.appcompat.R$styleable.SearchView_queryBackground));
        androidx.core.view.ViewCompat.setBackground(super.mSubmitArea, v0.getDrawable(androidx.appcompat.R$styleable.SearchView_submitBackground));
        super.mSearchButton.setImageDrawable(v0.getDrawable(androidx.appcompat.R$styleable.SearchView_searchIcon));
        super.mGoButton.setImageDrawable(v0.getDrawable(androidx.appcompat.R$styleable.SearchView_goIcon));
        super.mCloseButton.setImageDrawable(v0.getDrawable(androidx.appcompat.R$styleable.SearchView_closeIcon));
        super.mVoiceButton.setImageDrawable(v0.getDrawable(androidx.appcompat.R$styleable.SearchView_voiceIcon));
        super.mCollapsedIcon.setImageDrawable(v0.getDrawable(androidx.appcompat.R$styleable.SearchView_searchIcon));
        super.mSearchHintIcon = v0.getDrawable(androidx.appcompat.R$styleable.SearchView_searchHintIcon);
        androidx.appcompat.widget.TooltipCompat.setTooltipText(super.mSearchButton, super.getResources().getString(androidx.appcompat.R$string.abc_searchview_description_search));
        super.mSuggestionRowLayout = v0.getResourceId(androidx.appcompat.R$styleable.SearchView_suggestionRowLayout, androidx.appcompat.R$layout.abc_search_dropdown_item_icons_2line);
        super.mSuggestionCommitIconResId = v0.getResourceId(androidx.appcompat.R$styleable.SearchView_commitIcon, 0);
        super.mSearchButton.setOnClickListener(super.mOnClickListener);
        super.mCloseButton.setOnClickListener(super.mOnClickListener);
        super.mGoButton.setOnClickListener(super.mOnClickListener);
        super.mVoiceButton.setOnClickListener(super.mOnClickListener);
        super.mSearchSrcTextView.setOnClickListener(super.mOnClickListener);
        super.mSearchSrcTextView.addTextChangedListener(super.mTextWatcher);
        super.mSearchSrcTextView.setOnEditorActionListener(super.mOnEditorActionListener);
        super.mSearchSrcTextView.setOnItemClickListener(super.mOnItemClickListener);
        super.mSearchSrcTextView.setOnItemSelectedListener(super.mOnItemSelectedListener);
        super.mSearchSrcTextView.setOnKeyListener(super.mTextKeyListener);
        super.mSearchSrcTextView.setOnFocusChangeListener(new androidx.appcompat.widget.SearchView$3(super));
        super.setIconifiedByDefault(v0.getBoolean(androidx.appcompat.R$styleable.SearchView_iconifiedByDefault, 1));
        int v6 = v0.getDimensionPixelSize(androidx.appcompat.R$styleable.SearchView_android_maxWidth, -1);
        if (v6 != -1) {
            super.setMaxWidth(v6);
        }
        super.mDefaultQueryHint = v0.getText(androidx.appcompat.R$styleable.SearchView_defaultQueryHint);
        super.mQueryHint = v0.getText(androidx.appcompat.R$styleable.SearchView_queryHint);
        int v2 = v0.getInt(androidx.appcompat.R$styleable.SearchView_android_imeOptions, -1);
        if (v2 != -1) {
            super.setImeOptions(v2);
        }
        int v4 = v0.getInt(androidx.appcompat.R$styleable.SearchView_android_inputType, -1);
        if (v4 != -1) {
            super.setInputType(v4);
        }
        super.setFocusable(v0.getBoolean(androidx.appcompat.R$styleable.SearchView_android_focusable, 1));
        v0.recycle();
        super.mVoiceWebSearchIntent = new android.content.Intent("android.speech.action.WEB_SEARCH");
        super.mVoiceWebSearchIntent.addFlags(268435456);
        super.mVoiceWebSearchIntent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        super.mVoiceAppSearchIntent = new android.content.Intent("android.speech.action.RECOGNIZE_SPEECH");
        super.mVoiceAppSearchIntent.addFlags(268435456);
        super.mDropDownAnchor = super.findViewById(super.mSearchSrcTextView.getDropDownAnchor());
        if (super.mDropDownAnchor != null) {
            super.mDropDownAnchor.addOnLayoutChangeListener(new androidx.appcompat.widget.SearchView$4(super));
        }
        super.updateViewsVisibility(super.mIconifiedByDefault);
        super.updateQueryHint();
        return;
    }

    private android.content.Intent createIntent(String p4, android.net.Uri p5, String p6, String p7, int p8, String p9)
    {
        android.content.Intent v0_1 = new android.content.Intent(p4);
        v0_1.addFlags(268435456);
        if (p5 != null) {
            v0_1.setData(p5);
        }
        v0_1.putExtra("user_query", this.mUserQuery);
        if (p7 != null) {
            v0_1.putExtra("query", p7);
        }
        if (p6 != null) {
            v0_1.putExtra("intent_extra_data_key", p6);
        }
        if (this.mAppSearchData != null) {
            v0_1.putExtra("app_data", this.mAppSearchData);
        }
        if (p8 != 0) {
            v0_1.putExtra("action_key", p8);
            v0_1.putExtra("action_msg", p9);
        }
        v0_1.setComponent(this.mSearchable.getSearchActivity());
        return v0_1;
    }

    private android.content.Intent createIntentFromSuggestion(android.database.Cursor p13, int p14, String p15)
    {
        try {
            String v1 = androidx.appcompat.widget.SuggestionsAdapter.getColumnString(p13, "suggest_intent_action");
        } catch (RuntimeException v8) {
            try {
                int v11 = p13.getPosition();
            } catch (RuntimeException v9) {
                v11 = -1;
            }
            android.util.Log.w("SearchView", new StringBuilder().append("Search suggestions cursor at row ").append(v11).append(" returned exception.").toString(), v8);
            android.content.Intent v0_12 = 0;
            return v0_12;
        }
        if (v1 == null) {
            v1 = this.mSearchable.getSuggestIntentAction();
        }
        if (v1 == null) {
            v1 = "android.intent.action.SEARCH";
        }
        String v7 = androidx.appcompat.widget.SuggestionsAdapter.getColumnString(p13, "suggest_intent_data");
        if (v7 == null) {
            v7 = this.mSearchable.getSuggestIntentData();
        }
        if (v7 != null) {
            String v10 = androidx.appcompat.widget.SuggestionsAdapter.getColumnString(p13, "suggest_intent_data_id");
            if (v10 != null) {
                v7 = new StringBuilder().append(v7).append("/").append(android.net.Uri.encode(v10)).toString();
            }
        }
        android.net.Uri v2;
        if (v7 != null) {
            v2 = android.net.Uri.parse(v7);
        } else {
            v2 = 0;
        }
        v0_12 = this.createIntent(v1, v2, androidx.appcompat.widget.SuggestionsAdapter.getColumnString(p13, "suggest_intent_extra_data"), androidx.appcompat.widget.SuggestionsAdapter.getColumnString(p13, "suggest_intent_query"), p14, p15);
        return v0_12;
    }

    private android.content.Intent createVoiceAppSearchIntent(android.content.Intent p14, android.app.SearchableInfo p15)
    {
        android.content.ComponentName v8 = p15.getSearchActivity();
        android.content.Intent v6_1 = new android.content.Intent("android.intent.action.SEARCH");
        v6_1.setComponent(v8);
        android.app.PendingIntent v3 = android.app.PendingIntent.getActivity(this.getContext(), 0, v6_1, 1073741824);
        android.os.Bundle v5_1 = new android.os.Bundle();
        if (this.mAppSearchData != null) {
            v5_1.putParcelable("app_data", this.mAppSearchData);
        }
        android.content.Intent v9_1 = new android.content.Intent(p14);
        String v1 = "free_form";
        String v4 = 0;
        String v0 = 0;
        int v2 = 1;
        android.content.res.Resources v7 = this.getResources();
        if (p15.getVoiceLanguageModeId() != 0) {
            v1 = v7.getString(p15.getVoiceLanguageModeId());
        }
        if (p15.getVoicePromptTextId() != 0) {
            v4 = v7.getString(p15.getVoicePromptTextId());
        }
        if (p15.getVoiceLanguageId() != 0) {
            v0 = v7.getString(p15.getVoiceLanguageId());
        }
        if (p15.getVoiceMaxResults() != 0) {
            v2 = p15.getVoiceMaxResults();
        }
        String v10_14;
        v9_1.putExtra("android.speech.extra.LANGUAGE_MODEL", v1);
        v9_1.putExtra("android.speech.extra.PROMPT", v4);
        v9_1.putExtra("android.speech.extra.LANGUAGE", v0);
        v9_1.putExtra("android.speech.extra.MAX_RESULTS", v2);
        if (v8 != null) {
            v10_14 = v8.flattenToShortString();
        } else {
            v10_14 = 0;
        }
        v9_1.putExtra("calling_package", v10_14);
        v9_1.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", v3);
        v9_1.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", v5_1);
        return v9_1;
    }

    private android.content.Intent createVoiceWebSearchIntent(android.content.Intent p5, android.app.SearchableInfo p6)
    {
        String v2;
        android.content.Intent v1_1 = new android.content.Intent(p5);
        android.content.ComponentName v0 = p6.getSearchActivity();
        if (v0 != null) {
            v2 = v0.flattenToShortString();
        } else {
            v2 = 0;
        }
        v1_1.putExtra("calling_package", v2);
        return v1_1;
    }

    private void dismissSuggestions()
    {
        this.mSearchSrcTextView.dismissDropDown();
        return;
    }

    private void getChildBoundsWithinSearchView(android.view.View p7, android.graphics.Rect p8)
    {
        p7.getLocationInWindow(this.mTemp);
        this.getLocationInWindow(this.mTemp2);
        int v1 = (this.mTemp[1] - this.mTemp2[1]);
        int v0 = (this.mTemp[0] - this.mTemp2[0]);
        p8.set(v0, v1, (p7.getWidth() + v0), (p7.getHeight() + v1));
        return;
    }

    private CharSequence getDecoratedHint(CharSequence p8)
    {
        if ((this.mIconifiedByDefault) && (this.mSearchHintIcon != null)) {
            this.mSearchHintIcon.setBounds(0, 0, ((int) (((double) this.mSearchSrcTextView.getTextSize()) * 1.25)), ((int) (((double) this.mSearchSrcTextView.getTextSize()) * 1.25)));
            android.text.SpannableStringBuilder v0_1 = new android.text.SpannableStringBuilder("   ");
            v0_1.setSpan(new android.text.style.ImageSpan(this.mSearchHintIcon), 1, 2, 33);
            v0_1.append(p8);
        } else {
            v0_1 = p8;
        }
        return v0_1;
    }

    private int getPreferredHeight()
    {
        return this.getContext().getResources().getDimensionPixelSize(androidx.appcompat.R$dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth()
    {
        return this.getContext().getResources().getDimensionPixelSize(androidx.appcompat.R$dimen.abc_search_view_preferred_width);
    }

    private boolean hasVoiceSearch()
    {
        int v2 = 0;
        if ((this.mSearchable != null) && (this.mSearchable.getVoiceSearchEnabled())) {
            android.content.Intent v1 = 0;
            if (!this.mSearchable.getVoiceSearchLaunchWebSearch()) {
                if (this.mSearchable.getVoiceSearchLaunchRecognizer()) {
                    v1 = this.mVoiceAppSearchIntent;
                }
            } else {
                v1 = this.mVoiceWebSearchIntent;
            }
            if ((v1 != null) && (this.getContext().getPackageManager().resolveActivity(v1, 65536) != null)) {
                v2 = 1;
            }
        }
        return v2;
    }

    static boolean isLandscapeMode(android.content.Context p2)
    {
        int v0_3;
        if (p2.getResources().getConfiguration().orientation != 2) {
            v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    private boolean isSubmitAreaEnabled()
    {
        if (((!this.mSubmitButtonEnabled) && (!this.mVoiceButtonEnabled)) || (this.isIconified())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    private void launchIntent(android.content.Intent p5)
    {
        if (p5 != null) {
            try {
                this.getContext().startActivity(p5);
            } catch (RuntimeException v0) {
                android.util.Log.e("SearchView", new StringBuilder().append("Failed launch activity: ").append(p5).toString(), v0);
            }
        }
        return;
    }

    private boolean launchSuggestion(int p4, int p5, String p6)
    {
        int v2_1;
        android.database.Cursor v0 = this.mSuggestionsAdapter.getCursor();
        if ((v0 == null) || (!v0.moveToPosition(p4))) {
            v2_1 = 0;
        } else {
            this.launchIntent(this.createIntentFromSuggestion(v0, p5, p6));
            v2_1 = 1;
        }
        return v2_1;
    }

    private void postUpdateFocusedState()
    {
        this.post(this.mUpdateDrawableStateRunnable);
        return;
    }

    private void rewriteQueryFromSuggestion(int p5)
    {
        android.text.Editable v2 = this.mSearchSrcTextView.getText();
        android.database.Cursor v0 = this.mSuggestionsAdapter.getCursor();
        if (v0 != null) {
            if (!v0.moveToPosition(p5)) {
                this.setQuery(v2);
            } else {
                CharSequence v1 = this.mSuggestionsAdapter.convertToString(v0);
                if (v1 == null) {
                    this.setQuery(v2);
                } else {
                    this.setQuery(v1);
                }
            }
        }
        return;
    }

    private void setQuery(CharSequence p3)
    {
        int v0_2;
        this.mSearchSrcTextView.setText(p3);
        androidx.appcompat.widget.SearchView$SearchAutoComplete v1 = this.mSearchSrcTextView;
        if (!android.text.TextUtils.isEmpty(p3)) {
            v0_2 = p3.length();
        } else {
            v0_2 = 0;
        }
        v1.setSelection(v0_2);
        return;
    }

    private void updateCloseButton()
    {
        int v1;
        int v2 = 1;
        int[] v3_0 = 0;
        if (android.text.TextUtils.isEmpty(this.mSearchSrcTextView.getText())) {
            v1 = 0;
        } else {
            v1 = 1;
        }
        if ((v1 == 0) && ((!this.mIconifiedByDefault) || (this.mExpandedInActionView))) {
            v2 = 0;
        }
        if (v2 == 0) {
            v3_0 = 8;
        }
        this.mCloseButton.setVisibility(v3_0);
        android.graphics.drawable.Drawable v0 = this.mCloseButton.getDrawable();
        if (v0 != null) {
            int[] v3_2;
            if (v1 == 0) {
                v3_2 = androidx.appcompat.widget.SearchView.EMPTY_STATE_SET;
            } else {
                v3_2 = androidx.appcompat.widget.SearchView.ENABLED_STATE_SET;
            }
            v0.setState(v3_2);
        }
        return;
    }

    private void updateQueryHint()
    {
        String v0 = this.getQueryHint();
        if (v0 == null) {
            v0 = "";
        }
        this.mSearchSrcTextView.setHint(this.getDecoratedHint(v0));
        return;
    }

    private void updateSearchAutoComplete()
    {
        int v2 = 1;
        this.mSearchSrcTextView.setThreshold(this.mSearchable.getSuggestThreshold());
        this.mSearchSrcTextView.setImeOptions(this.mSearchable.getImeOptions());
        int v0_0 = this.mSearchable.getInputType();
        if ((v0_0 & 15) == 1) {
            v0_0 &= -65537;
            if (this.mSearchable.getSuggestAuthority() != null) {
                v0_0 = ((v0_0 | 65536) | 524288);
            }
        }
        this.mSearchSrcTextView.setInputType(v0_0);
        if (this.mSuggestionsAdapter != null) {
            this.mSuggestionsAdapter.changeCursor(0);
        }
        if (this.mSearchable.getSuggestAuthority() != null) {
            this.mSuggestionsAdapter = new androidx.appcompat.widget.SuggestionsAdapter(this.getContext(), this, this.mSearchable, this.mOutsideDrawablesCache);
            this.mSearchSrcTextView.setAdapter(this.mSuggestionsAdapter);
            if (this.mQueryRefinement) {
                v2 = 2;
            }
            ((androidx.appcompat.widget.SuggestionsAdapter) this.mSuggestionsAdapter).setQueryRefinement(v2);
        }
        return;
    }

    private void updateSubmitArea()
    {
        int v0 = 8;
        if ((this.isSubmitAreaEnabled()) && ((this.mGoButton.getVisibility() == 0) || (this.mVoiceButton.getVisibility() == 0))) {
            v0 = 0;
        }
        this.mSubmitArea.setVisibility(v0);
        return;
    }

    private void updateSubmitButton(boolean p3)
    {
        int v0 = 8;
        if ((this.mSubmitButtonEnabled) && ((this.isSubmitAreaEnabled()) && ((this.hasFocus()) && ((p3) || (!this.mVoiceButtonEnabled))))) {
            v0 = 0;
        }
        this.mGoButton.setVisibility(v0);
        return;
    }

    private void updateViewsVisibility(boolean p8)
    {
        int v2;
        android.widget.ImageView v4_0 = 8;
        int v5 = 1;
        this.mIconified = p8;
        if (!p8) {
            v2 = 8;
        } else {
            v2 = 0;
        }
        int v0;
        if (android.text.TextUtils.isEmpty(this.mSearchSrcTextView.getText())) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        this.mSearchButton.setVisibility(v2);
        this.updateSubmitButton(v0);
        if (!p8) {
            v4_0 = 0;
        }
        int v1;
        this.mSearchEditFrame.setVisibility(v4_0);
        if ((this.mCollapsedIcon.getDrawable() != null) && (!this.mIconifiedByDefault)) {
            v1 = 0;
        } else {
            v1 = 8;
        }
        this.mCollapsedIcon.setVisibility(v1);
        this.updateCloseButton();
        if (v0 != 0) {
            v5 = 0;
        }
        this.updateVoiceButton(v5);
        this.updateSubmitArea();
        return;
    }

    private void updateVoiceButton(boolean p4)
    {
        int v0 = 8;
        if ((this.mVoiceButtonEnabled) && ((!this.isIconified()) && (p4))) {
            v0 = 0;
            this.mGoButton.setVisibility(8);
        }
        this.mVoiceButton.setVisibility(v0);
        return;
    }

    void adjustDropDownSizeAndPosition()
    {
        if (this.mDropDownAnchor.getWidth() > 1) {
            int v2;
            android.content.res.Resources v5 = this.getContext().getResources();
            int v0 = this.mSearchPlate.getPaddingLeft();
            android.graphics.Rect v1_1 = new android.graphics.Rect();
            boolean v3 = androidx.appcompat.widget.ViewUtils.isLayoutRtl(this);
            if (!this.mIconifiedByDefault) {
                v2 = 0;
            } else {
                v2 = (v5.getDimensionPixelSize(androidx.appcompat.R$dimen.abc_dropdownitem_icon_width) + v5.getDimensionPixelSize(androidx.appcompat.R$dimen.abc_dropdownitem_text_padding_left));
            }
            int v4;
            this.mSearchSrcTextView.getDropDownBackground().getPadding(v1_1);
            if (!v3) {
                v4 = (v0 - (v1_1.left + v2));
            } else {
                v4 = (- v1_1.left);
            }
            this.mSearchSrcTextView.setDropDownHorizontalOffset(v4);
            this.mSearchSrcTextView.setDropDownWidth(((((this.mDropDownAnchor.getWidth() + v1_1.left) + v1_1.right) + v2) - v0));
        }
        return;
    }

    public void clearFocus()
    {
        this.mClearingFocus = 1;
        super.clearFocus();
        this.mSearchSrcTextView.clearFocus();
        this.mSearchSrcTextView.setImeVisibility(0);
        this.mClearingFocus = 0;
        return;
    }

    void forceSuggestionQuery()
    {
        androidx.appcompat.widget.SearchView.HIDDEN_METHOD_INVOKER.doBeforeTextChanged(this.mSearchSrcTextView);
        androidx.appcompat.widget.SearchView.HIDDEN_METHOD_INVOKER.doAfterTextChanged(this.mSearchSrcTextView);
        return;
    }

    public int getImeOptions()
    {
        return this.mSearchSrcTextView.getImeOptions();
    }

    public int getInputType()
    {
        return this.mSearchSrcTextView.getInputType();
    }

    public int getMaxWidth()
    {
        return this.mMaxWidth;
    }

    public CharSequence getQuery()
    {
        return this.mSearchSrcTextView.getText();
    }

    public CharSequence getQueryHint()
    {
        CharSequence v0;
        if (this.mQueryHint == null) {
            if ((this.mSearchable == null) || (this.mSearchable.getHintId() == 0)) {
                v0 = this.mDefaultQueryHint;
            } else {
                v0 = this.getContext().getText(this.mSearchable.getHintId());
            }
        } else {
            v0 = this.mQueryHint;
        }
        return v0;
    }

    int getSuggestionCommitIconResId()
    {
        return this.mSuggestionCommitIconResId;
    }

    int getSuggestionRowLayout()
    {
        return this.mSuggestionRowLayout;
    }

    public androidx.cursoradapter.widget.CursorAdapter getSuggestionsAdapter()
    {
        return this.mSuggestionsAdapter;
    }

    public boolean isIconfiedByDefault()
    {
        return this.mIconifiedByDefault;
    }

    public boolean isIconified()
    {
        return this.mIconified;
    }

    public boolean isQueryRefinementEnabled()
    {
        return this.mQueryRefinement;
    }

    public boolean isSubmitButtonEnabled()
    {
        return this.mSubmitButtonEnabled;
    }

    void launchQuerySearch(int p9, String p10, String p11)
    {
        this.getContext().startActivity(this.createIntent("android.intent.action.SEARCH", 0, 0, p11, p9, p10));
        return;
    }

    public void onActionViewCollapsed()
    {
        this.setQuery("", 0);
        this.clearFocus();
        this.updateViewsVisibility(1);
        this.mSearchSrcTextView.setImeOptions(this.mCollapsedImeOptions);
        this.mExpandedInActionView = 0;
        return;
    }

    public void onActionViewExpanded()
    {
        if (!this.mExpandedInActionView) {
            this.mExpandedInActionView = 1;
            this.mCollapsedImeOptions = this.mSearchSrcTextView.getImeOptions();
            this.mSearchSrcTextView.setImeOptions((this.mCollapsedImeOptions | 33554432));
            this.mSearchSrcTextView.setText("");
            this.setIconified(0);
        }
        return;
    }

    void onCloseClicked()
    {
        if (!android.text.TextUtils.isEmpty(this.mSearchSrcTextView.getText())) {
            this.mSearchSrcTextView.setText("");
            this.mSearchSrcTextView.requestFocus();
            this.mSearchSrcTextView.setImeVisibility(1);
        } else {
            if ((this.mIconifiedByDefault) && ((this.mOnCloseListener == null) || (!this.mOnCloseListener.onClose()))) {
                this.clearFocus();
                this.updateViewsVisibility(1);
            }
        }
        return;
    }

    protected void onDetachedFromWindow()
    {
        this.removeCallbacks(this.mUpdateDrawableStateRunnable);
        this.post(this.mReleaseCursorRunnable);
        super.onDetachedFromWindow();
        return;
    }

    boolean onItemClicked(int p3, int p4, String p5)
    {
        int v0 = 0;
        if ((this.mOnSuggestionListener == null) || (!this.mOnSuggestionListener.onSuggestionClick(p3))) {
            this.launchSuggestion(p3, 0, 0);
            this.mSearchSrcTextView.setImeVisibility(0);
            this.dismissSuggestions();
            v0 = 1;
        }
        return v0;
    }

    boolean onItemSelected(int p2)
    {
        if ((this.mOnSuggestionListener != null) && (this.mOnSuggestionListener.onSuggestionSelect(p2))) {
            int v0_3 = 0;
        } else {
            this.rewriteQueryFromSuggestion(p2);
            v0_3 = 1;
        }
        return v0_3;
    }

    protected void onLayout(boolean p6, int p7, int p8, int p9, int p10)
    {
        this = super.onLayout(p6, p7, p8, p9, p10);
        if (p6) {
            this.getChildBoundsWithinSearchView(this.mSearchSrcTextView, this.mSearchSrcTextViewBounds);
            this.mSearchSrtTextViewBoundsExpanded.set(this.mSearchSrcTextViewBounds.left, 0, this.mSearchSrcTextViewBounds.right, (p10 - p8));
            if (this.mTouchDelegate != null) {
                this.mTouchDelegate.setBounds(this.mSearchSrtTextViewBoundsExpanded, this.mSearchSrcTextViewBounds);
            } else {
                this.mTouchDelegate = new androidx.appcompat.widget.SearchView$UpdatableTouchDelegate(this.mSearchSrtTextViewBoundsExpanded, this.mSearchSrcTextViewBounds, this.mSearchSrcTextView);
                this.setTouchDelegate(this.mTouchDelegate);
            }
        }
        return;
    }

    protected void onMeasure(int p7, int p8)
    {
        if (!this.isIconified()) {
            int v3_1 = android.view.View$MeasureSpec.getMode(p7);
            int v2 = android.view.View$MeasureSpec.getSize(p7);
            switch (v3_1) {
                case -2147483648:
                    if (this.mMaxWidth <= 0) {
                        v2 = Math.min(this.getPreferredWidth(), v2);
                    } else {
                        v2 = Math.min(this.mMaxWidth, v2);
                    }
                    break;
                case 0:
                    if (this.mMaxWidth <= 0) {
                        v2 = this.getPreferredWidth();
                    } else {
                        v2 = this.mMaxWidth;
                    }
                    break;
                case 1073741824:
                    if (this.mMaxWidth <= 0) {
                    } else {
                        v2 = Math.min(this.mMaxWidth, v2);
                    }
                    break;
            }
            int v1_0 = android.view.View$MeasureSpec.getMode(p8);
            int v0 = android.view.View$MeasureSpec.getSize(p8);
            switch (v1_0) {
                case -2147483648:
                    v0 = Math.min(this.getPreferredHeight(), v0);
                    break;
                case 0:
                    v0 = this.getPreferredHeight();
                    break;
            }
            super.onMeasure(android.view.View$MeasureSpec.makeMeasureSpec(v2, 1073741824), android.view.View$MeasureSpec.makeMeasureSpec(v0, 1073741824));
        } else {
            super.onMeasure(p7, p8);
        }
        return;
    }

    void onQueryRefine(CharSequence p1)
    {
        this.setQuery(p1);
        return;
    }

    protected void onRestoreInstanceState(android.os.Parcelable p3)
    {
        if ((p3 instanceof androidx.appcompat.widget.SearchView$SavedState)) {
            super.onRestoreInstanceState(((androidx.appcompat.widget.SearchView$SavedState) p3).getSuperState());
            this.updateViewsVisibility(((androidx.appcompat.widget.SearchView$SavedState) p3).isIconified);
            this.requestLayout();
        } else {
            super.onRestoreInstanceState(p3);
        }
        return;
    }

    protected android.os.Parcelable onSaveInstanceState()
    {
        androidx.appcompat.widget.SearchView$SavedState v0_1 = new androidx.appcompat.widget.SearchView$SavedState(super.onSaveInstanceState());
        v0_1.isIconified = this.isIconified();
        return v0_1;
    }

    void onSearchClicked()
    {
        this.updateViewsVisibility(0);
        this.mSearchSrcTextView.requestFocus();
        this.mSearchSrcTextView.setImeVisibility(1);
        if (this.mOnSearchClickListener != null) {
            this.mOnSearchClickListener.onClick(this);
        }
        return;
    }

    void onSubmitQuery()
    {
        android.text.Editable v0 = this.mSearchSrcTextView.getText();
        if ((v0 != null) && ((android.text.TextUtils.getTrimmedLength(v0) > 0) && ((this.mOnQueryChangeListener == null) || (!this.mOnQueryChangeListener.onQueryTextSubmit(v0.toString()))))) {
            if (this.mSearchable != null) {
                this.launchQuerySearch(0, 0, v0.toString());
            }
            this.mSearchSrcTextView.setImeVisibility(0);
            this.dismissSuggestions();
        }
        return;
    }

    boolean onSuggestionsKey(android.view.View p7, int p8, android.view.KeyEvent p9)
    {
        int v2_0 = 0;
        if ((this.mSearchable != null) && ((this.mSuggestionsAdapter != null) && ((p9.getAction() == 0) && (p9.hasNoModifiers())))) {
            if ((p8 != 66) && ((p8 != 84) && (p8 != 61))) {
                if ((p8 != 21) && (p8 != 22)) {
                    // Both branches of the condition point to the same code.
                    // if ((p8 == 19) && (this.mSearchSrcTextView.getListSelection() != 0)) {
                    // }
                } else {
                    int v1;
                    if (p8 != 21) {
                        v1 = this.mSearchSrcTextView.length();
                    } else {
                        v1 = 0;
                    }
                    this.mSearchSrcTextView.setSelection(v1);
                    this.mSearchSrcTextView.setListSelection(0);
                    this.mSearchSrcTextView.clearListSelection();
                    androidx.appcompat.widget.SearchView.HIDDEN_METHOD_INVOKER.ensureImeVisible(this.mSearchSrcTextView, 1);
                    v2_0 = 1;
                }
            } else {
                v2_0 = this.onItemClicked(this.mSearchSrcTextView.getListSelection(), 0, 0);
            }
        }
        return v2_0;
    }

    void onTextChanged(CharSequence p6)
    {
        int v0;
        androidx.appcompat.widget.SearchView$OnQueryTextListener v2_0 = 1;
        android.text.Editable v1 = this.mSearchSrcTextView.getText();
        this.mUserQuery = v1;
        if (android.text.TextUtils.isEmpty(v1)) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        this.updateSubmitButton(v0);
        if (v0 != 0) {
            v2_0 = 0;
        }
        this.updateVoiceButton(v2_0);
        this.updateCloseButton();
        this.updateSubmitArea();
        if ((this.mOnQueryChangeListener != null) && (!android.text.TextUtils.equals(p6, this.mOldQueryText))) {
            this.mOnQueryChangeListener.onQueryTextChange(p6.toString());
        }
        this.mOldQueryText = p6.toString();
        return;
    }

    void onTextFocusChanged()
    {
        this.updateViewsVisibility(this.isIconified());
        this.postUpdateFocusedState();
        if (this.mSearchSrcTextView.hasFocus()) {
            this.forceSuggestionQuery();
        }
        return;
    }

    void onVoiceClicked()
    {
        if (this.mSearchable != null) {
            android.app.SearchableInfo v2 = this.mSearchable;
            try {
                if (!v2.getVoiceSearchLaunchWebSearch()) {
                    if (v2.getVoiceSearchLaunchRecognizer()) {
                        this.getContext().startActivity(this.createVoiceAppSearchIntent(this.mVoiceAppSearchIntent, v2));
                    }
                } else {
                    this.getContext().startActivity(this.createVoiceWebSearchIntent(this.mVoiceWebSearchIntent, v2));
                }
            } catch (android.content.ActivityNotFoundException v1) {
                android.util.Log.w("SearchView", "Could not find voice search activity");
            }
        }
        return;
    }

    public void onWindowFocusChanged(boolean p1)
    {
        super.onWindowFocusChanged(p1);
        this.postUpdateFocusedState();
        return;
    }

    public boolean requestFocus(int p4, android.graphics.Rect p5)
    {
        boolean v0;
        if (!this.mClearingFocus) {
            if (this.isFocusable()) {
                if (this.isIconified()) {
                    v0 = super.requestFocus(p4, p5);
                } else {
                    v0 = this.mSearchSrcTextView.requestFocus(p4, p5);
                    if (v0) {
                        this.updateViewsVisibility(0);
                    }
                }
            } else {
                v0 = 0;
            }
        } else {
            v0 = 0;
        }
        return v0;
    }

    public void setAppSearchData(android.os.Bundle p1)
    {
        this.mAppSearchData = p1;
        return;
    }

    public void setIconified(boolean p1)
    {
        if (!p1) {
            this.onSearchClicked();
        } else {
            this.onCloseClicked();
        }
        return;
    }

    public void setIconifiedByDefault(boolean p2)
    {
        if (this.mIconifiedByDefault != p2) {
            this.mIconifiedByDefault = p2;
            this.updateViewsVisibility(p2);
            this.updateQueryHint();
        }
        return;
    }

    public void setImeOptions(int p2)
    {
        this.mSearchSrcTextView.setImeOptions(p2);
        return;
    }

    public void setInputType(int p2)
    {
        this.mSearchSrcTextView.setInputType(p2);
        return;
    }

    public void setMaxWidth(int p1)
    {
        this.mMaxWidth = p1;
        this.requestLayout();
        return;
    }

    public void setOnCloseListener(androidx.appcompat.widget.SearchView$OnCloseListener p1)
    {
        this.mOnCloseListener = p1;
        return;
    }

    public void setOnQueryTextFocusChangeListener(android.view.View$OnFocusChangeListener p1)
    {
        this.mOnQueryTextFocusChangeListener = p1;
        return;
    }

    public void setOnQueryTextListener(androidx.appcompat.widget.SearchView$OnQueryTextListener p1)
    {
        this.mOnQueryChangeListener = p1;
        return;
    }

    public void setOnSearchClickListener(android.view.View$OnClickListener p1)
    {
        this.mOnSearchClickListener = p1;
        return;
    }

    public void setOnSuggestionListener(androidx.appcompat.widget.SearchView$OnSuggestionListener p1)
    {
        this.mOnSuggestionListener = p1;
        return;
    }

    public void setQuery(CharSequence p3, boolean p4)
    {
        this.mSearchSrcTextView.setText(p3);
        if (p3 != null) {
            this.mSearchSrcTextView.setSelection(this.mSearchSrcTextView.length());
            this.mUserQuery = p3;
        }
        if ((p4) && (!android.text.TextUtils.isEmpty(p3))) {
            this.onSubmitQuery();
        }
        return;
    }

    public void setQueryHint(CharSequence p1)
    {
        this.mQueryHint = p1;
        this.updateQueryHint();
        return;
    }

    public void setQueryRefinementEnabled(boolean p3)
    {
        this.mQueryRefinement = p3;
        if ((this.mSuggestionsAdapter instanceof androidx.appcompat.widget.SuggestionsAdapter)) {
            int v1;
            if (!p3) {
                v1 = 1;
            } else {
                v1 = 2;
            }
            ((androidx.appcompat.widget.SuggestionsAdapter) this.mSuggestionsAdapter).setQueryRefinement(v1);
        }
        return;
    }

    public void setSearchableInfo(android.app.SearchableInfo p3)
    {
        this.mSearchable = p3;
        if (this.mSearchable != null) {
            this.updateSearchAutoComplete();
            this.updateQueryHint();
        }
        this.mVoiceButtonEnabled = this.hasVoiceSearch();
        if (this.mVoiceButtonEnabled) {
            this.mSearchSrcTextView.setPrivateImeOptions("nm");
        }
        this.updateViewsVisibility(this.isIconified());
        return;
    }

    public void setSubmitButtonEnabled(boolean p2)
    {
        this.mSubmitButtonEnabled = p2;
        this.updateViewsVisibility(this.isIconified());
        return;
    }

    public void setSuggestionsAdapter(androidx.cursoradapter.widget.CursorAdapter p3)
    {
        this.mSuggestionsAdapter = p3;
        this.mSearchSrcTextView.setAdapter(this.mSuggestionsAdapter);
        return;
    }

    void updateFocusedState()
    {
        int[] v2;
        if (!this.mSearchSrcTextView.hasFocus()) {
            v2 = androidx.appcompat.widget.SearchView.EMPTY_STATE_SET;
        } else {
            v2 = androidx.appcompat.widget.SearchView.FOCUSED_STATE_SET;
        }
        android.graphics.drawable.Drawable v1 = this.mSearchPlate.getBackground();
        if (v1 != null) {
            v1.setState(v2);
        }
        android.graphics.drawable.Drawable v3 = this.mSubmitArea.getBackground();
        if (v3 != null) {
            v3.setState(v2);
        }
        this.invalidate();
        return;
    }
}
