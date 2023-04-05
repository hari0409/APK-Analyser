.class public abstract Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;
.super Landroid/os/AsyncTask;
.source "GetAvailableComponentsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mListView:Landroid/widget/ListView;

.field private mNegativeButton:Landroid/widget/Button;

.field private mNeutralButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private mProgressView:Landroid/view/View;

.field private final mTitleResId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "titleResId"    # I

    .prologue
    .line 46
    .local p0, "this":Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;, "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask<TT;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mActivity:Landroid/app/Activity;

    .line 48
    iput p2, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mTitleResId:I

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private showProgressBar(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .local p0, "this":Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;, "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask<TT;>;"
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 122
    :goto_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mPositiveButton:Landroid/widget/Button;

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 123
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mNeutralButton:Landroid/widget/Button;

    if-nez p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mNegativeButton:Landroid/widget/Button;

    if-nez p1, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 122
    goto :goto_1

    :cond_2
    move v0, v2

    .line 123
    goto :goto_2

    :cond_3
    move v1, v2

    .line 124
    goto :goto_3
.end method


# virtual methods
.method protected abstract getPermittedComponentsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getResolveInfoListFromAvailableComponents(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;, "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask<TT;>;"
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;, "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask<TT;>;"
    .local p1, "availableComponentsList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->getResolveInfoListFromAvailableComponents(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 78
    .local v1, "availableComponentsResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 79
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v4, v2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->getPermittedComponentsList()Ljava/util/List;

    move-result-object v3

    .line 82
    .local v3, "permittedComponentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4, v1, v3}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 85
    .local v0, "availableComponentsInfoArrayAdapter":Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$1;

    invoke-direct {v5, p0, v0}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$1;-><init>(Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->showProgressBar(Z)V

    .line 94
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mPositiveButton:Landroid/widget/Button;

    new-instance v5, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$2;

    invoke-direct {v5, p0, v0}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$2;-><init>(Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mNeutralButton:Landroid/widget/Button;

    new-instance v5, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$3;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$3;-><init>(Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;, "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask<TT;>;"
    const/4 v3, 0x0

    .line 53
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0023

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "rootView":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mTitleResId:I

    .line 55
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f004a

    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    .line 59
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mAlertDialog:Landroid/app/AlertDialog;

    .line 61
    const v1, 0x7f09012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mProgressView:Landroid/view/View;

    .line 62
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mListView:Landroid/widget/ListView;

    .line 64
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mPositiveButton:Landroid/widget/Button;

    .line 65
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mNeutralButton:Landroid/widget/Button;

    .line 66
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mNegativeButton:Landroid/widget/Button;

    .line 68
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->showProgressBar(Z)V

    .line 69
    return-void
.end method

.method protected abstract setPermittedComponentsList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
