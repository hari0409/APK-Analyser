package androidx.appcompat.widget;
 class ForwardingListener$DisallowIntercept implements java.lang.Runnable {
    final synthetic androidx.appcompat.widget.ForwardingListener this$0;

    ForwardingListener$DisallowIntercept(androidx.appcompat.widget.ForwardingListener p1)
    {
        this.this$0 = p1;
        return;
    }

    public void run()
    {
        android.view.ViewParent v0 = this.this$0.mSrc.getParent();
        if (v0 != null) {
            v0.requestDisallowInterceptTouchEvent(1);
        }
        return;
    }
}
