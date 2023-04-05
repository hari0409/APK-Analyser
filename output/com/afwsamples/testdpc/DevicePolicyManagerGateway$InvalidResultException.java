package com.afwsamples.testdpc;
public class DevicePolicyManagerGateway$InvalidResultException extends java.lang.Exception {
    private final String mMethod;
    private final String mResult;

    public varargs DevicePolicyManagerGateway$InvalidResultException(String p2, String p3, Object[] p4)
    {
        this.mResult = p2;
        this.mMethod = String.format(p3, p4);
        return;
    }

    public String toString()
    {
        return new StringBuilder().append("DPM.").append(this.mMethod).append(" returned ").append(this.mResult).toString();
    }
}
