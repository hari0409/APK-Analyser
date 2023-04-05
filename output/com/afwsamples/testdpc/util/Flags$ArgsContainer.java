package com.afwsamples.testdpc.util;
final class Flags$ArgsContainer {
    private static final java.util.Map primitiveTypeDefaultValues;
    private final java.util.Map args;

    static Flags$ArgsContainer()
    {
        com.afwsamples.testdpc.util.Flags$ArgsContainer.primitiveTypeDefaultValues = new java.util.HashMap();
        com.afwsamples.testdpc.util.Flags$ArgsContainer.primitiveTypeDefaultValues.put(Boolean.TYPE, Boolean.valueOf(0));
        com.afwsamples.testdpc.util.Flags$ArgsContainer.primitiveTypeDefaultValues.put(Character.TYPE, Character.valueOf(0));
        com.afwsamples.testdpc.util.Flags$ArgsContainer.primitiveTypeDefaultValues.put(Float.TYPE, Float.valueOf(0));
        com.afwsamples.testdpc.util.Flags$ArgsContainer.primitiveTypeDefaultValues.put(Double.TYPE, Double.valueOf(0));
        com.afwsamples.testdpc.util.Flags$ArgsContainer.primitiveTypeDefaultValues.put(Byte.TYPE, Byte.valueOf(0));
        com.afwsamples.testdpc.util.Flags$ArgsContainer.primitiveTypeDefaultValues.put(Short.TYPE, Short.valueOf(0));
        com.afwsamples.testdpc.util.Flags$ArgsContainer.primitiveTypeDefaultValues.put(Integer.TYPE, Integer.valueOf(0));
        com.afwsamples.testdpc.util.Flags$ArgsContainer.primitiveTypeDefaultValues.put(Long.TYPE, Long.valueOf(0));
        return;
    }

    private Flags$ArgsContainer(java.util.Map p1)
    {
        this.args = p1;
        return;
    }

    synthetic Flags$ArgsContainer(java.util.Map p1, com.afwsamples.testdpc.util.Flags$1 p2)
    {
        this(p1);
        return;
    }

    static synthetic Object access$2800(com.afwsamples.testdpc.util.Flags$ArgsContainer p1, com.afwsamples.testdpc.util.Flags$Param p2)
    {
        return p1.get(p2);
    }

    private Object get(com.afwsamples.testdpc.util.Flags$Param p4)
    {
        Object v0 = this.args.get(p4);
        if (v0 == null) {
            if (!p4.acceptsMultipleValues()) {
                if (p4.dataType().isPrimitive()) {
                    v0 = com.afwsamples.testdpc.util.Flags$ArgsContainer.primitiveTypeDefaultValues.get(p4.dataType());
                }
            } else {
                v0 = reflect.Array.newInstance(p4.dataType(), 0);
            }
        }
        return v0;
    }
}
