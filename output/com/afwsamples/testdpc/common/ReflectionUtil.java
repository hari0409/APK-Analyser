package com.afwsamples.testdpc.common;
public final class ReflectionUtil {
    private static final String TAG;

    static ReflectionUtil()
    {
        com.afwsamples.testdpc.common.ReflectionUtil.TAG = com.afwsamples.testdpc.common.ReflectionUtil.getSimpleName();
        return;
    }

    private ReflectionUtil()
    {
        throw new UnsupportedOperationException("provides only static methods");
    }

    static synthetic String access$100()
    {
        return com.afwsamples.testdpc.common.ReflectionUtil.TAG;
    }

    public static int intConstant(Class p4, String p5)
    {
        try {
            return p4.getField(p5).getInt(0);
        } catch (IllegalAccessException v0) {
            throw new com.afwsamples.testdpc.common.ReflectionUtil$ReflectionIsTemporaryException("Failed to retrieve constant", v0, 0);
        } catch (IllegalAccessException v0) {
        }
    }

    private static varargs Object invoke(Class p3, Object p4, String p5, Class[] p6, Object[] p7)
    {
        try {
            int v1 = p3.getMethod(p5, p6).invoke(p4, p7);
        } catch (reflect.InvocationTargetException v0) {
            com.afwsamples.testdpc.common.ReflectionUtil$ReflectionIsTemporaryException.rethrow(v0, p3, p5, p7);
            v1 = 0;
        } catch (reflect.InvocationTargetException v0) {
        } catch (reflect.InvocationTargetException v0) {
        } catch (reflect.InvocationTargetException v0) {
        } catch (reflect.InvocationTargetException v0) {
        }
        return v1;
    }

    private static varargs Object invoke(Class p3, Object p4, String p5, Object[] p6)
    {
        Class[] v1 = new Class[p6.length];
        int v0 = 0;
        while (v0 < p6.length) {
            v1[v0] = p6[v0].getClass();
            v0++;
        }
        return com.afwsamples.testdpc.common.ReflectionUtil.invoke(p3, p4, p5, v1, p6);
    }

    public static varargs Object invoke(Class p1, String p2, Class[] p3, Object[] p4)
    {
        return com.afwsamples.testdpc.common.ReflectionUtil.invoke(p1, 0, p2, p3, p4);
    }

    public static varargs Object invoke(Class p1, String p2, Object[] p3)
    {
        return com.afwsamples.testdpc.common.ReflectionUtil.invoke(p1, 0, p2, p3);
    }

    public static varargs Object invoke(Object p1, String p2, Class[] p3, Object[] p4)
    {
        return com.afwsamples.testdpc.common.ReflectionUtil.invoke(p1.getClass(), p1, p2, p3, p4);
    }

    public static varargs Object invoke(Object p1, String p2, Object[] p3)
    {
        return com.afwsamples.testdpc.common.ReflectionUtil.invoke(p1.getClass(), p1, p2, p3);
    }

    public static String stringConstant(Class p4, String p5)
    {
        try {
            return ((String) p4.getField(p5).get(0));
        } catch (IllegalAccessException v0) {
            throw new com.afwsamples.testdpc.common.ReflectionUtil$ReflectionIsTemporaryException("Failed to retrieve constant", v0, 0);
        } catch (IllegalAccessException v0) {
        }
    }
}
