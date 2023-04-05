package androidx.appcompat.view;
public abstract class ActionMode {
    private Object mTag;
    private boolean mTitleOptionalHint;

    public ActionMode()
    {
        return;
    }

    public abstract void finish();

    public abstract android.view.View getCustomView();

    public abstract android.view.Menu getMenu();

    public abstract android.view.MenuInflater getMenuInflater();

    public abstract CharSequence getSubtitle();

    public Object getTag()
    {
        return this.mTag;
    }

    public abstract CharSequence getTitle();

    public boolean getTitleOptionalHint()
    {
        return this.mTitleOptionalHint;
    }

    public abstract void invalidate();

    public boolean isTitleOptional()
    {
        return 0;
    }

    public boolean isUiFocusable()
    {
        return 1;
    }

    public abstract void setCustomView();

    public abstract void setSubtitle();

    public abstract void setSubtitle();

    public void setTag(Object p1)
    {
        this.mTag = p1;
        return;
    }

    public abstract void setTitle();

    public abstract void setTitle();

    public void setTitleOptionalHint(boolean p1)
    {
        this.mTitleOptionalHint = p1;
        return;
    }
}
