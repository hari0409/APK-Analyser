package androidx.appcompat.app;
 class AppCompatDelegateImpl$ListMenuDecorView extends androidx.appcompat.widget.ContentFrameLayout {
    final synthetic androidx.appcompat.app.AppCompatDelegateImpl this$0;

    public AppCompatDelegateImpl$ListMenuDecorView(androidx.appcompat.app.AppCompatDelegateImpl p1, android.content.Context p2)
    {
        this.this$0 = p1;
        super(p2);
        return;
    }

    private boolean isOutOfBounds(int p2, int p3)
    {
        if ((p2 >= -5) && ((p3 >= -5) && ((p2 <= (this.getWidth() + 5)) && (p3 <= (this.getHeight() + 5))))) {
            int v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    public boolean dispatchKeyEvent(android.view.KeyEvent p2)
    {
        if ((!this.this$0.dispatchKeyEvent(p2)) && (!super.dispatchKeyEvent(p2))) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public boolean onInterceptTouchEvent(android.view.MotionEvent p6)
    {
        if ((p6.getAction() != 0) || (!this.isOutOfBounds(((int) p6.getX()), ((int) p6.getY())))) {
            int v3_1 = super.onInterceptTouchEvent(p6);
        } else {
            this.this$0.closePanel(0);
            v3_1 = 1;
        }
        return v3_1;
    }

    public void setBackgroundResource(int p2)
    {
        this.setBackgroundDrawable(androidx.appcompat.content.res.AppCompatResources.getDrawable(this.getContext(), p2));
        return;
    }
}
