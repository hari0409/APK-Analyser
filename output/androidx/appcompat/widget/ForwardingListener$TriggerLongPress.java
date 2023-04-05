package androidx.appcompat.widget;
 class ForwardingListener$TriggerLongPress implements java.lang.Runnable {
    final synthetic androidx.appcompat.widget.ForwardingListener this$0;

    ForwardingListener$TriggerLongPress(androidx.appcompat.widget.ForwardingListener p1)
    {
        this.this$0 = p1;
        return;
    }

    public void run()
    {
        this.this$0.onLongPress();
        return;
    }
}
