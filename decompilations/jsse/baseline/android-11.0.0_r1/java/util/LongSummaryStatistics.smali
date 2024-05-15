.class public Ljava/util/LongSummaryStatistics;
.super Ljava/lang/Object;
.source "LongSummaryStatistics.java"

# interfaces
.implements Ljava/util/function/LongConsumer;
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private greylist-max-o count:J

.field private greylist-max-o max:J

.field private greylist-max-o min:J

.field private greylist-max-o sum:J


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    .line 70
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    .line 77
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api accept(I)V
    .registers 4
    .param p1, "value"    # I

    .line 86
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/util/LongSummaryStatistics;->accept(J)V

    .line 87
    return-void
.end method

.method public whitelist core-platform-api test-api accept(J)V
    .registers 7
    .param p1, "value"    # J

    .line 96
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    .line 97
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    .line 98
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    .line 99
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    .line 100
    return-void
.end method

.method public whitelist core-platform-api test-api combine(Ljava/util/LongSummaryStatistics;)V
    .registers 6
    .param p1, "other"    # Ljava/util/LongSummaryStatistics;

    .line 110
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    iget-wide v2, p1, Ljava/util/LongSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    .line 111
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    iget-wide v2, p1, Ljava/util/LongSummaryStatistics;->sum:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    .line 112
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    iget-wide v2, p1, Ljava/util/LongSummaryStatistics;->min:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    .line 113
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    iget-wide v2, p1, Ljava/util/LongSummaryStatistics;->max:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    .line 114
    return-void
.end method

.method public final whitelist core-platform-api test-api getAverage()D
    .registers 5

    .line 162
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getSum()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getCount()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_18

    :cond_16
    const-wide/16 v0, 0x0

    :goto_18
    return-wide v0
.end method

.method public final whitelist core-platform-api test-api getCount()J
    .registers 3

    .line 122
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    return-wide v0
.end method

.method public final whitelist core-platform-api test-api getMax()J
    .registers 3

    .line 152
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    return-wide v0
.end method

.method public final whitelist core-platform-api test-api getMin()J
    .registers 3

    .line 142
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    return-wide v0
.end method

.method public final whitelist core-platform-api test-api getSum()J
    .registers 3

    .line 132
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    return-wide v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 174
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 177
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 178
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getSum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 179
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getMin()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 180
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getAverage()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 181
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getMax()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 174
    const-string v1, "%s{count=%d, sum=%d, min=%d, average=%f, max=%d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
