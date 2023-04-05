package androidx.appcompat.widget;
 class ShareActionProvider$ShareMenuItemOnMenuItemClickListener implements android.view.MenuItem$OnMenuItemClickListener {
    final synthetic androidx.appcompat.widget.ShareActionProvider this$0;

    ShareActionProvider$ShareMenuItemOnMenuItemClickListener(androidx.appcompat.widget.ShareActionProvider p1)
    {
        this.this$0 = p1;
        return;
    }

    public boolean onMenuItemClick(android.view.MenuItem p7)
    {
        android.content.Intent v3 = androidx.appcompat.widget.ActivityChooserModel.get(this.this$0.mContext, this.this$0.mShareHistoryFileName).chooseActivity(p7.getItemId());
        if (v3 != null) {
            String v0 = v3.getAction();
            if (("android.intent.action.SEND".equals(v0)) || ("android.intent.action.SEND_MULTIPLE".equals(v0))) {
                this.this$0.updateIntent(v3);
            }
            this.this$0.mContext.startActivity(v3);
        }
        return 1;
    }
}
