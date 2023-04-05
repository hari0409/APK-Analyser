package androidx.appcompat.widget;
 class RtlSpacingHelper {
    public static final int UNDEFINED = 2147483648;
    private int mEnd;
    private int mExplicitLeft;
    private int mExplicitRight;
    private boolean mIsRelative;
    private boolean mIsRtl;
    private int mLeft;
    private int mRight;
    private int mStart;

    RtlSpacingHelper()
    {
        this.mLeft = 0;
        this.mRight = 0;
        this.mStart = -2147483648;
        this.mEnd = -2147483648;
        this.mExplicitLeft = 0;
        this.mExplicitRight = 0;
        this.mIsRtl = 0;
        this.mIsRelative = 0;
        return;
    }

    public int getEnd()
    {
        int v0_1;
        if (!this.mIsRtl) {
            v0_1 = this.mRight;
        } else {
            v0_1 = this.mLeft;
        }
        return v0_1;
    }

    public int getLeft()
    {
        return this.mLeft;
    }

    public int getRight()
    {
        return this.mRight;
    }

    public int getStart()
    {
        int v0_1;
        if (!this.mIsRtl) {
            v0_1 = this.mLeft;
        } else {
            v0_1 = this.mRight;
        }
        return v0_1;
    }

    public void setAbsolute(int p3, int p4)
    {
        this.mIsRelative = 0;
        if (p3 != -2147483648) {
            this.mExplicitLeft = p3;
            this.mLeft = p3;
        }
        if (p4 != -2147483648) {
            this.mExplicitRight = p4;
            this.mRight = p4;
        }
        return;
    }

    public void setDirection(boolean p3)
    {
        if (p3 != this.mIsRtl) {
            this.mIsRtl = p3;
            if (!this.mIsRelative) {
                this.mLeft = this.mExplicitLeft;
                this.mRight = this.mExplicitRight;
            } else {
                if (!p3) {
                    int v0_2;
                    if (this.mStart == -2147483648) {
                        v0_2 = this.mExplicitLeft;
                    } else {
                        v0_2 = this.mStart;
                    }
                    int v0_4;
                    this.mLeft = v0_2;
                    if (this.mEnd == -2147483648) {
                        v0_4 = this.mExplicitRight;
                    } else {
                        v0_4 = this.mEnd;
                    }
                    this.mRight = v0_4;
                } else {
                    int v0_6;
                    if (this.mEnd == -2147483648) {
                        v0_6 = this.mExplicitLeft;
                    } else {
                        v0_6 = this.mEnd;
                    }
                    int v0_8;
                    this.mLeft = v0_6;
                    if (this.mStart == -2147483648) {
                        v0_8 = this.mExplicitRight;
                    } else {
                        v0_8 = this.mStart;
                    }
                    this.mRight = v0_8;
                }
            }
        }
        return;
    }

    public void setRelative(int p3, int p4)
    {
        this.mStart = p3;
        this.mEnd = p4;
        this.mIsRelative = 1;
        if (!this.mIsRtl) {
            if (p3 != -2147483648) {
                this.mLeft = p3;
            }
            if (p4 != -2147483648) {
                this.mRight = p4;
            }
        } else {
            if (p4 != -2147483648) {
                this.mLeft = p4;
            }
            if (p3 != -2147483648) {
                this.mRight = p3;
            }
        }
        return;
    }
}
