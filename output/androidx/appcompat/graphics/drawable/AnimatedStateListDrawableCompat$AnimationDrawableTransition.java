package androidx.appcompat.graphics.drawable;
 class AnimatedStateListDrawableCompat$AnimationDrawableTransition extends androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$Transition {
    private final android.animation.ObjectAnimator mAnim;
    private final boolean mHasReversibleFlag;

    AnimatedStateListDrawableCompat$AnimationDrawableTransition(android.graphics.drawable.AnimationDrawable p10, boolean p11, boolean p12)
    {
        int v2;
        super(0);
        int v1 = p10.getNumberOfFrames();
        if (!p11) {
            v2 = 0;
        } else {
            v2 = (v1 - 1);
        }
        int v4;
        if (!p11) {
            v4 = (v1 - 1);
        } else {
            v4 = 0;
        }
        androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$FrameInterpolator v3_1 = new androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$FrameInterpolator(p10, p11);
        int[] v7_1 = new int[2];
        v7_1[0] = v2;
        v7_1[1] = v4;
        android.animation.ObjectAnimator v0 = android.animation.ObjectAnimator.ofInt(p10, "currentIndex", v7_1);
        if (android.os.Build$VERSION.SDK_INT >= 18) {
            v0.setAutoCancel(1);
        }
        v0.setDuration(((long) v3_1.getTotalDuration()));
        v0.setInterpolator(v3_1);
        super.mHasReversibleFlag = p12;
        super.mAnim = v0;
        return;
    }

    public boolean canReverse()
    {
        return this.mHasReversibleFlag;
    }

    public void reverse()
    {
        this.mAnim.reverse();
        return;
    }

    public void start()
    {
        this.mAnim.start();
        return;
    }

    public void stop()
    {
        this.mAnim.cancel();
        return;
    }
}
