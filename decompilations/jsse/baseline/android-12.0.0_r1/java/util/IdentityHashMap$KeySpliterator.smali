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
        "Ljava/util/IdentityHashMap$IdentityHashMapSpliterator<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "TK;>;"
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

    .line 1420
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "map":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    .line 1421
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 3

    .line 1468
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap$KeySpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/IdentityHashMap$KeySpliterator;->fence:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljava/util/IdentityHashMap$KeySpliterator;->est:I

    iget-object v1, p0, Ljava/util/IdentityHashMap$KeySpliterator;->map:Ljava/util/IdentityHashMap;

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

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 1432
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_39

    .line 1436
    iget-object v0, p0, Ljava/util/IdentityHashMap$KeySpliterator;->map:Ljava/util/IdentityHashMap;

    move-object v1, v0

    .local v1, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    if-eqz v0, :cond_33

    iget-object v0, v1, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    move-object v2, v0

    .local v2, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_33

    iget v0, p0, Ljava/util/IdentityHashMap$KeySpliterator;->index:I

    move v3, v0

    .local v3, "i":I
    if-ltz v0, :cond_33

    .line 1437
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySpliterator;->getFence()I

    move-result v0

    move v4, v0

    .local v4, "hi":I
    iput v0, p0, Ljava/util/IdentityHashMap$KeySpliterator;->index:I

    array-length v5, v2

    if-gt v0, v5, :cond_33

    .line 1438
    :goto_1b
    if-ge v3, v4, :cond_2c

    .line 1439
    aget-object v0, v2, v3

    move-object v5, v0

    .local v5, "key":Ljava/lang/Object;
    if-eqz v0, :cond_29

    .line 1440
    invoke-static {v5}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1438
    :cond_29
    add-int/lit8 v3, v3, 0x2

    goto :goto_1b

    .line 1442
    .end local v5    # "key":Ljava/lang/Object;
    :cond_2c
    iget v0, v1, Ljava/util/IdentityHashMap;->modCount:I

    iget v5, p0, Ljava/util/IdentityHashMap$KeySpliterator;->expectedModCount:I

    if-ne v0, v5, :cond_33

    .line 1443
    return-void

    .line 1445
    .end local v2    # "a":[Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "hi":I
    :cond_33
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1433
    .end local v1    # "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 1450
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_34

    .line 1452
    iget-object v0, p0, Ljava/util/IdentityHashMap$KeySpliterator;->map:Ljava/util/IdentityHashMap;

    iget-object v0, v0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1453
    .local v0, "a":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySpliterator;->getFence()I

    move-result v1

    .line 1454
    .local v1, "hi":I
    :goto_a
    iget v2, p0, Ljava/util/IdentityHashMap$KeySpliterator;->index:I

    if-ge v2, v1, :cond_32

    .line 1455
    iget v2, p0, Ljava/util/IdentityHashMap$KeySpliterator;->index:I

    aget-object v2, v0, v2

    .line 1456
    .local v2, "key":Ljava/lang/Object;
    iget v3, p0, Ljava/util/IdentityHashMap$KeySpliterator;->index:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Ljava/util/IdentityHashMap$KeySpliterator;->index:I

    .line 1457
    if-eqz v2, :cond_31

    .line 1458
    invoke-static {v2}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1459
    iget-object v3, p0, Ljava/util/IdentityHashMap$KeySpliterator;->map:Ljava/util/IdentityHashMap;

    iget v3, v3, Ljava/util/IdentityHashMap;->modCount:I

    iget v4, p0, Ljava/util/IdentityHashMap$KeySpliterator;->expectedModCount:I

    if-ne v3, v4, :cond_2b

    .line 1461
    const/4 v3, 0x1

    return v3

    .line 1460
    :cond_2b
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1463
    .end local v2    # "key":Ljava/lang/Object;
    :cond_31
    goto :goto_a

    .line 1464
    :cond_32
    const/4 v2, 0x0

    return v2

    .line 1451
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "hi":I
    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist trySplit()Ljava/util/IdentityHashMap$KeySpliterator;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap$KeySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1424
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v7, p0, Ljava/util/IdentityHashMap$KeySpliterator;->index:I

    .local v7, "lo":I
    add-int v1, v7, v0

    ushr-int/lit8 v1, v1, 0x1

    and-int/lit8 v8, v1, -0x2

    .line 1425
    .local v8, "mid":I
    if-lt v7, v8, :cond_10

    const/4 v1, 0x0

    goto :goto_24

    .line 1426
    :cond_10
    new-instance v9, Ljava/util/IdentityHashMap$KeySpliterator;

    iget-object v2, p0, Ljava/util/IdentityHashMap$KeySpliterator;->map:Ljava/util/IdentityHashMap;

    iput v8, p0, Ljava/util/IdentityHashMap$KeySpliterator;->index:I

    iget v1, p0, Ljava/util/IdentityHashMap$KeySpliterator;->est:I

    ushr-int/lit8 v5, v1, 0x1

    iput v5, p0, Ljava/util/IdentityHashMap$KeySpliterator;->est:I

    iget v6, p0, Ljava/util/IdentityHashMap$KeySpliterator;->expectedModCount:I

    move-object v1, v9

    move v3, v7

    move v4, v8

    invoke-direct/range {v1 .. v6}, Ljava/util/IdentityHashMap$KeySpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    .line 1425
    :goto_24
    return-object v1
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1415
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySpliterator;->trySplit()Ljava/util/IdentityHashMap$KeySpliterator;

    move-result-object v0

    return-object v0
.end method
