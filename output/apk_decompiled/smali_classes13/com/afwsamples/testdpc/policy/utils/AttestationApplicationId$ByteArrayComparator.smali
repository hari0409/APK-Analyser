.class Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;
.super Ljava/lang/Object;
.source "AttestationApplicationId.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ByteArrayComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;->this$0:Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;
    .param p2, "x1"    # Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$1;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;-><init>(Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 173
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;->compare([B[B)I

    move-result v0

    return v0
.end method

.method public compare([B[B)I
    .locals 6
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    .line 176
    array-length v4, p1

    array-length v5, p2

    invoke-static {v4, v5}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    .line 177
    .local v1, "res":I
    if-eqz v1, :cond_0

    move v2, v1

    .end local v1    # "res":I
    .local v2, "res":I
    move v3, v1

    .line 182
    .end local v2    # "res":I
    .local v3, "res":I
    :goto_0
    return v3

    .line 178
    .end local v3    # "res":I
    .restart local v1    # "res":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 179
    aget-byte v4, p1, v0

    aget-byte v5, p2, v0

    invoke-static {v4, v5}, Ljava/lang/Byte;->compare(BB)I

    move-result v1

    .line 180
    if-eqz v1, :cond_1

    move v2, v1

    .end local v1    # "res":I
    .restart local v2    # "res":I
    move v3, v1

    .end local v2    # "res":I
    .restart local v3    # "res":I
    goto :goto_0

    .line 178
    .end local v3    # "res":I
    .restart local v1    # "res":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    .end local v1    # "res":I
    .restart local v2    # "res":I
    move v3, v1

    .line 182
    .end local v2    # "res":I
    .restart local v3    # "res":I
    goto :goto_0
.end method
