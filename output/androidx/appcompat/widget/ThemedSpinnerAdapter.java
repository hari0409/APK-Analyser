package androidx.appcompat.widget;
public interface ThemedSpinnerAdapter implements android.widget.SpinnerAdapter {

    public abstract android.content.res.Resources$Theme getDropDownViewTheme();

    public abstract void setDropDownViewTheme();
}
