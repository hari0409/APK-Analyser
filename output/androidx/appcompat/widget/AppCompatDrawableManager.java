package androidx.appcompat.widget;
public final class AppCompatDrawableManager {
    private static final int[] COLORFILTER_COLOR_BACKGROUND_MULTIPLY = None;
    private static final int[] COLORFILTER_COLOR_CONTROL_ACTIVATED = None;
    private static final int[] COLORFILTER_TINT_COLOR_CONTROL_NORMAL = None;
    private static final androidx.appcompat.widget.AppCompatDrawableManager$ColorFilterLruCache COLOR_FILTER_CACHE = None;
    private static final boolean DEBUG = False;
    private static final android.graphics.PorterDuff$Mode DEFAULT_MODE = None;
    private static androidx.appcompat.widget.AppCompatDrawableManager INSTANCE = None;
    private static final String PLATFORM_VD_CLAZZ = "android.graphics.drawable.VectorDrawable";
    private static final String SKIP_DRAWABLE_TAG = "appcompat_skip_skip";
    private static final String TAG = "AppCompatDrawableManag";
    private static final int[] TINT_CHECKABLE_BUTTON_LIST;
    private static final int[] TINT_COLOR_CONTROL_NORMAL;
    private static final int[] TINT_COLOR_CONTROL_STATE_LIST;
    private androidx.collection.ArrayMap mDelegates;
    private final java.util.WeakHashMap mDrawableCaches;
    private boolean mHasCheckedVectorDrawableSetup;
    private androidx.collection.SparseArrayCompat mKnownDrawableIdTags;
    private java.util.WeakHashMap mTintLists;
    private android.util.TypedValue mTypedValue;

    static AppCompatDrawableManager()
    {
        androidx.appcompat.widget.AppCompatDrawableManager.DEFAULT_MODE = android.graphics.PorterDuff$Mode.SRC_IN;
        androidx.appcompat.widget.AppCompatDrawableManager.COLOR_FILTER_CACHE = new androidx.appcompat.widget.AppCompatDrawableManager$ColorFilterLruCache(6);
        int[] v0_0 = new int[3];
        v0_0[0] = androidx.appcompat.R$drawable.abc_textfield_search_default_mtrl_alpha;
        v0_0[1] = androidx.appcompat.R$drawable.abc_textfield_default_mtrl_alpha;
        v0_0[2] = androidx.appcompat.R$drawable.abc_ab_share_pack_mtrl_alpha;
        androidx.appcompat.widget.AppCompatDrawableManager.COLORFILTER_TINT_COLOR_CONTROL_NORMAL = v0_0;
        int[] v0_2 = new int[7];
        v0_2[0] = androidx.appcompat.R$drawable.abc_ic_commit_search_api_mtrl_alpha;
        v0_2[1] = androidx.appcompat.R$drawable.abc_seekbar_tick_mark_material;
        v0_2[2] = androidx.appcompat.R$drawable.abc_ic_menu_share_mtrl_alpha;
        v0_2[3] = androidx.appcompat.R$drawable.abc_ic_menu_copy_mtrl_am_alpha;
        v0_2[4] = androidx.appcompat.R$drawable.abc_ic_menu_cut_mtrl_alpha;
        v0_2[5] = androidx.appcompat.R$drawable.abc_ic_menu_selectall_mtrl_alpha;
        v0_2[6] = androidx.appcompat.R$drawable.abc_ic_menu_paste_mtrl_am_alpha;
        androidx.appcompat.widget.AppCompatDrawableManager.TINT_COLOR_CONTROL_NORMAL = v0_2;
        int[] v0_4 = new int[10];
        v0_4[0] = androidx.appcompat.R$drawable.abc_textfield_activated_mtrl_alpha;
        v0_4[1] = androidx.appcompat.R$drawable.abc_textfield_search_activated_mtrl_alpha;
        v0_4[2] = androidx.appcompat.R$drawable.abc_cab_background_top_mtrl_alpha;
        v0_4[3] = androidx.appcompat.R$drawable.abc_text_cursor_material;
        v0_4[4] = androidx.appcompat.R$drawable.abc_text_select_handle_left_mtrl_dark;
        v0_4[5] = androidx.appcompat.R$drawable.abc_text_select_handle_middle_mtrl_dark;
        v0_4[6] = androidx.appcompat.R$drawable.abc_text_select_handle_right_mtrl_dark;
        v0_4[7] = androidx.appcompat.R$drawable.abc_text_select_handle_left_mtrl_light;
        v0_4[8] = androidx.appcompat.R$drawable.abc_text_select_handle_middle_mtrl_light;
        v0_4[9] = androidx.appcompat.R$drawable.abc_text_select_handle_right_mtrl_light;
        androidx.appcompat.widget.AppCompatDrawableManager.COLORFILTER_COLOR_CONTROL_ACTIVATED = v0_4;
        int[] v0_6 = new int[3];
        v0_6[0] = androidx.appcompat.R$drawable.abc_popup_background_mtrl_mult;
        v0_6[1] = androidx.appcompat.R$drawable.abc_cab_background_internal_bg;
        v0_6[2] = androidx.appcompat.R$drawable.abc_menu_hardkey_panel_mtrl_mult;
        androidx.appcompat.widget.AppCompatDrawableManager.COLORFILTER_COLOR_BACKGROUND_MULTIPLY = v0_6;
        int[] v0_8 = new int[2];
        v0_8[0] = androidx.appcompat.R$drawable.abc_tab_indicator_material;
        v0_8[1] = androidx.appcompat.R$drawable.abc_textfield_search_material;
        androidx.appcompat.widget.AppCompatDrawableManager.TINT_COLOR_CONTROL_STATE_LIST = v0_8;
        int[] v0_9 = new int[2];
        v0_9[0] = androidx.appcompat.R$drawable.abc_btn_check_material;
        v0_9[1] = androidx.appcompat.R$drawable.abc_btn_radio_material;
        androidx.appcompat.widget.AppCompatDrawableManager.TINT_CHECKABLE_BUTTON_LIST = v0_9;
        return;
    }

    public AppCompatDrawableManager()
    {
        this.mDrawableCaches = new java.util.WeakHashMap(0);
        return;
    }

    private void addDelegate(String p2, androidx.appcompat.widget.AppCompatDrawableManager$InflateDelegate p3)
    {
        if (this.mDelegates == null) {
            this.mDelegates = new androidx.collection.ArrayMap();
        }
        this.mDelegates.put(p2, p3);
        return;
    }

    private declared_synchronized boolean addDrawableToCache(android.content.Context p5, long p6, android.graphics.drawable.Drawable p8)
    {
        try {
            int v2_4;
            android.graphics.drawable.Drawable$ConstantState v1 = p8.getConstantState();
        } catch (int v2_1) {
            throw v2_1;
        }
        if (v1 == null) {
            v2_4 = 0;
        } else {
            androidx.collection.LongSparseArray v0_0 = ((androidx.collection.LongSparseArray) this.mDrawableCaches.get(p5));
            if (v0_0 == null) {
                v0_0 = new androidx.collection.LongSparseArray();
                this.mDrawableCaches.put(p5, v0_0);
            }
            v0_0.put(p6, new ref.WeakReference(v1));
            v2_4 = 1;
        }
        return v2_4;
    }

    private void addTintListToCache(android.content.Context p3, int p4, android.content.res.ColorStateList p5)
    {
        if (this.mTintLists == null) {
            this.mTintLists = new java.util.WeakHashMap();
        }
        androidx.collection.SparseArrayCompat v0_1 = ((androidx.collection.SparseArrayCompat) this.mTintLists.get(p3));
        if (v0_1 == null) {
            v0_1 = new androidx.collection.SparseArrayCompat();
            this.mTintLists.put(p3, v0_1);
        }
        v0_1.append(p4, p5);
        return;
    }

    private static boolean arrayContains(int[] p4, int p5)
    {
        int v1 = 0;
        int v2 = 0;
        while (v2 < p4.length) {
            if (p4[v2] != p5) {
                v2++;
            } else {
                v1 = 1;
                break;
            }
        }
        return v1;
    }

    private void checkVectorDrawableSetup(android.content.Context p4)
    {
        if (!this.mHasCheckedVectorDrawableSetup) {
            this.mHasCheckedVectorDrawableSetup = 1;
            android.graphics.drawable.Drawable v0 = this.getDrawable(p4, androidx.appcompat.R$drawable.abc_vector_test);
            if ((v0 == null) || (!androidx.appcompat.widget.AppCompatDrawableManager.isVectorDrawable(v0))) {
                this.mHasCheckedVectorDrawableSetup = 0;
                throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
            }
        }
        return;
    }

    private android.content.res.ColorStateList createBorderlessButtonColorStateList(android.content.Context p2)
    {
        return this.createButtonColorStateList(p2, 0);
    }

    private android.content.res.ColorStateList createButtonColorStateList(android.content.Context p7, int p8)
    {
        int[][] v4 = new int[][4];
        int[] v1 = new int[4];
        int v0 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(p7, androidx.appcompat.R$attr.colorControlHighlight);
        int v2 = androidx.appcompat.widget.ThemeUtils.getDisabledThemeAttrColor(p7, androidx.appcompat.R$attr.colorButtonNormal);
        v4[0] = androidx.appcompat.widget.ThemeUtils.DISABLED_STATE_SET;
        v1[0] = v2;
        int v3_0 = (0 + 1);
        v4[v3_0] = androidx.appcompat.widget.ThemeUtils.PRESSED_STATE_SET;
        v1[v3_0] = androidx.core.graphics.ColorUtils.compositeColors(v0, p8);
        int v3_1 = (v3_0 + 1);
        v4[v3_1] = androidx.appcompat.widget.ThemeUtils.FOCUSED_STATE_SET;
        v1[v3_1] = androidx.core.graphics.ColorUtils.compositeColors(v0, p8);
        int v3_2 = (v3_1 + 1);
        v4[v3_2] = androidx.appcompat.widget.ThemeUtils.EMPTY_STATE_SET;
        v1[v3_2] = p8;
        return new android.content.res.ColorStateList(v4, v1);
    }

    private static long createCacheKey(android.util.TypedValue p4)
    {
        return ((((long) p4.assetCookie) << 32) | ((long) p4.data));
    }

    private android.content.res.ColorStateList createColoredButtonColorStateList(android.content.Context p2)
    {
        return this.createButtonColorStateList(p2, androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(p2, androidx.appcompat.R$attr.colorAccent));
    }

    private android.content.res.ColorStateList createDefaultButtonColorStateList(android.content.Context p2)
    {
        return this.createButtonColorStateList(p2, androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(p2, androidx.appcompat.R$attr.colorButtonNormal));
    }

    private android.graphics.drawable.Drawable createDrawableIfNeeded(android.content.Context p11, int p12)
    {
        if (this.mTypedValue == null) {
            this.mTypedValue = new android.util.TypedValue();
        }
        android.graphics.drawable.LayerDrawable v2;
        android.util.TypedValue v3 = this.mTypedValue;
        p11.getResources().getValue(p12, v3, 1);
        long v4 = androidx.appcompat.widget.AppCompatDrawableManager.createCacheKey(v3);
        android.graphics.drawable.LayerDrawable v0_0 = this.getCachedDrawable(p11, v4);
        if (v0_0 == null) {
            if (p12 == androidx.appcompat.R$drawable.abc_cab_background_top_material) {
                int v6_3 = new android.graphics.drawable.Drawable[2];
                v6_3[0] = this.getDrawable(p11, androidx.appcompat.R$drawable.abc_cab_background_internal_bg);
                v6_3[1] = this.getDrawable(p11, androidx.appcompat.R$drawable.abc_cab_background_top_mtrl_alpha);
                v0_0 = new android.graphics.drawable.LayerDrawable(v6_3);
            }
            if (v0_0 != null) {
                v0_0.setChangingConfigurations(v3.changingConfigurations);
                this.addDrawableToCache(p11, v4, v0_0);
            }
            v2 = v0_0;
        } else {
            v2 = v0_0;
        }
        return v2;
    }

    private android.content.res.ColorStateList createSwitchThumbColorStateList(android.content.Context p7)
    {
        int[][] v2 = new int[][3];
        int[] v0 = new int[3];
        android.content.res.ColorStateList v3 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColorStateList(p7, androidx.appcompat.R$attr.colorSwitchThumbNormal);
        if ((v3 == null) || (!v3.isStateful())) {
            v2[0] = androidx.appcompat.widget.ThemeUtils.DISABLED_STATE_SET;
            v0[0] = androidx.appcompat.widget.ThemeUtils.getDisabledThemeAttrColor(p7, androidx.appcompat.R$attr.colorSwitchThumbNormal);
            int v1_0 = (0 + 1);
            v2[v1_0] = androidx.appcompat.widget.ThemeUtils.CHECKED_STATE_SET;
            v0[v1_0] = androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(p7, androidx.appcompat.R$attr.colorControlActivated);
            int v1_1 = (v1_0 + 1);
            v2[v1_1] = androidx.appcompat.widget.ThemeUtils.EMPTY_STATE_SET;
            v0[v1_1] = androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(p7, androidx.appcompat.R$attr.colorSwitchThumbNormal);
        } else {
            v2[0] = androidx.appcompat.widget.ThemeUtils.DISABLED_STATE_SET;
            v0[0] = v3.getColorForState(v2[0], 0);
            int v1_3 = (0 + 1);
            v2[v1_3] = androidx.appcompat.widget.ThemeUtils.CHECKED_STATE_SET;
            v0[v1_3] = androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(p7, androidx.appcompat.R$attr.colorControlActivated);
            int v1_4 = (v1_3 + 1);
            v2[v1_4] = androidx.appcompat.widget.ThemeUtils.EMPTY_STATE_SET;
            v0[v1_4] = v3.getDefaultColor();
        }
        return new android.content.res.ColorStateList(v2, v0);
    }

    private static android.graphics.PorterDuffColorFilter createTintFilter(android.content.res.ColorStateList p2, android.graphics.PorterDuff$Mode p3, int[] p4)
    {
        if ((p2 != null) && (p3 != null)) {
            android.graphics.PorterDuffColorFilter v1_1 = androidx.appcompat.widget.AppCompatDrawableManager.getPorterDuffColorFilter(p2.getColorForState(p4, 0), p3);
        } else {
            v1_1 = 0;
        }
        return v1_1;
    }

    public static declared_synchronized androidx.appcompat.widget.AppCompatDrawableManager get()
    {
        try {
            if (androidx.appcompat.widget.AppCompatDrawableManager.INSTANCE == null) {
                androidx.appcompat.widget.AppCompatDrawableManager.INSTANCE = new androidx.appcompat.widget.AppCompatDrawableManager();
                androidx.appcompat.widget.AppCompatDrawableManager.installDefaultInflateDelegates(androidx.appcompat.widget.AppCompatDrawableManager.INSTANCE);
            }
        } catch (androidx.appcompat.widget.AppCompatDrawableManager v0_5) {
            throw v0_5;
        }
        return androidx.appcompat.widget.AppCompatDrawableManager.INSTANCE;
    }

    private declared_synchronized android.graphics.drawable.Drawable getCachedDrawable(android.content.Context p7, long p8)
    {
        android.graphics.drawable.Drawable v3_0 = 0;
        try {
            androidx.collection.LongSparseArray v0_1 = ((androidx.collection.LongSparseArray) this.mDrawableCaches.get(p7));
        } catch (android.graphics.drawable.Drawable v3_2) {
            throw v3_2;
        }
        if (v0_1 != null) {
            ref.WeakReference v2_1 = ((ref.WeakReference) v0_1.get(p8));
            if (v2_1 != null) {
                android.graphics.drawable.Drawable$ConstantState v1_1 = ((android.graphics.drawable.Drawable$ConstantState) v2_1.get());
                if (v1_1 == null) {
                    v0_1.delete(p8);
                } else {
                    v3_0 = v1_1.newDrawable(p7.getResources());
                }
            }
        }
        return v3_0;
    }

    public static declared_synchronized android.graphics.PorterDuffColorFilter getPorterDuffColorFilter(int p3, android.graphics.PorterDuff$Mode p4)
    {
        try {
            android.graphics.PorterDuffColorFilter v0_0 = androidx.appcompat.widget.AppCompatDrawableManager.COLOR_FILTER_CACHE.get(p3, p4);
        } catch (androidx.appcompat.widget.AppCompatDrawableManager$ColorFilterLruCache v1_2) {
            throw v1_2;
        }
        if (v0_0 == null) {
            v0_0 = new android.graphics.PorterDuffColorFilter(p3, p4);
            androidx.appcompat.widget.AppCompatDrawableManager.COLOR_FILTER_CACHE.put(p3, p4, v0_0);
        }
        return v0_0;
    }

    private android.content.res.ColorStateList getTintListFromCache(android.content.Context p4, int p5)
    {
        android.content.res.ColorStateList v1_0 = 0;
        if (this.mTintLists != null) {
            androidx.collection.SparseArrayCompat v0_1 = ((androidx.collection.SparseArrayCompat) this.mTintLists.get(p4));
            if (v0_1 != null) {
                v1_0 = ((android.content.res.ColorStateList) v0_1.get(p5));
            }
        }
        return v1_0;
    }

    static android.graphics.PorterDuff$Mode getTintMode(int p2)
    {
        android.graphics.PorterDuff$Mode v0 = 0;
        if (p2 == androidx.appcompat.R$drawable.abc_switch_thumb_material) {
            v0 = android.graphics.PorterDuff$Mode.MULTIPLY;
        }
        return v0;
    }

    private static void installDefaultInflateDelegates(androidx.appcompat.widget.AppCompatDrawableManager p2)
    {
        if (android.os.Build$VERSION.SDK_INT < 24) {
            p2.addDelegate("vector", new androidx.appcompat.widget.AppCompatDrawableManager$VdcInflateDelegate()).addDelegate("animated-vector", new androidx.appcompat.widget.AppCompatDrawableManager$AvdcInflateDelegate()).addDelegate("animated-selector", new androidx.appcompat.widget.AppCompatDrawableManager$AsldcInflateDelegate());
        }
        return;
    }

    private static boolean isVectorDrawable(android.graphics.drawable.Drawable p2)
    {
        if ((!(p2 instanceof androidx.vectordrawable.graphics.drawable.VectorDrawableCompat)) && (!"android.graphics.drawable.VectorDrawable".equals(p2.getClass().getName()))) {
            int v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    private android.graphics.drawable.Drawable loadDrawableFromDelegates(android.content.Context p17, int p18)
    {
        if ((this.mDelegates == null) || (this.mDelegates.isEmpty())) {
            android.graphics.drawable.Drawable v5 = 0;
        } else {
            if (this.mKnownDrawableIdTags == null) {
                this.mKnownDrawableIdTags = new androidx.collection.SparseArrayCompat();
            } else {
                String v3_1 = ((String) this.mKnownDrawableIdTags.get(p18));
                if (("appcompat_skip_skip".equals(v3_1)) || ((v3_1 != null) && (this.mDelegates.get(v3_1) == null))) {
                    v5 = 0;
                    return v5;
                }
            }
            if (this.mTypedValue == null) {
                this.mTypedValue = new android.util.TypedValue();
            }
            android.util.TypedValue v12 = this.mTypedValue;
            android.content.res.Resources v10 = p17.getResources();
            v10.getValue(p18, v12, 1);
            long v8 = androidx.appcompat.widget.AppCompatDrawableManager.createCacheKey(v12);
            v5 = this.getCachedDrawable(p17, v8);
            if (v5 == null) {
                if ((v12.string != null) && (v12.string.toString().endsWith(".xml"))) {
                    try {
                        android.content.res.XmlResourceParser v7 = v10.getXml(p18);
                        android.util.AttributeSet v2 = android.util.Xml.asAttributeSet(v7);
                    } catch (Exception v6) {
                        android.util.Log.e("AppCompatDrawableManag", "Exception while inflating drawable", v6);
                    }
                    do {
                        int v13 = v7.next();
                    } while((v13 != 2) && (v13 != 1));
                    if (v13 == 2) {
                        String v11 = v7.getName();
                        this.mKnownDrawableIdTags.append(p18, v11);
                        androidx.appcompat.widget.AppCompatDrawableManager$InflateDelegate v4_1 = ((androidx.appcompat.widget.AppCompatDrawableManager$InflateDelegate) this.mDelegates.get(v11));
                        if (v4_1 != null) {
                            v5 = v4_1.createFromXmlInner(p17, v7, v2, p17.getTheme());
                        }
                        if (v5 != null) {
                            v5.setChangingConfigurations(v12.changingConfigurations);
                            // Both branches of the condition point to the same code.
                            // if (!this.addDrawableToCache(p17, v8, v5)) {
                            // }
                        }
                    } else {
                        throw new org.xmlpull.v1.XmlPullParserException("No start tag found");
                    }
                }
                if (v5 == null) {
                    this.mKnownDrawableIdTags.append(p18, "appcompat_skip_skip");
                }
            }
        }
        return v5;
    }

    private void removeDelegate(String p2, androidx.appcompat.widget.AppCompatDrawableManager$InflateDelegate p3)
    {
        if ((this.mDelegates != null) && (this.mDelegates.get(p2) == p3)) {
            this.mDelegates.remove(p2);
        }
        return;
    }

    private static void setPorterDuffColorFilter(android.graphics.drawable.Drawable p1, int p2, android.graphics.PorterDuff$Mode p3)
    {
        if (androidx.appcompat.widget.DrawableUtils.canSafelyMutateDrawable(p1)) {
            p1 = p1.mutate();
        }
        if (p3 == null) {
            p3 = androidx.appcompat.widget.AppCompatDrawableManager.DEFAULT_MODE;
        }
        p1.setColorFilter(androidx.appcompat.widget.AppCompatDrawableManager.getPorterDuffColorFilter(p2, p3));
        return;
    }

    private android.graphics.drawable.Drawable tintDrawable(android.content.Context p10, int p11, boolean p12, android.graphics.drawable.Drawable p13)
    {
        android.content.res.ColorStateList v1 = this.getTintList(p10, p11);
        if (v1 == null) {
            if (p11 != androidx.appcompat.R$drawable.abc_seekbar_track_material) {
                if ((p11 != androidx.appcompat.R$drawable.abc_ratingbar_material) && ((p11 != androidx.appcompat.R$drawable.abc_ratingbar_indicator_material) && (p11 != androidx.appcompat.R$drawable.abc_ratingbar_small_material))) {
                    if ((!androidx.appcompat.widget.AppCompatDrawableManager.tintDrawableUsingColorFilter(p10, p11, p13)) && (p12)) {
                        p13 = 0;
                    }
                } else {
                    androidx.appcompat.widget.AppCompatDrawableManager.setPorterDuffColorFilter(((android.graphics.drawable.LayerDrawable) p13).findDrawableByLayerId(16908288), androidx.appcompat.widget.ThemeUtils.getDisabledThemeAttrColor(p10, androidx.appcompat.R$attr.colorControlNormal), androidx.appcompat.widget.AppCompatDrawableManager.DEFAULT_MODE);
                    androidx.appcompat.widget.AppCompatDrawableManager.setPorterDuffColorFilter(((android.graphics.drawable.LayerDrawable) p13).findDrawableByLayerId(16908303), androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(p10, androidx.appcompat.R$attr.colorControlActivated), androidx.appcompat.widget.AppCompatDrawableManager.DEFAULT_MODE);
                    androidx.appcompat.widget.AppCompatDrawableManager.setPorterDuffColorFilter(((android.graphics.drawable.LayerDrawable) p13).findDrawableByLayerId(16908301), androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(p10, androidx.appcompat.R$attr.colorControlActivated), androidx.appcompat.widget.AppCompatDrawableManager.DEFAULT_MODE);
                }
            } else {
                androidx.appcompat.widget.AppCompatDrawableManager.setPorterDuffColorFilter(((android.graphics.drawable.LayerDrawable) p13).findDrawableByLayerId(16908288), androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(p10, androidx.appcompat.R$attr.colorControlNormal), androidx.appcompat.widget.AppCompatDrawableManager.DEFAULT_MODE);
                androidx.appcompat.widget.AppCompatDrawableManager.setPorterDuffColorFilter(((android.graphics.drawable.LayerDrawable) p13).findDrawableByLayerId(16908303), androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(p10, androidx.appcompat.R$attr.colorControlNormal), androidx.appcompat.widget.AppCompatDrawableManager.DEFAULT_MODE);
                androidx.appcompat.widget.AppCompatDrawableManager.setPorterDuffColorFilter(((android.graphics.drawable.LayerDrawable) p13).findDrawableByLayerId(16908301), androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(p10, androidx.appcompat.R$attr.colorControlActivated), androidx.appcompat.widget.AppCompatDrawableManager.DEFAULT_MODE);
            }
        } else {
            if (androidx.appcompat.widget.DrawableUtils.canSafelyMutateDrawable(p13)) {
                p13 = p13.mutate();
            }
            p13 = androidx.core.graphics.drawable.DrawableCompat.wrap(p13);
            androidx.core.graphics.drawable.DrawableCompat.setTintList(p13, v1);
            android.graphics.PorterDuff$Mode v2 = androidx.appcompat.widget.AppCompatDrawableManager.getTintMode(p11);
            if (v2 != null) {
                androidx.core.graphics.drawable.DrawableCompat.setTintMode(p13, v2);
            }
        }
        return p13;
    }

    static void tintDrawable(android.graphics.drawable.Drawable p2, androidx.appcompat.widget.TintInfo p3, int[] p4)
    {
        if ((!androidx.appcompat.widget.DrawableUtils.canSafelyMutateDrawable(p2)) || (p2.mutate() == p2)) {
            if ((!p3.mHasTintList) && (!p3.mHasTintMode)) {
                p2.clearColorFilter();
            } else {
                android.graphics.PorterDuffColorFilter v0_2;
                if (!p3.mHasTintList) {
                    v0_2 = 0;
                } else {
                    v0_2 = p3.mTintList;
                }
                android.graphics.PorterDuff$Mode v1_1;
                if (!p3.mHasTintMode) {
                    v1_1 = androidx.appcompat.widget.AppCompatDrawableManager.DEFAULT_MODE;
                } else {
                    v1_1 = p3.mTintMode;
                }
                p2.setColorFilter(androidx.appcompat.widget.AppCompatDrawableManager.createTintFilter(v0_2, v1_1, p4));
            }
            if (android.os.Build$VERSION.SDK_INT <= 23) {
                p2.invalidateSelf();
            }
        } else {
            android.util.Log.d("AppCompatDrawableManag", "Mutated drawable is not the same instance as the input.");
        }
        return;
    }

    static boolean tintDrawableUsingColorFilter(android.content.Context p6, int p7, android.graphics.drawable.Drawable p8)
    {
        android.graphics.PorterDuff$Mode v4 = androidx.appcompat.widget.AppCompatDrawableManager.DEFAULT_MODE;
        int v3 = 0;
        int v2 = 0;
        int v0 = -1;
        if (!androidx.appcompat.widget.AppCompatDrawableManager.arrayContains(androidx.appcompat.widget.AppCompatDrawableManager.COLORFILTER_TINT_COLOR_CONTROL_NORMAL, p7)) {
            if (!androidx.appcompat.widget.AppCompatDrawableManager.arrayContains(androidx.appcompat.widget.AppCompatDrawableManager.COLORFILTER_COLOR_CONTROL_ACTIVATED, p7)) {
                if (!androidx.appcompat.widget.AppCompatDrawableManager.arrayContains(androidx.appcompat.widget.AppCompatDrawableManager.COLORFILTER_COLOR_BACKGROUND_MULTIPLY, p7)) {
                    if (p7 != androidx.appcompat.R$drawable.abc_list_divider_mtrl_alpha) {
                        if (p7 == androidx.appcompat.R$drawable.abc_dialog_material_background) {
                            v2 = 16842801;
                            v3 = 1;
                        }
                    } else {
                        v2 = 16842800;
                        v3 = 1;
                        v0 = Math.round(1109603123);
                    }
                } else {
                    v2 = 16842801;
                    v3 = 1;
                    v4 = android.graphics.PorterDuff$Mode.MULTIPLY;
                }
            } else {
                v2 = androidx.appcompat.R$attr.colorControlActivated;
                v3 = 1;
            }
        } else {
            v2 = androidx.appcompat.R$attr.colorControlNormal;
            v3 = 1;
        }
        int v5_6;
        if (v3 == 0) {
            v5_6 = 0;
        } else {
            if (androidx.appcompat.widget.DrawableUtils.canSafelyMutateDrawable(p8)) {
                p8 = p8.mutate();
            }
            p8.setColorFilter(androidx.appcompat.widget.AppCompatDrawableManager.getPorterDuffColorFilter(androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(p6, v2), v4));
            if (v0 != -1) {
                p8.setAlpha(v0);
            }
            v5_6 = 1;
        }
        return v5_6;
    }

    public declared_synchronized android.graphics.drawable.Drawable getDrawable(android.content.Context p2, int p3)
    {
        try {
            return this.getDrawable(p2, p3, 0);
        } catch (Throwable v0_2) {
            throw v0_2;
        }
    }

    declared_synchronized android.graphics.drawable.Drawable getDrawable(android.content.Context p3, int p4, boolean p5)
    {
        try {
            this.checkVectorDrawableSetup(p3);
            android.graphics.drawable.Drawable v0 = this.loadDrawableFromDelegates(p3, p4);
        } catch (Throwable v1) {
            throw v1;
        }
        if (v0 == null) {
            v0 = this.createDrawableIfNeeded(p3, p4);
        }
        if (v0 == null) {
            v0 = androidx.core.content.ContextCompat.getDrawable(p3, p4);
        }
        if (v0 != null) {
            v0 = this.tintDrawable(p3, p4, p5, v0);
        }
        if (v0 != null) {
            androidx.appcompat.widget.DrawableUtils.fixDrawable(v0);
        }
        return v0;
    }

    declared_synchronized android.content.res.ColorStateList getTintList(android.content.Context p3, int p4)
    {
        try {
            android.content.res.ColorStateList v0 = this.getTintListFromCache(p3, p4);
        } catch (int v1_20) {
            throw v1_20;
        }
        if (v0 == null) {
            if (p4 != androidx.appcompat.R$drawable.abc_edit_text_material) {
                if (p4 != androidx.appcompat.R$drawable.abc_switch_track_mtrl_alpha) {
                    if (p4 != androidx.appcompat.R$drawable.abc_switch_thumb_material) {
                        if (p4 != androidx.appcompat.R$drawable.abc_btn_default_mtrl_shape) {
                            if (p4 != androidx.appcompat.R$drawable.abc_btn_borderless_material) {
                                if (p4 != androidx.appcompat.R$drawable.abc_btn_colored_material) {
                                    if ((p4 != androidx.appcompat.R$drawable.abc_spinner_mtrl_am_alpha) && (p4 != androidx.appcompat.R$drawable.abc_spinner_textfield_background_material)) {
                                        if (!androidx.appcompat.widget.AppCompatDrawableManager.arrayContains(androidx.appcompat.widget.AppCompatDrawableManager.TINT_COLOR_CONTROL_NORMAL, p4)) {
                                            if (!androidx.appcompat.widget.AppCompatDrawableManager.arrayContains(androidx.appcompat.widget.AppCompatDrawableManager.TINT_COLOR_CONTROL_STATE_LIST, p4)) {
                                                if (!androidx.appcompat.widget.AppCompatDrawableManager.arrayContains(androidx.appcompat.widget.AppCompatDrawableManager.TINT_CHECKABLE_BUTTON_LIST, p4)) {
                                                    if (p4 == androidx.appcompat.R$drawable.abc_seekbar_thumb_material) {
                                                        v0 = androidx.appcompat.content.res.AppCompatResources.getColorStateList(p3, androidx.appcompat.R$color.abc_tint_seek_thumb);
                                                    }
                                                } else {
                                                    v0 = androidx.appcompat.content.res.AppCompatResources.getColorStateList(p3, androidx.appcompat.R$color.abc_tint_btn_checkable);
                                                }
                                            } else {
                                                v0 = androidx.appcompat.content.res.AppCompatResources.getColorStateList(p3, androidx.appcompat.R$color.abc_tint_default);
                                            }
                                        } else {
                                            v0 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColorStateList(p3, androidx.appcompat.R$attr.colorControlNormal);
                                        }
                                    } else {
                                        v0 = androidx.appcompat.content.res.AppCompatResources.getColorStateList(p3, androidx.appcompat.R$color.abc_tint_spinner);
                                    }
                                } else {
                                    v0 = this.createColoredButtonColorStateList(p3);
                                }
                            } else {
                                v0 = this.createBorderlessButtonColorStateList(p3);
                            }
                        } else {
                            v0 = this.createDefaultButtonColorStateList(p3);
                        }
                    } else {
                        v0 = this.createSwitchThumbColorStateList(p3);
                    }
                } else {
                    v0 = androidx.appcompat.content.res.AppCompatResources.getColorStateList(p3, androidx.appcompat.R$color.abc_tint_switch_track);
                }
            } else {
                v0 = androidx.appcompat.content.res.AppCompatResources.getColorStateList(p3, androidx.appcompat.R$color.abc_tint_edittext);
            }
            if (v0 != null) {
                this.addTintListToCache(p3, p4, v0);
            }
        }
        return v0;
    }

    public declared_synchronized void onConfigurationChanged(android.content.Context p3)
    {
        try {
            androidx.collection.LongSparseArray v0_1 = ((androidx.collection.LongSparseArray) this.mDrawableCaches.get(p3));
        } catch (Throwable v1_1) {
            throw v1_1;
        }
        if (v0_1 != null) {
            v0_1.clear();
        }
        return;
    }

    declared_synchronized android.graphics.drawable.Drawable onDrawableLoadedFromResources(android.content.Context p3, androidx.appcompat.widget.VectorEnabledTintResources p4, int p5)
    {
        try {
            android.graphics.drawable.Drawable v0 = this.loadDrawableFromDelegates(p3, p5);
        } catch (int v1_1) {
            throw v1_1;
        }
        if (v0 == null) {
            v0 = p4.superGetDrawable(p5);
        }
        int v1_0;
        if (v0 == null) {
            v1_0 = 0;
        } else {
            v1_0 = this.tintDrawable(p3, p5, 0, v0);
        }
        return v1_0;
    }
}
