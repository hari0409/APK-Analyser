.class public Lcom/afwsamples/testdpc/common/AccountArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountArrayAdapter"


# instance fields
.field private mAuthenticatorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p3, "accountList":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/AccountArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 50
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/afwsamples/testdpc/common/AccountArrayAdapter;->mAuthenticatorMap:Ljava/util/Map;

    .line 51
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 52
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 53
    .local v1, "authenticator":Landroid/accounts/AuthenticatorDescription;
    iget-object v5, p0, Lcom/afwsamples/testdpc/common/AccountArrayAdapter;->mAuthenticatorMap:Ljava/util/Map;

    iget-object v6, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "authenticator":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/AccountArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b001c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/AccountArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 65
    .local v0, "account":Landroid/accounts/Account;
    iget-object v4, p0, Lcom/afwsamples/testdpc/common/AccountArrayAdapter;->mAuthenticatorMap:Ljava/util/Map;

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    .line 66
    .local v2, "authenticator":Landroid/accounts/AuthenticatorDescription;
    const v4, 0x7f090013

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 67
    .local v3, "iconImageView":Landroid/widget/ImageView;
    const v4, 0x7f090012

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    .local v1, "accountNameTextView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/afwsamples/testdpc/common/AccountArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget v6, v2, Landroid/accounts/AuthenticatorDescription;->iconId:I

    const/4 v7, 0x0

    .line 69
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 68
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-object p2
.end method
