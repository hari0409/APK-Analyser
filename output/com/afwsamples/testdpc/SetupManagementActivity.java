package com.afwsamples.testdpc;
public class SetupManagementActivity extends android.app.Activity {

    public SetupManagementActivity()
    {
        return;
    }

    protected void onCreate(android.os.Bundle p5)
    {
        super.onCreate(p5);
        this.setContentView(2131427360);
        if (p5 == null) {
            this.getFragmentManager().beginTransaction().add(2131296376, new com.afwsamples.testdpc.SetupManagementFragment(), "SetupManagementFragment").commit();
        }
        return;
    }
}
