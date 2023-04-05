package com.afwsamples.testdpc.comp;
public abstract class IDeviceOwnerService$Stub extends android.os.Binder implements com.afwsamples.testdpc.comp.IDeviceOwnerService {
    private static final String DESCRIPTOR = "com.afwsamples.testdpc.comp.IDeviceOwnerService";
    static final int TRANSACTION_notifyUserIsUnlocked = 1;

    public IDeviceOwnerService$Stub()
    {
        this.attachInterface(this, "com.afwsamples.testdpc.comp.IDeviceOwnerService");
        return;
    }

    public static com.afwsamples.testdpc.comp.IDeviceOwnerService asInterface(android.os.IBinder p2)
    {
        com.afwsamples.testdpc.comp.IDeviceOwnerService v0_0;
        if (p2 != null) {
            com.afwsamples.testdpc.comp.IDeviceOwnerService v0_1 = p2.queryLocalInterface("com.afwsamples.testdpc.comp.IDeviceOwnerService");
            if ((v0_1 == null) || (!(v0_1 instanceof com.afwsamples.testdpc.comp.IDeviceOwnerService))) {
                v0_0 = new com.afwsamples.testdpc.comp.IDeviceOwnerService$Stub$Proxy(p2);
            } else {
                v0_0 = ((com.afwsamples.testdpc.comp.IDeviceOwnerService) v0_1);
            }
        } else {
            v0_0 = 0;
        }
        return v0_0;
    }

    public android.os.IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int p5, android.os.Parcel p6, android.os.Parcel p7, int p8)
    {
        boolean v2 = 1;
        switch (p5) {
            case 1:
                int v0_1;
                p6.enforceInterface("com.afwsamples.testdpc.comp.IDeviceOwnerService");
                if (p6.readInt() == 0) {
                    v0_1 = 0;
                } else {
                    v0_1 = ((android.os.UserHandle) android.os.UserHandle.CREATOR.createFromParcel(p6));
                }
                this.notifyUserIsUnlocked(v0_1);
                break;
            case 1598968902:
                p7.writeString("com.afwsamples.testdpc.comp.IDeviceOwnerService");
                break;
            default:
                v2 = super.onTransact(p5, p6, p7, p8);
        }
        return v2;
    }
}
