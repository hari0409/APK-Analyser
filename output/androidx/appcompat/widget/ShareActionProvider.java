package androidx.appcompat.widget;
public class ShareActionProvider extends androidx.core.view.ActionProvider {
    private static final int DEFAULT_INITIAL_ACTIVITY_COUNT = 4;
    public static final String DEFAULT_SHARE_HISTORY_FILE_NAME = "share_history.xml";
    final android.content.Context mContext;
    private int mMaxShownActivityCount;
    private androidx.appcompat.widget.ActivityChooserModel$OnChooseActivityListener mOnChooseActivityListener;
    private final androidx.appcompat.widget.ShareActionProvider$ShareMenuItemOnMenuItemClickListener mOnMenuItemClickListener;
    androidx.appcompat.widget.ShareActionProvider$OnShareTargetSelectedListener mOnShareTargetSelectedListener;
    String mShareHistoryFileName;

    public ShareActionProvider(android.content.Context p2)
    {
        super(p2);
        super.mMaxShownActivityCount = 4;
        super.mOnMenuItemClickListener = new androidx.appcompat.widget.ShareActionProvider$ShareMenuItemOnMenuItemClickListener(super);
        super.mShareHistoryFileName = "share_history.xml";
        super.mContext = p2;
        return;
    }

    private void setActivityChooserPolicyIfNeeded()
    {
        if (this.mOnShareTargetSelectedListener != null) {
            if (this.mOnChooseActivityListener == null) {
                this.mOnChooseActivityListener = new androidx.appcompat.widget.ShareActionProvider$ShareActivityChooserModelPolicy(this);
            }
            androidx.appcompat.widget.ActivityChooserModel.get(this.mContext, this.mShareHistoryFileName).setOnChooseActivityListener(this.mOnChooseActivityListener);
        }
        return;
    }

    public boolean hasSubMenu()
    {
        return 1;
    }

    public android.view.View onCreateActionView()
    {
        androidx.appcompat.widget.ActivityChooserView v0_1 = new androidx.appcompat.widget.ActivityChooserView(this.mContext);
        if (!v0_1.isInEditMode()) {
            v0_1.setActivityChooserModel(androidx.appcompat.widget.ActivityChooserModel.get(this.mContext, this.mShareHistoryFileName));
        }
        android.util.TypedValue v3_1 = new android.util.TypedValue();
        this.mContext.getTheme().resolveAttribute(androidx.appcompat.R$attr.actionModeShareDrawable, v3_1, 1);
        v0_1.setExpandActivityOverflowButtonDrawable(androidx.appcompat.content.res.AppCompatResources.getDrawable(this.mContext, v3_1.resourceId));
        v0_1.setProvider(this);
        v0_1.setDefaultActionButtonContentDescription(androidx.appcompat.R$string.abc_shareactionprovider_share_with_application);
        v0_1.setExpandActivityOverflowButtonContentDescription(androidx.appcompat.R$string.abc_shareactionprovider_share_with);
        return v0_1;
    }

    public void onPrepareSubMenu(android.view.SubMenu p11)
    {
        p11.clear();
        androidx.appcompat.widget.ActivityChooserModel v2 = androidx.appcompat.widget.ActivityChooserModel.get(this.mContext, this.mShareHistoryFileName);
        android.content.pm.PackageManager v6 = this.mContext.getPackageManager();
        int v3 = v2.getActivityCount();
        int v1 = Math.min(v3, this.mMaxShownActivityCount);
        int v5_0 = 0;
        while (v5_0 < v1) {
            android.content.pm.ResolveInfo v0_1 = v2.getActivity(v5_0);
            p11.add(0, v5_0, v5_0, v0_1.loadLabel(v6)).setIcon(v0_1.loadIcon(v6)).setOnMenuItemClickListener(this.mOnMenuItemClickListener);
            v5_0++;
        }
        if (v1 < v3) {
            android.view.SubMenu v4 = p11.addSubMenu(0, v1, v1, this.mContext.getString(androidx.appcompat.R$string.abc_activity_chooser_view_see_all));
            int v5_1 = 0;
            while (v5_1 < v3) {
                android.content.pm.ResolveInfo v0_0 = v2.getActivity(v5_1);
                v4.add(0, v5_1, v5_1, v0_0.loadLabel(v6)).setIcon(v0_0.loadIcon(v6)).setOnMenuItemClickListener(this.mOnMenuItemClickListener);
                v5_1++;
            }
        }
        return;
    }

    public void setOnShareTargetSelectedListener(androidx.appcompat.widget.ShareActionProvider$OnShareTargetSelectedListener p1)
    {
        this.mOnShareTargetSelectedListener = p1;
        this.setActivityChooserPolicyIfNeeded();
        return;
    }

    public void setShareHistoryFileName(String p1)
    {
        this.mShareHistoryFileName = p1;
        this.setActivityChooserPolicyIfNeeded();
        return;
    }

    public void setShareIntent(android.content.Intent p5)
    {
        if (p5 != null) {
            String v0 = p5.getAction();
            if (("android.intent.action.SEND".equals(v0)) || ("android.intent.action.SEND_MULTIPLE".equals(v0))) {
                this.updateIntent(p5);
            }
        }
        androidx.appcompat.widget.ActivityChooserModel.get(this.mContext, this.mShareHistoryFileName).setIntent(p5);
        return;
    }

    void updateIntent(android.content.Intent p3)
    {
        if (android.os.Build$VERSION.SDK_INT < 21) {
            p3.addFlags(524288);
        } else {
            p3.addFlags(134742016);
        }
        return;
    }
}
