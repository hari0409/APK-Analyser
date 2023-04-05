package androidx.appcompat.widget;
 class SuggestionsAdapter extends androidx.cursoradapter.widget.ResourceCursorAdapter implements android.view.View$OnClickListener {
    private static final boolean DBG = False;
    static final int INVALID_INDEX = 255;
    private static final String LOG_TAG = "SuggestionsAdapter";
    private static final int QUERY_LIMIT = 50;
    static final int REFINE_ALL = 2;
    static final int REFINE_BY_ENTRY = 1;
    static final int REFINE_NONE;
    private boolean mClosed;
    private final int mCommitIconResId;
    private int mFlagsCol;
    private int mIconName1Col;
    private int mIconName2Col;
    private final java.util.WeakHashMap mOutsideDrawablesCache;
    private final android.content.Context mProviderContext;
    private int mQueryRefinement;
    private final android.app.SearchManager mSearchManager;
    private final androidx.appcompat.widget.SearchView mSearchView;
    private final android.app.SearchableInfo mSearchable;
    private int mText1Col;
    private int mText2Col;
    private int mText2UrlCol;
    private android.content.res.ColorStateList mUrlColor;

    public SuggestionsAdapter(android.content.Context p5, androidx.appcompat.widget.SearchView p6, android.app.SearchableInfo p7, java.util.WeakHashMap p8)
    {
        super(p5, p6.getSuggestionRowLayout(), 0, 1);
        super.mClosed = 0;
        super.mQueryRefinement = 1;
        super.mText1Col = -1;
        super.mText2Col = -1;
        super.mText2UrlCol = -1;
        super.mIconName1Col = -1;
        super.mIconName2Col = -1;
        super.mFlagsCol = -1;
        super.mSearchManager = ((android.app.SearchManager) super.mContext.getSystemService("search"));
        super.mSearchView = p6;
        super.mSearchable = p7;
        super.mCommitIconResId = p6.getSuggestionCommitIconResId();
        super.mProviderContext = p5;
        super.mOutsideDrawablesCache = p8;
        return;
    }

    private android.graphics.drawable.Drawable checkIconCache(String p3)
    {
        android.graphics.drawable.Drawable v1_1;
        android.graphics.drawable.Drawable$ConstantState v0_1 = ((android.graphics.drawable.Drawable$ConstantState) this.mOutsideDrawablesCache.get(p3));
        if (v0_1 != null) {
            v1_1 = v0_1.newDrawable();
        } else {
            v1_1 = 0;
        }
        return v1_1;
    }

    private CharSequence formatUrl(CharSequence p9)
    {
        if (this.mUrlColor == null) {
            android.util.TypedValue v6_1 = new android.util.TypedValue();
            this.mContext.getTheme().resolveAttribute(androidx.appcompat.R$attr.textColorSearchUrl, v6_1, 1);
            this.mUrlColor = this.mContext.getResources().getColorStateList(v6_1.resourceId);
        }
        android.text.SpannableString v7_1 = new android.text.SpannableString(p9);
        v7_1.setSpan(new android.text.style.TextAppearanceSpan(0, 0, 0, this.mUrlColor, 0), 0, p9.length(), 33);
        return v7_1;
    }

    private android.graphics.drawable.Drawable getActivityIcon(android.content.ComponentName p11)
    {
        android.content.pm.PackageManager v5 = this.mContext.getPackageManager();
        try {
            int v1;
            android.content.pm.ActivityInfo v0 = v5.getActivityInfo(p11, 128);
            int v3 = v0.getIconResource();
        } catch (android.content.pm.PackageManager$NameNotFoundException v2) {
            android.util.Log.w("SuggestionsAdapter", v2.toString());
            v1 = 0;
            return v1;
        }
        if (v3 != 0) {
            v1 = v5.getDrawable(p11.getPackageName(), v3, v0.applicationInfo);
            if (v1 != 0) {
                return v1;
            } else {
                android.util.Log.w("SuggestionsAdapter", new StringBuilder().append("Invalid icon resource ").append(v3).append(" for ").append(p11.flattenToShortString()).toString());
                v1 = 0;
                return v1;
            }
        } else {
            v1 = 0;
            return v1;
        }
    }

    private android.graphics.drawable.Drawable getActivityIconWithCache(android.content.ComponentName p7)
    {
        android.graphics.drawable.Drawable v4_0 = 0;
        String v1 = p7.flattenToShortString();
        if (!this.mOutsideDrawablesCache.containsKey(v1)) {
            android.graphics.drawable.Drawable$ConstantState v3;
            android.graphics.drawable.Drawable v2 = this.getActivityIcon(p7);
            if (v2 != null) {
                v3 = v2.getConstantState();
            } else {
                v3 = 0;
            }
            this.mOutsideDrawablesCache.put(v1, v3);
            v4_0 = v2;
        } else {
            android.graphics.drawable.Drawable$ConstantState v0_1 = ((android.graphics.drawable.Drawable$ConstantState) this.mOutsideDrawablesCache.get(v1));
            if (v0_1 != null) {
                v4_0 = v0_1.newDrawable(this.mProviderContext.getResources());
            }
        }
        return v4_0;
    }

    public static String getColumnString(android.database.Cursor p2, String p3)
    {
        return androidx.appcompat.widget.SuggestionsAdapter.getStringOrNull(p2, p2.getColumnIndex(p3));
    }

    private android.graphics.drawable.Drawable getDefaultIcon1(android.database.Cursor p3)
    {
        android.graphics.drawable.Drawable v0 = this.getActivityIconWithCache(this.mSearchable.getSearchActivity());
        if (v0 == null) {
            v0 = this.mContext.getPackageManager().getDefaultActivityIcon();
        }
        return v0;
    }

    private android.graphics.drawable.Drawable getDrawable(android.net.Uri p10)
    {
        try {
            Throwable v4_1;
            if (!"android.resource".equals(p10.getScheme())) {
                java.io.InputStream v3 = this.mProviderContext.getContentResolver().openInputStream(p10);
                if (v3 != null) {
                    try {
                        v4_1 = android.graphics.drawable.Drawable.createFromStream(v3, 0);
                        try {
                            v3.close();
                        } catch (java.io.IOException v0_1) {
                            android.util.Log.e("SuggestionsAdapter", new StringBuilder().append("Error closing icon stream for ").append(p10).toString(), v0_1);
                        }
                    } catch (Throwable v4_2) {
                        try {
                            v3.close();
                        } catch (java.io.IOException v0_0) {
                            android.util.Log.e("SuggestionsAdapter", new StringBuilder().append("Error closing icon stream for ").append(p10).toString(), v0_0);
                        }
                        throw v4_2;
                    }
                } else {
                    throw new java.io.FileNotFoundException(new StringBuilder().append("Failed to open ").append(p10).toString());
                }
            } else {
                try {
                    v4_1 = this.getDrawableFromResourceUri(p10);
                } catch (java.io.IOException v0) {
                    throw new java.io.FileNotFoundException(new StringBuilder().append("Resource does not exist: ").append(p10).toString());
                }
            }
        } catch (java.io.FileNotFoundException v1) {
            android.util.Log.w("SuggestionsAdapter", new StringBuilder().append("Icon not found: ").append(p10).append(", ").append(v1.getMessage()).toString());
            v4_1 = 0;
        }
        return v4_1;
    }

    private android.graphics.drawable.Drawable getDrawableFromResourceValue(String p10)
    {
        if ((p10 != null) && ((!p10.isEmpty()) && (!"0".equals(p10)))) {
            try {
                int v3 = Integer.parseInt(p10);
                String v1 = new StringBuilder().append("android.resource://").append(this.mProviderContext.getPackageName()).append("/").append(v3).toString();
                android.graphics.drawable.Drawable v0 = this.checkIconCache(v1);
            } catch (android.content.res.Resources$NotFoundException v2) {
                android.util.Log.w("SuggestionsAdapter", new StringBuilder().append("Icon resource not found: ").append(p10).toString());
                v0 = 0;
            } catch (android.content.res.Resources$NotFoundException v2) {
                v0 = this.checkIconCache(p10);
                if (v0 == null) {
                    v0 = this.getDrawable(android.net.Uri.parse(p10));
                    this.storeInIconCache(p10, v0);
                }
            }
            if (v0 == null) {
                v0 = androidx.core.content.ContextCompat.getDrawable(this.mProviderContext, v3);
                this.storeInIconCache(v1, v0);
            }
        } else {
            v0 = 0;
        }
        return v0;
    }

    private android.graphics.drawable.Drawable getIcon1(android.database.Cursor p5)
    {
        android.graphics.drawable.Drawable v0;
        if (this.mIconName1Col != -1) {
            v0 = this.getDrawableFromResourceValue(p5.getString(this.mIconName1Col));
            if (v0 == null) {
                v0 = this.getDefaultIcon1(p5);
            }
        } else {
            v0 = 0;
        }
        return v0;
    }

    private android.graphics.drawable.Drawable getIcon2(android.database.Cursor p4)
    {
        android.graphics.drawable.Drawable v1_2;
        if (this.mIconName2Col != -1) {
            v1_2 = this.getDrawableFromResourceValue(p4.getString(this.mIconName2Col));
        } else {
            v1_2 = 0;
        }
        return v1_2;
    }

    private static String getStringOrNull(android.database.Cursor p4, int p5)
    {
        String v1 = 0;
        if (p5 != -1) {
            try {
                v1 = p4.getString(p5);
            } catch (Exception v0) {
                android.util.Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", v0);
            }
        }
        return v1;
    }

    private void setViewDrawable(android.widget.ImageView p3, android.graphics.drawable.Drawable p4, int p5)
    {
        p3.setImageDrawable(p4);
        if (p4 != null) {
            p3.setVisibility(0);
            p4.setVisible(0, 0);
            p4.setVisible(1, 0);
        } else {
            p3.setVisibility(p5);
        }
        return;
    }

    private void setViewText(android.widget.TextView p2, CharSequence p3)
    {
        p2.setText(p3);
        if (!android.text.TextUtils.isEmpty(p3)) {
            p2.setVisibility(0);
        } else {
            p2.setVisibility(8);
        }
        return;
    }

    private void storeInIconCache(String p3, android.graphics.drawable.Drawable p4)
    {
        if (p4 != null) {
            this.mOutsideDrawablesCache.put(p3, p4.getConstantState());
        }
        return;
    }

    private void updateSpinnerState(android.database.Cursor p3)
    {
        int v0;
        if (p3 == null) {
            v0 = 0;
        } else {
            v0 = p3.getExtras();
        }
        // Both branches of the condition point to the same code.
        // if ((v0 != 0) && (!v0.getBoolean("in_progress"))) {
            return;
        // }
    }

    public void bindView(android.view.View p12, android.content.Context p13, android.database.Cursor p14)
    {
        androidx.appcompat.widget.SuggestionsAdapter$ChildViewCache v3_1 = ((androidx.appcompat.widget.SuggestionsAdapter$ChildViewCache) p12.getTag());
        int v0 = 0;
        if (this.mFlagsCol != -1) {
            v0 = p14.getInt(this.mFlagsCol);
        }
        if (v3_1.mText1 != null) {
            this.setViewText(v3_1.mText1, androidx.appcompat.widget.SuggestionsAdapter.getStringOrNull(p14, this.mText1Col));
        }
        if (v3_1.mText2 != null) {
            String v2_1;
            String v2_0 = androidx.appcompat.widget.SuggestionsAdapter.getStringOrNull(p14, this.mText2UrlCol);
            if (v2_0 == null) {
                v2_1 = androidx.appcompat.widget.SuggestionsAdapter.getStringOrNull(p14, this.mText2Col);
            } else {
                v2_1 = this.formatUrl(v2_0);
            }
            if (!android.text.TextUtils.isEmpty(v2_1)) {
                if (v3_1.mText1 != null) {
                    v3_1.mText1.setSingleLine(1);
                    v3_1.mText1.setMaxLines(1);
                }
            } else {
                if (v3_1.mText1 != null) {
                    v3_1.mText1.setSingleLine(0);
                    v3_1.mText1.setMaxLines(2);
                }
            }
            this.setViewText(v3_1.mText2, v2_1);
        }
        if (v3_1.mIcon1 != null) {
            this.setViewDrawable(v3_1.mIcon1, this.getIcon1(p14), 4);
        }
        if (v3_1.mIcon2 != null) {
            this.setViewDrawable(v3_1.mIcon2, this.getIcon2(p14), 8);
        }
        if ((this.mQueryRefinement != 2) && ((this.mQueryRefinement != 1) || ((v0 & 1) == 0))) {
            v3_1.mIconRefine.setVisibility(8);
        } else {
            v3_1.mIconRefine.setVisibility(0);
            v3_1.mIconRefine.setTag(v3_1.mText1.getText());
            v3_1.mIconRefine.setOnClickListener(this);
        }
        return;
    }

    public void changeCursor(android.database.Cursor p4)
    {
        if (!this.mClosed) {
            try {
                super.changeCursor(p4);
            } catch (Exception v0) {
                android.util.Log.e("SuggestionsAdapter", "error changing cursor and caching columns", v0);
            }
            if (p4 != null) {
                this.mText1Col = p4.getColumnIndex("suggest_text_1");
                this.mText2Col = p4.getColumnIndex("suggest_text_2");
                this.mText2UrlCol = p4.getColumnIndex("suggest_text_2_url");
                this.mIconName1Col = p4.getColumnIndex("suggest_icon_1");
                this.mIconName2Col = p4.getColumnIndex("suggest_icon_2");
                this.mFlagsCol = p4.getColumnIndex("suggest_flags");
            }
        } else {
            android.util.Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (p4 != null) {
                p4.close();
            }
        }
        return;
    }

    public void close()
    {
        this.changeCursor(0);
        this.mClosed = 1;
        return;
    }

    public CharSequence convertToString(android.database.Cursor p6)
    {
        String v1;
        if (p6 != null) {
            v1 = androidx.appcompat.widget.SuggestionsAdapter.getColumnString(p6, "suggest_intent_query");
            if (v1 == null) {
                if (this.mSearchable.shouldRewriteQueryFromData()) {
                    String v0 = androidx.appcompat.widget.SuggestionsAdapter.getColumnString(p6, "suggest_intent_data");
                    if (v0 != null) {
                        v1 = v0;
                        return v1;
                    }
                }
                if (this.mSearchable.shouldRewriteQueryFromText()) {
                    String v2 = androidx.appcompat.widget.SuggestionsAdapter.getColumnString(p6, "suggest_text_1");
                    if (v2 != null) {
                        v1 = v2;
                        return v1;
                    }
                }
                v1 = 0;
            }
        } else {
            v1 = 0;
        }
        return v1;
    }

    android.graphics.drawable.Drawable getDrawableFromResourceUri(android.net.Uri p11)
    {
        String v0 = p11.getAuthority();
        if (!android.text.TextUtils.isEmpty(v0)) {
            try {
                android.content.res.Resources v6 = this.mContext.getPackageManager().getResourcesForApplication(v0);
                java.util.List v5 = p11.getPathSegments();
            } catch (android.content.pm.PackageManager$NameNotFoundException v2) {
                throw new java.io.FileNotFoundException(new StringBuilder().append("No package found for authority: ").append(p11).toString());
            }
            if (v5 != null) {
                int v3;
                int v4 = v5.size();
                if (v4 != 1) {
                    if (v4 != 2) {
                        throw new java.io.FileNotFoundException(new StringBuilder().append("More than two path segments: ").append(p11).toString());
                    } else {
                        v3 = v6.getIdentifier(((String) v5.get(1)), ((String) v5.get(0)), v0);
                    }
                } else {
                    try {
                        v3 = Integer.parseInt(((String) v5.get(0)));
                    } catch (NumberFormatException v1) {
                        throw new java.io.FileNotFoundException(new StringBuilder().append("Single path segment is not a resource ID: ").append(p11).toString());
                    }
                }
                if (v3 != 0) {
                    return v6.getDrawable(v3);
                } else {
                    throw new java.io.FileNotFoundException(new StringBuilder().append("No resource found for: ").append(p11).toString());
                }
            } else {
                throw new java.io.FileNotFoundException(new StringBuilder().append("No path: ").append(p11).toString());
            }
        } else {
            throw new java.io.FileNotFoundException(new StringBuilder().append("No authority: ").append(p11).toString());
        }
    }

    public android.view.View getDropDownView(int p7, android.view.View p8, android.view.ViewGroup p9)
    {
        try {
            android.view.View v2 = super.getDropDownView(p7, p8, p9);
        } catch (RuntimeException v0) {
            android.util.Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", v0);
            v2 = this.newDropDownView(this.mContext, this.mCursor, p9);
            if (v2 == null) {
            } else {
                ((androidx.appcompat.widget.SuggestionsAdapter$ChildViewCache) v2.getTag()).mText1.setText(v0.toString());
            }
        }
        return v2;
    }

    public int getQueryRefinement()
    {
        return this.mQueryRefinement;
    }

    android.database.Cursor getSearchManagerSuggestions(android.app.SearchableInfo p10, String p11, int p12)
    {
        android.database.Cursor v2 = 0;
        if (p10 != null) {
            String v6 = p10.getSuggestAuthority();
            if (v6 != null) {
                android.net.Uri$Builder v8 = new android.net.Uri$Builder().scheme("content").authority(v6).query("").fragment("");
                String v7 = p10.getSuggestPath();
                if (v7 != null) {
                    v8.appendEncodedPath(v7);
                }
                v8.appendPath("search_suggest_query");
                String v3 = p10.getSuggestSelection();
                String[] v4 = 0;
                if (v3 == null) {
                    v8.appendPath(p11);
                } else {
                    v4 = new String[1];
                    v4[0] = p11;
                }
                if (p12 > 0) {
                    v8.appendQueryParameter("limit", String.valueOf(p12));
                }
                v2 = this.mContext.getContentResolver().query(v8.build(), 0, v3, v4, 0);
            }
        }
        return v2;
    }

    public android.view.View getView(int p7, android.view.View p8, android.view.ViewGroup p9)
    {
        try {
            android.view.View v2 = super.getView(p7, p8, p9);
        } catch (RuntimeException v0) {
            android.util.Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", v0);
            v2 = this.newView(this.mContext, this.mCursor, p9);
            if (v2 == null) {
            } else {
                ((androidx.appcompat.widget.SuggestionsAdapter$ChildViewCache) v2.getTag()).mText1.setText(v0.toString());
            }
        }
        return v2;
    }

    public boolean hasStableIds()
    {
        return 0;
    }

    public android.view.View newView(android.content.Context p4, android.database.Cursor p5, android.view.ViewGroup p6)
    {
        android.view.View v1 = super.newView(p4, p5, p6);
        v1.setTag(new androidx.appcompat.widget.SuggestionsAdapter$ChildViewCache(v1));
        ((android.widget.ImageView) v1.findViewById(androidx.appcompat.R$id.edit_query)).setImageResource(this.mCommitIconResId);
        return v1;
    }

    public void notifyDataSetChanged()
    {
        super.notifyDataSetChanged();
        this.updateSpinnerState(this.getCursor());
        return;
    }

    public void notifyDataSetInvalidated()
    {
        super.notifyDataSetInvalidated();
        this.updateSpinnerState(this.getCursor());
        return;
    }

    public void onClick(android.view.View p3)
    {
        CharSequence v0_0 = p3.getTag();
        if ((v0_0 instanceof CharSequence)) {
            this.mSearchView.onQueryRefine(((CharSequence) v0_0));
        }
        return;
    }

    public android.database.Cursor runQueryOnBackgroundThread(CharSequence p8)
    {
        String v3;
        android.database.Cursor v4 = 0;
        if (p8 != null) {
            v3 = p8.toString();
        } else {
            v3 = "";
        }
        if ((this.mSearchView.getVisibility() == 0) && (this.mSearchView.getWindowVisibility() == 0)) {
            try {
                android.database.Cursor v0_0 = this.getSearchManagerSuggestions(this.mSearchable, v3, 50);
            } catch (RuntimeException v2) {
                android.util.Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", v2);
            }
            if (v0_0 != null) {
                v0_0.getCount();
                v4 = v0_0;
            }
        }
        return v4;
    }

    public void setQueryRefinement(int p1)
    {
        this.mQueryRefinement = p1;
        return;
    }
}
