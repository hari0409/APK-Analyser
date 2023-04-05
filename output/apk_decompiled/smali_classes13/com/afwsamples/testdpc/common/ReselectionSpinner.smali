.class public Lcom/afwsamples/testdpc/common/ReselectionSpinner;
.super Landroid/widget/Spinner;
.source "ReselectionSpinner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "mode"    # I

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 53
    return-void
.end method


# virtual methods
.method public setSelection(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ReselectionSpinner;->getSelectedItemPosition()I

    move-result v6

    .line 58
    .local v6, "previousSelectedPosition":I
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 59
    if-ne p1, v6, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ReselectionSpinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    .line 61
    .local v0, "onItemSelectedListener":Landroid/widget/AdapterView$OnItemSelectedListener;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ReselectionSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ReselectionSpinner;->getSelectedItemId()J

    move-result-wide v4

    move-object v1, p0

    move v3, p1

    .line 62
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 66
    .end local v0    # "onItemSelectedListener":Landroid/widget/AdapterView$OnItemSelectedListener;
    :cond_0
    return-void
.end method
