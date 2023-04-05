.class public Lcom/afwsamples/testdpc/common/UserArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UserArrayAdapter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/os/UserHandle;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserArrayAdapter"


# instance fields
.field private mResources:Landroid/content/res/Resources;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, "userHandleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 48
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/UserArrayAdapter;->mUserManager:Landroid/os/UserManager;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/UserArrayAdapter;->mResources:Landroid/content/res/Resources;

    .line 50
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 54
    if-nez p2, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/UserArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00b9

    invoke-virtual {v1, v2, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 59
    :cond_0
    const v1, 0x7f0901d2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    .local v0, "userNameTextView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/UserArrayAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0f0380

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/afwsamples/testdpc/common/UserArrayAdapter;->mUserManager:Landroid/os/UserManager;

    .line 63
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/UserArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {v5, v1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v8

    .line 61
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-object p2
.end method
