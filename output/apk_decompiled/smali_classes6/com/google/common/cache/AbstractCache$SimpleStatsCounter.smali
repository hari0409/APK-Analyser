.class public final Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;
.super Ljava/lang/Object;
.source "AbstractCache.java"

# interfaces
.implements Lcom/google/common/cache/AbstractCache$StatsCounter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/AbstractCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleStatsCounter"
.end annotation


# instance fields
.field private final evictionCount:Lcom/google/common/cache/LongAddable;

.field private final hitCount:Lcom/google/common/cache/LongAddable;

.field private final loadExceptionCount:Lcom/google/common/cache/LongAddable;

.field private final loadSuccessCount:Lcom/google/common/cache/LongAddable;

.field private final missCount:Lcom/google/common/cache/LongAddable;

.field private final totalLoadTime:Lcom/google/common/cache/LongAddable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lcom/google/common/cache/LongAddable;

    .line 196
    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lcom/google/common/cache/LongAddable;

    .line 197
    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lcom/google/common/cache/LongAddable;

    .line 198
    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lcom/google/common/cache/LongAddable;

    .line 199
    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lcom/google/common/cache/LongAddable;

    .line 200
    invoke-static {}, Lcom/google/common/cache/LongAddables;->create()Lcom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lcom/google/common/cache/LongAddable;

    .line 203
    return-void
.end method


# virtual methods
.method public incrementBy(Lcom/google/common/cache/AbstractCache$StatsCounter;)V
    .locals 4
    .param p1, "other"    # Lcom/google/common/cache/AbstractCache$StatsCounter;

    .prologue
    .line 247
    invoke-interface {p1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->snapshot()Lcom/google/common/cache/CacheStats;

    move-result-object v0

    .line 248
    .local v0, "otherStats":Lcom/google/common/cache/CacheStats;
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lcom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->hitCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 249
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lcom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->missCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 250
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lcom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->loadSuccessCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 251
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lcom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->loadExceptionCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 252
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lcom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->totalLoadTime()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 253
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lcom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->evictionCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 254
    return-void
.end method

.method public recordEviction()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->increment()V

    .line 232
    return-void
.end method

.method public recordHits(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lcom/google/common/cache/LongAddable;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 209
    return-void
.end method

.method public recordLoadException(J)V
    .locals 1
    .param p1, "loadTime"    # J

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->increment()V

    .line 226
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 227
    return-void
.end method

.method public recordLoadSuccess(J)V
    .locals 1
    .param p1, "loadTime"    # J

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->increment()V

    .line 220
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lcom/google/common/cache/LongAddable;

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 221
    return-void
.end method

.method public recordMisses(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lcom/google/common/cache/LongAddable;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/LongAddable;->add(J)V

    .line 215
    return-void
.end method

.method public snapshot()Lcom/google/common/cache/CacheStats;
    .locals 14

    .prologue
    .line 236
    new-instance v1, Lcom/google/common/cache/CacheStats;

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lcom/google/common/cache/LongAddable;

    .line 237
    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lcom/google/common/cache/LongAddable;

    .line 238
    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lcom/google/common/cache/LongAddable;

    .line 239
    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lcom/google/common/cache/LongAddable;

    .line 240
    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v8

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lcom/google/common/cache/LongAddable;

    .line 241
    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v10

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lcom/google/common/cache/LongAddable;

    .line 242
    invoke-interface {v0}, Lcom/google/common/cache/LongAddable;->sum()J

    move-result-wide v12

    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    .line 236
    return-object v1
.end method
