.class final Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
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
        "Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V
    .registers 6
    .param p5, "est"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;TK;I)V"
        }
    .end annotation

    .line 3498
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "row":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local p3, "origin":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p4, "fence":Ljava/lang/Object;, "TK;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    .line 3499
    return-void
.end method

.method static synthetic blacklist lambda$getComparator$d5a01062$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 4
    .param p0, "e1"    # Ljava/util/Map$Entry;
    .param p1, "e2"    # Ljava/util/Map$Entry;

    .line 3578
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 3579
    .local v0, "k1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api characteristics()I
    .registers 2

    .line 3565
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator<TK;TV;>;"
    const/16 v0, 0x1115

    return v0
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 3524
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    .line 3525
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->comparator:Ljava/util/Comparator;

    .line 3526
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->fence:Ljava/lang/Object;

    .line 3527
    .local v2, "f":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3528
    .local v3, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3529
    :goto_b
    if-eqz v3, :cond_2e

    .line 3531
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v4, v0

    .local v4, "k":Ljava/lang/Object;, "TK;"
    if-eqz v0, :cond_1b

    if-eqz v2, :cond_1b

    invoke-static {v1, v2, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1b

    .line 3532
    goto :goto_2e

    .line 3533
    :cond_1b
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    move-object v5, v0

    .local v5, "v":Ljava/lang/Object;
    if-eqz v0, :cond_2b

    if-eq v5, v3, :cond_2b

    .line 3534
    move-object v0, v5

    .line 3535
    .local v0, "vv":Ljava/lang/Object;, "TV;"
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v4, v0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3536
    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3529
    .end local v0    # "vv":Ljava/lang/Object;, "TV;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;
    :cond_2b
    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_b

    .line 3539
    :cond_2e
    :goto_2e
    return-void

    .line 3524
    .end local v1    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .end local v2    # "f":Ljava/lang/Object;, "TK;"
    .end local v3    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2f
    throw v0
.end method

.method public final whitelist core-platform-api test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3572
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_b

    .line 3573
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/util/Map$Entry;->comparingByKey(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    .line 3576
    :cond_b
    sget-object v0, Ljava/util/concurrent/-$$Lambda$ConcurrentSkipListMap$EntrySpliterator$y0KdhWWpZC4eKUM6bCtPBgl2u2o;->INSTANCE:Ljava/util/concurrent/-$$Lambda$ConcurrentSkipListMap$EntrySpliterator$y0KdhWWpZC4eKUM6bCtPBgl2u2o;

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public whitelist core-platform-api test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 3542
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_36

    .line 3543
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->comparator:Ljava/util/Comparator;

    .line 3544
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->fence:Ljava/lang/Object;

    .line 3545
    .local v1, "f":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3546
    .local v2, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_8
    if-eqz v2, :cond_32

    .line 3548
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "k":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_19

    if-eqz v1, :cond_19

    invoke-static {v0, v1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_19

    .line 3549
    const/4 v2, 0x0

    .line 3550
    goto :goto_32

    .line 3552
    :cond_19
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    move-object v5, v3

    .local v5, "v":Ljava/lang/Object;
    if-eqz v3, :cond_2f

    if-eq v5, v2, :cond_2f

    .line 3553
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3554
    move-object v3, v5

    .line 3555
    .local v3, "vv":Ljava/lang/Object;, "TV;"
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v4, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3556
    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3557
    const/4 v6, 0x1

    return v6

    .line 3546
    .end local v3    # "vv":Ljava/lang/Object;, "TV;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;
    :cond_2f
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_8

    .line 3560
    :cond_32
    :goto_32
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3561
    const/4 v3, 0x0

    return v3

    .line 3542
    .end local v0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .end local v1    # "f":Ljava/lang/Object;, "TK;"
    .end local v2    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_36
    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 3494
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3503
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->comparator:Ljava/util/Comparator;

    .line 3504
    .local v7, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->fence:Ljava/lang/Object;

    .line 3505
    .local v8, "f":Ljava/lang/Object;, "TK;"
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v9, v1

    .local v9, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_6c

    iget-object v1, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v10, v1

    .local v10, "ek":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_6c

    .line 3506
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v11, v1

    .local v11, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_13
    if-eqz v11, :cond_6c

    .line 3508
    iget-object v1, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v12, v1

    .local v12, "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v1, :cond_66

    iget-object v1, v12, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v13, v1

    .local v13, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_66

    iget-object v1, v13, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v14, v1

    .local v14, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_66

    iget-object v1, v14, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v1, :cond_66

    iget-object v1, v14, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v15, v1

    .local v15, "sk":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_66

    .line 3510
    invoke-static {v7, v15, v10}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_66

    if-eqz v8, :cond_3b

    .line 3511
    invoke-static {v7, v15, v8}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_66

    .line 3512
    :cond_3b
    iput-object v14, v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3513
    iget-object v6, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 3514
    .local v6, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v1, v12, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v1, :cond_45

    move-object v1, v12

    goto :goto_47

    :cond_45
    iget-object v1, v12, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    :goto_47
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 3515
    iget v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->est:I

    iget v2, v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->est:I

    ushr-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->est:I

    .line 3516
    new-instance v16, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;

    iget v5, v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->est:I

    move-object/from16 v1, v16

    move-object v2, v7

    move-object v3, v6

    move-object v4, v9

    move/from16 v17, v5

    move-object v5, v15

    move-object/from16 v18, v6

    .end local v6    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local v18, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    return-object v16

    .line 3506
    .end local v12    # "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v13    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v14    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v15    # "sk":Ljava/lang/Object;, "TK;"
    .end local v18    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_66
    iget-object v1, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v11, v1

    goto :goto_13

    .line 3520
    .end local v10    # "ek":Ljava/lang/Object;, "TK;"
    .end local v11    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_6c
    const/4 v1, 0x0

    return-object v1
.end method
