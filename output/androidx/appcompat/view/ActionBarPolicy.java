package androidx.appcompat.view;
public class ActionBarPolicy {
    private android.content.Context mContext;

    private ActionBarPolicy(android.content.Context p1)
    {
        this.mContext = p1;
        return;
    }

    public static androidx.appcompat.view.ActionBarPolicy get(android.content.Context p1)
    {
        return new androidx.appcompat.view.ActionBarPolicy(p1);
    }

    public boolean enableHomeButtonByDefault()
    {
        int v0_3;
        if (this.mContext.getApplicationInfo().targetSdkVersion >= 14) {
            v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public int getEmbeddedMenuWidthLimit()
    {
        return (this.mContext.getResources().getDisplayMetrics().widthPixels / 2);
    }

    public int getMaxActionButtons()
    {
        int v4_2;
        android.content.res.Configuration v0 = this.mContext.getResources().getConfiguration();
        int v3 = v0.screenWidthDp;
        int v1 = v0.screenHeightDp;
        if (((v0.smallestScreenWidthDp <= 600) && ((v3 <= 600) && ((v3 <= 960) || (v1 <= 720)))) && ((v3 <= 720) || (v1 <= 960))) {
            if (((v3 < 500) && ((v3 <= 640) || (v1 <= 480))) && ((v3 <= 480) || (v1 <= 640))) {
                if (v3 < 360) {
                    v4_2 = 2;
                } else {
                    v4_2 = 3;
                }
            } else {
                v4_2 = 4;
            }
        } else {
            v4_2 = 5;
        }
        return v4_2;
    }

    public int getStackedTabMaxWidth()
    {
        return this.mContext.getResources().getDimensionPixelSize(androidx.appcompat.R$dimen.abc_action_bar_stacked_tab_max_width);
    }

    public int getTabContainerHeight()
    {
        android.content.res.TypedArray v0 = this.mContext.obtainStyledAttributes(0, androidx.appcompat.R$styleable.ActionBar, androidx.appcompat.R$attr.actionBarStyle, 0);
        int v1 = v0.getLayoutDimension(androidx.appcompat.R$styleable.ActionBar_height, 0);
        android.content.res.Resources v2 = this.mContext.getResources();
        if (!this.hasEmbeddedTabs()) {
            v1 = Math.min(v1, v2.getDimensionPixelSize(androidx.appcompat.R$dimen.abc_action_bar_stacked_max_height));
        }
        v0.recycle();
        return v1;
    }

    public boolean hasEmbeddedTabs()
    {
        return this.mContext.getResources().getBoolean(androidx.appcompat.R$bool.abc_action_bar_embed_tabs);
    }

    public boolean showsOverflowMenuButton()
    {
        int v0 = 1;
        if ((android.os.Build$VERSION.SDK_INT < 19) && (android.view.ViewConfiguration.get(this.mContext).hasPermanentMenuKey())) {
            v0 = 0;
        }
        return v0;
    }
}
