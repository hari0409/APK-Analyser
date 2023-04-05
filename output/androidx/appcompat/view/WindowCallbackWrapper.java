package androidx.appcompat.view;
public class WindowCallbackWrapper implements android.view.Window$Callback {
    final android.view.Window$Callback mWrapped;

    public WindowCallbackWrapper(android.view.Window$Callback p3)
    {
        if (p3 != null) {
            this.mWrapped = p3;
            return;
        } else {
            throw new IllegalArgumentException("Window callback may not be null");
        }
    }

    public boolean dispatchGenericMotionEvent(android.view.MotionEvent p2)
    {
        return this.mWrapped.dispatchGenericMotionEvent(p2);
    }

    public boolean dispatchKeyEvent(android.view.KeyEvent p2)
    {
        return this.mWrapped.dispatchKeyEvent(p2);
    }

    public boolean dispatchKeyShortcutEvent(android.view.KeyEvent p2)
    {
        return this.mWrapped.dispatchKeyShortcutEvent(p2);
    }

    public boolean dispatchPopulateAccessibilityEvent(android.view.accessibility.AccessibilityEvent p2)
    {
        return this.mWrapped.dispatchPopulateAccessibilityEvent(p2);
    }

    public boolean dispatchTouchEvent(android.view.MotionEvent p2)
    {
        return this.mWrapped.dispatchTouchEvent(p2);
    }

    public boolean dispatchTrackballEvent(android.view.MotionEvent p2)
    {
        return this.mWrapped.dispatchTrackballEvent(p2);
    }

    public void onActionModeFinished(android.view.ActionMode p2)
    {
        this.mWrapped.onActionModeFinished(p2);
        return;
    }

    public void onActionModeStarted(android.view.ActionMode p2)
    {
        this.mWrapped.onActionModeStarted(p2);
        return;
    }

    public void onAttachedToWindow()
    {
        this.mWrapped.onAttachedToWindow();
        return;
    }

    public void onContentChanged()
    {
        this.mWrapped.onContentChanged();
        return;
    }

    public boolean onCreatePanelMenu(int p2, android.view.Menu p3)
    {
        return this.mWrapped.onCreatePanelMenu(p2, p3);
    }

    public android.view.View onCreatePanelView(int p2)
    {
        return this.mWrapped.onCreatePanelView(p2);
    }

    public void onDetachedFromWindow()
    {
        this.mWrapped.onDetachedFromWindow();
        return;
    }

    public boolean onMenuItemSelected(int p2, android.view.MenuItem p3)
    {
        return this.mWrapped.onMenuItemSelected(p2, p3);
    }

    public boolean onMenuOpened(int p2, android.view.Menu p3)
    {
        return this.mWrapped.onMenuOpened(p2, p3);
    }

    public void onPanelClosed(int p2, android.view.Menu p3)
    {
        this.mWrapped.onPanelClosed(p2, p3);
        return;
    }

    public void onPointerCaptureChanged(boolean p2)
    {
        this.mWrapped.onPointerCaptureChanged(p2);
        return;
    }

    public boolean onPreparePanel(int p2, android.view.View p3, android.view.Menu p4)
    {
        return this.mWrapped.onPreparePanel(p2, p3, p4);
    }

    public void onProvideKeyboardShortcuts(java.util.List p2, android.view.Menu p3, int p4)
    {
        this.mWrapped.onProvideKeyboardShortcuts(p2, p3, p4);
        return;
    }

    public boolean onSearchRequested()
    {
        return this.mWrapped.onSearchRequested();
    }

    public boolean onSearchRequested(android.view.SearchEvent p2)
    {
        return this.mWrapped.onSearchRequested(p2);
    }

    public void onWindowAttributesChanged(android.view.WindowManager$LayoutParams p2)
    {
        this.mWrapped.onWindowAttributesChanged(p2);
        return;
    }

    public void onWindowFocusChanged(boolean p2)
    {
        this.mWrapped.onWindowFocusChanged(p2);
        return;
    }

    public android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode$Callback p2)
    {
        return this.mWrapped.onWindowStartingActionMode(p2);
    }

    public android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode$Callback p2, int p3)
    {
        return this.mWrapped.onWindowStartingActionMode(p2, p3);
    }
}
