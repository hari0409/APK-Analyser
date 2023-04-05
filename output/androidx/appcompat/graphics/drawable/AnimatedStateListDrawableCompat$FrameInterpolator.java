package androidx.appcompat.graphics.drawable;
 class AnimatedStateListDrawableCompat$FrameInterpolator implements android.animation.TimeInterpolator {
    private int[] mFrameTimes;
    private int mFrames;
    private int mTotalDuration;

    AnimatedStateListDrawableCompat$FrameInterpolator(android.graphics.drawable.AnimationDrawable p1, boolean p2)
    {
        this.updateFrames(p1, p2);
        return;
    }

    public float getInterpolation(float p9)
    {
        int v1 = this.mFrames;
        int[] v3 = this.mFrameTimes;
        int v5 = ((int) ((((float) this.mTotalDuration) * p9) + 1056964608));
        int v4 = 0;
        while ((v4 < v1) && (v5 >= v3[v4])) {
            v5 -= v3[v4];
            v4++;
        }
        int v2;
        if (v4 >= v1) {
            v2 = 0;
        } else {
            v2 = (((float) v5) / ((float) this.mTotalDuration));
        }
        return ((((float) v4) / ((float) v1)) + v2);
    }

    int getTotalDuration()
    {
        return this.mTotalDuration;
    }

    int updateFrames(android.graphics.drawable.AnimationDrawable p7, boolean p8)
    {
        int v1 = p7.getNumberOfFrames();
        this.mFrames = v1;
        if ((this.mFrameTimes == null) || (this.mFrameTimes.length < v1)) {
            int v5_5 = new int[v1];
            this.mFrameTimes = v5_5;
        }
        int[] v2 = this.mFrameTimes;
        int v4 = 0;
        int v3 = 0;
        while (v3 < v1) {
            int v5_0;
            if (!p8) {
                v5_0 = v3;
            } else {
                v5_0 = ((v1 - v3) - 1);
            }
            int v0 = p7.getDuration(v5_0);
            v2[v3] = v0;
            v4 += v0;
            v3++;
        }
        this.mTotalDuration = v4;
        return v4;
    }
}
