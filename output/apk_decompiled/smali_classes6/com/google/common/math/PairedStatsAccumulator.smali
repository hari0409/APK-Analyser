.class public final Lcom/google/common/math/PairedStatsAccumulator;
.super Ljava/lang/Object;
.source "PairedStatsAccumulator.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# instance fields
.field private sumOfProductsOfDeltas:D

.field private final xStats:Lcom/google/common/math/StatsAccumulator;

.field private final yStats:Lcom/google/common/math/StatsAccumulator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lcom/google/common/math/StatsAccumulator;-><init>()V

    iput-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    .line 39
    new-instance v0, Lcom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lcom/google/common/math/StatsAccumulator;-><init>()V

    iput-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    return-void
.end method

.method private static ensureInUnitRange(D)D
    .locals 6
    .param p0, "value"    # D

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 239
    cmpl-double v4, p0, v0

    if-ltz v4, :cond_1

    move-wide p0, v0

    .line 245
    .end local p0    # "value":D
    :cond_0
    :goto_0
    return-wide p0

    .line 242
    .restart local p0    # "value":D
    :cond_1
    cmpg-double v0, p0, v2

    if-gtz v0, :cond_0

    move-wide p0, v2

    .line 243
    goto :goto_0
.end method

.method private ensurePositive(D)D
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 231
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 234
    .end local p1    # "value":D
    :goto_0
    return-wide p1

    .restart local p1    # "value":D
    :cond_0
    const-wide/16 p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(DD)V
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 56
    invoke-static {p1, p2}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3, p4}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 58
    iget-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v2

    sub-double v2, p1, v2

    iget-object v4, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v4}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v4

    sub-double v4, p3, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v0, p3, p4}, Lcom/google/common/math/StatsAccumulator;->add(D)V

    .line 64
    return-void

    .line 61
    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    goto :goto_0
.end method

.method public addAll(Lcom/google/common/math/PairedStats;)V
    .locals 10
    .param p1, "values"    # Lcom/google/common/math/PairedStats;

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->xStats()Lcom/google/common/math/Stats;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/Stats;)V

    .line 76
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    .line 88
    :goto_1
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->yStats()Lcom/google/common/math/Stats;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/math/StatsAccumulator;->addAll(Lcom/google/common/math/Stats;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    .line 83
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->sumOfProductsOfDeltas()D

    move-result-wide v2

    .line 84
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->xStats()Lcom/google/common/math/Stats;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v4

    iget-object v6, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v6}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 85
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->yStats()Lcom/google/common/math/Stats;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v6

    iget-object v8, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v8}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    .line 86
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    goto :goto_1
.end method

.method public count()J
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public final leastSquaresFit()Lcom/google/common/math/LinearTransformation;
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-lez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 213
    iget-wide v6, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    invoke-static {}, Lcom/google/common/math/LinearTransformation;->forNaN()Lcom/google/common/math/LinearTransformation;

    move-result-object v2

    .line 226
    :goto_1
    return-object v2

    :cond_0
    move v2, v4

    .line 212
    goto :goto_0

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v0

    .line 217
    .local v0, "xSumOfSquaresOfDeltas":D
    cmpl-double v2, v0, v10

    if-lez v2, :cond_3

    .line 218
    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-lez v2, :cond_2

    .line 219
    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v2

    iget-object v4, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v4}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LinearTransformation;->mapping(DD)Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    div-double/2addr v4, v0

    .line 220
    invoke-virtual {v2, v4, v5}, Lcom/google/common/math/LinearTransformation$LinearTransformationBuilder;->withSlope(D)Lcom/google/common/math/LinearTransformation;

    move-result-object v2

    goto :goto_1

    .line 222
    :cond_2
    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/math/LinearTransformation;->horizontal(D)Lcom/google/common/math/LinearTransformation;

    move-result-object v2

    goto :goto_1

    .line 225
    :cond_3
    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v6

    cmpl-double v2, v6, v10

    if-lez v2, :cond_4

    :goto_2
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 226
    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/math/LinearTransformation;->vertical(D)Lcom/google/common/math/LinearTransformation;

    move-result-object v2

    goto :goto_1

    :cond_4
    move v3, v4

    .line 225
    goto :goto_2
.end method

.method public final pearsonsCorrelationCoefficient()D
    .locals 10

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 166
    iget-wide v6, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 167
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    .line 177
    :goto_1
    return-wide v6

    .line 165
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 169
    :cond_1
    iget-object v6, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v6}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v2

    .line 170
    .local v2, "xSumOfSquaresOfDeltas":D
    iget-object v6, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v6}, Lcom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v4

    .line 171
    .local v4, "ySumOfSquaresOfDeltas":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 172
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 175
    mul-double v6, v2, v4

    .line 176
    invoke-direct {p0, v6, v7}, Lcom/google/common/math/PairedStatsAccumulator;->ensurePositive(D)D

    move-result-wide v0

    .line 177
    .local v0, "productOfSumsOfSquaresOfDeltas":D
    iget-wide v6, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/google/common/math/PairedStatsAccumulator;->ensureInUnitRange(D)D

    move-result-wide v6

    goto :goto_1

    .line 171
    .end local v0    # "productOfSumsOfSquaresOfDeltas":D
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 172
    :cond_3
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public populationCovariance()D
    .locals 4

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 127
    iget-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final sampleCovariance()D
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 145
    iget-wide v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-virtual {p0}, Lcom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v2

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public snapshot()Lcom/google/common/math/PairedStats;
    .locals 6

    .prologue
    .line 93
    new-instance v0, Lcom/google/common/math/PairedStats;

    iget-object v1, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v1}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/common/math/PairedStats;-><init>(Lcom/google/common/math/Stats;Lcom/google/common/math/Stats;D)V

    return-object v0
.end method

.method public xStats()Lcom/google/common/math/Stats;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->xStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object v0

    return-object v0
.end method

.method public yStats()Lcom/google/common/math/Stats;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/common/math/PairedStatsAccumulator;->yStats:Lcom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object v0

    return-object v0
.end method
