package androidx.appcompat.widget;
public class ViewUtils {
    private static final String TAG = "ViewUtils";
    private static reflect.Method sComputeFitSystemWindowsMethod;

    static ViewUtils()
    {
        if (android.os.Build$VERSION.SDK_INT >= 18) {
            try {
                Class[] v3_1 = new Class[2];
                v3_1[0] = android.graphics.Rect;
                v3_1[1] = android.graphics.Rect;
                androidx.appcompat.widget.ViewUtils.sComputeFitSystemWindowsMethod = android.view.View.getDeclaredMethod("computeFitSystemWindows", v3_1);
            } catch (NoSuchMethodException v0) {
                android.util.Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
            }
            if (!androidx.appcompat.widget.ViewUtils.sComputeFitSystemWindowsMethod.isAccessible()) {
                androidx.appcompat.widget.ViewUtils.sComputeFitSystemWindowsMethod.setAccessible(1);
            }
        }
        return;
    }

    private ViewUtils()
    {
        return;
    }

    public static void computeFitSystemWindows(android.view.View p4, android.graphics.Rect p5, android.graphics.Rect p6)
    {
        if (androidx.appcompat.widget.ViewUtils.sComputeFitSystemWindowsMethod != null) {
            try {
                String v2_2 = new Object[2];
                v2_2[0] = p5;
                v2_2[1] = p6;
                androidx.appcompat.widget.ViewUtils.sComputeFitSystemWindowsMethod.invoke(p4, v2_2);
            } catch (Exception v0) {
                android.util.Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", v0);
            }
        }
        return;
    }

    public static boolean isLayoutRtl(android.view.View p2)
    {
        int v0 = 1;
        if (androidx.core.view.ViewCompat.getLayoutDirection(p2) != 1) {
            v0 = 0;
        }
        return v0;
    }

    public static void makeOptionalFitsSystemWindows(android.view.View p5)
    {
        if (android.os.Build$VERSION.SDK_INT >= 16) {
            try {
                Class[] v4_1 = new Class[0];
                reflect.Method v1 = p5.getClass().getMethod("makeOptionalFitsSystemWindows", v4_1);
            } catch (IllegalAccessException v0) {
                android.util.Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
            } catch (IllegalAccessException v0_1) {
                android.util.Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", v0_1);
            } catch (IllegalAccessException v0_0) {
                android.util.Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", v0_0);
            }
            if (!v1.isAccessible()) {
                v1.setAccessible(1);
            }
            Object[] v2_4 = new Object[0];
            v1.invoke(p5, v2_4);
        }
        return;
    }
}
