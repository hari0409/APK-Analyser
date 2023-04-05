package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$23 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;
    final synthetic android.widget.EditText val$customChallengeInput;
    final synthetic android.widget.CheckBox val$deviceBrandAttestationCheckbox;
    final synthetic android.widget.CheckBox val$deviceImeiAttestationCheckbox;
    final synthetic android.widget.CheckBox val$deviceMeidAttestationCheckbox;
    final synthetic android.widget.CheckBox val$deviceSerialAttestationCheckbox;
    final synthetic android.widget.CheckBox val$ecKeyCheckbox;
    final synthetic android.widget.CheckBox val$includeAttestationChallengeCheckbox;
    final synthetic android.widget.EditText val$input;
    final synthetic android.widget.CheckBox val$useIndividualAttestationCheckbox;
    final synthetic android.widget.CheckBox val$useStrongBoxCheckbox;
    final synthetic android.widget.CheckBox val$userSelectableCheckbox;

    PolicyManagementFragment$23(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, android.widget.EditText p2, android.widget.CheckBox p3, android.widget.CheckBox p4, android.widget.EditText p5, android.widget.CheckBox p6, android.widget.CheckBox p7, android.widget.CheckBox p8, android.widget.CheckBox p9, android.widget.CheckBox p10, android.widget.CheckBox p11, android.widget.CheckBox p12)
    {
        this.this$0 = p1;
        this.val$input = p2;
        this.val$userSelectableCheckbox = p3;
        this.val$includeAttestationChallengeCheckbox = p4;
        this.val$customChallengeInput = p5;
        this.val$deviceBrandAttestationCheckbox = p6;
        this.val$deviceSerialAttestationCheckbox = p7;
        this.val$deviceImeiAttestationCheckbox = p8;
        this.val$deviceMeidAttestationCheckbox = p9;
        this.val$useIndividualAttestationCheckbox = p10;
        this.val$useStrongBoxCheckbox = p11;
        this.val$ecKeyCheckbox = p12;
        return;
    }

    public void onClick(android.content.DialogInterface p7, int p8)
    {
        com.afwsamples.testdpc.policy.keymanagement.KeyGenerationParameters$Builder v3_1 = new com.afwsamples.testdpc.policy.keymanagement.KeyGenerationParameters$Builder();
        v3_1.setAlias(this.val$input.getText().toString());
        v3_1.setIsUserSelectable(this.val$userSelectableCheckbox.isChecked());
        if (this.val$includeAttestationChallengeCheckbox.isChecked()) {
            v3_1.setAttestationChallenge(android.util.Base64.decode(this.val$customChallengeInput.getText().toString().trim(), 0));
        }
        int v2 = 0;
        if (this.val$deviceBrandAttestationCheckbox.isChecked()) {
            v2 = (0 | 1);
        }
        if (this.val$deviceSerialAttestationCheckbox.isChecked()) {
            v2 |= 2;
        }
        if (this.val$deviceImeiAttestationCheckbox.isChecked()) {
            v2 |= 4;
        }
        if (this.val$deviceMeidAttestationCheckbox.isChecked()) {
            v2 |= 8;
        }
        if (this.val$useIndividualAttestationCheckbox.isChecked()) {
            v2 |= 16;
        }
        v3_1.setIdAttestationFlags(v2);
        v3_1.setUseStrongBox(this.val$useStrongBoxCheckbox.isChecked());
        v3_1.setGenerateEcKey(this.val$ecKeyCheckbox.isChecked());
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$1400(this.this$0, v3_1.build());
        return;
    }
}
