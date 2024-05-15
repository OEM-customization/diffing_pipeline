.class final Ljava/util/TreeMap$EntrySpliterator;
.super Ljava/util/TreeMap$TreeMapSpliterator;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
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
        "Ljava/util/TreeMap$TreeMapSpliterator<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V
    .registers 7
    .param p4, "side"    # I
    .param p5, "est"    # I
    .param p6, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;III)V"
        }
    .end annotation

    .line 2968
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    .local p1, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "origin":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/TreeMap$TreeMapSpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    .line 2969
    return-void
.end method

.method static synthetic blacklist lambda$getComparator$d5a01062$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 4
    .param p0, "e1"    # Ljava/util/Map$Entry;
    .param p1, "e2"    # Ljava/util/Map$Entry;

    .line 3043
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 3044
    .local v0, "k1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 3030
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap$EntrySpliterator;->side:I

    if-nez v0, :cond_7

    const/16 v0, 0x40

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    or-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2991
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_45

    .line 2993
    iget v0, p0, Ljava/util/TreeMap$EntrySpliterator;->est:I

    if-gez v0, :cond_9

    .line 2994
    invoke-virtual {p0}, Ljava/util/TreeMap$EntrySpliterator;->getEstimate()I

    .line 2995
    :cond_9
    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 2996
    .local v0, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    move-object v2, v1

    .local v2, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_44

    if-eq v2, v0, :cond_44

    .line 2997
    iput-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 2999
    :cond_14
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3000
    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    move-object v3, v1

    .local v3, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_23

    .line 3001
    :goto_1c
    iget-object v1, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    move-object v4, v1

    .local v4, "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_2e

    .line 3002
    move-object v3, v4

    goto :goto_1c

    .line 3005
    .end local v4    # "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_23
    :goto_23
    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    move-object v3, v1

    if-eqz v1, :cond_2e

    iget-object v1, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v2, v1, :cond_2e

    .line 3006
    move-object v2, v3

    goto :goto_23

    .line 3008
    :cond_2e
    move-object v2, v3

    if-eqz v3, :cond_33

    if-ne v2, v0, :cond_14

    .line 3009
    :cond_33
    iget-object v1, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->modCount:I
    invoke-static {v1}, Ljava/util/TreeMap;->access$100(Ljava/util/TreeMap;)I

    move-result v1

    iget v4, p0, Ljava/util/TreeMap$EntrySpliterator;->expectedModCount:I

    if-ne v1, v4, :cond_3e

    goto :goto_44

    .line 3010
    :cond_3e
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 3012
    .end local v3    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_44
    :goto_44
    return-void

    .line 2992
    .end local v0    # "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v2    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_45
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3037
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;
    invoke-static {v0}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3038
    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;
    invoke-static {v0}, Ljava/util/TreeMap;->access$300(Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Map$Entry;->comparingByKey(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    .line 3041
    :cond_13
    sget-object v0, Ljava/util/TreeMap$EntrySpliterator$$ExternalSyntheticLambda0;->INSTANCE:Ljava/util/TreeMap$EntrySpliterator$$ExternalSyntheticLambda0;

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 3016
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_30

    .line 3018
    iget v0, p0, Ljava/util/TreeMap$EntrySpliterator;->est:I

    if-gez v0, :cond_9

    .line 3019
    invoke-virtual {p0}, Ljava/util/TreeMap$EntrySpliterator;->getEstimate()I

    .line 3020
    :cond_9
    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    move-object v1, v0

    .local v1, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_2e

    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, v0, :cond_13

    goto :goto_2e

    .line 3022
    :cond_13
    invoke-static {v1}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 3023
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3024
    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->modCount:I
    invoke-static {v0}, Ljava/util/TreeMap;->access$100(Ljava/util/TreeMap;)I

    move-result v0

    iget v2, p0, Ljava/util/TreeMap$EntrySpliterator;->expectedModCount:I

    if-ne v0, v2, :cond_28

    .line 3026
    const/4 v0, 0x1

    return v0

    .line 3025
    :cond_28
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 3021
    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    return v0

    .line 3017
    .end local v1    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 2962
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$EntrySpliterator;->trySplit()Ljava/util/TreeMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/TreeMap$EntrySpliterator;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$EntrySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2972
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap$EntrySpliterator;->est:I

    if-gez v0, :cond_7

    .line 2973
    invoke-virtual {p0}, Ljava/util/TreeMap$EntrySpliterator;->getEstimate()I

    .line 2974
    :cond_7
    iget v0, p0, Ljava/util/TreeMap$EntrySpliterator;->side:I

    .line 2975
    .local v0, "d":I
    iget-object v8, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .local v8, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v9, p0, Ljava/util/TreeMap$EntrySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 2976
    .local v9, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-eqz v8, :cond_2a

    if-ne v8, v9, :cond_13

    goto :goto_2a

    .line 2977
    :cond_13
    if-nez v0, :cond_1c

    iget-object v2, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;
    invoke-static {v2}, Ljava/util/TreeMap;->access$500(Ljava/util/TreeMap;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    goto :goto_2b

    .line 2978
    :cond_1c
    if-lez v0, :cond_21

    iget-object v2, v8, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2b

    .line 2979
    :cond_21
    if-gez v0, :cond_28

    if-eqz v9, :cond_28

    iget-object v2, v9, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2b

    .line 2980
    :cond_28
    move-object v2, v1

    goto :goto_2b

    .line 2976
    :cond_2a
    :goto_2a
    move-object v2, v1

    .line 2980
    :goto_2b
    move-object v10, v2

    .line 2981
    .local v10, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v10, :cond_57

    if-eq v10, v8, :cond_57

    if-eq v10, v9, :cond_57

    iget-object v2, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    iget-object v3, v8, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v4, v10, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    .line 2982
    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_57

    .line 2983
    const/4 v1, 0x1

    iput v1, p0, Ljava/util/TreeMap$EntrySpliterator;->side:I

    .line 2984
    new-instance v11, Ljava/util/TreeMap$EntrySpliterator;

    iget-object v2, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    iput-object v10, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    const/4 v5, -0x1

    iget v3, p0, Ljava/util/TreeMap$EntrySpliterator;->est:I

    ushr-int/lit8 v6, v3, 0x1

    iput v6, p0, Ljava/util/TreeMap$EntrySpliterator;->est:I

    iget v7, p0, Ljava/util/TreeMap$EntrySpliterator;->expectedModCount:I

    move-object v1, v11

    move-object v3, v8

    move-object v4, v10

    invoke-direct/range {v1 .. v7}, Ljava/util/TreeMap$EntrySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v11

    .line 2987
    :cond_57
    return-object v1
.end method
