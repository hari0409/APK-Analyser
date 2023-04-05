package com.afwsamples.testdpc.policy.keymanagement;
public class KeyGenerationParameters {
    public final String alias;
    public final byte[] attestationChallenge;
    public final boolean generateEcKey;
    public final int idAttestationFlags;
    public final boolean isUserSelectable;
    public final boolean useStrongBox;

    public KeyGenerationParameters(String p1, boolean p2, byte[] p3, int p4, boolean p5, boolean p6)
    {
        this.alias = p1;
        this.isUserSelectable = p2;
        this.attestationChallenge = p3;
        this.idAttestationFlags = p4;
        this.useStrongBox = p5;
        this.generateEcKey = p6;
        return;
    }
}
