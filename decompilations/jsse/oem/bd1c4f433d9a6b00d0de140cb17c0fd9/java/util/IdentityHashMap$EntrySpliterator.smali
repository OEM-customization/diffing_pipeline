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
        "Ljava/util/IdentityHashMap$IdentityHashMapSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/IdentityHashMap;IIII)V
    .registers 6
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    .prologue
    .line 1536
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    .line 1537
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap$EntrySpliterator<TK;TV;>;"
    const/4 v0, 0x0

    .line 1593
    iget v1, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->fence:I

    if-ltz v1, :cond_d

    iget v1, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->est:I

    iget-object v2, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->map:Ljava/util/IdentityHashMap;

    iget v2, v2, Ljava/util/IdentityHashMap;->size:I

    if-ne v1, v2, :cond_f

    :cond_d
    const/16 v0, 0x40

    :cond_f
    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1547
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_8

    .line 1548
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 1551
    :cond_8
    iget-object v5, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->map:Ljava/util/IdentityHashMap;

    .local v5, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    if-eqz v5, :cond_3d

    iget-object v0, v5, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .local v0, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_3d

    .line 1552
    iget v2, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    .local v2, "i":I
    if-ltz v2, :cond_3d

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySpliterator;->getFence()I

    move-result v1

    .local v1, "hi":I
    iput v1, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    array-length v7, v0

    if-gt v1, v7, :cond_3d

    .line 1553
    :goto_1d
    if-ge v2, v1, :cond_36

    .line 1554
    aget-object v4, v0, v2

    .line 1555
    .local v4, "key":Ljava/lang/Object;
    if-eqz v4, :cond_33

    .line 1557
    invoke-static {v4}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1558
    .local v3, "k":Ljava/lang/Object;, "TK;"
    add-int/lit8 v7, v2, 0x1

    aget-object v6, v0, v7

    .line 1560
    .local v6, "v":Ljava/lang/Object;, "TV;"
    new-instance v7, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v7, v3, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1559
    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1553
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_33
    add-int/lit8 v2, v2, 0x2

    goto :goto_1d

    .line 1564
    .end local v4    # "key":Ljava/lang/Object;
    :cond_36
    iget v7, v5, Ljava/util/IdentityHashMap;->modCount:I

    iget v8, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->expectedModCount:I

    if-ne v7, v8, :cond_3d

    .line 1565
    return-void

    .line 1567
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "hi":I
    .end local v2    # "i":I
    :cond_3d
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 1571
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_8

    .line 1572
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1573
    :cond_8
    iget-object v5, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->map:Ljava/util/IdentityHashMap;

    iget-object v0, v5, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1574
    .local v0, "a":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySpliterator;->getFence()I

    move-result v1

    .line 1575
    .local v1, "hi":I
    :cond_10
    iget v5, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    if-ge v5, v1, :cond_42

    .line 1576
    iget v5, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    aget-object v3, v0, v5

    .line 1577
    .local v3, "key":Ljava/lang/Object;
    iget v5, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v0, v5

    .line 1578
    .local v4, "v":Ljava/lang/Object;, "TV;"
    iget v5, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    .line 1579
    if-eqz v3, :cond_10

    .line 1581
    invoke-static {v3}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1583
    .local v2, "k":Ljava/lang/Object;, "TK;"
    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v5, v2, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1582
    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1584
    iget-object v5, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->map:Ljava/util/IdentityHashMap;

    iget v5, v5, Ljava/util/IdentityHashMap;->modCount:I

    iget v6, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->expectedModCount:I

    if-eq v5, v6, :cond_40

    .line 1585
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 1586
    :cond_40
    const/4 v5, 0x1

    return v5

    .line 1589
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_42
    const/4 v5, 0x0

    return v5
.end method

.method public trySplit()Ljava/util/IdentityHashMap$EntrySpliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap$EntrySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1540
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySpliterator;->getFence()I

    move-result v6

    .local v6, "hi":I
    iget v2, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    .local v2, "lo":I
    add-int v0, v2, v6

    ushr-int/lit8 v0, v0, 0x1

    and-int/lit8 v3, v0, -0x2

    .line 1541
    .local v3, "mid":I
    if-lt v2, v3, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 1542
    :cond_10
    new-instance v0, Ljava/util/IdentityHashMap$EntrySpliterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->map:Ljava/util/IdentityHashMap;

    iput v3, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->index:I

    iget v4, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->est:I

    ushr-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->est:I

    .line 1543
    iget v5, p0, Ljava/util/IdentityHashMap$EntrySpliterator;->expectedModCount:I

    .line 1542
    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$EntrySpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    goto :goto_f
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 1539
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySpliterator;->trySplit()Ljava/util/IdentityHashMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method
