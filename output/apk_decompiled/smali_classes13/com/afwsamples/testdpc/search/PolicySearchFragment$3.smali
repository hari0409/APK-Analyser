.class Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;
.super Landroid/os/AsyncTask;
.source "PolicySearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/search/PolicySearchFragment;->doSearchAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/search/PolicySearchFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->access$200(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->access$100(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->lookup(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->access$300(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->setSearchResult(Ljava/util/List;)V

    .line 112
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->this$0:Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->access$300(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->notifyDataSetChanged()V

    .line 113
    return-void
.end method
