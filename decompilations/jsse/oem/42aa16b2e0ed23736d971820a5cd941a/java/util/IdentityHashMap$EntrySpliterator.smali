.class final Ljava/util/IdentityHashMap$EntrySpliterator;
.super Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntrySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/IdentityHashMap$IdentityHashMapSpliterator<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/IdentityHashMap;IIII)V
    .registers 6
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap<",
            "TK;TV;>;IIII)V"
        }
    .end annotation

    .line 1536
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    .line 1537
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api characteristics()I
    .registers 3

    .line 1593
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap$EntrySpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->fence:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->est:I

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->map:Ljava/util/IdentityHashMap;

    iget v1, v1, Ljava/util/IdentityHashMap;->size:I

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_11

    :cond_f
    :goto_f
    const/16 v0, 0x40

    :goto_11
    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1547
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_42

    .line 1551
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->map:Ljava/util/IdentityHashMap;

    move-object v1, v0

    .local v1, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    if-eqz v0, :cond_3c

    iget-object v0, v1, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    move-object v2, v0

    .local v2, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_3c

    iget v0, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    move v3, v0

    .local v3, "i":I
    if-ltz v0, :cond_3c

    .line 1552
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySpliterator;->getFence()I

    move-result v0

    move v4, v0

    .local v4, "hi":I
    iput v0, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    array-length v5, v2

    if-gt v0, v5, :cond_3c

    .line 1553
    :goto_1b
    if-ge v3, v4, :cond_35

    .line 1554
    aget-object v0, v2, v3

    .line 1555
    .local v0, "key":Ljava/lang/Object;
    if-eqz v0, :cond_32

    .line 1556
    nop

    .line 1557
    invoke-static {v0}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1558
    .local v5, "k":Ljava/lang/Object;, "TK;"
    add-int/lit8 v6, v3, 0x1

    aget-object v6, v2, v6

    .line 1559
    .local v6, "v":Ljava/lang/Object;, "TV;"
    new-instance v7, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v7, v5, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1560
    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1553
    .end local v0    # "key":Ljava/lang/Object;
    .end local v5    # "k":Ljava/lang/Object;, "TK;"
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_32
    add-int/lit8 v3, v3, 0x2

    goto :goto_1b

    .line 1564
    :cond_35
    iget v0, v1, Ljava/util/IdentityHashMap;->modCount:I

    iget v5, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->expectedModCount:I

    if-ne v0, v5, :cond_3c

    .line 1565
    return-void

    .line 1567
    .end local v2    # "a":[Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "hi":I
    :cond_3c
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1548
    .end local v1    # "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    :cond_42
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 1571
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_3f

    .line 1573
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->map:Ljava/util/IdentityHashMap;

    iget-object v0, v0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1574
    .local v0, "a":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySpliterator;->getFence()I

    move-result v1

    .line 1575
    .local v1, "hi":I
    :goto_a
    iget v2, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    if-ge v2, v1, :cond_3d

    .line 1576
    iget v2, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    aget-object v2, v0, v2

    .line 1577
    .local v2, "key":Ljava/lang/Object;
    iget v3, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget-object v3, v0, v3

    .line 1578
    .local v3, "v":Ljava/lang/Object;, "TV;"
    iget v5, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    .line 1579
    if-eqz v2, :cond_3c

    .line 1580
    nop

    .line 1581
    invoke-static {v2}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1582
    .local v5, "k":Ljava/lang/Object;, "TK;"
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v5, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1583
    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1584
    iget-object v6, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->map:Ljava/util/IdentityHashMap;

    iget v6, v6, Ljava/util/IdentityHashMap;->modCount:I

    iget v7, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->expectedModCount:I

    if-ne v6, v7, :cond_36

    .line 1586
    return v4

    .line 1585
    :cond_36
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1588
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v5    # "k":Ljava/lang/Object;, "TK;"
    :cond_3c
    goto :goto_a

    .line 1589
    :cond_3d
    const/4 v2, 0x0

    return v2

    .line 1572
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "hi":I
    :cond_3f
    const/4 v0, 0x0

    throw v0
.end method

.method public blacklist trySplit()Ljava/util/IdentityHashMap$EntrySpliterator;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap$EntrySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1540
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v7, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    .local v7, "lo":I
    add-int v1, v7, v0

    ushr-int/lit8 v1, v1, 0x1

    and-int/lit8 v8, v1, -0x2

    .line 1541
    .local v8, "mid":I
    if-lt v7, v8, :cond_10

    const/4 v1, 0x0

    goto :goto_24

    .line 1542
    :cond_10
    new-instance v9, Ljava/util/IdentityHashMap$EntrySpliterator;

    iget-object v2, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->map:Ljava/util/IdentityHashMap;

    iput v8, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    iget v1, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->est:I

    ushr-int/lit8 v5, v1, 0x1

    iput v5, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->est:I

    iget v6, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->expectedModCount:I

    move-object v1, v9

    move v3, v7

    move v4, v8

    invoke-direct/range {v1 .. v6}, Ljava/util/IdentityHashMap$EntrySpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    .line 1541
    :goto_24
    return-object v1
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1531
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySpliterator;->trySplit()Ljava/util/IdentityHashMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method
