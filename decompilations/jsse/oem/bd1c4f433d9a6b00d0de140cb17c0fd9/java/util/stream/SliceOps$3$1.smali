.class Ljava/util/stream/SliceOps$3$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SliceOps$3;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedLong",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field m:J

.field n:J

.field final synthetic this$1:Ljava/util/stream/SliceOps$3;

.field final synthetic val$limit:J

.field final synthetic val$skip:J


# direct methods
.method constructor <init>(Ljava/util/stream/SliceOps$3;Ljava/util/stream/Sink;JJ)V
    .registers 12
    .param p1, "this$1"    # Ljava/util/stream/SliceOps$3;

    .prologue
    .line 1
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/SliceOps$3$1;->this$1:Ljava/util/stream/SliceOps$3;

    iput-wide p3, p0, Ljava/util/stream/SliceOps$3$1;->val$skip:J

    iput-wide p5, p0, Ljava/util/stream/SliceOps$3$1;->val$limit:J

    .line 408
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    .line 409
    iget-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->val$skip:J

    iput-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->n:J

    .line 410
    iget-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->val$limit:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    iget-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->val$limit:J

    :goto_17
    iput-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->m:J

    .line 1
    return-void

    .line 410
    :cond_1a
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_17
.end method


# virtual methods
.method public accept(J)V
    .registers 10
    .param p1, "t"    # J

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    .line 419
    iget-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->n:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 420
    iget-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->m:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    .line 421
    iget-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->m:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->m:J

    .line 422
    iget-object v0, p0, Ljava/util/stream/SliceOps$3$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(J)V

    .line 428
    :cond_1a
    :goto_1a
    return-void

    .line 426
    :cond_1b
    iget-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->n:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->n:J

    goto :goto_1a
.end method

.method public begin(J)V
    .registers 10
    .param p1, "size"    # J

    .prologue
    .line 414
    iget-object v6, p0, Ljava/util/stream/SliceOps$3$1;->downstream:Ljava/util/stream/Sink;

    iget-wide v2, p0, Ljava/util/stream/SliceOps$3$1;->val$skip:J

    iget-wide v4, p0, Ljava/util/stream/SliceOps$3$1;->m:J

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ljava/util/stream/SliceOps;->-wrap2(JJJ)J

    move-result-wide v0

    invoke-interface {v6, v0, v1}, Ljava/util/stream/Sink;->begin(J)V

    .line 415
    return-void
.end method

.method public cancellationRequested()Z
    .registers 5

    .prologue
    .line 432
    iget-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljava/util/stream/SliceOps$3$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method
