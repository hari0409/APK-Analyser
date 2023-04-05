package androidx.appcompat.widget;
 class ActivityChooserView$3 extends android.view.View$AccessibilityDelegate {
    final synthetic androidx.appcompat.widget.ActivityChooserView this$0;

    ActivityChooserView$3(androidx.appcompat.widget.ActivityChooserView p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onInitializeAccessibilityNodeInfo(android.view.View p3, android.view.accessibility.AccessibilityNodeInfo p4)
    {
        super.onInitializeAccessibilityNodeInfo(p3, p4);
        androidx.core.view.accessibility.AccessibilityNodeInfoCompat.wrap(p4).setCanOpenPopup(1);
        return;
    }
}
