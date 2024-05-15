.class final Ljava/util/IdentityHashMap$ValueSpliterator;
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
    name = "ValueSpliterator"
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
        "<TV;>;"
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
    .line 1477
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    .line 1478
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap$ValueSpliterator<TK;TV;>;"
    const/4 v0, 0x0

    .line 1526
    iget v1, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->fence:I

    if-ltz v1, :cond_d

    iget v1, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->est:I

    iget-object v2, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->map:Ljava/util/IdentityHashMap;

    iget v2, v2, Ljava/util/IdentityHashMap;->size:I

    if-ne v1, v2, :cond_f

    :cond_d
    const/16 v0, 0x40

    :cond_f
    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1488
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-nez p1, :cond_8

    .line 1489
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1492
    :cond_8
    iget-object v3, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->map:Ljava/util/IdentityHashMap;

    .local v3, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    if-eqz v3, :cond_34

    iget-object v0, v3, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .local v0, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_34

    .line 1493
    iget v2, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    .local v2, "i":I
    if-ltz v2, :cond_34

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$ValueSpliterator;->getFence()I

    move-result v1

    .local v1, "hi":I
    iput v1, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    array-length v5, v0

    if-gt v1, v5, :cond_34

    .line 1494
    :goto_1d
    if-ge v2, v1, :cond_2d

    .line 1495
    aget-object v5, v0, v2

    if-eqz v5, :cond_2a

    .line 1496
    add-int/lit8 v5, v2, 0x1

    aget-object v4, v0, v5

    .line 1497
    .local v4, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1494
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_2a
    add-int/lit8 v2, v2, 0x2

    goto :goto_1d

    .line 1500
    :cond_2d
    iget v5, v3, Ljava/util/IdentityHashMap;->modCount:I

    iget v6, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->expectedModCount:I

    if-ne v5, v6, :cond_34

    .line 1501
    return-void

    .line 1503
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "hi":I
    .end local v2    # "i":I
    :cond_34
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1507
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-nez p1, :cond_8

    .line 1508
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1509
    :cond_8
    iget-object v4, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->map:Ljava/util/IdentityHashMap;

    iget-object v0, v4, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1510
    .local v0, "a":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$ValueSpliterator;->getFence()I

    move-result v1

    .line 1511
    .local v1, "hi":I
    :cond_10
    iget v4, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    if-ge v4, v1, :cond_39

    .line 1512
    iget v4, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    aget-object v2, v0, v4

    .line 1513
    .local v2, "key":Ljava/lang/Object;
    iget v4, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v0, v4

    .line 1514
    .local v3, "v":Ljava/lang/Object;, "TV;"
    iget v4, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    .line 1515
    if-eqz v2, :cond_10

    .line 1516
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1517
    iget-object v4, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->map:Ljava/util/IdentityHashMap;

    iget v4, v4, Ljava/util/IdentityHashMap;->modCount:I

    iget v5, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->expectedModCount:I

    if-eq v4, v5, :cond_37

    .line 1518
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1519
    :cond_37
    const/4 v4, 0x1

    return v4

    .line 1522
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_39
    const/4 v4, 0x0

    return v4
.end method

.method public trySplit()Ljava/util/IdentityHashMap$ValueSpliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap$ValueSpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1481
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap$ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$ValueSpliterator;->getFence()I

    move-result v6

    .local v6, "hi":I
    iget v2, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    .local v2, "lo":I
    add-int v0, v2, v6

    ushr-int/lit8 v0, v0, 0x1

    and-int/lit8 v3, v0, -0x2

    .line 1482
    .local v3, "mid":I
    if-lt v2, v3, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 1483
    :cond_10
    new-instance v0, Ljava/util/IdentityHashMap$ValueSpliterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->map:Ljava/util/IdentityHashMap;

    iput v3, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    iget v4, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->est:I

    ushr-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->est:I

    .line 1484
    iget v5, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->expectedModCount:I

    .line 1483
    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$ValueSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    goto :goto_f
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 1480
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap$ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$ValueSpliterator;->trySplit()Ljava/util/IdentityHashMap$ValueSpliterator;

    move-result-object v0

    return-object v0
.end method
