package androidx.appcompat.graphics.drawable;
 class AnimatedStateListDrawableCompat$AnimatableTransition extends androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$Transition {
    private final android.graphics.drawable.Animatable mA;

    AnimatedStateListDrawableCompat$AnimatableTransition(android.graphics.drawable.Animatable p2)
    {
        super(0);
        super.mA = p2;
        return;
    }

    public void start()
    {
        this.mA.start();
        return;
    }

    public void stop()
    {
        this.mA.stop();
        return;
    }
}
