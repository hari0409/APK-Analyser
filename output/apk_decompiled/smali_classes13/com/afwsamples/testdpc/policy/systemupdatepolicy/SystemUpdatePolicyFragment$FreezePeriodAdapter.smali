.class Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SystemUpdatePolicyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FreezePeriodAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;",
        ">;"
    }
.end annotation


# instance fields
.field public mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p3, "periods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;>;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;->this$0:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 126
    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;->mData:Ljava/util/ArrayList;

    .line 127
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;

    .line 133
    .local v0, "currentPeriod":Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
    if-nez p2, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0039

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 137
    :cond_0
    const v3, 0x7f090185

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 138
    .local v2, "textView":Landroid/widget/Button;
    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 140
    new-instance v3, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter$$Lambda$0;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v3, 0x7f090090

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 148
    .local v1, "deleteButton":Landroid/view/View;
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 149
    new-instance v3, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter$$Lambda$1;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-object p2
.end method

.method final synthetic lambda$getView$181$SystemUpdatePolicyFragment$FreezePeriodAdapter(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;

    .line 142
    .local v0, "period":Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;->this$0:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;

    new-instance v2, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter$$Lambda$2;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter$$Lambda$2;-><init>(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;)V

    .line 145
    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->getStartDate()Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->getEndDate()Ljava/time/LocalDate;

    move-result-object v4

    .line 142
    invoke-static {v1, v2, v3, v4}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->access$000(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodPickResult;Ljava/time/LocalDate;Ljava/time/LocalDate;)V

    .line 146
    return-void
.end method

.method final synthetic lambda$getView$182$SystemUpdatePolicyFragment$FreezePeriodAdapter(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;

    .line 151
    .local v0, "period":Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;->notifyDataSetChanged()V

    .line 153
    return-void
.end method

.method final synthetic lambda$null$180$SystemUpdatePolicyFragment$FreezePeriodAdapter(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 1
    .param p2, "startDate"    # Ljava/time/LocalDate;
    .param p3, "endDate"    # Ljava/time/LocalDate;

    .prologue
    .line 143
    invoke-virtual {p1, p2, p3}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$Period;->set(Ljava/time/LocalDate;Ljava/time/LocalDate;)V

    .line 144
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;->this$0:Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;->access$100(Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment;)Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/systemupdatepolicy/SystemUpdatePolicyFragment$FreezePeriodAdapter;->notifyDataSetChanged()V

    .line 145
    return-void
.end method
