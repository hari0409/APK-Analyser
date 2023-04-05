.class public Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StringArrayTypeInputAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mStringList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->mStringList:Ljava/util/List;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->mStringList:Ljava/util/List;

    return-object v0
.end method

.method private createEditTextTextWatcher(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;)Landroid/text/TextWatcher;
    .locals 1
    .param p1, "viewHolder"    # Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;

    .prologue
    .line 96
    new-instance v0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$2;-><init>(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;)V

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->mStringList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStringList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->mStringList:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->onBindViewHolder(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 50
    iget-object v1, p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->stringValue:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->mStringList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->stringValue:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    :cond_0
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->createEditTextTextWatcher(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;)Landroid/text/TextWatcher;

    move-result-object v0

    iput-object v0, p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->textWatcher:Landroid/text/TextWatcher;

    .line 55
    iget-object v0, p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->stringValue:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    iget-object v0, p1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    new-instance v1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$1;-><init>(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0077

    const/4 v3, 0x0

    .line 44
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;-><init>(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setStringList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->mStringList:Ljava/util/List;

    .line 80
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method
