.class final Ljava/util/stream/SortedOps$RefSortingSink;
.super Ljava/util/stream/SortedOps$AbstractRefSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RefSortingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/SortedOps$AbstractRefSortingSink",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -java_util_stream_SortedOps$RefSortingSink-mthref-0(Ljava/util/stream/Sink;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 390
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/util/stream/Sink;Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<-TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Ljava/util/stream/SortedOps$RefSortingSink;, "Ljava/util/stream/SortedOps$RefSortingSink<TT;>;"
    .local p1, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/SortedOps$AbstractRefSortingSink;-><init>(Ljava/util/stream/Sink;Ljava/util/Comparator;)V

    .line 376
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Ljava/util/stream/SortedOps$RefSortingSink;, "Ljava/util/stream/SortedOps$RefSortingSink<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method public begin(J)V
    .registers 6
    .param p1, "size"    # J

    .prologue
    .line 380
    .local p0, "this":Ljava/util/stream/SortedOps$RefSortingSink;, "Ljava/util/stream/SortedOps$RefSortingSink<TT;>;"
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-ltz v0, :cond_10

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_10
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1f

    new-instance v0, Ljava/util/ArrayList;

    long-to-int v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1c
    iput-object v0, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    .line 383
    return-void

    .line 382
    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1c
.end method

.method public end()V
    .registers 7

    .prologue
    .line 387
    .local p0, "this":Ljava/util/stream/SortedOps$RefSortingSink;, "Ljava/util/stream/SortedOps$RefSortingSink<TT;>;"
    iget-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/util/stream/SortedOps$RefSortingSink;->comparator:Ljava/util/Comparator;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 388
    iget-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->downstream:Ljava/util/stream/Sink;

    iget-object v3, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Ljava/util/stream/Sink;->begin(J)V

    .line 389
    iget-boolean v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->cancellationWasRequested:Z

    if-nez v2, :cond_30

    .line 390
    iget-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/util/stream/SortedOps$RefSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/stream/-$Lambda$pApzQPgXBO-Aaix1vtJbLypDt1M;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, Ljava/util/stream/-$Lambda$pApzQPgXBO-Aaix1vtJbLypDt1M;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 398
    :cond_27
    iget-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v2}, Ljava/util/stream/Sink;->end()V

    .line 399
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    .line 400
    return-void

    .line 393
    :cond_30
    iget-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->list:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "t$iterator":Ljava/util/Iterator;
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 394
    .local v0, "t":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_27

    .line 395
    iget-object v2, p0, Ljava/util/stream/SortedOps$RefSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v2, v0}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    goto :goto_36
.end method
