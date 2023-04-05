.class public Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;
.super Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePreferenceComparisonCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 618
    invoke-direct {p0}, Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public arePreferenceContentsTheSame(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 5
    .param p1, "p1"    # Landroidx/preference/Preference;
    .param p2, "p2"    # Landroidx/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 643
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v2, v4, :cond_0

    move v2, v3

    .line 679
    :goto_0
    return v2

    .line 646
    :cond_0
    if-ne p1, p2, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->wasDetached()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 649
    goto :goto_0

    .line 651
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 652
    goto :goto_0

    .line 654
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 655
    goto :goto_0

    .line 657
    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 658
    .local v0, "p1Icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 659
    .local v1, "p2Icon":Landroid/graphics/drawable/Drawable;
    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v2, v3

    .line 660
    goto :goto_0

    .line 662
    :cond_5
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v2

    invoke-virtual {p2}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v4

    if-eq v2, v4, :cond_6

    move v2, v3

    .line 663
    goto :goto_0

    .line 665
    :cond_6
    invoke-virtual {p1}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v2

    invoke-virtual {p2}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v4

    if-eq v2, v4, :cond_7

    move v2, v3

    .line 666
    goto :goto_0

    .line 668
    :cond_7
    instance-of v2, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v2, :cond_8

    move-object v2, p1

    .line 669
    check-cast v2, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    move-object v2, p2

    check-cast v2, Landroidx/preference/TwoStatePreference;

    .line 670
    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eq v4, v2, :cond_8

    move v2, v3

    .line 671
    goto :goto_0

    .line 674
    :cond_8
    instance-of v2, p1, Landroidx/preference/DropDownPreference;

    if-eqz v2, :cond_9

    if-eq p1, p2, :cond_9

    move v2, v3

    .line 676
    goto :goto_0

    .line 679
    :cond_9
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public arePreferenceItemsTheSame(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 4
    .param p1, "p1"    # Landroidx/preference/Preference;
    .param p2, "p2"    # Landroidx/preference/Preference;

    .prologue
    .line 629
    invoke-virtual {p1}, Landroidx/preference/Preference;->getId()J

    move-result-wide v0

    invoke-virtual {p2}, Landroidx/preference/Preference;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
