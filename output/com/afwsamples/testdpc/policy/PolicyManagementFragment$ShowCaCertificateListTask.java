package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$ShowCaCertificateListTask extends android.os.AsyncTask {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;

    private PolicyManagementFragment$ShowCaCertificateListTask(com.afwsamples.testdpc.policy.PolicyManagementFragment p1)
    {
        this.this$0 = p1;
        return;
    }

    synthetic PolicyManagementFragment$ShowCaCertificateListTask(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, com.afwsamples.testdpc.policy.PolicyManagementFragment$1 p2)
    {
        this(p1);
        return;
    }

    private String[] getCaCertificateSubjectDnList()
    {
        java.util.List v6 = com.afwsamples.testdpc.policy.PolicyManagementFragment.access$400(this.this$0).getInstalledCaCerts(com.afwsamples.testdpc.policy.PolicyManagementFragment.access$700(this.this$0));
        String[] v0 = 0;
        if (v6.size() > 0) {
            v0 = new String[v6.size()];
            int v3 = 0;
            java.util.Iterator v7_3 = v6.iterator();
            while (v7_3.hasNext()) {
                try {
                    int v4 = (v3 + 1);
                    try {
                        v0[v3] = ((java.security.cert.X509Certificate) java.security.cert.CertificateFactory.getInstance("X.509").generateCertificate(new java.io.ByteArrayInputStream(((byte[]) v7_3.next())))).getSubjectDN().getName();
                        v3 = v4;
                    } catch (java.security.cert.CertificateException v2) {
                        v3 = v4;
                        android.util.Log.e("PolicyManagement", "getCaCertificateSubjectDnList: ", v2);
                    }
                } catch (java.security.cert.CertificateException v2) {
                }
            }
        }
        return v0;
    }

    protected bridge synthetic Object doInBackground(Object[] p2)
    {
        return this.doInBackground(((Void[]) p2));
    }

    protected varargs String[] doInBackground(Void[] p2)
    {
        return this.getCaCertificateSubjectDnList();
    }

    protected bridge synthetic void onPostExecute(Object p1)
    {
        this.onPostExecute(((String[]) p1));
        return;
    }

    protected void onPostExecute(String[] p4)
    {
        if ((this.this$0.getActivity() != null) && (!this.this$0.getActivity().isFinishing())) {
            if (p4 != null) {
                new android.app.AlertDialog$Builder(this.this$0.getActivity()).setTitle(this.this$0.getString(2131689868)).setItems(p4, 0).show();
            } else {
                int v2_2 = new Object[0];
                com.afwsamples.testdpc.policy.PolicyManagementFragment.access$200(this.this$0, 2131689979, v2_2);
            }
        }
        return;
    }
}
