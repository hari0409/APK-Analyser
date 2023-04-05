package androidx.appcompat.app;
 class WindowDecorActionBar$3 implements androidx.core.view.ViewPropertyAnimatorUpdateListener {
    final synthetic androidx.appcompat.app.WindowDecorActionBar this$0;

    WindowDecorActionBar$3(androidx.appcompat.app.WindowDecorActionBar p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onAnimationUpdate(android.view.View p3)
    {
        ((android.view.View) this.this$0.mContainerView.getParent()).invalidate();
        return;
    }
}
