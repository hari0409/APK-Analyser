package androidx.appcompat.graphics.drawable;
 class AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition extends androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$Transition {
    private final androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat mAvd;

    AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition(androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat p2)
    {
        super(0);
        super.mAvd = p2;
        return;
    }

    public void start()
    {
        this.mAvd.start();
        return;
    }

    public void stop()
    {
        this.mAvd.stop();
        return;
    }
}
