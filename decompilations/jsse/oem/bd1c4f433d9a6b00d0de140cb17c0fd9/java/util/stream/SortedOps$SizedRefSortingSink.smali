.class final Ljava/util/stream/SortedOps$SizedRefSortingSink;
.super Ljava/util/stream/SortedOps$AbstractRefSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizedRefSortingSink"
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
.field private array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private offset:I


# direct methods
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
    .line 335
    .local p0, "this":Ljava/util/stream/SortedOps$SizedRefSortingSink;, "Ljava/util/stream/SortedOps$SizedRefSortingSink<TT;>;"
    .local p1, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/SortedOps$AbstractRefSortingSink;-><init>(Ljava/util/stream/Sink;Ljava/util/Comparator;)V

    .line 336
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Ljava/util/stream/SortedOps$SizedRefSortingSink;, "Ljava/util/stream/SortedOps$SizedRefSortingSink<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    aput-object p1, v0, v1

    .line 365
    return-void
.end method

.method public begin(J)V
    .registers 6
    .param p1, "size"    # J

    .prologue
    .line 341
    .local p0, "this":Ljava/util/stream/SortedOps$SizedRefSortingSink;, "Ljava/util/stream/SortedOps$SizedRefSortingSink<TT;>;"
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-ltz v0, :cond_10

    .line 342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_10
    long-to-int v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    .line 344
    return-void
.end method

.method public end()V
    .registers 6

    .prologue
    .line 348
    .local p0, "this":Ljava/util/stream/SortedOps$SizedRefSortingSink;, "Ljava/util/stream/SortedOps$SizedRefSortingSink<TT;>;"
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    iget-object v3, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->comparator:Ljava/util/Comparator;

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 349
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->downstream:Ljava/util/stream/Sink;

    iget v2, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    .line 350
    iget-boolean v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->cancellationWasRequested:Z

    if-nez v1, :cond_27

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    if-ge v0, v1, :cond_42

    .line 352
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->downstream:Ljava/util/stream/Sink;

    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 355
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_28
    iget v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->offset:I

    if-ge v0, v1, :cond_42

    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v1}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_42

    .line 356
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->downstream:Ljava/util/stream/Sink;

    iget-object v2, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 358
    :cond_42
    iget-object v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v1}, Ljava/util/stream/Sink;->end()V

    .line 359
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/stream/SortedOps$SizedRefSortingSink;->array:[Ljava/lang/Object;

    .line 360
    return-void
.end method
