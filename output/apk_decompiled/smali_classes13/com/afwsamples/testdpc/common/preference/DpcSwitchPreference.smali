.class public Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "DpcSwitchPreference.java"

# interfaces
.implements Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;


# instance fields
.field private mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const v0, 0x7f040186

    invoke-direct {p0, p1, p2, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    new-instance v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    .line 37
    return-void
.end method


# virtual methods
.method public addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V
    .locals 1
    .param p1, "customConstraint"    # Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 108
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 109
    return-void
.end method

.method public clearAdminConstraint()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearAdminConstraint()V

    .line 84
    return-void
.end method

.method public clearNonCustomConstraints()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearNonCustomConstraints()V

    .line 99
    return-void
.end method

.method public clearUserConstraint()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearUserConstraint()V

    .line 94
    return-void
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Landroidx/preference/PreferenceManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->disableIfConstraintsNotMet()V

    .line 60
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    .line 61
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 54
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 55
    return-void
.end method

.method public refreshEnabledState()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->disableIfConstraintsNotMet()V

    .line 114
    return-void
.end method

.method public setAdminConstraint(I)V
    .locals 1
    .param p1, "adminConstraint"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setAdminConstraint(I)V

    .line 79
    return-void
.end method

.method public setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V
    .locals 1
    .param p1, "customConstraint"    # Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 103
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 104
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 65
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->constraintsMet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setMinSdkVersion(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setMinSdkVersion(I)V

    .line 74
    return-void
.end method

.method public setUserConstraint(I)V
    .locals 1
    .param p1, "userConstraints"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->mHelper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setUserConstraint(I)V

    .line 89
    return-void
.end method
