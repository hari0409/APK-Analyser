package androidx.appcompat.widget;
public class TooltipCompat {

    private TooltipCompat()
    {
        return;
    }

    public static void setTooltipText(android.view.View p2, CharSequence p3)
    {
        if (android.os.Build$VERSION.SDK_INT < 26) {
            androidx.appcompat.widget.TooltipCompatHandler.setTooltipText(p2, p3);
        } else {
            p2.setTooltipText(p3);
        }
        return;
    }
}
