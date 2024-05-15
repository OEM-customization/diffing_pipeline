.class final Ljava/util/Vector$VectorSpliterator;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Vector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VectorSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;

.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Vector;[Ljava/lang/Object;III)V
    .registers 6
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "origin"    # I
    .param p4, "fence"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<TE;>;[",
            "Ljava/lang/Object;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 1363
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector$VectorSpliterator<TE;>;"
    .local p1, "list":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1365
    iput-object p1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    .line 1366
    iput-object p2, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    .line 1367
    iput p3, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .line 1368
    iput p4, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    .line 1369
    iput p5, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    .line 1370
    return-void
.end method

.method private getFence()I
    .registers 4

    .prologue
    .line 1374
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector$VectorSpliterator<TE;>;"
    iget v0, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    .local v0, "hi":I
    if-gez v0, :cond_1a

    .line 1375
    iget-object v2, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    monitor-enter v2

    .line 1376
    :try_start_7
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget-object v1, v1, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    .line 1377
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget v1, v1, Ljava/util/Vector;->modCount:I

    iput v1, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    .line 1378
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget v0, v1, Ljava/util/Vector;->elementCount:I

    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/Vector$VectorSpliterator;->fence:I
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1b

    .restart local v0    # "hi":I
    monitor-exit v2

    .line 1381
    :cond_1a
    return v0

    .line 1375
    .end local v0    # "hi":I
    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 1437
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector$VectorSpliterator<TE;>;"
    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .registers 3

    .prologue
    .line 1433
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector$VectorSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1410
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector$VectorSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_8

    .line 1411
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1412
    :cond_8
    iget-object v4, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    .local v4, "lst":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    if-eqz v4, :cond_42

    .line 1413
    iget v1, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    .local v1, "hi":I
    if-gez v1, :cond_38

    .line 1414
    monitor-enter v4

    .line 1415
    :try_start_11
    iget v5, v4, Ljava/util/Vector;->modCount:I

    iput v5, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    .line 1416
    iget-object v0, v4, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    .line 1417
    .local v0, "a":[Ljava/lang/Object;
    iget v1, v4, Ljava/util/Vector;->elementCount:I

    .end local v1    # "hi":I
    iput v1, p0, Ljava/util/Vector$VectorSpliterator;->fence:I
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_35

    .restart local v1    # "hi":I
    monitor-exit v4

    .line 1422
    :goto_1e
    if-eqz v0, :cond_42

    iget v2, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .local v2, "i":I
    if-ltz v2, :cond_42

    iput v1, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    array-length v5, v0

    if-gt v1, v5, :cond_42

    move v3, v2

    .line 1423
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_2a
    if-ge v3, v1, :cond_3b

    .line 1424
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-object v5, v0, v3

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2a

    .line 1414
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "hi":I
    .end local v3    # "i":I
    :catchall_35
    move-exception v5

    monitor-exit v4

    throw v5

    .line 1421
    .restart local v1    # "hi":I
    :cond_38
    iget-object v0, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    .restart local v0    # "a":[Ljava/lang/Object;
    goto :goto_1e

    .line 1425
    .restart local v3    # "i":I
    :cond_3b
    iget v5, v4, Ljava/util/Vector;->modCount:I

    iget v6, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    if-ne v5, v6, :cond_42

    .line 1426
    return-void

    .line 1429
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "hi":I
    .end local v3    # "i":I
    :cond_42
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1394
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector$VectorSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_8

    .line 1395
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1396
    :cond_8
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    move-result v1

    iget v0, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .local v0, "i":I
    if-le v1, v0, :cond_2b

    .line 1397
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .line 1398
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1399
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget v1, v1, Ljava/util/Vector;->modCount:I

    iget v2, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    if-eq v1, v2, :cond_29

    .line 1400
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1401
    :cond_29
    const/4 v1, 0x1

    return v1

    .line 1403
    :cond_2b
    const/4 v1, 0x0

    return v1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1385
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector$VectorSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    move-result v6

    .local v6, "hi":I
    iget v3, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .local v3, "lo":I
    add-int v0, v3, v6

    ushr-int/lit8 v4, v0, 0x1

    .line 1386
    .local v4, "mid":I
    if-lt v3, v4, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 1387
    :cond_e
    new-instance v0, Ljava/util/Vector$VectorSpliterator;

    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget-object v2, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    iput v4, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .line 1388
    iget v5, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    .line 1387
    invoke-direct/range {v0 .. v5}, Ljava/util/Vector$VectorSpliterator;-><init>(Ljava/util/Vector;[Ljava/lang/Object;III)V

    goto :goto_d
.end method
