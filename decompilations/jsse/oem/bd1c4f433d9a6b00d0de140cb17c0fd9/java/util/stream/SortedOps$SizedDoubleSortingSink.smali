.class final Ljava/util/stream/SortedOps$SizedDoubleSortingSink;
.super Ljava/util/stream/SortedOps$AbstractDoubleSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizedDoubleSortingSink"
.end annotation


# instance fields
.field private array:[D

.field private offset:I


# direct methods
.method constructor <init>(Ljava/util/stream/Sink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 629
    .local p1, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/SortedOps$AbstractDoubleSortingSink;-><init>(Ljava/util/stream/Sink;)V

    .line 630
    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 6
    .param p1, "t"    # D

    .prologue
    .line 657
    iget-object v0, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    iget v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    aput-wide p1, v0, v1

    .line 658
    return-void
.end method

.method public begin(J)V
    .registers 6
    .param p1, "size"    # J

    .prologue
    .line 634
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-ltz v0, :cond_10

    .line 635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_10
    long-to-int v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    .line 637
    return-void
.end method

.method public end()V
    .registers 5

    .prologue
    .line 641
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    iget v2, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->sort([DII)V

    .line 642
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljava/util/stream/Sink;

    iget v2, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    .line 643
    iget-boolean v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->cancellationWasRequested:Z

    if-nez v1, :cond_25

    .line 644
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    if-ge v0, v1, :cond_40

    .line 645
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljava/util/stream/Sink;

    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    aget-wide v2, v2, v0

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->accept(D)V

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 648
    .end local v0    # "i":I
    :cond_25
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_26
    iget v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->offset:I

    if-ge v0, v1, :cond_40

    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v1}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_40

    .line 649
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljava/util/stream/Sink;

    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    aget-wide v2, v2, v0

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->accept(D)V

    .line 648
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 651
    :cond_40
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v1}, Ljava/util/stream/Sink;->end()V

    .line 652
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/stream/SortedOps$SizedDoubleSortingSink;->array:[D

    .line 653
    return-void
.end method
