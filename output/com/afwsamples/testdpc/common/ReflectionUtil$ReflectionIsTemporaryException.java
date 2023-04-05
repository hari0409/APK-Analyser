package com.afwsamples.testdpc.common;
public final class ReflectionUtil$ReflectionIsTemporaryException extends java.lang.Exception {
    private static final long serialVersionUID = 1;

    private ReflectionUtil$ReflectionIsTemporaryException(String p1, Throwable p2)
    {
        super(p1, p2);
        return;
    }

    synthetic ReflectionUtil$ReflectionIsTemporaryException(String p1, Throwable p2, com.afwsamples.testdpc.common.ReflectionUtil$1 p3)
    {
        this(p1, p2);
        return;
    }

    public static varargs void rethrow(Exception p5, Class p6, String p7, Object[] p8)
    {
        com.afwsamples.testdpc.common.ReflectionUtil$ReflectionIsTemporaryException v2_4;
        String v3_1 = new StringBuilder().append(p6.getSimpleName()).append(".").append(p7).append("(");
        if ((p8 != null) && (p8.length != 0)) {
            v2_4 = java.util.Arrays.toString(p8);
        } else {
            v2_4 = "";
        }
        String v1 = v3_1.append(v2_4).append(")").toString();
        android.util.Log.w(com.afwsamples.testdpc.common.ReflectionUtil.access$100(), new StringBuilder().append("Exception calling method ").append(v1).append(":").toString(), p5);
        if ((p5 instanceof reflect.InvocationTargetException)) {
            RuntimeException v0_0 = p5.getCause();
            if ((v0_0 instanceof RuntimeException)) {
                throw ((RuntimeException) v0_0);
            }
        }
        throw new com.afwsamples.testdpc.common.ReflectionUtil$ReflectionIsTemporaryException(new StringBuilder().append("Failed to invoke ").append(v1).toString(), p5);
    }
}
