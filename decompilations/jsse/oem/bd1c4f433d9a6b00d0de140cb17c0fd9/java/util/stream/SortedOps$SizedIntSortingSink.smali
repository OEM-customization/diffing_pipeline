.class final Ljava/util/stream/SortedOps$SizedIntSortingSink;
.super Ljava/util/stream/SortedOps$AbstractIntSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizedIntSortingSink"
.end annotation


# instance fields
.field private array:[I

.field private offset:I


# direct methods
.method constructor <init>(Ljava/util/stream/Sink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/SortedOps$AbstractIntSortingSink;-><init>(Ljava/util/stream/Sink;)V

    .line 434
    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 5
    .param p1, "t"    # I

    .prologue
    .line 461
    iget-object v0, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    iget v1, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    aput p1, v0, v1

    .line 462
    return-void
.end method

.method public begin(J)V
    .registers 6
    .param p1, "size"    # J

    .prologue
    .line 438
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-ltz v0, :cond_10

    .line 439
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_10
    long-to-int v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    .line 441
    return-void
.end method

.method public end()V
    .registers 5

    .prologue
    .line 445
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    iget v2, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->sort([III)V

    .line 446
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->downstream:Ljava/util/stream/Sink;

    iget v2, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    .line 447
    iget-boolean v1, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->cancellationWasRequested:Z

    if-nez v1, :cond_25

    .line 448
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget v1, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    if-ge v0, v1, :cond_40

    .line 449
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->downstream:Ljava/util/stream/Sink;

    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    aget v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/stream/Sink;->accept(I)V

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 452
    .end local v0    # "i":I
    :cond_25
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_26
    iget v1, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    if-ge v0, v1, :cond_40

    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v1}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_40

    .line 453
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->downstream:Ljava/util/stream/Sink;

    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    aget v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/stream/Sink;->accept(I)V

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 455
    :cond_40
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v1}, Ljava/util/stream/Sink;->end()V

    .line 456
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    .line 457
    return-void
.end method
