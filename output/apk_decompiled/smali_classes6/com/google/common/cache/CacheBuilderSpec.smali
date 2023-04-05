.class public final Lcom/google/common/cache/CacheBuilderSpec;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/CacheBuilderSpec$RefreshDurationParser;,
        Lcom/google/common/cache/CacheBuilderSpec$WriteDurationParser;,
        Lcom/google/common/cache/CacheBuilderSpec$AccessDurationParser;,
        Lcom/google/common/cache/CacheBuilderSpec$DurationParser;,
        Lcom/google/common/cache/CacheBuilderSpec$RecordStatsParser;,
        Lcom/google/common/cache/CacheBuilderSpec$ValueStrengthParser;,
        Lcom/google/common/cache/CacheBuilderSpec$KeyStrengthParser;,
        Lcom/google/common/cache/CacheBuilderSpec$ConcurrencyLevelParser;,
        Lcom/google/common/cache/CacheBuilderSpec$MaximumWeightParser;,
        Lcom/google/common/cache/CacheBuilderSpec$MaximumSizeParser;,
        Lcom/google/common/cache/CacheBuilderSpec$InitialCapacityParser;,
        Lcom/google/common/cache/CacheBuilderSpec$LongParser;,
        Lcom/google/common/cache/CacheBuilderSpec$IntegerParser;,
        Lcom/google/common/cache/CacheBuilderSpec$ValueParser;
    }
.end annotation


# static fields
.field private static final KEYS_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final KEY_VALUE_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final VALUE_PARSERS:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/cache/CacheBuilderSpec$ValueParser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field accessExpirationDuration:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field accessExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field concurrencyLevel:Ljava/lang/Integer;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field initialCapacity:Ljava/lang/Integer;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field keyStrength:Lcom/google/common/cache/LocalCache$Strength;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field maximumSize:Ljava/lang/Long;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field maximumWeight:Ljava/lang/Long;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field recordStats:Ljava/lang/Boolean;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field refreshDuration:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field refreshTimeUnit:Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final specification:Ljava/lang/String;

.field valueStrength:Lcom/google/common/cache/LocalCache$Strength;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field writeExpirationDuration:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 87
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilderSpec;->KEYS_SPLITTER:Lcom/google/common/base/Splitter;

    .line 90
    const/16 v0, 0x3d

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilderSpec;->KEY_VALUE_SPLITTER:Lcom/google/common/base/Splitter;

    .line 94
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "initialCapacity"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$InitialCapacityParser;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$InitialCapacityParser;-><init>()V

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "maximumSize"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$MaximumSizeParser;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$MaximumSizeParser;-><init>()V

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "maximumWeight"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$MaximumWeightParser;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$MaximumWeightParser;-><init>()V

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "concurrencyLevel"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$ConcurrencyLevelParser;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$ConcurrencyLevelParser;-><init>()V

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "weakKeys"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$KeyStrengthParser;

    sget-object v3, Lcom/google/common/cache/LocalCache$Strength;->WEAK:Lcom/google/common/cache/LocalCache$Strength;

    invoke-direct {v2, v3}, Lcom/google/common/cache/CacheBuilderSpec$KeyStrengthParser;-><init>(Lcom/google/common/cache/LocalCache$Strength;)V

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "softValues"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$ValueStrengthParser;

    sget-object v3, Lcom/google/common/cache/LocalCache$Strength;->SOFT:Lcom/google/common/cache/LocalCache$Strength;

    invoke-direct {v2, v3}, Lcom/google/common/cache/CacheBuilderSpec$ValueStrengthParser;-><init>(Lcom/google/common/cache/LocalCache$Strength;)V

    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "weakValues"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$ValueStrengthParser;

    sget-object v3, Lcom/google/common/cache/LocalCache$Strength;->WEAK:Lcom/google/common/cache/LocalCache$Strength;

    invoke-direct {v2, v3}, Lcom/google/common/cache/CacheBuilderSpec$ValueStrengthParser;-><init>(Lcom/google/common/cache/LocalCache$Strength;)V

    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "recordStats"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$RecordStatsParser;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$RecordStatsParser;-><init>()V

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "expireAfterAccess"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$AccessDurationParser;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$AccessDurationParser;-><init>()V

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "expireAfterWrite"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$WriteDurationParser;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$WriteDurationParser;-><init>()V

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "refreshAfterWrite"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$RefreshDurationParser;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$RefreshDurationParser;-><init>()V

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "refreshInterval"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$RefreshDurationParser;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$RefreshDurationParser;-><init>()V

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilderSpec;->VALUE_PARSERS:Lcom/google/common/collect/ImmutableMap;

    .line 93
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "specification"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/google/common/cache/CacheBuilderSpec;->specification:Ljava/lang/String;

    .line 127
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/google/common/cache/CacheBuilderSpec;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static disableCaching()Lcom/google/common/cache/CacheBuilderSpec;
    .locals 1

    .prologue
    .line 161
    const-string v0, "maximumSize=0"

    invoke-static {v0}, Lcom/google/common/cache/CacheBuilderSpec;->parse(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilderSpec;

    move-result-object v0

    return-object v0
.end method

.method private static durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;
    .locals 2
    .param p0, "duration"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 282
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 477
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilderSpec;
    .locals 11
    .param p0, "cacheBuilderSpecification"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 135
    new-instance v3, Lcom/google/common/cache/CacheBuilderSpec;

    invoke-direct {v3, p0}, Lcom/google/common/cache/CacheBuilderSpec;-><init>(Ljava/lang/String;)V

    .line 136
    .local v3, "spec":Lcom/google/common/cache/CacheBuilderSpec;
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 137
    sget-object v6, Lcom/google/common/cache/CacheBuilderSpec;->KEYS_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v6, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    .local v2, "keyValuePair":Ljava/lang/String;
    sget-object v6, Lcom/google/common/cache/CacheBuilderSpec;->KEY_VALUE_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v6, v2}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 139
    .local v1, "keyAndValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    :goto_1
    const-string v10, "blank key-value pair"

    invoke-static {v6, v10}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 141
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v10, 0x2

    if-gt v6, v10, :cond_1

    move v6, v7

    :goto_2
    const-string v10, "key-value pair %s with more than one equals sign"

    .line 140
    invoke-static {v6, v10, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 146
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, "key":Ljava/lang/String;
    sget-object v6, Lcom/google/common/cache/CacheBuilderSpec;->VALUE_PARSERS:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v6, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/cache/CacheBuilderSpec$ValueParser;

    .line 148
    .local v5, "valueParser":Lcom/google/common/cache/CacheBuilderSpec$ValueParser;
    if-eqz v5, :cond_2

    move v6, v7

    :goto_3
    const-string v10, "unknown key %s"

    invoke-static {v6, v10, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 150
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v7, :cond_3

    const/4 v4, 0x0

    .line 151
    .local v4, "value":Ljava/lang/String;
    :goto_4
    invoke-interface {v5, v3, v0, v4}, Lcom/google/common/cache/CacheBuilderSpec$ValueParser;->parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "valueParser":Lcom/google/common/cache/CacheBuilderSpec$ValueParser;
    :cond_0
    move v6, v8

    .line 139
    goto :goto_1

    :cond_1
    move v6, v8

    .line 141
    goto :goto_2

    .restart local v0    # "key":Ljava/lang/String;
    .restart local v5    # "valueParser":Lcom/google/common/cache/CacheBuilderSpec$ValueParser;
    :cond_2
    move v6, v8

    .line 148
    goto :goto_3

    .line 150
    :cond_3
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    goto :goto_4

    .line 155
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keyAndValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "keyValuePair":Ljava/lang/String;
    .end local v5    # "valueParser":Lcom/google/common/cache/CacheBuilderSpec$ValueParser;
    :cond_4
    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    if-ne p0, p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v1

    .line 254
    :cond_1
    instance-of v3, p1, Lcom/google/common/cache/CacheBuilderSpec;

    if-nez v3, :cond_2

    move v1, v2

    .line 255
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 257
    check-cast v0, Lcom/google/common/cache/CacheBuilderSpec;

    .line 258
    .local v0, "that":Lcom/google/common/cache/CacheBuilderSpec;
    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    .line 259
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    .line 260
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    .line 261
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    iget-object v4, v0, Lcom/google/common/cache/CacheBuilderSpec;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 262
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    iget-object v4, v0, Lcom/google/common/cache/CacheBuilderSpec;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 263
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    .line 264
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationDuration:J

    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 266
    invoke-static {v4, v5, v3}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationDuration:J

    iget-object v6, v0, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 267
    invoke-static {v4, v5, v6}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v4

    .line 265
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationDuration:J

    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 269
    invoke-static {v4, v5, v3}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationDuration:J

    iget-object v6, v0, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 270
    invoke-static {v4, v5, v6}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v4

    .line 268
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilderSpec;->refreshDuration:J

    iget-object v3, p0, Lcom/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 272
    invoke-static {v4, v5, v3}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/common/cache/CacheBuilderSpec;->refreshDuration:J

    iget-object v6, v0, Lcom/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 273
    invoke-static {v4, v5, v6}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v4

    .line 271
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 236
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationDuration:J

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 244
    invoke-static {v2, v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationDuration:J

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 245
    invoke-static {v2, v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->refreshDuration:J

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 246
    invoke-static {v2, v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 236
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method toCacheBuilder()Lcom/google/common/cache/CacheBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 167
    .local v0, "builder":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->initialCapacity(I)Lcom/google/common/cache/CacheBuilder;

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/common/cache/CacheBuilder;->maximumSize(J)Lcom/google/common/cache/CacheBuilder;

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/common/cache/CacheBuilder;->maximumWeight(J)Lcom/google/common/cache/CacheBuilder;

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 177
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel(I)Lcom/google/common/cache/CacheBuilder;

    .line 179
    :cond_3
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_4

    .line 180
    sget-object v1, Lcom/google/common/cache/CacheBuilderSpec$1;->$SwitchMap$com$google$common$cache$LocalCache$Strength:[I

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Strength;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 185
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 182
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakKeys()Lcom/google/common/cache/CacheBuilder;

    .line 188
    :cond_4
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_5

    .line 189
    sget-object v1, Lcom/google/common/cache/CacheBuilderSpec$1;->$SwitchMap$com$google$common$cache$LocalCache$Strength:[I

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Strength;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 197
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 191
    :pswitch_1
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->softValues()Lcom/google/common/cache/CacheBuilder;

    .line 200
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 201
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->recordStats()Lcom/google/common/cache/CacheBuilder;

    .line 203
    :cond_6
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_7

    .line 204
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationDuration:J

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/CacheBuilder;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    .line 206
    :cond_7
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_8

    .line 207
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationDuration:J

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->accessExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/CacheBuilder;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    .line 209
    :cond_8
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_9

    .line 210
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->refreshDuration:J

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/CacheBuilder;->refreshAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    .line 213
    :cond_9
    return-object v0

    .line 194
    :pswitch_2
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakValues()Lcom/google/common/cache/CacheBuilder;

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 189
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toParsableString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilderSpec;->specification:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilderSpec;->toParsableString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
