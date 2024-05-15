.class final Ljava/util/IdentityHashMap$KeySpliterator;
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
    name = "KeySpliterator"
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
        "<TK;>;"
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
    .line 1420
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "map":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    .line 1421
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap$KeySpliterator<TK;TV;>;"
    const/4 v0, 0x0

    .line 1468
    iget v1, p0, Ljava/util/IdentityHashMap$KeySpliterator;->fence:I

    if-ltz v1, :cond_d

    iget v1, p0, Ljava/util/IdentityHashMap$KeySpliterator;->est:I

    iget-object v2, p0, Ljava/util/IdentityHashMap$KeySpliterator;->map:Ljava/util/IdentityHashMap;

    iget v2, v2, Ljava/util/IdentityHashMap;->size:I

    if-ne v1, v2, :cond_f

    :cond_d
    const/16 v0, 0x40

    :cond_f
    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1432
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-nez p1, :cond_8

    .line 1433
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1436
    :cond_8
    iget-object v4, p0, Ljava/util/IdentityHashMap$KeySpliterator;->map:Ljava/util/IdentityHashMap;

    .local v4, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    if-eqz v4, :cond_34

    iget-object v0, v4, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .local v0, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_34

    .line 1437
    iget v2, p0, Ljava/util/IdentityHashMap$KeySpliterator;->index:I

    .local v2, "i":I
    if-ltz v2, :cond_34

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySpliterator;->getFence()I

    move-result v1

    .local v1, "hi":I
    iput v1, p0, Ljava/util/IdentityHashMap$KeySpliterator;->index:I

    array-length v5, v0

    if-gt v1, v5, :cond_34

    .line 1438
    :goto_1d
    if-ge v2, v1, :cond_2d

    .line 1439
    aget-object v3, v0, v2

    .local v3, "key":Ljava/lang/Object;
    if-eqz v3, :cond_2a

    .line 1440
    invoke-static {v3}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1438
    :cond_2a
    add-int/lit8 v2, v2, 0x2

    goto :goto_1d

    .line 1442
    .end local v3    # "key":Ljava/lang/Object;
    :cond_2d
    iget v5, v4, Ljava/util/IdentityHashMap;->modCount:I

    iget v6, p0, Ljava/util/IdentityHashMap$KeySpliterator;->expectedModCount:I

    if-ne v5, v6, :cond_34

    .line 1443
    return-void

    .line 1445
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "hi":I
    .end local v2    # "i":I
    :cond_34
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 1450
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-nez p1, :cond_8

    .line 1451
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1452
    :cond_8
    iget-object v3, p0, Ljava/util/IdentityHashMap$KeySpliterator;->map:Ljava/util/IdentityHashMap;

    iget-object v0, v3, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1453
    .local v0, "a":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySpliterator;->getFence()I

    move-result v1

    .line 1454
    .local v1, "hi":I
    :cond_10
    iget v3, p0, Ljava/util/IdentityHashMap$KeySpliterator;->index:I

    if-ge v3, v1, :cond_37

    .line 1455
    iget v3, p0, Ljava/util/IdentityHashMap$KeySpliterator;->index:I

    aget-object v2, v0, v3

    .line 1456
    .local v2, "key":Ljava/lang/Object;
    iget v3, p0, Ljava/util/IdentityHashMap$KeySpliterator;->index:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Ljava/util/IdentityHashMap$KeySpliterator;->index:I

    .line 1457
    if-eqz v2, :cond_10

    .line 1458
    invoke-static {v2}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1459
    iget-object v3, p0, Ljava/util/IdentityHashMap$KeySpliterator;->map:Ljava/util/IdentityHashMap;

    iget v3, v3, Ljava/util/IdentityHashMap;->modCount:I

    iget v4, p0, Ljava/util/IdentityHashMap$KeySpliterator;->expectedModCount:I

    if-eq v3, v4, :cond_35

    .line 1460
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1461
    :cond_35
    const/4 v3, 0x1

    return v3

    .line 1464
    .end local v2    # "key":Ljava/lang/Object;
    :cond_37
    const/4 v3, 0x0

    return v3
.end method

.method public trySplit()Ljava/util/IdentityHashMap$KeySpliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap$KeySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1424
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySpliterator;->getFence()I

    move-result v6

    .local v6, "hi":I
    iget v2, p0, Ljava/util/IdentityHashMap$KeySpliterator;->index:I

    .local v2, "lo":I
    add-int v0, v2, v6

    ushr-int/lit8 v0, v0, 0x1

    and-int/lit8 v3, v0, -0x2

    .line 1425
    .local v3, "mid":I
    if-lt v2, v3, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 1426
    :cond_10
    new-instance v0, Ljava/util/IdentityHashMap$KeySpliterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$KeySpliterator;->map:Ljava/util/IdentityHashMap;

    iput v3, p0, Ljava/util/IdentityHashMap$KeySpliterator;->index:I

    iget v4, p0, Ljava/util/IdentityHashMap$KeySpliterator;->est:I

    ushr-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/IdentityHashMap$KeySpliterator;->est:I

    .line 1427
    iget v5, p0, Ljava/util/IdentityHashMap$KeySpliterator;->expectedModCount:I

    .line 1426
    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$KeySpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    goto :goto_f
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 1423
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySpliterator;->trySplit()Ljava/util/IdentityHashMap$KeySpliterator;

    move-result-object v0

    return-object v0
.end method
