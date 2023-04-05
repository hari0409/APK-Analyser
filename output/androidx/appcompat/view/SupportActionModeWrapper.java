package androidx.appcompat.view;
public class SupportActionModeWrapper extends android.view.ActionMode {
    final android.content.Context mContext;
    final androidx.appcompat.view.ActionMode mWrappedObject;

    public SupportActionModeWrapper(android.content.Context p1, androidx.appcompat.view.ActionMode p2)
    {
        this.mContext = p1;
        this.mWrappedObject = p2;
        return;
    }

    public void finish()
    {
        this.mWrappedObject.finish();
        return;
    }

    public android.view.View getCustomView()
    {
        return this.mWrappedObject.getCustomView();
    }

    public android.view.Menu getMenu()
    {
        return androidx.appcompat.view.menu.MenuWrapperFactory.wrapSupportMenu(this.mContext, ((androidx.core.internal.view.SupportMenu) this.mWrappedObject.getMenu()));
    }

    public android.view.MenuInflater getMenuInflater()
    {
        return this.mWrappedObject.getMenuInflater();
    }

    public CharSequence getSubtitle()
    {
        return this.mWrappedObject.getSubtitle();
    }

    public Object getTag()
    {
        return this.mWrappedObject.getTag();
    }

    public CharSequence getTitle()
    {
        return this.mWrappedObject.getTitle();
    }

    public boolean getTitleOptionalHint()
    {
        return this.mWrappedObject.getTitleOptionalHint();
    }

    public void invalidate()
    {
        this.mWrappedObject.invalidate();
        return;
    }

    public boolean isTitleOptional()
    {
        return this.mWrappedObject.isTitleOptional();
    }

    public void setCustomView(android.view.View p2)
    {
        this.mWrappedObject.setCustomView(p2);
        return;
    }

    public void setSubtitle(int p2)
    {
        this.mWrappedObject.setSubtitle(p2);
        return;
    }

    public void setSubtitle(CharSequence p2)
    {
        this.mWrappedObject.setSubtitle(p2);
        return;
    }

    public void setTag(Object p2)
    {
        this.mWrappedObject.setTag(p2);
        return;
    }

    public void setTitle(int p2)
    {
        this.mWrappedObject.setTitle(p2);
        return;
    }

    public void setTitle(CharSequence p2)
    {
        this.mWrappedObject.setTitle(p2);
        return;
    }

    public void setTitleOptionalHint(boolean p2)
    {
        this.mWrappedObject.setTitleOptionalHint(p2);
        return;
    }
}
