.class Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationScopesArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DelegationScopesArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELEGATION_SECURITY_LOGGING:Ljava/lang/String; = "delegation-security-logging"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 36
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/CheckBox;

    if-nez v3, :cond_2

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationScopesArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b002f

    invoke-virtual {v3, v4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 39
    const v3, 0x7f09006a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 40
    .local v1, "viewHolder":Landroid/widget/CheckBox;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 45
    :goto_0
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationScopesArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    .line 46
    .local v0, "delegationScope":Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;
    iget-boolean v3, v0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->granted:Z

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 47
    iget-object v4, v0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->scope:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 77
    :goto_2
    return-object p2

    .line 42
    .end local v0    # "delegationScope":Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;
    .end local v1    # "viewHolder":Landroid/widget/CheckBox;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .restart local v1    # "viewHolder":Landroid/widget/CheckBox;
    goto :goto_0

    .line 47
    .restart local v0    # "delegationScope":Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;
    :sswitch_0
    const-string v5, "delegation-cert-install"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v2, "delegation-app-restrictions"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "delegation-block-uninstall"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "delegation-permission-grant"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "delegation-package-access"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "delegation-enable-system-app"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v2, "delegation-network-logging"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string v2, "delegation-security-logging"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_8
    const-string v2, "delegation-cert-selection"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    .line 49
    :pswitch_0
    const v2, 0x7f0f00d1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_2

    .line 52
    :pswitch_1
    const v2, 0x7f0f00cf

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_2

    .line 55
    :pswitch_2
    const v2, 0x7f0f00d0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_2

    .line 58
    :pswitch_3
    const v2, 0x7f0f00d8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_2

    .line 61
    :pswitch_4
    const v2, 0x7f0f00d7

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    goto/16 :goto_2

    .line 64
    :pswitch_5
    const v2, 0x7f0f00d3

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    goto/16 :goto_2

    .line 67
    :pswitch_6
    const v2, 0x7f0f00d6

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    goto/16 :goto_2

    .line 70
    :pswitch_7
    const v2, 0x7f0f00da

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    goto/16 :goto_2

    .line 73
    :pswitch_8
    const v2, 0x7f0f00d2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    goto/16 :goto_2

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        -0x600aee5d -> :sswitch_3
        -0x56337398 -> :sswitch_8
        -0x284c1558 -> :sswitch_5
        -0x13fb63a8 -> :sswitch_1
        0x3e38581b -> :sswitch_6
        0x5251a0fd -> :sswitch_2
        0x58c2bc10 -> :sswitch_4
        0x65834777 -> :sswitch_0
        0x686533d7 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
