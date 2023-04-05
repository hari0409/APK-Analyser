package androidx.appcompat.widget;
public class DrawableUtils {
    public static final android.graphics.Rect INSETS_NONE = None;
    private static final String TAG = "DrawableUtils";
    private static final String VECTOR_DRAWABLE_CLAZZ_NAME = "android.graphics.drawable.VectorDrawable";
    private static Class sInsetsClazz;

    static DrawableUtils()
    {
        androidx.appcompat.widget.DrawableUtils.INSETS_NONE = new android.graphics.Rect();
        if (android.os.Build$VERSION.SDK_INT >= 18) {
            try {
                androidx.appcompat.widget.DrawableUtils.sInsetsClazz = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException v0) {
            }
        }
        return;
    }

    private DrawableUtils()
    {
        return;
    }

    public static boolean canSafelyMutateDrawable(android.graphics.drawable.Drawable p8)
    {
        boolean v3_0 = 0;
        if (((android.os.Build$VERSION.SDK_INT >= 15) || (!(p8 instanceof android.graphics.drawable.InsetDrawable))) && (((android.os.Build$VERSION.SDK_INT >= 15) || (!(p8 instanceof android.graphics.drawable.GradientDrawable))) && ((android.os.Build$VERSION.SDK_INT >= 17) || (!(p8 instanceof android.graphics.drawable.LayerDrawable))))) {
            if (!(p8 instanceof android.graphics.drawable.DrawableContainer)) {
                if (!(p8 instanceof androidx.core.graphics.drawable.WrappedDrawable)) {
                    if (!(p8 instanceof androidx.appcompat.graphics.drawable.DrawableWrapper)) {
                        if ((p8 instanceof android.graphics.drawable.ScaleDrawable)) {
                            v3_0 = androidx.appcompat.widget.DrawableUtils.canSafelyMutateDrawable(((android.graphics.drawable.ScaleDrawable) p8).getDrawable());
                            return v3_0;
                        }
                    } else {
                        v3_0 = androidx.appcompat.widget.DrawableUtils.canSafelyMutateDrawable(((androidx.appcompat.graphics.drawable.DrawableWrapper) p8).getWrappedDrawable());
                        return v3_0;
                    }
                } else {
                    v3_0 = androidx.appcompat.widget.DrawableUtils.canSafelyMutateDrawable(((androidx.core.graphics.drawable.WrappedDrawable) p8).getWrappedDrawable());
                    return v3_0;
                }
            } else {
                android.graphics.drawable.Drawable$ConstantState v2 = p8.getConstantState();
                if ((v2 instanceof android.graphics.drawable.DrawableContainer$DrawableContainerState)) {
                    android.graphics.drawable.Drawable[] v5_2 = ((android.graphics.drawable.DrawableContainer$DrawableContainerState) v2).getChildren();
                    int v4_6 = 0;
                    while (v4_6 < v5_2.length) {
                        if (!androidx.appcompat.widget.DrawableUtils.canSafelyMutateDrawable(v5_2[v4_6])) {
                            return v3_0;
                        } else {
                            v4_6++;
                        }
                    }
                }
            }
            v3_0 = 1;
        }
        return v3_0;
    }

    static void fixDrawable(android.graphics.drawable.Drawable p2)
    {
        if ((android.os.Build$VERSION.SDK_INT == 21) && ("android.graphics.drawable.VectorDrawable".equals(p2.getClass().getName()))) {
            androidx.appcompat.widget.DrawableUtils.fixVectorDrawableTinting(p2);
        }
        return;
    }

    private static void fixVectorDrawableTinting(android.graphics.drawable.Drawable p2)
    {
        int[] v0 = p2.getState();
        if ((v0 != null) && (v0.length != 0)) {
            p2.setState(androidx.appcompat.widget.ThemeUtils.EMPTY_STATE_SET);
        } else {
            p2.setState(androidx.appcompat.widget.ThemeUtils.CHECKED_STATE_SET);
        }
        p2.setState(v0);
        return;
    }

    public static android.graphics.Rect getOpticalBounds(android.graphics.drawable.Drawable p12)
    {
        android.graphics.Rect v4_1;
        if (androidx.appcompat.widget.DrawableUtils.sInsetsClazz == null) {
            v4_1 = androidx.appcompat.widget.DrawableUtils.INSETS_NONE;
        } else {
            try {
                android.graphics.drawable.Drawable v12_1 = androidx.core.graphics.drawable.DrawableCompat.unwrap(p12);
                reflect.Field[] v8_2 = new Class[0];
                int v5_2 = new Object[0];
                Object v3 = v12_1.getClass().getMethod("getOpticalInsets", v8_2).invoke(v12_1, v5_2);
            } catch (Exception v0) {
                android.util.Log.e("DrawableUtils", "Couldn\'t obtain the optical insets. Ignoring.");
            }
            if (v3 == null) {
            } else {
                v4_1 = new android.graphics.Rect();
                reflect.Field[] v8_0 = androidx.appcompat.widget.DrawableUtils.sInsetsClazz.getFields();
                int v9 = v8_0.length;
                int v7_0 = 0;
                while (v7_0 < v9) {
                    reflect.Field v1 = v8_0[v7_0];
                    boolean v10_0 = v1.getName();
                    int v5_4 = -1;
                    switch (v10_0.hashCode()) {
                        case -1383228885:
                            if (!v10_0.equals("bottom")) {
                            } else {
                                v5_4 = 3;
                            }
                            break;
                        case 115029:
                            if (!v10_0.equals("top")) {
                            } else {
                                v5_4 = 1;
                            }
                            break;
                        case 3317767:
                            if (!v10_0.equals("left")) {
                            } else {
                                v5_4 = 0;
                            }
                            break;
                        case 108511772:
                            if (!v10_0.equals("right")) {
                            } else {
                                v5_4 = 2;
                            }
                            break;
                    }
                    switch (v5_4) {
                        case 0:
                            v4_1.left = v1.getInt(v3);
                            break;
                        case 1:
                            v4_1.top = v1.getInt(v3);
                            break;
                        case 2:
                            v4_1.right = v1.getInt(v3);
                            break;
                        case 3:
                            v4_1.bottom = v1.getInt(v3);
                            break;
                    }
                    v7_0++;
                }
            }
        }
        return v4_1;
    }

    public static android.graphics.PorterDuff$Mode parseTintMode(int p0, android.graphics.PorterDuff$Mode p1)
    {
        switch (p0) {
            case 3:
                p1 = android.graphics.PorterDuff$Mode.SRC_OVER;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            default:
                break;
            case 5:
                p1 = android.graphics.PorterDuff$Mode.SRC_IN;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            case 9:
                p1 = android.graphics.PorterDuff$Mode.SRC_ATOP;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            case 14:
                p1 = android.graphics.PorterDuff$Mode.MULTIPLY;
                break;
            case 15:
                p1 = android.graphics.PorterDuff$Mode.SCREEN;
                break;
            case 16:
                p1 = android.graphics.PorterDuff$Mode.ADD;
                break;
        }
        return p1;
    }
}
