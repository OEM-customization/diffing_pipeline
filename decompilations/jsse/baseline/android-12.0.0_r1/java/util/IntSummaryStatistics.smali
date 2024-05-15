.class public Ljava/util/IntSummaryStatistics;
.super Ljava/lang/Object;
.source "IntSummaryStatistics.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private greylist-max-o count:J

.field private greylist-max-o max:I

.field private greylist-max-o min:I

.field private greylist-max-o sum:J


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const v0, 0x7fffffff

    iput v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    .line 69
    const/high16 v0, -0x80000000

    iput v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    .line 76
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 6
    .param p1, "value"    # I

    .line 85
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    .line 86
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    .line 87
    iget v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    .line 88
    iget v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    .line 89
    return-void
.end method

.method public whitelist test-api combine(Ljava/util/IntSummaryStatistics;)V
    .registers 6
    .param p1, "other"    # Ljava/util/IntSummaryStatistics;

    .line 98
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    iget-wide v2, p1, Ljava/util/IntSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    .line 99
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    iget-wide v2, p1, Ljava/util/IntSummaryStatistics;->sum:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    .line 100
    iget v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    iget v1, p1, Ljava/util/IntSummaryStatistics;->min:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    .line 101
    iget v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    iget v1, p1, Ljava/util/IntSummaryStatistics;->max:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    .line 102
    return-void
.end method

.method public final whitelist test-api getAverage()D
    .registers 5

    .line 150
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getSum()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getCount()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_18

    :cond_16
    const-wide/16 v0, 0x0

    :goto_18
    return-wide v0
.end method

.method public final whitelist test-api getCount()J
    .registers 3

    .line 110
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    return-wide v0
.end method

.method public final whitelist test-api getMax()I
    .registers 2

    .line 140
    iget v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    return v0
.end method

.method public final whitelist test-api getMin()I
    .registers 2

    .line 130
    iget v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    return v0
.end method

.method public final whitelist test-api getSum()J
    .registers 3

    .line 120
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 162
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 165
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 166
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getSum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 167
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getMin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 168
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getAverage()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 169
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getMax()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 162
    const-string v1, "%s{count=%d, sum=%d, min=%d, average=%f, max=%d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
