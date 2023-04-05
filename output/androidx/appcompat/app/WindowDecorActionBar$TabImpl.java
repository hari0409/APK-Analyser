package androidx.appcompat.app;
public class WindowDecorActionBar$TabImpl extends androidx.appcompat.app.ActionBar$Tab {
    private androidx.appcompat.app.ActionBar$TabListener mCallback;
    private CharSequence mContentDesc;
    private android.view.View mCustomView;
    private android.graphics.drawable.Drawable mIcon;
    private int mPosition;
    private Object mTag;
    private CharSequence mText;
    final synthetic androidx.appcompat.app.WindowDecorActionBar this$0;

    public WindowDecorActionBar$TabImpl(androidx.appcompat.app.WindowDecorActionBar p2)
    {
        this.this$0 = p2;
        this.mPosition = -1;
        return;
    }

    public androidx.appcompat.app.ActionBar$TabListener getCallback()
    {
        return this.mCallback;
    }

    public CharSequence getContentDescription()
    {
        return this.mContentDesc;
    }

    public android.view.View getCustomView()
    {
        return this.mCustomView;
    }

    public android.graphics.drawable.Drawable getIcon()
    {
        return this.mIcon;
    }

    public int getPosition()
    {
        return this.mPosition;
    }

    public Object getTag()
    {
        return this.mTag;
    }

    public CharSequence getText()
    {
        return this.mText;
    }

    public void select()
    {
        this.this$0.selectTab(this);
        return;
    }

    public androidx.appcompat.app.ActionBar$Tab setContentDescription(int p2)
    {
        return this.setContentDescription(this.this$0.mContext.getResources().getText(p2));
    }

    public androidx.appcompat.app.ActionBar$Tab setContentDescription(CharSequence p3)
    {
        this.mContentDesc = p3;
        if (this.mPosition >= 0) {
            this.this$0.mTabScrollView.updateTab(this.mPosition);
        }
        return this;
    }

    public androidx.appcompat.app.ActionBar$Tab setCustomView(int p3)
    {
        return this.setCustomView(android.view.LayoutInflater.from(this.this$0.getThemedContext()).inflate(p3, 0));
    }

    public androidx.appcompat.app.ActionBar$Tab setCustomView(android.view.View p3)
    {
        this.mCustomView = p3;
        if (this.mPosition >= 0) {
            this.this$0.mTabScrollView.updateTab(this.mPosition);
        }
        return this;
    }

    public androidx.appcompat.app.ActionBar$Tab setIcon(int p2)
    {
        return this.setIcon(androidx.appcompat.content.res.AppCompatResources.getDrawable(this.this$0.mContext, p2));
    }

    public androidx.appcompat.app.ActionBar$Tab setIcon(android.graphics.drawable.Drawable p3)
    {
        this.mIcon = p3;
        if (this.mPosition >= 0) {
            this.this$0.mTabScrollView.updateTab(this.mPosition);
        }
        return this;
    }

    public void setPosition(int p1)
    {
        this.mPosition = p1;
        return;
    }

    public androidx.appcompat.app.ActionBar$Tab setTabListener(androidx.appcompat.app.ActionBar$TabListener p1)
    {
        this.mCallback = p1;
        return this;
    }

    public androidx.appcompat.app.ActionBar$Tab setTag(Object p1)
    {
        this.mTag = p1;
        return this;
    }

    public androidx.appcompat.app.ActionBar$Tab setText(int p2)
    {
        return this.setText(this.this$0.mContext.getResources().getText(p2));
    }

    public androidx.appcompat.app.ActionBar$Tab setText(CharSequence p3)
    {
        this.mText = p3;
        if (this.mPosition >= 0) {
            this.this$0.mTabScrollView.updateTab(this.mPosition);
        }
        return this;
    }
}
