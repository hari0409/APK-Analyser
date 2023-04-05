package androidx.appcompat.view;
public class ViewPropertyAnimatorCompatSet {
    final java.util.ArrayList mAnimators;
    private long mDuration;
    private android.view.animation.Interpolator mInterpolator;
    private boolean mIsStarted;
    androidx.core.view.ViewPropertyAnimatorListener mListener;
    private final androidx.core.view.ViewPropertyAnimatorListenerAdapter mProxyListener;

    public ViewPropertyAnimatorCompatSet()
    {
        this.mDuration = -1;
        this.mProxyListener = new androidx.appcompat.view.ViewPropertyAnimatorCompatSet$1(this);
        this.mAnimators = new java.util.ArrayList();
        return;
    }

    public void cancel()
    {
        if (this.mIsStarted) {
            int v1_2 = this.mAnimators.iterator();
            while (v1_2.hasNext()) {
                ((androidx.core.view.ViewPropertyAnimatorCompat) v1_2.next()).cancel();
            }
            this.mIsStarted = 0;
        }
        return;
    }

    void onAnimationsEnded()
    {
        this.mIsStarted = 0;
        return;
    }

    public androidx.appcompat.view.ViewPropertyAnimatorCompatSet play(androidx.core.view.ViewPropertyAnimatorCompat p2)
    {
        if (!this.mIsStarted) {
            this.mAnimators.add(p2);
        }
        return this;
    }

    public androidx.appcompat.view.ViewPropertyAnimatorCompatSet playSequentially(androidx.core.view.ViewPropertyAnimatorCompat p3, androidx.core.view.ViewPropertyAnimatorCompat p4)
    {
        this.mAnimators.add(p3);
        p4.setStartDelay(p3.getDuration());
        this.mAnimators.add(p4);
        return this;
    }

    public androidx.appcompat.view.ViewPropertyAnimatorCompatSet setDuration(long p2)
    {
        if (!this.mIsStarted) {
            this.mDuration = p2;
        }
        return this;
    }

    public androidx.appcompat.view.ViewPropertyAnimatorCompatSet setInterpolator(android.view.animation.Interpolator p2)
    {
        if (!this.mIsStarted) {
            this.mInterpolator = p2;
        }
        return this;
    }

    public androidx.appcompat.view.ViewPropertyAnimatorCompatSet setListener(androidx.core.view.ViewPropertyAnimatorListener p2)
    {
        if (!this.mIsStarted) {
            this.mListener = p2;
        }
        return this;
    }

    public void start()
    {
        if (!this.mIsStarted) {
            int v1_2 = this.mAnimators.iterator();
            while (v1_2.hasNext()) {
                androidx.core.view.ViewPropertyAnimatorCompat v0_1 = ((androidx.core.view.ViewPropertyAnimatorCompat) v1_2.next());
                if (this.mDuration >= 0) {
                    v0_1.setDuration(this.mDuration);
                }
                if (this.mInterpolator != null) {
                    v0_1.setInterpolator(this.mInterpolator);
                }
                if (this.mListener != null) {
                    v0_1.setListener(this.mProxyListener);
                }
                v0_1.start();
            }
            this.mIsStarted = 1;
        }
        return;
    }
}
