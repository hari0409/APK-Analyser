package com.afwsamples.testdpc.comp;
public abstract class IProfileOwnerService$Stub extends android.os.Binder implements com.afwsamples.testdpc.comp.IProfileOwnerService {
    private static final String DESCRIPTOR = "com.afwsamples.testdpc.comp.IProfileOwnerService";
    static final int TRANSACTION_installCaCertificate = 3;
    static final int TRANSACTION_isLauncherIconHidden = 2;
    static final int TRANSACTION_setLauncherIconHidden = 1;

    public IProfileOwnerService$Stub()
    {
        this.attachInterface(this, "com.afwsamples.testdpc.comp.IProfileOwnerService");
        return;
    }

    public static com.afwsamples.testdpc.comp.IProfileOwnerService asInterface(android.os.IBinder p2)
    {
        com.afwsamples.testdpc.comp.IProfileOwnerService v0_0;
        if (p2 != null) {
            com.afwsamples.testdpc.comp.IProfileOwnerService v0_1 = p2.queryLocalInterface("com.afwsamples.testdpc.comp.IProfileOwnerService");
            if ((v0_1 == null) || (!(v0_1 instanceof com.afwsamples.testdpc.comp.IProfileOwnerService))) {
                v0_0 = new com.afwsamples.testdpc.comp.IProfileOwnerService$Stub$Proxy(p2);
            } else {
                v0_0 = ((com.afwsamples.testdpc.comp.IProfileOwnerService) v0_1);
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

    public boolean onTransact(int p7, android.os.Parcel p8, android.os.Parcel p9, int p10)
    {
        boolean v4 = 0;
        boolean v3 = 1;
        switch (p7) {
            case 1:
                int v0_2;
                p8.enforceInterface("com.afwsamples.testdpc.comp.IProfileOwnerService");
                if (p8.readInt() == 0) {
                    v0_2 = 0;
                } else {
                    v0_2 = 1;
                }
                this.setLauncherIconHidden(v0_2);
                break;
            case 2:
                p8.enforceInterface("com.afwsamples.testdpc.comp.IProfileOwnerService");
                boolean v1_1 = this.isLauncherIconHidden();
                p9.writeNoException();
                if (v1_1) {
                    v4 = 1;
                }
                p9.writeInt(v4);
                break;
            case 3:
                int v0_1;
                p8.enforceInterface("com.afwsamples.testdpc.comp.IProfileOwnerService");
                if (p8.readInt() == 0) {
                    v0_1 = 0;
                } else {
                    v0_1 = ((android.content.res.AssetFileDescriptor) android.content.res.AssetFileDescriptor.CREATOR.createFromParcel(p8));
                }
                boolean v1_0 = this.installCaCertificate(v0_1);
                p9.writeNoException();
                if (v1_0) {
                    v4 = 1;
                }
                p9.writeInt(v4);
                break;
            case 1598968902:
                p9.writeString("com.afwsamples.testdpc.comp.IProfileOwnerService");
                break;
            default:
                v3 = super.onTransact(p7, p8, p9, p10);
        }
        return v3;
    }
}
