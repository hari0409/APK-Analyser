package androidx.appcompat.view.menu;
 class CascadingMenuPopup$2 implements android.view.View$OnAttachStateChangeListener {
    final synthetic androidx.appcompat.view.menu.CascadingMenuPopup this$0;

    CascadingMenuPopup$2(androidx.appcompat.view.menu.CascadingMenuPopup p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onViewAttachedToWindow(android.view.View p1)
    {
        return;
    }

    public void onViewDetachedFromWindow(android.view.View p3)
    {
        if (this.this$0.mTreeObserver != null) {
            if (!this.this$0.mTreeObserver.isAlive()) {
                this.this$0.mTreeObserver = p3.getViewTreeObserver();
            }
            this.this$0.mTreeObserver.removeGlobalOnLayoutListener(this.this$0.mGlobalLayoutListener);
        }
        p3.removeOnAttachStateChangeListener(this);
        return;
    }
}
