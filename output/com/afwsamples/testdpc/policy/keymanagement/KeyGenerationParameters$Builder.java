package com.afwsamples.testdpc.policy.keymanagement;
public class KeyGenerationParameters$Builder {
    private String mAlias;
    private byte[] mAttestationChallenge;
    private boolean mGenerateEcKey;
    private int mIdAttestationFlags;
    private boolean mIsUserSelectable;
    private boolean mUseStrongBox;

    public KeyGenerationParameters$Builder()
    {
        return;
    }

    public com.afwsamples.testdpc.policy.keymanagement.KeyGenerationParameters build()
    {
        return new com.afwsamples.testdpc.policy.keymanagement.KeyGenerationParameters(this.mAlias, this.mIsUserSelectable, this.mAttestationChallenge, this.mIdAttestationFlags, this.mUseStrongBox, this.mGenerateEcKey);
    }

    public com.afwsamples.testdpc.policy.keymanagement.KeyGenerationParameters$Builder setAlias(String p1)
    {
        this.mAlias = p1;
        return this;
    }

    public com.afwsamples.testdpc.policy.keymanagement.KeyGenerationParameters$Builder setAttestationChallenge(byte[] p1)
    {
        this.mAttestationChallenge = p1;
        return this;
    }

    public com.afwsamples.testdpc.policy.keymanagement.KeyGenerationParameters$Builder setGenerateEcKey(boolean p1)
    {
        this.mGenerateEcKey = p1;
        return this;
    }

    public com.afwsamples.testdpc.policy.keymanagement.KeyGenerationParameters$Builder setIdAttestationFlags(int p1)
    {
        this.mIdAttestationFlags = p1;
        return this;
    }

    public com.afwsamples.testdpc.policy.keymanagement.KeyGenerationParameters$Builder setIsUserSelectable(boolean p1)
    {
        this.mIsUserSelectable = p1;
        return this;
    }

    public com.afwsamples.testdpc.policy.keymanagement.KeyGenerationParameters$Builder setUseStrongBox(boolean p1)
    {
        this.mUseStrongBox = p1;
        return this;
    }
}
