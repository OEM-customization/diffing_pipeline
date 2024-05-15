.class Ljava/util/stream/SliceOps$4$1;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SliceOps$4;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist m:J

.field blacklist n:J

.field final synthetic blacklist this$0:Ljava/util/stream/SliceOps$4;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/SliceOps$4;Ljava/util/stream/Sink;)V
    .registers 7
    .param p1, "this$0"    # Ljava/util/stream/SliceOps$4;

    .line 529
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava/util/stream/SliceOps$4$1;->this$0:Ljava/util/stream/SliceOps$4;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    .line 530
    iget-wide v0, p1, Ljava/util/stream/SliceOps$4;->val$skip:J

    iput-wide v0, p0, Ljava/util/stream/SliceOps$4$1;->n:J

    .line 531
    iget-wide v0, p1, Ljava/util/stream/SliceOps$4;->val$limit:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    iget-wide v0, p1, Ljava/util/stream/SliceOps$4;->val$limit:J

    goto :goto_19

    :cond_14
    const-wide v0, 0x7fffffffffffffffL

    :goto_19
    iput-wide v0, p0, Ljava/util/stream/SliceOps$4$1;->m:J

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 10
    .param p1, "t"    # D

    .line 540
    iget-wide v0, p0, Ljava/util/stream/SliceOps$4$1;->n:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x1

    if-nez v4, :cond_19

    .line 541
    iget-wide v0, p0, Ljava/util/stream/SliceOps$4$1;->m:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1c

    .line 542
    sub-long/2addr v0, v5

    iput-wide v0, p0, Ljava/util/stream/SliceOps$4$1;->m:J

    .line 543
    iget-object v0, p0, Ljava/util/stream/SliceOps$4$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(D)V

    goto :goto_1c

    .line 547
    :cond_19
    sub-long/2addr v0, v5

    iput-wide v0, p0, Ljava/util/stream/SliceOps$4$1;->n:J

    .line 549
    :cond_1c
    :goto_1c
    return-void
.end method

.method public blacklist begin(J)V
    .registers 11
    .param p1, "size"    # J

    .line 535
    iget-object v0, p0, Ljava/util/stream/SliceOps$4$1;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/SliceOps$4$1;->this$0:Ljava/util/stream/SliceOps$4;

    iget-wide v4, v1, Ljava/util/stream/SliceOps$4;->val$skip:J

    iget-wide v6, p0, Ljava/util/stream/SliceOps$4$1;->m:J

    move-wide v2, p1

    # invokes: Ljava/util/stream/SliceOps;->calcSize(JJJ)J
    invoke-static/range {v2 .. v7}, Ljava/util/stream/SliceOps;->access$300(JJJ)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 536
    return-void
.end method

.method public blacklist cancellationRequested()Z
    .registers 5

    .line 553
    iget-wide v0, p0, Ljava/util/stream/SliceOps$4$1;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljava/util/stream/SliceOps$4$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method
