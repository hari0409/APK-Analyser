package com.afwsamples.testdpc.policy.utils;
 class AttestationApplicationId$ByteArrayComparator implements java.util.Comparator {
    final synthetic com.afwsamples.testdpc.policy.utils.AttestationApplicationId this$0;

    private AttestationApplicationId$ByteArrayComparator(com.afwsamples.testdpc.policy.utils.AttestationApplicationId p1)
    {
        this.this$0 = p1;
        return;
    }

    synthetic AttestationApplicationId$ByteArrayComparator(com.afwsamples.testdpc.policy.utils.AttestationApplicationId p1, com.afwsamples.testdpc.policy.utils.AttestationApplicationId$1 p2)
    {
        this(p1);
        return;
    }

    public bridge synthetic int compare(Object p2, Object p3)
    {
        return this.compare(((byte[]) p2), ((byte[]) p3));
    }

    public int compare(byte[] p7, byte[] p8)
    {
        int v3;
        int v1 = Integer.compare(p7.length, p8.length);
        if (v1 == 0) {
            int v0 = 0;
            while (v0 < p7.length) {
                v1 = Byte.compare(p7[v0], p8[v0]);
                if (v1 == 0) {
                    v0++;
                } else {
                    v3 = v1;
                }
            }
            v3 = v1;
        } else {
            v3 = v1;
        }
        return v3;
    }
}
