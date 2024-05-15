.class public Ljava/util/DoubleSummaryStatistics;
.super Ljava/lang/Object;
.source "DoubleSummaryStatistics.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field private greylist-max-o count:J

.field private greylist-max-o max:D

.field private greylist-max-o min:D

.field private greylist-max-o simpleSum:D

.field private greylist-max-o sum:D

.field private greylist-max-o sumCompensation:D


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    .line 69
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    .line 76
    return-void
.end method

.method private greylist-max-o sumWithCompensation(D)V
    .registers 9
    .param p1, "value"    # D

    .line 113
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    sub-double v0, p1, v0

    .line 114
    .local v0, "tmp":D
    iget-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->sum:D

    add-double v4, v2, v0

    .line 115
    .local v4, "velvel":D
    sub-double v2, v4, v2

    sub-double/2addr v2, v0

    iput-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    .line 116
    iput-wide v4, p0, Ljava/util/DoubleSummaryStatistics;->sum:D

    .line 117
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 7
    .param p1, "value"    # D

    .line 85
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    .line 86
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    .line 88
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    .line 89
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    .line 90
    return-void
.end method

.method public whitelist test-api combine(Ljava/util/DoubleSummaryStatistics;)V
    .registers 6
    .param p1, "other"    # Ljava/util/DoubleSummaryStatistics;

    .line 100
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    iget-wide v2, p1, Ljava/util/DoubleSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    .line 101
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    iget-wide v2, p1, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    .line 102
    iget-wide v0, p1, Ljava/util/DoubleSummaryStatistics;->sum:D

    invoke-direct {p0, v0, v1}, Ljava/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    .line 103
    iget-wide v0, p1, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    invoke-direct {p0, v0, v1}, Ljava/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    .line 104
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    iget-wide v2, p1, Ljava/util/DoubleSummaryStatistics;->min:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    .line 105
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    iget-wide v2, p1, Ljava/util/DoubleSummaryStatistics;->max:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    .line 106
    return-void
.end method

.method public final whitelist test-api getAverage()D
    .registers 5

    .line 212
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getSum()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_17

    :cond_15
    const-wide/16 v0, 0x0

    :goto_17
    return-wide v0
.end method

.method public final whitelist test-api getCount()J
    .registers 3

    .line 125
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    return-wide v0
.end method

.method public final whitelist test-api getMax()D
    .registers 3

    .line 189
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    return-wide v0
.end method

.method public final whitelist test-api getMin()D
    .registers 3

    .line 175
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    return-wide v0
.end method

.method public final whitelist test-api getSum()D
    .registers 5

    .line 153
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->sum:D

    iget-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    add-double/2addr v0, v2

    .line 154
    .local v0, "tmp":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 159
    iget-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    return-wide v2

    .line 161
    :cond_16
    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 224
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 227
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 228
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getSum()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 229
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getMin()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 230
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getAverage()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 231
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getMax()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 224
    const-string v1, "%s{count=%d, sum=%f, min=%f, average=%f, max=%f}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
