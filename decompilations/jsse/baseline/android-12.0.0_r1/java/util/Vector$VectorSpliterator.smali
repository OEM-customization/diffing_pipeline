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
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o array:[Ljava/lang/Object;

.field private greylist-max-o expectedModCount:I

.field private greylist-max-o fence:I

.field private greylist-max-o index:I

.field private final greylist-max-o list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Vector;[Ljava/lang/Object;III)V
    .registers 6
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "origin"    # I
    .param p4, "fence"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "TE;>;[",
            "Ljava/lang/Object;",
            "III)V"
        }
    .end annotation

    .line 1372
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector$VectorSpliterator<TE;>;"
    .local p1, "list":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1373
    iput-object p1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    .line 1374
    iput-object p2, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    .line 1375
    iput p3, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .line 1376
    iput p4, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    .line 1377
    iput p5, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    .line 1378
    return-void
.end method

.method private greylist-max-o getFence()I
    .registers 4

    .line 1382
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector$VectorSpliterator<TE;>;"
    iget v0, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    move v1, v0

    .local v1, "hi":I
    if-gez v0, :cond_20

    .line 1383
    iget-object v0, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    monitor-enter v0

    .line 1384
    :try_start_8
    iget-object v2, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget-object v2, v2, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iput-object v2, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    .line 1385
    iget-object v2, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget v2, v2, Ljava/util/Vector;->modCount:I

    iput v2, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    .line 1386
    iget-object v2, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget v2, v2, Ljava/util/Vector;->elementCount:I

    iput v2, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    move v1, v2

    .line 1387
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception v2

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1d

    throw v2

    .line 1389
    :cond_20
    :goto_20
    return v1
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1445
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector$VectorSpliterator<TE;>;"
    const/16 v0, 0x4050

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1441
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector$VectorSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1418
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector$VectorSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_45

    .line 1420
    iget-object v0, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    move-object v1, v0

    .local v1, "lst":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    if-eqz v0, :cond_3f

    .line 1421
    iget v0, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    move v2, v0

    .local v2, "hi":I
    if-gez v0, :cond_1f

    .line 1422
    monitor-enter v1

    .line 1423
    :try_start_d
    iget v0, v1, Ljava/util/Vector;->modCount:I

    iput v0, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    .line 1424
    iget-object v0, v1, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    .line 1425
    .local v0, "a":[Ljava/lang/Object;
    iget v3, v1, Ljava/util/Vector;->elementCount:I

    iput v3, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    move v2, v3

    .line 1426
    monitor-exit v1

    goto :goto_21

    .end local v0    # "a":[Ljava/lang/Object;
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    throw v0

    .line 1429
    :cond_1f
    iget-object v0, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    .line 1430
    .restart local v0    # "a":[Ljava/lang/Object;
    :goto_21
    if-eqz v0, :cond_3f

    iget v3, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    move v4, v3

    .local v4, "i":I
    if-ltz v3, :cond_3f

    iput v2, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    array-length v3, v0

    if-gt v2, v3, :cond_3f

    .line 1431
    :goto_2d
    if-ge v4, v2, :cond_38

    .line 1432
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .local v3, "i":I
    aget-object v4, v0, v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v4, v3

    goto :goto_2d

    .line 1433
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_38
    iget v3, v1, Ljava/util/Vector;->modCount:I

    iget v5, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    if-ne v3, v5, :cond_3f

    .line 1434
    return-void

    .line 1437
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "hi":I
    .end local v4    # "i":I
    :cond_3f
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1419
    .end local v1    # "lst":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_45
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1402
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector$VectorSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_28

    .line 1404
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    move v2, v1

    .local v2, "i":I
    if-le v0, v1, :cond_26

    .line 1405
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .line 1406
    iget-object v0, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1407
    iget-object v0, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget v0, v0, Ljava/util/Vector;->modCount:I

    iget v1, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    if-ne v0, v1, :cond_20

    .line 1409
    const/4 v0, 0x1

    return v0

    .line 1408
    :cond_20
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1411
    :cond_26
    const/4 v0, 0x0

    return v0

    .line 1403
    .end local v2    # "i":I
    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1393
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector$VectorSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v7, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .local v7, "lo":I
    add-int v1, v7, v0

    ushr-int/lit8 v8, v1, 0x1

    .line 1394
    .local v8, "mid":I
    if-lt v7, v8, :cond_e

    const/4 v1, 0x0

    goto :goto_1e

    .line 1395
    :cond_e
    new-instance v9, Ljava/util/Vector$VectorSpliterator;

    iget-object v2, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget-object v3, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    iput v8, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    iget v6, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    move-object v1, v9

    move v4, v7

    move v5, v8

    invoke-direct/range {v1 .. v6}, Ljava/util/Vector$VectorSpliterator;-><init>(Ljava/util/Vector;[Ljava/lang/Object;III)V

    .line 1394
    :goto_1e
    return-object v1
.end method
