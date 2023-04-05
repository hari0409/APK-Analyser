package androidx.appcompat.widget;
 class ActionMenuPresenter$OverflowMenuButton extends androidx.appcompat.widget.AppCompatImageView implements androidx.appcompat.widget.ActionMenuView$ActionMenuChildView {
    private final float[] mTempPts;
    final synthetic androidx.appcompat.widget.ActionMenuPresenter this$0;

    public ActionMenuPresenter$OverflowMenuButton(androidx.appcompat.widget.ActionMenuPresenter p4, android.content.Context p5)
    {
        this.this$0 = p4;
        super(p5, 0, androidx.appcompat.R$attr.actionOverflowButtonStyle);
        androidx.appcompat.widget.ActionMenuPresenter$OverflowMenuButton$1 v0_6 = new float[2];
        super.mTempPts = v0_6;
        super.setClickable(1);
        super.setFocusable(1);
        super.setVisibility(0);
        super.setEnabled(1);
        androidx.appcompat.widget.TooltipCompat.setTooltipText(super, super.getContentDescription());
        super.setOnTouchListener(new androidx.appcompat.widget.ActionMenuPresenter$OverflowMenuButton$1(super, super, p4));
        return;
    }

    public boolean needsDividerAfter()
    {
        return 0;
    }

    public boolean needsDividerBefore()
    {
        return 0;
    }

    public boolean performClick()
    {
        if (!super.performClick()) {
            this.playSoundEffect(0);
            this.this$0.showOverflowMenu();
        }
        return 1;
    }

    protected boolean setFrame(int p15, int p16, int p17, int p18)
    {
        boolean v3 = super.setFrame(p15, p16, p17, p18);
        android.graphics.drawable.Drawable v4 = this.getDrawable();
        android.graphics.drawable.Drawable v0 = this.getBackground();
        if ((v4 != null) && (v0 != null)) {
            int v9 = this.getWidth();
            int v6 = this.getHeight();
            int v5 = (Math.max(v9, v6) / 2);
            int v1 = ((v9 + (this.getPaddingLeft() - this.getPaddingRight())) / 2);
            int v2 = ((v6 + (this.getPaddingTop() - this.getPaddingBottom())) / 2);
            androidx.core.graphics.drawable.DrawableCompat.setHotspotBounds(v0, (v1 - v5), (v2 - v5), (v1 + v5), (v2 + v5));
        }
        return v3;
    }
}
