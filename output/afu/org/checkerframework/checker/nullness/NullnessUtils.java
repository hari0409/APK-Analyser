package afu.org.checkerframework.checker.nullness;
public final class NullnessUtils {
    static final synthetic boolean $assertionsDisabled;

    static NullnessUtils()
    {
        int v0_2;
        if (afu.org.checkerframework.checker.nullness.NullnessUtils.desiredAssertionStatus()) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        afu.org.checkerframework.checker.nullness.NullnessUtils.$assertionsDisabled = v0_2;
        return;
    }

    private NullnessUtils()
    {
        throw new AssertionError("shouldn\'t be instantiated");
    }

    public static Object castNonNull(Object p2)
    {
        if ((afu.org.checkerframework.checker.nullness.NullnessUtils.$assertionsDisabled) || (p2 != null)) {
            return p2;
        } else {
            throw new AssertionError("Misuse of castNonNull: called with a null argument");
        }
    }

    private static Object[] castNonNullArray(Object[] p3)
    {
        if ((afu.org.checkerframework.checker.nullness.NullnessUtils.$assertionsDisabled) || (p3 != null)) {
            int v0 = 0;
            while (v0 < p3.length) {
                if ((afu.org.checkerframework.checker.nullness.NullnessUtils.$assertionsDisabled) || (p3[v0] != null)) {
                    afu.org.checkerframework.checker.nullness.NullnessUtils.checkIfArray(p3[v0]);
                    v0++;
                } else {
                    throw new AssertionError("Misuse of castNonNull: called with a null array element");
                }
            }
            return ((Object[]) p3);
        } else {
            throw new AssertionError("Misuse of castNonNullArray: called with a null array argument");
        }
    }

    public static Object[] castNonNullDeep(Object[] p1)
    {
        return ((Object[]) afu.org.checkerframework.checker.nullness.NullnessUtils.castNonNullArray(p1));
    }

    public static Object[][] castNonNullDeep(Object[][] p1)
    {
        return ((Object[][]) ((Object[][]) afu.org.checkerframework.checker.nullness.NullnessUtils.castNonNullArray(p1)));
    }

    public static Object[][][] castNonNullDeep(Object[][][] p1)
    {
        return ((Object[][][]) ((Object[][][]) afu.org.checkerframework.checker.nullness.NullnessUtils.castNonNullArray(p1)));
    }

    public static Object[][][][] castNonNullDeep(Object[][][][] p1)
    {
        return ((Object[][][][]) ((Object[][][][]) afu.org.checkerframework.checker.nullness.NullnessUtils.castNonNullArray(p1)));
    }

    public static Object[][][][][] castNonNullDeep(Object[][][][][] p1)
    {
        return ((Object[][][][][]) ((Object[][][][][]) afu.org.checkerframework.checker.nullness.NullnessUtils.castNonNullArray(p1)));
    }

    private static void checkIfArray(Object p3)
    {
        if ((afu.org.checkerframework.checker.nullness.NullnessUtils.$assertionsDisabled) || (p3 != null)) {
            Class v0 = p3.getClass().getComponentType();
            if ((v0 != null) && (!v0.isPrimitive())) {
                afu.org.checkerframework.checker.nullness.NullnessUtils.castNonNullArray(((Object[]) ((Object[]) p3)));
            }
            return;
        } else {
            throw new AssertionError("Misuse of checkIfArray: called with a null argument");
        }
    }
}
