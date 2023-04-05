package androidx.appcompat.graphics.drawable;
 class AnimatedStateListDrawableCompat$AnimatedStateListState extends androidx.appcompat.graphics.drawable.StateListDrawable$StateListState {
    private static final long REVERSED_BIT = 4294967296;
    private static final long REVERSIBLE_FLAG_BIT = 8589934592;
    androidx.collection.SparseArrayCompat mStateIds;
    androidx.collection.LongSparseArray mTransitions;

    AnimatedStateListDrawableCompat$AnimatedStateListState(androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState p2, androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat p3, android.content.res.Resources p4)
    {
        super(p2, p3, p4);
        if (p2 == null) {
            super.mTransitions = new androidx.collection.LongSparseArray();
            super.mStateIds = new androidx.collection.SparseArrayCompat();
        } else {
            super.mTransitions = p2.mTransitions;
            super.mStateIds = p2.mStateIds;
        }
        return;
    }

    private static long generateTransitionKey(int p4, int p5)
    {
        return ((((long) p4) << 32) | ((long) p5));
    }

    int addStateSet(int[] p4, android.graphics.drawable.Drawable p5, int p6)
    {
        int v0 = super.addStateSet(p4, p5);
        this.mStateIds.put(v0, Integer.valueOf(p6));
        return v0;
    }

    int addTransition(int p13, int p14, android.graphics.drawable.Drawable p15, boolean p16)
    {
        int v4 = super.addChild(p15);
        long v0 = androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState.generateTransitionKey(p13, p14);
        double v6 = 0;
        if (p16) {
            v6 = 4.243991582e-314;
        }
        this.mTransitions.append(v0, Long.valueOf((((long) v4) | v6)));
        if (p16) {
            this.mTransitions.append(androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState.generateTransitionKey(p14, p13), Long.valueOf(((((long) v4) | 2.121995791e-314) | v6)));
        }
        return v4;
    }

    int getKeyframeIdAt(int p3)
    {
        int v0_0 = 0;
        if (p3 >= 0) {
            v0_0 = ((Integer) this.mStateIds.get(p3, Integer.valueOf(0))).intValue();
        }
        return v0_0;
    }

    int indexOfKeyframe(int[] p3)
    {
        int v0 = super.indexOfStateSet(p3);
        if (v0 < 0) {
            v0 = super.indexOfStateSet(android.util.StateSet.WILD_CARD);
        }
        return v0;
    }

    int indexOfTransition(int p7, int p8)
    {
        return ((int) ((Long) this.mTransitions.get(androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState.generateTransitionKey(p7, p8), Long.valueOf(-1))).longValue());
    }

    boolean isTransitionReversed(int p7, int p8)
    {
        int v2_3;
        if ((((Long) this.mTransitions.get(androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState.generateTransitionKey(p7, p8), Long.valueOf(-1))).longValue() & 2.121995791e-314) == 0) {
            v2_3 = 0;
        } else {
            v2_3 = 1;
        }
        return v2_3;
    }

    void mutate()
    {
        this.mTransitions = this.mTransitions.clone();
        this.mStateIds = this.mStateIds.clone();
        return;
    }

    public android.graphics.drawable.Drawable newDrawable()
    {
        return new androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat(this, 0);
    }

    public android.graphics.drawable.Drawable newDrawable(android.content.res.Resources p2)
    {
        return new androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat(this, p2);
    }

    boolean transitionHasReversibleFlag(int p7, int p8)
    {
        int v2_3;
        if ((((Long) this.mTransitions.get(androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState.generateTransitionKey(p7, p8), Long.valueOf(-1))).longValue() & 4.243991582e-314) == 0) {
            v2_3 = 0;
        } else {
            v2_3 = 1;
        }
        return v2_3;
    }
}
