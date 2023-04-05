package com.afwsamples.testdpc;
public final class DevicePolicyManagerGateway$FailedUserOperationException extends com.afwsamples.testdpc.DevicePolicyManagerGateway$InvalidResultException {

    public varargs DevicePolicyManagerGateway$FailedUserOperationException(int p2, String p3, Object[] p4)
    {
        super(com.afwsamples.testdpc.DevicePolicyManagerGateway$FailedUserOperationException.userStatusToString(p2), p3, p4);
        return;
    }

    private static String userStatusToString(int p2)
    {
        String v0_0;
        switch (p2) {
            case 0:
                v0_0 = "SUCCESS";
                break;
            case 1:
                v0_0 = "ERROR_UNKNOWN";
                break;
            case 2:
                v0_0 = "ERROR_MAX_MANAGED_PROFILE";
                break;
            case 3:
                v0_0 = "ERROR_MAX_RUNNING_USERS";
                break;
            case 4:
                v0_0 = "ERROR_CURRENT_USER";
                break;
            case 5:
                v0_0 = "ERROR_LOW_STORAGE";
                break;
            case 6:
                v0_0 = "ERROR_MAX_USERS";
                break;
            default:
                v0_0 = new StringBuilder().append("INVALID_STATUS:").append(p2).toString();
        }
        return v0_0;
    }
}
