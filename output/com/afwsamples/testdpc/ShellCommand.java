package com.afwsamples.testdpc;
final class ShellCommand {
    private static final String TAG = "TestDPCShellCommand";
    private final String[] mArgs;
    private final android.content.Context mContext;
    private final com.afwsamples.testdpc.DevicePolicyManagerGateway mDevicePolicyManagerGateway;
    private final java.io.PrintWriter mWriter;

    public ShellCommand(android.content.Context p4, java.io.PrintWriter p5, String[] p6)
    {
        this.mContext = p4;
        this.mWriter = p5;
        this.mArgs = p6;
        this.mDevicePolicyManagerGateway = new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl(p4);
        android.util.Log.d("TestDPCShellCommand", new StringBuilder().append("args=").append(java.util.Arrays.toString(p6)).toString());
        return;
    }

    private void clearDeviceOwner()
    {
        android.util.Log.i("TestDPCShellCommand", "clearDeviceOwner()");
        String v0 = this.mDevicePolicyManagerGateway.getAdmin().getPackageName();
        this.mDevicePolicyManagerGateway.clearDeviceOwnerApp(new com.afwsamples.testdpc.ShellCommand$$Lambda$94(this, v0), new com.afwsamples.testdpc.ShellCommand$$Lambda$95(this, v0));
        return;
    }

    private void clearDeviceOwnerLockScreenInfo()
    {
        this.setDeviceOwnerLockScreenInfo("");
        return;
    }

    private void clearOrganizationName()
    {
        this.setOrganizationName("");
        return;
    }

    private void clearProfileOwner()
    {
        android.util.Log.i("TestDPCShellCommand", "clearProfileOwner()");
        String v0 = this.mDevicePolicyManagerGateway.getAdmin().getPackageName();
        this.mDevicePolicyManagerGateway.clearProfileOwner(new com.afwsamples.testdpc.ShellCommand$$Lambda$96(this, v0), new com.afwsamples.testdpc.ShellCommand$$Lambda$97(this, v0));
        return;
    }

    private void createUser(String p4, int p5)
    {
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("createUser(): name=").append(p4).append(", flags=").append(p5).toString());
        this.mDevicePolicyManagerGateway.createAndManageUser(p4, p5, new com.afwsamples.testdpc.ShellCommand$$Lambda$61(this), new com.afwsamples.testdpc.ShellCommand$$Lambda$62(this, p4));
        return;
    }

    private void dumpState()
    {
        java.io.PrintWriter v0_1 = this.mWriter;
        Object[] v2_3 = new Object[1];
        v2_3[0] = Boolean.valueOf(this.mDevicePolicyManagerGateway.isDeviceOwnerApp());
        v0_1.printf("isDeviceOwner: %b\n", v2_3);
        java.io.PrintWriter v0_0 = this.mWriter;
        Object[] v2_0 = new Object[1];
        v2_0[0] = Boolean.valueOf(this.mDevicePolicyManagerGateway.isProfileOwnerApp());
        v0_0.printf("isProfileOwner: %b\n", v2_0);
        java.io.PrintWriter v0_2 = this.mWriter;
        Object[] v2_1 = new Object[1];
        v2_1[0] = Boolean.valueOf(this.mDevicePolicyManagerGateway.isOrganizationOwnedDeviceWithManagedProfile());
        v0_2.printf("isOrganizationOwnedDeviceWithManagedProfile: %b\n", v2_1);
        if (com.afwsamples.testdpc.common.Util.isAtLeastS()) {
            java.io.PrintWriter v0_4 = this.mWriter;
            Object[] v2_2 = new Object[1];
            v2_2[0] = Boolean.valueOf(this.mDevicePolicyManagerGateway.isHeadlessSystemUserMode());
            v0_4.printf("isHeadlessSystemUserMode: %b\n", v2_2);
            java.io.PrintWriter v0_5 = this.mWriter;
            Object[] v2_4 = new Object[1];
            v2_4[0] = Boolean.valueOf(this.mDevicePolicyManagerGateway.isUserForeground());
            v0_5.printf("isUserForeground: %b\n", v2_4);
        }
        return;
    }

    private void enableSystemApp(String p4)
    {
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("enableSystemApp(): ").append(p4).toString());
        this.mDevicePolicyManagerGateway.enableSystemApp(p4, new com.afwsamples.testdpc.ShellCommand$$Lambda$113(this, p4), new com.afwsamples.testdpc.ShellCommand$$Lambda$114(this, p4));
        return;
    }

    private void getAffiliationIds()
    {
        java.util.Set v0 = this.mDevicePolicyManagerGateway.getAffiliationIds();
        if (!v0.isEmpty()) {
            java.io.PrintWriter v1_3 = this.mWriter;
            Object[] v3_1 = new Object[2];
            v3_1[0] = Integer.valueOf(v0.size());
            v3_1[1] = v0;
            v1_3.printf("%d affiliation ids: %s\n", v3_1);
        } else {
            this.mWriter.println("no affiliation ids");
        }
        return;
    }

    private void getAppRestrictions(String[] p6)
    {
        if (p6.length != 1) {
            int v3_2 = p6.length;
            int v2_1 = 0;
            while (v2_1 < v3_2) {
                String v0 = p6[v2_1];
                this.printAppRestrictions(v0, "DevicePolicyManager", this.mDevicePolicyManagerGateway.getApplicationRestrictions(v0));
                v2_1++;
            }
        } else {
            this.printAppRestrictions(this.mContext.getPackageName(), "UserManager", this.mDevicePolicyManagerGateway.getSelfRestrictions());
        }
        return;
    }

    private void getDeviceOwnerLockScreenInfo()
    {
        java.io.PrintWriter v1_1 = this.mWriter;
        Object[] v3_1 = new Object[1];
        v3_1[0] = this.mDevicePolicyManagerGateway.getDeviceOwnerLockScreenInfo();
        v1_1.printf("Lock screen info: %s\n", v3_1);
        return;
    }

    private void getKeyguardDisabledFeatures()
    {
        int v1 = this.mDevicePolicyManagerGateway.getKeyguardDisabledFeatures();
        java.io.PrintWriter v2_1 = this.mWriter;
        Object[] v4_1 = new Object[2];
        v4_1[0] = com.afwsamples.testdpc.common.Util.keyguardDisabledFeaturesToString(v1);
        v4_1[1] = Integer.valueOf(v1);
        v2_1.printf("%s (%d)\n", v4_1);
        return;
    }

    private void getLockTaskFeatures()
    {
        int v1 = this.mDevicePolicyManagerGateway.getLockTaskFeatures();
        java.io.PrintWriter v2_1 = this.mWriter;
        Object[] v4_1 = new Object[2];
        v4_1[0] = com.afwsamples.testdpc.common.Util.lockTaskFeaturesToString(v1);
        v4_1[1] = Integer.valueOf(v1);
        v2_1.printf("%s (%d)\n", v4_1);
        return;
    }

    private void getLockTaskPackages()
    {
        String[] v0 = this.mDevicePolicyManagerGateway.getLockTaskPackages();
        if (v0.length != 0) {
            this.mWriter.println(java.util.Arrays.toString(v0));
        } else {
            this.mWriter.println("no lock task packages");
        }
        return;
    }

    private java.util.Set getOrderedSortedSet(String[] p3)
    {
        return new java.util.LinkedHashSet(java.util.Arrays.asList(p3));
    }

    private void getOrganizationName()
    {
        CharSequence v0 = this.mDevicePolicyManagerGateway.getOrganizationName();
        if (v0 != null) {
            this.mWriter.println(v0);
        } else {
            this.mWriter.println("Not set");
        }
        return;
    }

    private void getPasswordQuality()
    {
        int v0 = this.mDevicePolicyManagerGateway.getPasswordQuality();
        java.io.PrintWriter v1_1 = this.mWriter;
        Object[] v3_1 = new Object[2];
        v3_1[0] = com.afwsamples.testdpc.common.Util.passwordQualityToString(v0);
        v3_1[1] = Integer.valueOf(v0);
        v1_1.printf("%s (%d)\n", v3_1);
        return;
    }

    private void getPermissionGrantState(String p7, String p8)
    {
        int v0 = this.mDevicePolicyManagerGateway.getPermissionGrantState(p7, p8);
        java.io.PrintWriter v1_1 = this.mWriter;
        Object[] v3_1 = new Object[3];
        v3_1[0] = p8;
        v3_1[1] = p7;
        v3_1[2] = com.afwsamples.testdpc.common.Util.grantStateToString(v0);
        v1_1.printf("%s state for %s: %s\n", v3_1);
        return;
    }

    private void getPersonalAppsSuspendedReasons()
    {
        int v1 = this.mDevicePolicyManagerGateway.getPersonalAppsSuspendedReasons();
        java.io.PrintWriter v2_1 = this.mWriter;
        Object[] v4_1 = new Object[2];
        v4_1[0] = com.afwsamples.testdpc.common.Util.personalAppsSuspensionReasonToString(v1);
        v4_1[1] = Integer.valueOf(v1);
        v2_1.printf("%s (%d)\n", v4_1);
        return;
    }

    private void getRequiredPasswordComplexity()
    {
        int v0 = this.mDevicePolicyManagerGateway.getRequiredPasswordComplexity();
        java.io.PrintWriter v1_1 = this.mWriter;
        Object[] v3_1 = new Object[2];
        v3_1[0] = com.afwsamples.testdpc.common.Util.requiredPasswordComplexityToString(v0);
        v3_1[1] = Integer.valueOf(v0);
        v1_1.printf("%s (%d)\n", v3_1);
        return;
    }

    private void getUserControlDisabledPackages()
    {
        java.util.List v0 = this.mDevicePolicyManagerGateway.getUserControlDisabledPackages();
        java.util.function.Consumer v1_1 = this.mWriter;
        v1_1.getClass();
        v0.forEach(com.afwsamples.testdpc.ShellCommand$$Lambda$91.get$Lambda(v1_1));
        return;
    }

    private static String hiddenToString(boolean p1)
    {
        String v0;
        if (!p1) {
            v0 = "VISIBLE";
        } else {
            v0 = "HIDDEN";
        }
        return v0;
    }

    private void isForegroundUser()
    {
        this.mWriter.println(this.mDevicePolicyManagerGateway.isUserForeground());
        return;
    }

    private void isHiddenPackage(String p10)
    {
        try {
            boolean v1 = this.mDevicePolicyManagerGateway.isApplicationHidden(p10);
            java.io.PrintWriter v2_2 = this.mWriter;
            Object[] v4_2 = new Object[2];
            v4_2[0] = p10;
            v4_2[1] = com.afwsamples.testdpc.ShellCommand.hiddenToString(v1);
            v2_2.printf("%s: %s\n", v4_2);
        } catch (android.content.pm.PackageManager$NameNotFoundException v0) {
            java.io.PrintWriter v2_0 = this.mWriter;
            Object[] v4_0 = new Object[1];
            v4_0[0] = p10;
            v2_0.printf("Invalid package name: %s\n", v4_0);
        }
        return;
    }

    private void isLocationEnabled()
    {
        java.io.PrintWriter v1_1 = this.mWriter;
        Object[] v3_1 = new Object[1];
        v3_1[0] = Boolean.valueOf(this.mDevicePolicyManagerGateway.isLocationEnabled());
        v1_1.printf("Location enabled: %b\n", v3_1);
        return;
    }

    private void isLockTaskPermitted(String[] p11)
    {
        int v4 = p11.length;
        int v2 = 0;
        while (v2 < v4) {
            String v0 = p11[v2];
            boolean v1 = this.mDevicePolicyManagerGateway.isLockTaskPermitted(v0);
            java.io.PrintWriter v5_1 = this.mWriter;
            Object[] v7_1 = new Object[2];
            v7_1[0] = v0;
            v7_1[1] = com.afwsamples.testdpc.ShellCommand.permittedToString(v1);
            v5_1.printf("%s: %s\n", v7_1);
            v2++;
        }
        return;
    }

    private void isSuspendedPackage(String[] p13)
    {
        int v5 = p13.length;
        int v3 = 0;
        while (v3 < v5) {
            String v1 = p13[v3];
            try {
                boolean v2 = this.mDevicePolicyManagerGateway.isPackageSuspended(v1);
                java.io.PrintWriter v6_0 = this.mWriter;
                Object[] v8_1 = new Object[2];
                v8_1[0] = v1;
                v8_1[1] = com.afwsamples.testdpc.ShellCommand.suspendedToString(v2);
                v6_0.printf("%s: %s\n", v8_1);
            } catch (android.content.pm.PackageManager$NameNotFoundException v0) {
                java.io.PrintWriter v6_1 = this.mWriter;
                Object[] v8_2 = new Object[1];
                v8_2[0] = v1;
                v6_1.printf("Invalid package name: %s\n", v8_2);
            }
            v3++;
        }
        return;
    }

    private void isUserAffiliated()
    {
        this.mWriter.println(this.mDevicePolicyManagerGateway.isAffiliatedUser());
        return;
    }

    static final synthetic com.afwsamples.testdpc.util.Flags$Validator$ValidationResult lambda$run$23$ShellCommand(String p6, com.afwsamples.testdpc.util.Flags$Validator p7)
    {
        com.afwsamples.testdpc.util.Flags$Validator$ValidationResult v1_1;
        if (!p6.contains("=")) {
            String v2_2 = new Object[1];
            v2_2[0] = p6;
            v1_1 = p7.invalid(String.format("Key-value type must contain \'=\' separator, found only: \'%s\'.", v2_2));
        } else {
            com.afwsamples.testdpc.util.Flags$Validator$ValidationResult v1_4;
            String[] v0 = p6.split("=");
            if (v0.length <= 0) {
                v1_4 = "";
            } else {
                v1_4 = v0[0];
            }
            String v2_1;
            if (v0.length <= 1) {
                v2_1 = "";
            } else {
                v2_1 = v0[1];
            }
            v1_1 = p7.valid(new com.afwsamples.testdpc.ShellCommand$KeyValue(v1_4, v2_1, 0));
        }
        return v1_1;
    }

    private void listDisabledSystemApps()
    {
        java.util.List v0 = this.mDevicePolicyManagerGateway.getDisabledSystemApps();
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("listDisabledSystemApps(): ").append(v0).toString());
        this.printCollection("disabled system app", v0);
        return;
    }

    private void listForegroundUsers()
    {
        java.util.List v1 = this.mDevicePolicyManagerGateway.listForegroundAffiliatedUsers();
        if (!v1.isEmpty()) {
            com.afwsamples.testdpc.ShellCommand$$Lambda$98 v2_3;
            int v0 = v1.size();
            java.io.PrintWriter v3_1 = this.mWriter;
            Object[] v5 = new Object[2];
            v5[0] = Integer.valueOf(v0);
            if (v0 <= 1) {
                v2_3 = "";
            } else {
                v2_3 = "s";
            }
            v5[1] = v2_3;
            v3_1.printf("%d user%s:\n", v5);
            v1.forEach(new com.afwsamples.testdpc.ShellCommand$$Lambda$98(this));
        } else {
            this.mWriter.println("none");
        }
        return;
    }

    private void listUserRestrictions()
    {
        android.util.Log.i("TestDPCShellCommand", "listUserRestrictions()");
        this.printCollection("user restriction", this.mDevicePolicyManagerGateway.getUserRestrictions());
        return;
    }

    private void lockNow(Integer p5)
    {
        if (p5 != null) {
            android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("lockNow(").append(p5).append(")").toString());
            this.mDevicePolicyManagerGateway.lockNow(p5.intValue(), new com.afwsamples.testdpc.ShellCommand$$Lambda$77(this), new com.afwsamples.testdpc.ShellCommand$$Lambda$78(this));
        } else {
            android.util.Log.i("TestDPCShellCommand", "lockNow()");
            this.mDevicePolicyManagerGateway.lockNow(new com.afwsamples.testdpc.ShellCommand$$Lambda$75(this), new com.afwsamples.testdpc.ShellCommand$$Lambda$76(this));
        }
        return;
    }

    private varargs void onError(Exception p6, String p7, Object[] p8)
    {
        String v0 = String.format(p7, p8);
        android.util.Log.e("TestDPCShellCommand", v0, p6);
        java.io.PrintWriter v1_1 = this.mWriter;
        Object[] v3_1 = new Object[2];
        v3_1[0] = v0;
        v3_1[1] = p6;
        v1_1.printf("%s: %s\n", v3_1);
        return;
    }

    private varargs void onSuccess(String p3, Object[] p4)
    {
        String v0 = String.format(p3, p4);
        android.util.Log.d("TestDPCShellCommand", v0);
        this.mWriter.println(v0);
        return;
    }

    private static String permittedToString(boolean p1)
    {
        String v0;
        if (!p1) {
            v0 = "NOT PERMITTED";
        } else {
            v0 = "PERMITTED";
        }
        return v0;
    }

    private void printAppRestrictions(String p12, String p13, android.os.Bundle p14)
    {
        if ((p14 != null) && (!p14.isEmpty())) {
            String v1;
            int v2 = p14.size();
            if (v2 <= 1) {
                v1 = "";
            } else {
                v1 = "s";
            }
            java.util.Iterator v4_0 = this.mWriter;
            String v6_1 = new Object[4];
            v6_1[0] = Integer.valueOf(v2);
            v6_1[1] = v1;
            v6_1[2] = p13;
            v6_1[3] = p12;
            v4_0.printf("%d app restriction%s%s for %s\n", v6_1);
            java.util.Iterator v4_2 = p14.keySet().iterator();
            while (v4_2.hasNext()) {
                String v0_1 = ((String) v4_2.next());
                Object v3 = p14.get(v0_1);
                java.io.PrintWriter v5_2 = this.mWriter;
                Object[] v7_2 = new Object[2];
                v7_2[0] = v0_1;
                v7_2[1] = v3;
                v5_2.printf("  %s = %s\n", v7_2);
            }
        } else {
            java.util.Iterator v4_3 = this.mWriter;
            String v6_3 = new Object[2];
            v6_3[0] = p13;
            v6_3[1] = p12;
            v4_3.printf("No app restrictions (from %s) for %s\n", v6_3);
        }
        return;
    }

    private void printCollection(String p8, java.util.Collection p9)
    {
        if (!p9.isEmpty()) {
            com.afwsamples.testdpc.ShellCommand$$Lambda$131 v1_1;
            int v0 = p9.size();
            java.io.PrintWriter v2_1 = this.mWriter;
            Object[] v4 = new Object[3];
            v4[0] = Integer.valueOf(v0);
            v4[1] = p8;
            if (v0 != 1) {
                v1_1 = "s";
            } else {
                v1_1 = "";
            }
            v4[2] = v1_1;
            v2_1.printf("%d %s%s:\n", v4);
            p9.forEach(new com.afwsamples.testdpc.ShellCommand$$Lambda$131(this));
        } else {
            com.afwsamples.testdpc.ShellCommand$$Lambda$131 v1_4 = this.mWriter;
            String v3_0 = new Object[1];
            v3_0[0] = p8;
            v1_4.printf("No %ss\n", v3_0);
        }
        return;
    }

    private void reboot()
    {
        android.util.Log.i("TestDPCShellCommand", "reboot()");
        this.mDevicePolicyManagerGateway.reboot(new com.afwsamples.testdpc.ShellCommand$$Lambda$79(this), new com.afwsamples.testdpc.ShellCommand$$Lambda$80(this));
        return;
    }

    private void removeActiveAdmin()
    {
        android.util.Log.i("TestDPCShellCommand", "removeActiveAdmin()");
        android.content.ComponentName v0 = this.mDevicePolicyManagerGateway.getAdmin();
        this.mDevicePolicyManagerGateway.removeActiveAdmin(new com.afwsamples.testdpc.ShellCommand$$Lambda$92(this, v0), new com.afwsamples.testdpc.ShellCommand$$Lambda$93(this, v0));
        return;
    }

    private void removeUser(android.os.UserHandle p4)
    {
        this.mDevicePolicyManagerGateway.removeUser(p4, new com.afwsamples.testdpc.ShellCommand$$Lambda$65(this, p4), new com.afwsamples.testdpc.ShellCommand$$Lambda$66(this, p4));
        return;
    }

    private void requestBugreport()
    {
        android.util.Log.i("TestDPCShellCommand", "requestBugreport()");
        this.mDevicePolicyManagerGateway.requestBugreport(new com.afwsamples.testdpc.ShellCommand$$Lambda$83(this), new com.afwsamples.testdpc.ShellCommand$$Lambda$84(this));
        return;
    }

    private void setAffiliationIds(String[] p5)
    {
        java.util.Set v0 = this.getOrderedSortedSet(p5);
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("setAffiliationIds(): ids=").append(v0).toString());
        this.mDevicePolicyManagerGateway.setAffiliationIds(v0);
        this.getAffiliationIds();
        return;
    }

    private void setAppRestrictions(String p7, com.afwsamples.testdpc.ShellCommand$KeyValue[] p8)
    {
        android.os.Bundle v1_1 = new android.os.Bundle();
        com.afwsamples.testdpc.ShellCommand$$Lambda$119 v3_0 = p8.length;
        com.afwsamples.testdpc.DevicePolicyManagerGateway v2_0 = 0;
        while (v2_0 < v3_0) {
            com.afwsamples.testdpc.ShellCommand$KeyValue v0 = p8[v2_0];
            v1_1.putString(com.afwsamples.testdpc.ShellCommand$KeyValue.access$000(v0), com.afwsamples.testdpc.ShellCommand$KeyValue.access$100(v0));
            v2_0++;
        }
        this.mDevicePolicyManagerGateway.setApplicationRestrictions(p7, v1_1, new com.afwsamples.testdpc.ShellCommand$$Lambda$119(this, v1_1, p7), new com.afwsamples.testdpc.ShellCommand$$Lambda$120(this, p7));
        return;
    }

    private void setDeviceOwnerLockScreenInfo(String p4)
    {
        this.mDevicePolicyManagerGateway.setDeviceOwnerLockScreenInfo(p4, new com.afwsamples.testdpc.ShellCommand$$Lambda$125(this, p4), new com.afwsamples.testdpc.ShellCommand$$Lambda$126(this, p4));
        return;
    }

    private void setHiddenPackage(String p5, boolean p6)
    {
        String v0 = com.afwsamples.testdpc.ShellCommand.hiddenToString(p6);
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("setHiddenPackages(").append(p5).append("): ").append(v0).toString());
        this.mDevicePolicyManagerGateway.setApplicationHidden(p5, p6, new com.afwsamples.testdpc.ShellCommand$$Lambda$109(this, p5, v0), new com.afwsamples.testdpc.ShellCommand$$Lambda$110(this, p5, v0));
        return;
    }

    private void setKeyguardDisabled(boolean p4)
    {
        this.mDevicePolicyManagerGateway.setKeyguardDisabled(p4, new com.afwsamples.testdpc.ShellCommand$$Lambda$127(this, p4), new com.afwsamples.testdpc.ShellCommand$$Lambda$128(this, p4));
        return;
    }

    private void setKeyguardDisabledFeatures(int p5)
    {
        String v0 = com.afwsamples.testdpc.common.Util.keyguardDisabledFeaturesToString(p5);
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("setKeyguardDisabledFeatures(").append(p5).append("): setting to ").append(v0).toString());
        this.mDevicePolicyManagerGateway.setKeyguardDisabledFeatures(p5, new com.afwsamples.testdpc.ShellCommand$$Lambda$129(this, v0), new com.afwsamples.testdpc.ShellCommand$$Lambda$130(this, v0));
        return;
    }

    private void setLocationEnabled(boolean p4)
    {
        this.mDevicePolicyManagerGateway.setLocationEnabled(p4, new com.afwsamples.testdpc.ShellCommand$$Lambda$123(this, p4), new com.afwsamples.testdpc.ShellCommand$$Lambda$124(this, p4));
        return;
    }

    private void setLockTaskFeatures(int p5)
    {
        String v0 = com.afwsamples.testdpc.common.Util.lockTaskFeaturesToString(p5);
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("setLockTaskFeatures(").append(p5).append("): setting to ").append(v0).toString());
        this.mDevicePolicyManagerGateway.setLockTaskFeatures(p5, new com.afwsamples.testdpc.ShellCommand$$Lambda$117(this, v0), new com.afwsamples.testdpc.ShellCommand$$Lambda$118(this, v0));
        return;
    }

    private void setLockTaskPackages(String[] p5)
    {
        String v0 = java.util.Arrays.toString(p5);
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("setLockTaskPackages(): ").append(v0).toString());
        this.mDevicePolicyManagerGateway.setLockTaskPackages(p5, new com.afwsamples.testdpc.ShellCommand$$Lambda$115(this, v0), new com.afwsamples.testdpc.ShellCommand$$Lambda$116(this, v0));
        return;
    }

    private void setNetworkLogging(boolean p4)
    {
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("setNetworkLogging(").append(p4).append(")").toString());
        this.mDevicePolicyManagerGateway.setNetworkLogging(p4, new com.afwsamples.testdpc.ShellCommand$$Lambda$85(this, p4), new com.afwsamples.testdpc.ShellCommand$$Lambda$86(this, p4));
        return;
    }

    private void setOrganizationName(String p4)
    {
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("setOrganizationName(").append(p4).append(")").toString());
        this.mDevicePolicyManagerGateway.setOrganizationName(p4, new com.afwsamples.testdpc.ShellCommand$$Lambda$87(this, p4), new com.afwsamples.testdpc.ShellCommand$$Lambda$88(this, p4));
        return;
    }

    private void setPasswordQuality(int p5)
    {
        String v0 = com.afwsamples.testdpc.common.Util.passwordQualityToString(p5);
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("setPasswordQuality(").append(p5).append("/").append(v0).append(")").toString());
        this.mDevicePolicyManagerGateway.setPasswordQuality(p5, new com.afwsamples.testdpc.ShellCommand$$Lambda$99(this, v0, p5), new com.afwsamples.testdpc.ShellCommand$$Lambda$100(this, v0, p5));
        return;
    }

    private void setPermissionGrantState(String p8, String p9, int p10)
    {
        String v6 = com.afwsamples.testdpc.common.Util.grantStateToString(p10);
        this.mDevicePolicyManagerGateway.setPermissionGrantState(p8, p9, p10, new com.afwsamples.testdpc.ShellCommand$$Lambda$121(this, p9, p8, v6), new com.afwsamples.testdpc.ShellCommand$$Lambda$122(this, p8, p9, v6));
        return;
    }

    private void setPermittedInputMethodsOnParent(String[] p6)
    {
        java.util.List v0 = java.util.Arrays.asList(p6);
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("setPermittedInputMethodsOnParent(").append(v0).append(")").toString());
        com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.forParentProfile(this.mContext).setPermittedInputMethods(v0);
        return;
    }

    private void setPersonalAppsSuspended(boolean p5)
    {
        String v0 = com.afwsamples.testdpc.ShellCommand.suspendedToString(p5);
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("setPersonalAppsSuspended(): ").append(v0).toString());
        this.mDevicePolicyManagerGateway.setPersonalAppsSuspended(p5, new com.afwsamples.testdpc.ShellCommand$$Lambda$111(this, v0), new com.afwsamples.testdpc.ShellCommand$$Lambda$112(this, v0));
        return;
    }

    private void setRequiredPasswordComplexity(int p5)
    {
        String v0 = com.afwsamples.testdpc.common.Util.requiredPasswordComplexityToString(p5);
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("setRequiredPasswordComplexity(").append(p5).append("/").append(v0).append(")").toString());
        this.mDevicePolicyManagerGateway.setRequiredPasswordComplexity(p5, new com.afwsamples.testdpc.ShellCommand$$Lambda$101(this, v0, p5), new com.afwsamples.testdpc.ShellCommand$$Lambda$102(this, v0, p5));
        return;
    }

    private void setSuspendedPackages(boolean p6, String[] p7)
    {
        String v0 = java.util.Arrays.toString(p7);
        String v1 = com.afwsamples.testdpc.ShellCommand.suspendedToString(p6);
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("setSuspendedPackages(").append(v0).append("): ").append(v1).toString());
        this.mDevicePolicyManagerGateway.setPackagesSuspended(p7, p6, new com.afwsamples.testdpc.ShellCommand$$Lambda$107(this, v0, v1), new com.afwsamples.testdpc.ShellCommand$$Lambda$108(this, v0, v1));
        return;
    }

    private void setUsbDataSignalingEnabled(boolean p4)
    {
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("setUsbDataSignalingEnabled(").append(p4).append(")").toString());
        this.mDevicePolicyManagerGateway.setUsbDataSignalingEnabled(p4, new com.afwsamples.testdpc.ShellCommand$$Lambda$105(this, p4), new com.afwsamples.testdpc.ShellCommand$$Lambda$106(this, p4));
        return;
    }

    private void setUserControlDisabledPackages(String[] p5)
    {
        java.util.List v0 = java.util.Arrays.asList(p5);
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("setUserControlDisabledPackages(").append(v0).append(")").toString());
        this.mDevicePolicyManagerGateway.setUserControlDisabledPackages(v0, new com.afwsamples.testdpc.ShellCommand$$Lambda$89(this, v0), new com.afwsamples.testdpc.ShellCommand$$Lambda$90(this, v0));
        return;
    }

    private void setUserIcon(java.io.File p7)
    {
        String v0 = p7.getAbsolutePath();
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("setUserIcon(): path=").append(v0).toString());
        android.graphics.Bitmap v1 = android.graphics.BitmapFactory.decodeFile(v0, 0);
        if (v1 != null) {
            this.mDevicePolicyManagerGateway.setUserIcon(v1, new com.afwsamples.testdpc.ShellCommand$$Lambda$63(this, v0), new com.afwsamples.testdpc.ShellCommand$$Lambda$64(this, v0));
        } else {
            com.afwsamples.testdpc.DevicePolicyManagerGateway v2_3 = this.mWriter;
            com.afwsamples.testdpc.ShellCommand$$Lambda$64 v4_3 = new Object[1];
            v4_3[0] = v0;
            v2_3.printf("Could not create bitmap from file %s\n", v4_3);
        }
        return;
    }

    private void setUserRestriction(String p4, boolean p5)
    {
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("setUserRestriction(").append(p4).append(", ").append(p5).append(")").toString());
        this.mDevicePolicyManagerGateway.setUserRestriction(p4, p5, new com.afwsamples.testdpc.ShellCommand$$Lambda$73(this, p4, p5), new com.afwsamples.testdpc.ShellCommand$$Lambda$74(this, p4, p5));
        return;
    }

    private void startUserInBackground(android.os.UserHandle p4)
    {
        this.mDevicePolicyManagerGateway.startUserInBackground(p4, new com.afwsamples.testdpc.ShellCommand$$Lambda$69(this, p4), new com.afwsamples.testdpc.ShellCommand$$Lambda$70(this, p4));
        return;
    }

    private void stopUser(android.os.UserHandle p4)
    {
        this.mDevicePolicyManagerGateway.stopUser(p4, new com.afwsamples.testdpc.ShellCommand$$Lambda$71(this, p4), new com.afwsamples.testdpc.ShellCommand$$Lambda$72(this, p4));
        return;
    }

    private static String suspendedToString(boolean p1)
    {
        String v0;
        if (!p1) {
            v0 = "NOT SUSPENDED";
        } else {
            v0 = "SUSPENDED";
        }
        return v0;
    }

    private void switchUser(android.os.UserHandle p4)
    {
        this.mDevicePolicyManagerGateway.switchUser(p4, new com.afwsamples.testdpc.ShellCommand$$Lambda$67(this, p4), new com.afwsamples.testdpc.ShellCommand$$Lambda$68(this, p4));
        return;
    }

    private String toString(android.os.UserHandle p5)
    {
        return new StringBuilder().append(p5.toString()).append(" serial=").append(this.mDevicePolicyManagerGateway.getSerialNumber(p5)).toString();
    }

    private void transferOwnership(String p6)
    {
        android.content.ComponentName v0 = android.content.ComponentName.unflattenFromString(p6);
        android.util.Log.i("TestDPCShellCommand", new StringBuilder().append("transferOwnership(").append(v0).append(")").toString());
        this.mDevicePolicyManagerGateway.transferOwnership(v0, 0, new com.afwsamples.testdpc.ShellCommand$$Lambda$103(this, p6), new com.afwsamples.testdpc.ShellCommand$$Lambda$104(this, p6));
        return;
    }

    private void wipeData(int p4)
    {
        android.util.Log.i("TestDPCShellCommand", "wipeData()");
        this.mDevicePolicyManagerGateway.wipeData(p4, new com.afwsamples.testdpc.ShellCommand$$Lambda$81(this), new com.afwsamples.testdpc.ShellCommand$$Lambda$82(this));
        return;
    }

    final bridge synthetic void bridge$lambda$0$ShellCommand()
    {
        this.dumpState();
        return;
    }

    final bridge synthetic void bridge$lambda$1$ShellCommand(String p1, int p2)
    {
        this.createUser(p1, p2);
        return;
    }

    final bridge synthetic void bridge$lambda$10$ShellCommand(String p1, boolean p2)
    {
        this.setUserRestriction(p1, p2);
        return;
    }

    final bridge synthetic void bridge$lambda$11$ShellCommand(Integer p1)
    {
        this.lockNow(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$12$ShellCommand()
    {
        this.reboot();
        return;
    }

    final bridge synthetic void bridge$lambda$13$ShellCommand(int p1)
    {
        this.wipeData(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$14$ShellCommand(boolean p1)
    {
        this.setNetworkLogging(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$15$ShellCommand()
    {
        this.clearOrganizationName();
        return;
    }

    final bridge synthetic void bridge$lambda$16$ShellCommand(String p1)
    {
        this.setOrganizationName(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$17$ShellCommand()
    {
        this.getOrganizationName();
        return;
    }

    final bridge synthetic void bridge$lambda$18$ShellCommand(String[] p1)
    {
        this.setUserControlDisabledPackages(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$19$ShellCommand()
    {
        this.getUserControlDisabledPackages();
        return;
    }

    final bridge synthetic void bridge$lambda$2$ShellCommand(java.io.File p1)
    {
        this.setUserIcon(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$20$ShellCommand()
    {
        this.removeActiveAdmin();
        return;
    }

    final bridge synthetic void bridge$lambda$21$ShellCommand()
    {
        this.clearDeviceOwner();
        return;
    }

    final bridge synthetic void bridge$lambda$22$ShellCommand()
    {
        this.clearProfileOwner();
        return;
    }

    final bridge synthetic void bridge$lambda$23$ShellCommand(int p1)
    {
        this.setPasswordQuality(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$24$ShellCommand()
    {
        this.getPasswordQuality();
        return;
    }

    final bridge synthetic void bridge$lambda$25$ShellCommand(int p1)
    {
        this.setRequiredPasswordComplexity(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$26$ShellCommand()
    {
        this.getRequiredPasswordComplexity();
        return;
    }

    final bridge synthetic void bridge$lambda$27$ShellCommand(String p1)
    {
        this.transferOwnership(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$28$ShellCommand(boolean p1, String[] p2)
    {
        this.setSuspendedPackages(p1, p2);
        return;
    }

    final bridge synthetic void bridge$lambda$29$ShellCommand(String[] p1)
    {
        this.isSuspendedPackage(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$3$ShellCommand(android.os.UserHandle p1)
    {
        this.removeUser(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$30$ShellCommand(boolean p1)
    {
        this.setPersonalAppsSuspended(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$31$ShellCommand(String p1)
    {
        this.enableSystemApp(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$32$ShellCommand()
    {
        this.listDisabledSystemApps();
        return;
    }

    final bridge synthetic void bridge$lambda$33$ShellCommand()
    {
        this.getPersonalAppsSuspendedReasons();
        return;
    }

    final bridge synthetic void bridge$lambda$34$ShellCommand(String p1, boolean p2)
    {
        this.setHiddenPackage(p1, p2);
        return;
    }

    final bridge synthetic void bridge$lambda$35$ShellCommand(String p1)
    {
        this.isHiddenPackage(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$36$ShellCommand(String[] p1)
    {
        this.setLockTaskPackages(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$37$ShellCommand()
    {
        this.getLockTaskPackages();
        return;
    }

    final bridge synthetic void bridge$lambda$38$ShellCommand(String[] p1)
    {
        this.isLockTaskPermitted(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$39$ShellCommand(int p1)
    {
        this.setLockTaskFeatures(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$4$ShellCommand(android.os.UserHandle p1)
    {
        this.switchUser(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$40$ShellCommand()
    {
        this.getLockTaskFeatures();
        return;
    }

    final bridge synthetic void bridge$lambda$41$ShellCommand(String p1, com.afwsamples.testdpc.ShellCommand$KeyValue[] p2)
    {
        this.setAppRestrictions(p1, p2);
        return;
    }

    final bridge synthetic void bridge$lambda$42$ShellCommand(String[] p1)
    {
        this.getAppRestrictions(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$43$ShellCommand(String p1, String p2, int p3)
    {
        this.setPermissionGrantState(p1, p2, p3);
        return;
    }

    final bridge synthetic void bridge$lambda$44$ShellCommand(String p1, String p2)
    {
        this.getPermissionGrantState(p1, p2);
        return;
    }

    final bridge synthetic void bridge$lambda$45$ShellCommand(boolean p1)
    {
        this.setLocationEnabled(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$46$ShellCommand()
    {
        this.isLocationEnabled();
        return;
    }

    final bridge synthetic void bridge$lambda$47$ShellCommand()
    {
        this.clearDeviceOwnerLockScreenInfo();
        return;
    }

    final bridge synthetic void bridge$lambda$48$ShellCommand(String p1)
    {
        this.setDeviceOwnerLockScreenInfo(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$49$ShellCommand()
    {
        this.getDeviceOwnerLockScreenInfo();
        return;
    }

    final bridge synthetic void bridge$lambda$5$ShellCommand(android.os.UserHandle p1)
    {
        this.startUserInBackground(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$50$ShellCommand(boolean p1)
    {
        this.setKeyguardDisabled(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$51$ShellCommand(int p1)
    {
        this.setKeyguardDisabledFeatures(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$52$ShellCommand()
    {
        this.getKeyguardDisabledFeatures();
        return;
    }

    final bridge synthetic void bridge$lambda$53$ShellCommand(boolean p1)
    {
        this.setUsbDataSignalingEnabled(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$54$ShellCommand(String[] p1)
    {
        this.setPermittedInputMethodsOnParent(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$55$ShellCommand()
    {
        this.listForegroundUsers();
        return;
    }

    final bridge synthetic void bridge$lambda$56$ShellCommand()
    {
        this.isForegroundUser();
        return;
    }

    final bridge synthetic void bridge$lambda$6$ShellCommand()
    {
        this.isUserAffiliated();
        return;
    }

    final bridge synthetic void bridge$lambda$7$ShellCommand(String[] p1)
    {
        this.setAffiliationIds(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$8$ShellCommand()
    {
        this.getAffiliationIds();
        return;
    }

    final bridge synthetic void bridge$lambda$9$ShellCommand()
    {
        this.listUserRestrictions();
        return;
    }

    final synthetic void lambda$clearDeviceOwner$56$ShellCommand(String p4, Void p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("Removed %s as device owner", v1_1);
        return;
    }

    final synthetic void lambda$clearDeviceOwner$57$ShellCommand(String p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error removing %s as device owner", v1_1);
        return;
    }

    final synthetic void lambda$clearProfileOwner$58$ShellCommand(String p4, Void p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("Removed %s as profile owner", v1_1);
        return;
    }

    final synthetic void lambda$clearProfileOwner$59$ShellCommand(String p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error removing %s as profile owner", v1_1);
        return;
    }

    final synthetic void lambda$createUser$24$ShellCommand(android.os.UserHandle p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = this.toString(p5);
        this.onSuccess("User created: %s", v1_1);
        return;
    }

    final synthetic void lambda$createUser$25$ShellCommand(String p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error creating user %s", v1_1);
        return;
    }

    final synthetic void lambda$enableSystemApp$75$ShellCommand(String p4, Void p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("Enabled system apps %s", v1_1);
        return;
    }

    final synthetic void lambda$enableSystemApp$76$ShellCommand(String p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error enabling systen app%s", v1_1);
        return;
    }

    final synthetic void lambda$listForegroundUsers$60$ShellCommand(android.os.UserHandle p5)
    {
        java.io.PrintWriter v0 = this.mWriter;
        Object[] v2_1 = new Object[1];
        v2_1[0] = p5;
        v0.printf("\t%s\n", v2_1);
        return;
    }

    final synthetic void lambda$lockNow$38$ShellCommand(Void p3)
    {
        Object[] v1_1 = new Object[0];
        this.onSuccess("Device locked", v1_1);
        return;
    }

    final synthetic void lambda$lockNow$39$ShellCommand(Exception p3)
    {
        Object[] v1_1 = new Object[0];
        this.onError(p3, "Error locking device", v1_1);
        return;
    }

    final synthetic void lambda$lockNow$40$ShellCommand(Void p3)
    {
        Object[] v1_1 = new Object[0];
        this.onSuccess("Device locked", v1_1);
        return;
    }

    final synthetic void lambda$lockNow$41$ShellCommand(Exception p3)
    {
        Object[] v1_1 = new Object[0];
        this.onError(p3, "Error locking device", v1_1);
        return;
    }

    final synthetic void lambda$printCollection$93$ShellCommand(String p5)
    {
        java.io.PrintWriter v0 = this.mWriter;
        Object[] v2_1 = new Object[1];
        v2_1[0] = p5;
        v0.printf("  %s\n", v2_1);
        return;
    }

    final synthetic void lambda$reboot$42$ShellCommand(Void p3)
    {
        Object[] v1_1 = new Object[0];
        this.onSuccess("Device rebooted", v1_1);
        return;
    }

    final synthetic void lambda$reboot$43$ShellCommand(Exception p3)
    {
        Object[] v1_1 = new Object[0];
        this.onError(p3, "Error rebooting device", v1_1);
        return;
    }

    final synthetic void lambda$removeActiveAdmin$54$ShellCommand(android.content.ComponentName p4, Void p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("Removed %s as an active admin", v1_1);
        return;
    }

    final synthetic void lambda$removeActiveAdmin$55$ShellCommand(android.content.ComponentName p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error removing %s as admin", v1_1);
        return;
    }

    final synthetic void lambda$removeUser$28$ShellCommand(android.os.UserHandle p4, Void p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("User %s removed", v1_1);
        return;
    }

    final synthetic void lambda$removeUser$29$ShellCommand(android.os.UserHandle p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error removing user %s", v1_1);
        return;
    }

    final synthetic void lambda$requestBugreport$46$ShellCommand(Void p3)
    {
        Object[] v1_1 = new Object[0];
        this.onSuccess("Bugreport requested", v1_1);
        return;
    }

    final synthetic void lambda$requestBugreport$47$ShellCommand(Exception p3)
    {
        Object[] v1_1 = new Object[0];
        this.onError(p3, "Error requesting bugreport", v1_1);
        return;
    }

    final synthetic com.afwsamples.testdpc.util.Flags$Validator$ValidationResult lambda$run$21$ShellCommand(String p9, com.afwsamples.testdpc.util.Flags$Validator p10)
    {
        try {
            com.afwsamples.testdpc.util.Flags$Validator$ValidationResult v4_0;
            long v2 = Long.parseLong(p9);
            android.os.UserHandle v1 = this.mDevicePolicyManagerGateway.getUserHandle(v2);
        } catch (NumberFormatException v0) {
            v4_0 = p10.invalid("UserHandle must be a long integer.");
            return v4_0;
        }
        if (v1 != null) {
            v4_0 = p10.valid(v1);
            return v4_0;
        } else {
            Object[] v5_1 = new Object[1];
            v5_1[0] = Long.valueOf(v2);
            v4_0 = p10.invalid(String.format("User %d does not exist.", v5_1));
            return v4_0;
        }
    }

    final synthetic com.afwsamples.testdpc.util.Flags$Validator$ValidationResult lambda$run$22$ShellCommand(String p5, com.afwsamples.testdpc.util.Flags$Validator p6)
    {
        com.afwsamples.testdpc.util.Flags$Validator$ValidationResult v1_2;
        java.io.File v0 = com.afwsamples.testdpc.UserIconContentProvider.getFile(this.mContext, p5);
        if (v0.isFile()) {
            v1_2 = p6.valid(v0);
        } else {
            Object[] v2_0 = new Object[1];
            v2_0[0] = p5;
            v1_2 = p6.invalid(String.format("Could not open file %s.", v2_0));
        }
        return v1_2;
    }

    final synthetic void lambda$setAppRestrictions$81$ShellCommand(android.os.Bundle p5, String p6, Void p7)
    {
        Object[] v1_1 = new Object[2];
        v1_1[0] = Integer.valueOf(p5.size());
        v1_1[1] = p6;
        this.onSuccess("Set %d app restrictions for %s", v1_1);
        return;
    }

    final synthetic void lambda$setAppRestrictions$82$ShellCommand(String p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error setting app restrictions for %s", v1_1);
        return;
    }

    final synthetic void lambda$setDeviceOwnerLockScreenInfo$87$ShellCommand(String p4, Void p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("Set lock screen info to \'%s\'", v1_1);
        return;
    }

    final synthetic void lambda$setDeviceOwnerLockScreenInfo$88$ShellCommand(String p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error setting lock screen info to \'%s\'", v1_1);
        return;
    }

    final synthetic void lambda$setHiddenPackage$71$ShellCommand(String p4, String p5, Void p6)
    {
        Object[] v1_1 = new Object[2];
        v1_1[0] = p4;
        v1_1[1] = p5;
        this.onSuccess("Set %s as %s", v1_1);
        return;
    }

    final synthetic void lambda$setHiddenPackage$72$ShellCommand(String p4, String p5, Exception p6)
    {
        Object[] v1_1 = new Object[2];
        v1_1[0] = p4;
        v1_1[1] = p5;
        this.onError(p6, "Error settings %s as %s", v1_1);
        return;
    }

    final synthetic void lambda$setKeyguardDisabled$89$ShellCommand(boolean p5, Void p6)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = Boolean.valueOf(p5);
        this.onSuccess("Set keyguard disabled to %b", v1_1);
        return;
    }

    final synthetic void lambda$setKeyguardDisabled$90$ShellCommand(boolean p5, Exception p6)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = Boolean.valueOf(p5);
        this.onError(p6, "Error setting keyguard disabled to %b", v1_1);
        return;
    }

    final synthetic void lambda$setKeyguardDisabledFeatures$91$ShellCommand(String p4, Void p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("Set keyguard features to %s", v1_1);
        return;
    }

    final synthetic void lambda$setKeyguardDisabledFeatures$92$ShellCommand(String p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error settings keyguard features to %s", v1_1);
        return;
    }

    final synthetic void lambda$setLocationEnabled$85$ShellCommand(boolean p5, Void p6)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = Boolean.valueOf(p5);
        this.onSuccess("Set location enabled to %b", v1_1);
        return;
    }

    final synthetic void lambda$setLocationEnabled$86$ShellCommand(boolean p5, Exception p6)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = Boolean.valueOf(p5);
        this.onError(p6, "Error setting location enabled to %b", v1_1);
        return;
    }

    final synthetic void lambda$setLockTaskFeatures$79$ShellCommand(String p4, Void p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("Set lock tasks features to %s", v1_1);
        return;
    }

    final synthetic void lambda$setLockTaskFeatures$80$ShellCommand(String p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error settings lock task features to %s", v1_1);
        return;
    }

    final synthetic void lambda$setLockTaskPackages$77$ShellCommand(String p4, Void p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("Set lock tasks packages to %s", v1_1);
        return;
    }

    final synthetic void lambda$setLockTaskPackages$78$ShellCommand(String p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error settings lock task packages to %s", v1_1);
        return;
    }

    final synthetic void lambda$setNetworkLogging$48$ShellCommand(boolean p5, Void p6)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = Boolean.valueOf(p5);
        this.onSuccess("Network logging set to %b", v1_1);
        return;
    }

    final synthetic void lambda$setNetworkLogging$49$ShellCommand(boolean p5, Exception p6)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = Boolean.valueOf(p5);
        this.onError(p6, "Error setting network logging to %b", v1_1);
        return;
    }

    final synthetic void lambda$setOrganizationName$50$ShellCommand(String p4, Void p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("Organization name set to %s", v1_1);
        return;
    }

    final synthetic void lambda$setOrganizationName$51$ShellCommand(String p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error setting Organization name to %s", v1_1);
        return;
    }

    final synthetic void lambda$setPasswordQuality$61$ShellCommand(String p5, int p6, Void p7)
    {
        Object[] v1_1 = new Object[2];
        v1_1[0] = p5;
        v1_1[1] = Integer.valueOf(p6);
        this.onSuccess("Set password quality to %s (%d)", v1_1);
        return;
    }

    final synthetic void lambda$setPasswordQuality$62$ShellCommand(String p5, int p6, Exception p7)
    {
        Object[] v1_1 = new Object[2];
        v1_1[0] = p5;
        v1_1[1] = Integer.valueOf(p6);
        this.onError(p7, "Error setting password quality to %s (%d)", v1_1);
        return;
    }

    final synthetic void lambda$setPermissionGrantState$83$ShellCommand(String p4, String p5, String p6, Void p7)
    {
        Object[] v1_1 = new Object[3];
        v1_1[0] = p4;
        v1_1[1] = p5;
        v1_1[2] = p6;
        this.onSuccess("Set %s state on %s to %s", v1_1);
        return;
    }

    final synthetic void lambda$setPermissionGrantState$84$ShellCommand(String p4, String p5, String p6, Exception p7)
    {
        Object[] v1_1 = new Object[3];
        v1_1[0] = p4;
        v1_1[1] = p5;
        v1_1[2] = p6;
        this.onError(p7, "Error setting %s state on %s to %s", v1_1);
        return;
    }

    final synthetic void lambda$setPersonalAppsSuspended$73$ShellCommand(String p4, Void p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("Set personal apps to %s", v1_1);
        return;
    }

    final synthetic void lambda$setPersonalAppsSuspended$74$ShellCommand(String p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error setting personal apps to %s", v1_1);
        return;
    }

    final synthetic void lambda$setRequiredPasswordComplexity$63$ShellCommand(String p5, int p6, Void p7)
    {
        Object[] v1_1 = new Object[2];
        v1_1[0] = p5;
        v1_1[1] = Integer.valueOf(p6);
        this.onSuccess("Set required password complexity to %s (%d)", v1_1);
        return;
    }

    final synthetic void lambda$setRequiredPasswordComplexity$64$ShellCommand(String p5, int p6, Exception p7)
    {
        Object[] v1_1 = new Object[2];
        v1_1[0] = p5;
        v1_1[1] = Integer.valueOf(p6);
        this.onError(p7, "Error setting required password complexity to %s (%d)", v1_1);
        return;
    }

    final synthetic void lambda$setSuspendedPackages$69$ShellCommand(String p5, String p6, String[] p7)
    {
        Object[] v1_1 = new Object[3];
        v1_1[0] = p5;
        v1_1[1] = java.util.Arrays.toString(p7);
        v1_1[2] = p6;
        this.onSuccess("Set %s (but not %s) to %s", v1_1);
        return;
    }

    final synthetic void lambda$setSuspendedPackages$70$ShellCommand(String p4, String p5, Exception p6)
    {
        Object[] v1_1 = new Object[2];
        v1_1[0] = p4;
        v1_1[1] = p5;
        this.onError(p6, "Error settings %s to %s", v1_1);
        return;
    }

    final synthetic void lambda$setUsbDataSignalingEnabled$67$ShellCommand(boolean p5, Void p6)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = Boolean.valueOf(p5);
        this.onSuccess("USB data signaling set to %b", v1_1);
        return;
    }

    final synthetic void lambda$setUsbDataSignalingEnabled$68$ShellCommand(boolean p5, Exception p6)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = Boolean.valueOf(p5);
        this.onError(p6, "Error setting USB data signaling to %b", v1_1);
        return;
    }

    final synthetic void lambda$setUserControlDisabledPackages$52$ShellCommand(java.util.List p4, Void p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("User-control disabled packages set to %s", v1_1);
        return;
    }

    final synthetic void lambda$setUserControlDisabledPackages$53$ShellCommand(java.util.List p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error setting User-control disabled packages to %s", v1_1);
        return;
    }

    final synthetic void lambda$setUserIcon$26$ShellCommand(String p4, Void p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("User icon created from file %s", v1_1);
        return;
    }

    final synthetic void lambda$setUserIcon$27$ShellCommand(String p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error creating user icon from file %s", v1_1);
        return;
    }

    final synthetic void lambda$setUserRestriction$36$ShellCommand(String p5, boolean p6, Void p7)
    {
        Object[] v1_1 = new Object[2];
        v1_1[0] = p5;
        v1_1[1] = Boolean.valueOf(p6);
        this.onSuccess("User restriction \'%s\' set to %b", v1_1);
        return;
    }

    final synthetic void lambda$setUserRestriction$37$ShellCommand(String p5, boolean p6, Exception p7)
    {
        Object[] v1_1 = new Object[2];
        v1_1[0] = p5;
        v1_1[1] = Boolean.valueOf(p6);
        this.onError(p7, "Error setting user restriction \'%s\' to %b", v1_1);
        return;
    }

    final synthetic void lambda$startUserInBackground$32$ShellCommand(android.os.UserHandle p4, Integer p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("User %s started in background", v1_1);
        return;
    }

    final synthetic void lambda$startUserInBackground$33$ShellCommand(android.os.UserHandle p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error starting user %s in background", v1_1);
        return;
    }

    final synthetic void lambda$stopUser$34$ShellCommand(android.os.UserHandle p4, Integer p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("User %s stopped", v1_1);
        return;
    }

    final synthetic void lambda$stopUser$35$ShellCommand(android.os.UserHandle p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error stopping user %s", v1_1);
        return;
    }

    final synthetic void lambda$switchUser$30$ShellCommand(android.os.UserHandle p4, Void p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("User %s switched", v1_1);
        return;
    }

    final synthetic void lambda$switchUser$31$ShellCommand(android.os.UserHandle p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error switching user %s", v1_1);
        return;
    }

    final synthetic void lambda$transferOwnership$65$ShellCommand(String p4, Void p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onSuccess("Ownership transferred to %s", v1_1);
        return;
    }

    final synthetic void lambda$transferOwnership$66$ShellCommand(String p4, Exception p5)
    {
        Object[] v1_1 = new Object[1];
        v1_1[0] = p4;
        this.onError(p5, "Error transferring ownership to %s", v1_1);
        return;
    }

    final synthetic void lambda$wipeData$44$ShellCommand(Void p3)
    {
        Object[] v1_1 = new Object[0];
        this.onSuccess("Data wiped", v1_1);
        return;
    }

    final synthetic void lambda$wipeData$45$ShellCommand(Exception p3)
    {
        Object[] v1_1 = new Object[0];
        this.onError(p3, "Error wiping data", v1_1);
        return;
    }

    public void run()
    {
        com.afwsamples.testdpc.util.Flags v1_1 = new com.afwsamples.testdpc.util.Flags(this.mWriter);
        v1_1.registerCustomParser(android.os.UserHandle, new com.afwsamples.testdpc.ShellCommand$$Lambda$0(this));
        v1_1.registerCustomParser(java.io.File, new com.afwsamples.testdpc.ShellCommand$$Lambda$1(this));
        v1_1.registerCustomParser(com.afwsamples.testdpc.ShellCommand$KeyValue, com.afwsamples.testdpc.ShellCommand$$Lambda$2.$instance);
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("dump", new com.afwsamples.testdpc.ShellCommand$$Lambda$3(this)).setDescription("Dump internal state."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("create-user", new com.afwsamples.testdpc.ShellCommand$$Lambda$4(this), com.afwsamples.testdpc.util.Flags.ordinalParam(String, "name"), com.afwsamples.testdpc.util.Flags.optional(com.afwsamples.testdpc.util.Flags.namedParam(Integer.TYPE, "flags"))).setDescription("Create a user with the optional flags and name."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-user-icon", new com.afwsamples.testdpc.ShellCommand$$Lambda$5(this), com.afwsamples.testdpc.util.Flags.ordinalParam(java.io.File, "file")).setDescription("Set the user icon using the bitmap located at the given file, which must be located in the user\'s `UserIcons` directory. For user 0, you can use `adb push` to push a local file to that directory (/storage/emulated/0/Android/data/com.afwsamples.testdpc/files/Pictures/UserIcons), but for other users you need to switch to that user and use its content provider (for example, `adb shell content write --user 10 --uri content://com.afwsamples.testdpc.usericoncontentprovider/icon.png < /tmp/icon.png`)."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("remove-user", new com.afwsamples.testdpc.ShellCommand$$Lambda$6(this), com.afwsamples.testdpc.util.Flags.ordinalParam(android.os.UserHandle, "user-serial-number")).setDescription("Remove the given user."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("switch-user", new com.afwsamples.testdpc.ShellCommand$$Lambda$7(this), com.afwsamples.testdpc.util.Flags.ordinalParam(android.os.UserHandle, "user-serial-number")).setDescription("Switch the given user to foreground."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("start-user-in-background", new com.afwsamples.testdpc.ShellCommand$$Lambda$8(this), com.afwsamples.testdpc.util.Flags.ordinalParam(android.os.UserHandle, "user-serial-number")).setDescription("Switch the given user to foreground."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("is-user-affiliated", new com.afwsamples.testdpc.ShellCommand$$Lambda$9(this)).setDescription("Check if the user is affiliated with the device."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-affiliation-ids", new com.afwsamples.testdpc.ShellCommand$$Lambda$10(this), com.afwsamples.testdpc.util.Flags.repeated(com.afwsamples.testdpc.util.Flags.ordinalParam(String, "ids"))).setDescription("Set the user affiliation ids (or clear them if no ids are passed)."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("get-affiliation-ids", new com.afwsamples.testdpc.ShellCommand$$Lambda$11(this)).setDescription("Get the user affiliation ids."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("list-user-restrictions", new com.afwsamples.testdpc.ShellCommand$$Lambda$12(this)).setDescription("List the user restrictions."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-user-restriction", new com.afwsamples.testdpc.ShellCommand$$Lambda$13(this), com.afwsamples.testdpc.util.Flags.ordinalParam(String, "restriction"), com.afwsamples.testdpc.util.Flags.ordinalParam(Boolean.TYPE, "enabled")).setDescription("Set the given user restriction."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("lock-now", new com.afwsamples.testdpc.ShellCommand$$Lambda$14(this), com.afwsamples.testdpc.util.Flags.optional(com.afwsamples.testdpc.util.Flags.namedParam(Integer.TYPE, "flags"))).setDescription("Lock the device (now! :-)."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("reboot", new com.afwsamples.testdpc.ShellCommand$$Lambda$15(this)).setDescription("Reboot the device."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("wipe-data", new com.afwsamples.testdpc.ShellCommand$$Lambda$16(this), com.afwsamples.testdpc.util.Flags.optional(com.afwsamples.testdpc.util.Flags.namedParam(Integer.TYPE, "flags"))).setDescription("Factory reset the device."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("request-bugreport", new com.afwsamples.testdpc.ShellCommand$$Lambda$17(this)).setDescription("Request a bug report."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-network-logging", new com.afwsamples.testdpc.ShellCommand$$Lambda$18(this), com.afwsamples.testdpc.util.Flags.ordinalParam(Boolean.TYPE, "enabled")).setDescription("Enable / disable network logging."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("clear-organization-name", new com.afwsamples.testdpc.ShellCommand$$Lambda$19(this)).setDescription("Clear the organisation name."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-organization-name", new com.afwsamples.testdpc.ShellCommand$$Lambda$20(this), com.afwsamples.testdpc.util.Flags.ordinalParam(String, "name")).setDescription("Set the organisation name."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("get-organization-name", new com.afwsamples.testdpc.ShellCommand$$Lambda$21(this)).setDescription("Get the organization name."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-user-control-disabled-packages", new com.afwsamples.testdpc.ShellCommand$$Lambda$22(this), com.afwsamples.testdpc.util.Flags.repeated(com.afwsamples.testdpc.util.Flags.ordinalParam(String, "packages"))).setDescription("Set the packages that the user cannot force stop or clear data for. Provide an empty list to reset."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("get-user-control-disabled-packages", new com.afwsamples.testdpc.ShellCommand$$Lambda$23(this)).setDescription("Get the packages that the user cannot force stop or clear data for."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("remove-active-admin", new com.afwsamples.testdpc.ShellCommand$$Lambda$24(this)).setDescription("Remove TestDPC as an active admin."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("clear-device-owner", new com.afwsamples.testdpc.ShellCommand$$Lambda$25(this)).setDescription("Clear TestDPC as device owner."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("clear-profile-owner", new com.afwsamples.testdpc.ShellCommand$$Lambda$26(this)).setDescription("Clear TestDPC as profile owner."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-password-quality", new com.afwsamples.testdpc.ShellCommand$$Lambda$27(this), com.afwsamples.testdpc.util.Flags.ordinalParam(Integer.TYPE, "quality")).setDescription("Set the password quality."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("get-password-quality", new com.afwsamples.testdpc.ShellCommand$$Lambda$28(this)).setDescription("Get the password quality."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-required-password-complexity", new com.afwsamples.testdpc.ShellCommand$$Lambda$29(this), com.afwsamples.testdpc.util.Flags.ordinalParam(Integer.TYPE, "complexity")).setDescription("Set the required password complexity."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("get-required-password-complexity", new com.afwsamples.testdpc.ShellCommand$$Lambda$30(this)).setDescription("Get required the password complexity."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("transfer-ownership", new com.afwsamples.testdpc.ShellCommand$$Lambda$31(this), com.afwsamples.testdpc.util.Flags.ordinalParam(String, "admin")).setDescription("Transfer ownership to the given admin."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-suspended-packages", new com.afwsamples.testdpc.ShellCommand$$Lambda$32(this), com.afwsamples.testdpc.util.Flags.ordinalParam(Boolean.TYPE, "suspended"), com.afwsamples.testdpc.util.Flags.repeated(com.afwsamples.testdpc.util.Flags.ordinalParam(String, "packageNames"))).setDescription("Suspend / unsuspend the given packages."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("is-suspended-packages", new com.afwsamples.testdpc.ShellCommand$$Lambda$33(this), com.afwsamples.testdpc.util.Flags.repeated(com.afwsamples.testdpc.util.Flags.ordinalParam(String, "packageNames"))).setDescription("Check if the given packages are suspended."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-personal-apps-suspended", new com.afwsamples.testdpc.ShellCommand$$Lambda$34(this), com.afwsamples.testdpc.util.Flags.ordinalParam(Boolean.TYPE, "suspended")).setDescription("Suspend / unsuspend personal apps."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("enable-system-app", new com.afwsamples.testdpc.ShellCommand$$Lambda$35(this), com.afwsamples.testdpc.util.Flags.ordinalParam(String, "packageName")).setDescription("Enable the given system app."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("list-disabled-system-apps", new com.afwsamples.testdpc.ShellCommand$$Lambda$36(this)).setDescription("List the disabled system apps."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("get-personal-apps-suspended-reasons", new com.afwsamples.testdpc.ShellCommand$$Lambda$37(this)).setDescription("Get the reasons for suspending personal apps."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-hidden-package", new com.afwsamples.testdpc.ShellCommand$$Lambda$38(this), com.afwsamples.testdpc.util.Flags.ordinalParam(String, "package"), com.afwsamples.testdpc.util.Flags.ordinalParam(Boolean.TYPE, "hidden")).setDescription("Hide / unhide the given package."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("is-hidden-package", new com.afwsamples.testdpc.ShellCommand$$Lambda$39(this), com.afwsamples.testdpc.util.Flags.ordinalParam(String, "package")).setDescription("Check if the given package is hidden."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-lock-task-packages", new com.afwsamples.testdpc.ShellCommand$$Lambda$40(this), com.afwsamples.testdpc.util.Flags.repeated(com.afwsamples.testdpc.util.Flags.ordinalParam(String, "packages"))).setDescription("Set the packages allowed to have tasks locked."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("get-lock-task-packages", new com.afwsamples.testdpc.ShellCommand$$Lambda$41(this)).setDescription("Get the packages allowed to have tasks locked."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("is-lock-task-permitted", new com.afwsamples.testdpc.ShellCommand$$Lambda$42(this), com.afwsamples.testdpc.util.Flags.repeated(com.afwsamples.testdpc.util.Flags.ordinalParam(String, "packages"))).setDescription("Check if the given packages are allowed to have tasks locked."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-lock-task-features", new com.afwsamples.testdpc.ShellCommand$$Lambda$43(this), com.afwsamples.testdpc.util.Flags.ordinalParam(Integer.TYPE, "flags")).setDescription("Set the lock task features."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("get-lock-task-features", new com.afwsamples.testdpc.ShellCommand$$Lambda$44(this)).setDescription("Get the lock task features."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-app-restrictions", new com.afwsamples.testdpc.ShellCommand$$Lambda$45(this), com.afwsamples.testdpc.util.Flags.ordinalParam(String, "package"), com.afwsamples.testdpc.util.Flags.repeated(com.afwsamples.testdpc.util.Flags.ordinalParam(com.afwsamples.testdpc.ShellCommand$KeyValue, "restrictions"))).setDescription("Set the application restrictions (provided as key=value strings) for the given app (or clear if no values provided)."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("get-app-restrictions", new com.afwsamples.testdpc.ShellCommand$$Lambda$46(this), com.afwsamples.testdpc.util.Flags.repeated(com.afwsamples.testdpc.util.Flags.ordinalParam(String, "packages"))).setDescription("Get the application restrictions for the given apps (or for TestDPC when empty, using UserManager)."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-permission-grant-state", new com.afwsamples.testdpc.ShellCommand$$Lambda$47(this), com.afwsamples.testdpc.util.Flags.ordinalParam(String, "package"), com.afwsamples.testdpc.util.Flags.ordinalParam(String, "permission"), com.afwsamples.testdpc.util.Flags.ordinalParam(Integer.TYPE, "state")).setDescription("Set the grant state for the given package and permission."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("get-permission-grant-state", new com.afwsamples.testdpc.ShellCommand$$Lambda$48(this), com.afwsamples.testdpc.util.Flags.ordinalParam(String, "package"), com.afwsamples.testdpc.util.Flags.ordinalParam(String, "permission")).setDescription("Get the grant state for the given package and persmission."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-location-enabled", new com.afwsamples.testdpc.ShellCommand$$Lambda$49(this), com.afwsamples.testdpc.util.Flags.ordinalParam(Boolean.TYPE, "enabled")).setDescription("Set location enabled for the user."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("is-location-enabled", new com.afwsamples.testdpc.ShellCommand$$Lambda$50(this)).setDescription("Get whether location is enabled for the user."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("clear-device-owner-lockscreen-info", new com.afwsamples.testdpc.ShellCommand$$Lambda$51(this)).setDescription("Clear the device owner lock screen info."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-device-owner-lockscreen-info", new com.afwsamples.testdpc.ShellCommand$$Lambda$52(this), com.afwsamples.testdpc.util.Flags.ordinalParam(String, "info")).setDescription("Set the device owner lock screen info."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("get-device-owner-lockscreen-info", new com.afwsamples.testdpc.ShellCommand$$Lambda$53(this)).setDescription("Get the device owner lock screen info."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-keyguard-disabled", new com.afwsamples.testdpc.ShellCommand$$Lambda$54(this), com.afwsamples.testdpc.util.Flags.ordinalParam(Boolean.TYPE, "disabled")).setDescription("Set keyguard disabled."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-keyguard-disabled-features", new com.afwsamples.testdpc.ShellCommand$$Lambda$55(this), com.afwsamples.testdpc.util.Flags.ordinalParam(Integer.TYPE, "flags")).setDescription("Set the keyguard disabled features."));
        v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("get-keyguard-disabled-features", new com.afwsamples.testdpc.ShellCommand$$Lambda$56(this)).setDescription("Get the keyguard disabled features."));
        if (com.afwsamples.testdpc.common.Util.isAtLeastS()) {
            v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-usb-data-signaling-enabled", new com.afwsamples.testdpc.ShellCommand$$Lambda$57(this), com.afwsamples.testdpc.util.Flags.ordinalParam(Boolean.TYPE, "enabled")).setDescription("Enable / disable USB data signaling."));
            v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("set-permitted-input-methods-parent", new com.afwsamples.testdpc.ShellCommand$$Lambda$58(this), com.afwsamples.testdpc.util.Flags.repeated(com.afwsamples.testdpc.util.Flags.ordinalParam(String, "methods"))).setDescription("Set the permitted input methods in the parent\'s device admin."));
            v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("list-foreground-users", new com.afwsamples.testdpc.ShellCommand$$Lambda$59(this)).setDescription("List the users running in the foreground."));
            v1_1.addCommand(com.afwsamples.testdpc.util.Flags.command("is-foreground-user", new com.afwsamples.testdpc.ShellCommand$$Lambda$60(this)).setDescription("Checks if the calling user is running in the foreground."));
        }
        try {
            v1_1.run(this.mArgs);
        } catch (Exception v0) {
            Object[] v3_171 = new Object[1];
            v3_171[0] = java.util.Arrays.toString(this.mArgs);
            this.onError(v0, "error executing %s", v3_171);
        }
        return;
    }
}
