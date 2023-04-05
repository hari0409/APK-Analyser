.class Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$1;
.super Ljava/lang/Object;
.source "BaseSearchablePolicyPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->highlightPreference(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$1;->this$0:Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;

    iput p2, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$1;->this$0:Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->access$100(Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;)Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;

    move-result-object v0

    iget v1, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;->highlight(I)V

    .line 148
    return-void
.end method
