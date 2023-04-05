.class public interface abstract Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
.super Ljava/lang/Object;
.source "DpcPreferenceBase.java"


# virtual methods
.method public abstract addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V
    .param p1    # Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract clearAdminConstraint()V
.end method

.method public abstract clearNonCustomConstraints()V
.end method

.method public abstract clearUserConstraint()V
.end method

.method public abstract refreshEnabledState()V
.end method

.method public abstract setAdminConstraint(I)V
.end method

.method public abstract setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V
    .param p1    # Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setMinSdkVersion(I)V
.end method

.method public abstract setUserConstraint(I)V
.end method
