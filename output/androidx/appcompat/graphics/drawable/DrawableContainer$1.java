package androidx.appcompat.graphics.drawable;
 class DrawableContainer$1 implements java.lang.Runnable {
    final synthetic androidx.appcompat.graphics.drawable.DrawableContainer this$0;

    DrawableContainer$1(androidx.appcompat.graphics.drawable.DrawableContainer p1)
    {
        this.this$0 = p1;
        return;
    }

    public void run()
    {
        this.this$0.animate(1);
        this.this$0.invalidateSelf();
        return;
    }
}
