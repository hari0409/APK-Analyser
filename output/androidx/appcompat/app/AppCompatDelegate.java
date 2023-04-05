package androidx.appcompat.app;
public abstract class AppCompatDelegate {
    public static final int FEATURE_ACTION_MODE_OVERLAY = 10;
    public static final int FEATURE_SUPPORT_ACTION_BAR = 108;
    public static final int FEATURE_SUPPORT_ACTION_BAR_OVERLAY = 109;
    public static final int MODE_NIGHT_AUTO = 0;
    public static final int MODE_NIGHT_FOLLOW_SYSTEM = 255;
    public static final int MODE_NIGHT_NO = 1;
    static final int MODE_NIGHT_UNSPECIFIED = 156;
    public static final int MODE_NIGHT_YES = 2;
    static final String TAG = "AppCompatDelegate";
    private static int sDefaultNightMode;

    static AppCompatDelegate()
    {
        androidx.appcompat.app.AppCompatDelegate.sDefaultNightMode = -1;
        return;
    }

    AppCompatDelegate()
    {
        return;
    }

    public static androidx.appcompat.app.AppCompatDelegate create(android.app.Activity p2, androidx.appcompat.app.AppCompatCallback p3)
    {
        return new androidx.appcompat.app.AppCompatDelegateImpl(p2, p2.getWindow(), p3);
    }

    public static androidx.appcompat.app.AppCompatDelegate create(android.app.Dialog p3, androidx.appcompat.app.AppCompatCallback p4)
    {
        return new androidx.appcompat.app.AppCompatDelegateImpl(p3.getContext(), p3.getWindow(), p4);
    }

    public static androidx.appcompat.app.AppCompatDelegate create(android.content.Context p1, android.view.Window p2, androidx.appcompat.app.AppCompatCallback p3)
    {
        return new androidx.appcompat.app.AppCompatDelegateImpl(p1, p2, p3);
    }

    public static int getDefaultNightMode()
    {
        return androidx.appcompat.app.AppCompatDelegate.sDefaultNightMode;
    }

    public static boolean isCompatVectorFromResourcesEnabled()
    {
        return androidx.appcompat.widget.VectorEnabledTintResources.isCompatVectorFromResourcesEnabled();
    }

    public static void setCompatVectorFromResourcesEnabled(boolean p0)
    {
        androidx.appcompat.widget.VectorEnabledTintResources.setCompatVectorFromResourcesEnabled(p0);
        return;
    }

    public static void setDefaultNightMode(int p2)
    {
        switch (p2) {
            case -1:
            case 0:
            case 1:
            case 2:
                androidx.appcompat.app.AppCompatDelegate.sDefaultNightMode = p2;
                break;
            default:
                android.util.Log.d("AppCompatDelegate", "setDefaultNightMode() called with an unknown mode");
        }
        return;
    }

    public abstract void addContentView();

    public abstract boolean applyDayNight();

    public abstract android.view.View createView();

    public abstract android.view.View findViewById();

    public abstract androidx.appcompat.app.ActionBarDrawerToggle$Delegate getDrawerToggleDelegate();

    public abstract android.view.MenuInflater getMenuInflater();

    public abstract androidx.appcompat.app.ActionBar getSupportActionBar();

    public abstract boolean hasWindowFeature();

    public abstract void installViewFactory();

    public abstract void invalidateOptionsMenu();

    public abstract boolean isHandleNativeActionModesEnabled();

    public abstract void onConfigurationChanged();

    public abstract void onCreate();

    public abstract void onDestroy();

    public abstract void onPostCreate();

    public abstract void onPostResume();

    public abstract void onSaveInstanceState();

    public abstract void onStart();

    public abstract void onStop();

    public abstract boolean requestWindowFeature();

    public abstract void setContentView();

    public abstract void setContentView();

    public abstract void setContentView();

    public abstract void setHandleNativeActionModesEnabled();

    public abstract void setLocalNightMode();

    public abstract void setSupportActionBar();

    public abstract void setTitle();

    public abstract androidx.appcompat.view.ActionMode startSupportActionMode();
}
