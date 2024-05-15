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
        "Ljava/util/TreeMap$TreeMapSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V
    .registers 7
    .param p4, "side"    # I
    .param p5, "est"    # I
    .param p6, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;III)V"
        }
    .end annotation

    .prologue
    .line 2994
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    .local p1, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "origin":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/TreeMap$TreeMapSpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    .line 2995
    return-void
.end method

.method static synthetic lambda$-java_util_TreeMap$EntrySpliterator_113494(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 4

    .prologue
    .line 3069
    .local p0, "e1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .local p1, "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 3070
    .local v0, "k1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public characteristics()I
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    const/4 v0, 0x0

    .line 3056
    iget v1, p0, Ljava/util/TreeMap$EntrySpliterator;->side:I

    if-nez v1, :cond_7

    const/16 v0, 0x40

    :cond_7
    or-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
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
    .line 3017
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_8

    .line 3018
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 3019
    :cond_8
    iget v4, p0, Ljava/util/TreeMap$EntrySpliterator;->est:I

    if-gez v4, :cond_f

    .line 3020
    invoke-virtual {p0}, Ljava/util/TreeMap$EntrySpliterator;->getEstimate()I

    .line 3021
    :cond_f
    iget-object v1, p0, Ljava/util/TreeMap$EntrySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 3022
    .local v1, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_45

    if-eq v0, v1, :cond_45

    .line 3023
    iput-object v1, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 3025
    :cond_19
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3026
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v2, :cond_26

    .line 3027
    :goto_20
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .local v3, "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v3, :cond_30

    .line 3028
    move-object v2, v3

    goto :goto_20

    .line 3031
    .end local v3    # "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_26
    :goto_26
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_30

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v4, :cond_30

    .line 3032
    move-object v0, v2

    goto :goto_26

    .line 3034
    :cond_30
    move-object v0, v2

    if-eqz v2, :cond_35

    if-ne v0, v1, :cond_19

    .line 3035
    :cond_35
    iget-object v4, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v4

    iget v5, p0, Ljava/util/TreeMap$EntrySpliterator;->expectedModCount:I

    if-eq v4, v5, :cond_45

    .line 3036
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 3038
    .end local v2    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_45
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3063
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get1(Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3064
    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get1(Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Map$Entry;->comparingByKey(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    :cond_13
    sget-object v0, Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;->$INST$2:Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;

    .line 3067
    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
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
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v2, 0x0

    .line 3042
    if-nez p1, :cond_9

    .line 3043
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 3044
    :cond_9
    iget v1, p0, Ljava/util/TreeMap$EntrySpliterator;->est:I

    if-gez v1, :cond_10

    .line 3045
    invoke-virtual {p0}, Ljava/util/TreeMap$EntrySpliterator;->getEstimate()I

    .line 3046
    :cond_10
    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_18

    iget-object v1, p0, Ljava/util/TreeMap$EntrySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v1, :cond_19

    .line 3047
    :cond_18
    return v2

    .line 3048
    :cond_19
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 3049
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3050
    iget-object v1, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v1

    iget v2, p0, Ljava/util/TreeMap$EntrySpliterator;->expectedModCount:I

    if-eq v1, v2, :cond_32

    .line 3051
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 3052
    :cond_32
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 2997
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$EntrySpliterator;->trySplit()Ljava/util/TreeMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/TreeMap$EntrySpliterator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$EntrySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    const/4 v5, 0x0

    .line 2998
    iget v0, p0, Ljava/util/TreeMap$EntrySpliterator;->est:I

    if-gez v0, :cond_8

    .line 2999
    invoke-virtual {p0}, Ljava/util/TreeMap$EntrySpliterator;->getEstimate()I

    .line 3000
    :cond_8
    iget v7, p0, Ljava/util/TreeMap$EntrySpliterator;->side:I

    .line 3001
    .local v7, "d":I
    iget-object v2, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .local v2, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v8, p0, Ljava/util/TreeMap$EntrySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 3002
    .local v8, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v2, :cond_12

    if-ne v2, v8, :cond_3b

    :cond_12
    const/4 v3, 0x0

    .line 3007
    :goto_13
    if-eqz v3, :cond_52

    if-eq v3, v2, :cond_52

    if-eq v3, v8, :cond_52

    .line 3008
    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_52

    .line 3009
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/TreeMap$EntrySpliterator;->side:I

    .line 3010
    new-instance v0, Ljava/util/TreeMap$EntrySpliterator;

    .line 3011
    iget-object v1, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    iput-object v3, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    iget v4, p0, Ljava/util/TreeMap$EntrySpliterator;->est:I

    ushr-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/TreeMap$EntrySpliterator;->est:I

    iget v6, p0, Ljava/util/TreeMap$EntrySpliterator;->expectedModCount:I

    const/4 v4, -0x1

    .line 3010
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$EntrySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v0

    .line 3003
    :cond_3b
    if-nez v7, :cond_44

    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get3(Ljava/util/TreeMap;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    .local v3, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    goto :goto_13

    .line 3004
    .end local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_44
    if-lez v7, :cond_49

    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .restart local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    goto :goto_13

    .line 3005
    .end local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_49
    if-gez v7, :cond_50

    if-eqz v8, :cond_50

    iget-object v3, v8, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .restart local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    goto :goto_13

    .line 3006
    .end local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_50
    const/4 v3, 0x0

    .local v3, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    goto :goto_13

    .line 3013
    .end local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_52
    return-object v5
.end method
