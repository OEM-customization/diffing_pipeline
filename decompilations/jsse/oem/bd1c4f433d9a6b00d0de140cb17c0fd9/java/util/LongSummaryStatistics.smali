.class public Ljava/util/LongSummaryStatistics;
.super Ljava/lang/Object;
.source "LongSummaryStatistics.java"

# interfaces
.implements Ljava/util/function/LongConsumer;
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private count:J

.field private max:J

.field private min:J

.field private sum:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    .line 69
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    .line 76
    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 85
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/util/LongSummaryStatistics;->accept(J)V

    .line 86
    return-void
.end method

.method public accept(J)V
    .registers 8
    .param p1, "value"    # J

    .prologue
    .line 95
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    .line 96
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    .line 97
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    .line 98
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    .line 99
    return-void
.end method

.method public combine(Ljava/util/LongSummaryStatistics;)V
    .registers 6
    .param p1, "other"    # Ljava/util/LongSummaryStatistics;

    .prologue
    .line 109
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    iget-wide v2, p1, Ljava/util/LongSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    .line 110
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    iget-wide v2, p1, Ljava/util/LongSummaryStatistics;->sum:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    .line 111
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    iget-wide v2, p1, Ljava/util/LongSummaryStatistics;->min:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    .line 112
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    iget-wide v2, p1, Ljava/util/LongSummaryStatistics;->max:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    .line 113
    return-void
.end method

.method public final getAverage()D
    .registers 5

    .prologue
    .line 161
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

    :goto_15
    return-wide v0

    :cond_16
    const-wide/16 v0, 0x0

    goto :goto_15
.end method

.method public final getCount()J
    .registers 3

    .prologue
    .line 121
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    return-wide v0
.end method

.method public final getMax()J
    .registers 3

    .prologue
    .line 151
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    return-wide v0
.end method

.method public final getMin()J
    .registers 3

    .prologue
    .line 141
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    return-wide v0
.end method

.method public final getSum()J
    .registers 3

    .prologue
    .line 131
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 174
    const-string/jumbo v0, "%s{count=%d, sum=%d, min=%d, average=%f, max=%d}"

    .line 173
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 175
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 176
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 177
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getSum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 178
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getMin()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 179
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getAverage()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 180
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getMax()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 173
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
