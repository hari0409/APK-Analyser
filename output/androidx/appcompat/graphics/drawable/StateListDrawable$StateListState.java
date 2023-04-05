package androidx.appcompat.graphics.drawable;
 class StateListDrawable$StateListState extends androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState {
    int[][] mStateSets;

    StateListDrawable$StateListState(androidx.appcompat.graphics.drawable.StateListDrawable$StateListState p2, androidx.appcompat.graphics.drawable.StateListDrawable p3, android.content.res.Resources p4)
    {
        super(p2, p3, p4);
        if (p2 == null) {
            int[][] v0_1 = new int[][super.getCapacity()];
            super.mStateSets = v0_1;
        } else {
            super.mStateSets = p2.mStateSets;
        }
        return;
    }

    int addStateSet(int[] p3, android.graphics.drawable.Drawable p4)
    {
        int v0 = this.addChild(p4);
        this.mStateSets[v0] = p3;
        return v0;
    }

    public void growArray(int p4, int p5)
    {
        super.growArray(p4, p5);
        int[][] v0 = new int[][p5];
        System.arraycopy(this.mStateSets, 0, v0, 0, p4);
        this.mStateSets = v0;
        return;
    }

    int indexOfStateSet(int[] p5)
    {
        int[][] v2 = this.mStateSets;
        int v0 = this.getChildCount();
        int v1 = 0;
        while (v1 < v0) {
            if (!android.util.StateSet.stateSetMatches(v2[v1], p5)) {
                v1++;
            }
            return v1;
        }
        v1 = -1;
        return v1;
    }

    void mutate()
    {
        int[][] v1 = new int[][this.mStateSets.length];
        int v0 = (this.mStateSets.length - 1);
        while (v0 >= 0) {
            int v2_3;
            if (this.mStateSets[v0] == null) {
                v2_3 = 0;
            } else {
                v2_3 = ((int[]) this.mStateSets[v0].clone());
            }
            v1[v0] = v2_3;
            v0--;
        }
        this.mStateSets = v1;
        return;
    }

    public android.graphics.drawable.Drawable newDrawable()
    {
        return new androidx.appcompat.graphics.drawable.StateListDrawable(this, 0);
    }

    public android.graphics.drawable.Drawable newDrawable(android.content.res.Resources p2)
    {
        return new androidx.appcompat.graphics.drawable.StateListDrawable(this, p2);
    }
}
