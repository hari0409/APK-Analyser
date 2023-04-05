package androidx.appcompat.widget;
 class AppCompatHintHelper {

    private AppCompatHintHelper()
    {
        return;
    }

    static android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.InputConnection p2, android.view.inputmethod.EditorInfo p3, android.view.View p4)
    {
        if ((p2 != null) && (p3.hintText == null)) {
            android.view.ViewParent v0_0 = p4.getParent();
            while ((v0_0 instanceof android.view.View)) {
                if (!(v0_0 instanceof androidx.appcompat.widget.WithHint)) {
                    v0_0 = v0_0.getParent();
                } else {
                    p3.hintText = ((androidx.appcompat.widget.WithHint) v0_0).getHint();
                    break;
                }
            }
        }
        return p2;
    }
}
