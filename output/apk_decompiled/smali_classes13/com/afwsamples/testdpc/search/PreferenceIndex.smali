.class public Lcom/afwsamples/testdpc/search/PreferenceIndex;
.super Ljava/lang/Object;
.source "PreferenceIndex.java"


# instance fields
.field public fragmentClass:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "fragmentClass"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/afwsamples/testdpc/search/PreferenceIndex;->key:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/afwsamples/testdpc/search/PreferenceIndex;->title:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/afwsamples/testdpc/search/PreferenceIndex;->fragmentClass:Ljava/lang/String;

    .line 25
    return-void
.end method
