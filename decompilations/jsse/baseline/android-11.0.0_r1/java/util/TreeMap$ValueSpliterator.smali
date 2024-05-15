.class final Ljava/util/TreeMap$ValueSpliterator;
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
    name = "ValueSpliterator"
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
        "TV;>;"
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

    .line 2896
    .local p0, "this":Ljava/util/TreeMap$ValueSpliterator;, "Ljava/util/TreeMap$ValueSpliterator<TK;TV;>;"
    .local p1, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "origin":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/TreeMap$TreeMapSpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    .line 2897
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api characteristics()I
    .registers 2

    .line 2958
    .local p0, "this":Ljava/util/TreeMap$ValueSpliterator;, "Ljava/util/TreeMap$ValueSpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap$ValueSpliterator;->side:I

    if-nez v0, :cond_7

    const/16 v0, 0x40

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    or-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 2919
    .local p0, "this":Ljava/util/TreeMap$ValueSpliterator;, "Ljava/util/TreeMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_47

    .line 2921
    iget v0, p0, Ljava/util/TreeMap$ValueSpliterator;->est:I

    if-gez v0, :cond_9

    .line 2922
    invoke-virtual {p0}, Ljava/util/TreeMap$ValueSpliterator;->getEstimate()I

    .line 2923
    :cond_9
    iget-object v0, p0, Ljava/util/TreeMap$ValueSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 2924
    .local v0, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/TreeMap$ValueSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    move-object v2, v1

    .local v2, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_46

    if-eq v2, v0, :cond_46

    .line 2925
    iput-object v0, p0, Ljava/util/TreeMap$ValueSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 2927
    :cond_14
    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2928
    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    move-object v3, v1

    .local v3, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_25

    .line 2929
    :goto_1e
    iget-object v1, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    move-object v4, v1

    .local v4, "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_30

    .line 2930
    move-object v3, v4

    goto :goto_1e

    .line 2933
    .end local v4    # "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_25
    :goto_25
    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    move-object v3, v1

    if-eqz v1, :cond_30

    iget-object v1, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v2, v1, :cond_30

    .line 2934
    move-object v2, v3

    goto :goto_25

    .line 2936
    :cond_30
    move-object v2, v3

    if-eqz v3, :cond_35

    if-ne v2, v0, :cond_14

    .line 2937
    :cond_35
    iget-object v1, p0, Ljava/util/TreeMap$ValueSpliterator;->tree:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->modCount:I
    invoke-static {v1}, Ljava/util/TreeMap;->access$100(Ljava/util/TreeMap;)I

    move-result v1

    iget v4, p0, Ljava/util/TreeMap$ValueSpliterator;->expectedModCount:I

    if-ne v1, v4, :cond_40

    goto :goto_46

    .line 2938
    :cond_40
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 2940
    .end local v3    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_46
    :goto_46
    return-void

    .line 2920
    .end local v0    # "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v2    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_47
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 2944
    .local p0, "this":Ljava/util/TreeMap$ValueSpliterator;, "Ljava/util/TreeMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_32

    .line 2946
    iget v0, p0, Ljava/util/TreeMap$ValueSpliterator;->est:I

    if-gez v0, :cond_9

    .line 2947
    invoke-virtual {p0}, Ljava/util/TreeMap$ValueSpliterator;->getEstimate()I

    .line 2948
    :cond_9
    iget-object v0, p0, Ljava/util/TreeMap$ValueSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    move-object v1, v0

    .local v1, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_30

    iget-object v0, p0, Ljava/util/TreeMap$ValueSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, v0, :cond_13

    goto :goto_30

    .line 2950
    :cond_13
    invoke-static {v1}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/TreeMap$ValueSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 2951
    iget-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2952
    iget-object v0, p0, Ljava/util/TreeMap$ValueSpliterator;->tree:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->modCount:I
    invoke-static {v0}, Ljava/util/TreeMap;->access$100(Ljava/util/TreeMap;)I

    move-result v0

    iget v2, p0, Ljava/util/TreeMap$ValueSpliterator;->expectedModCount:I

    if-ne v0, v2, :cond_2a

    .line 2954
    const/4 v0, 0x1

    return v0

    .line 2953
    :cond_2a
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 2949
    :cond_30
    :goto_30
    const/4 v0, 0x0

    return v0

    .line 2945
    .end local v1    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_32
    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 2890
    .local p0, "this":Ljava/util/TreeMap$ValueSpliterator;, "Ljava/util/TreeMap$ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$ValueSpliterator;->trySplit()Ljava/util/TreeMap$ValueSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/TreeMap$ValueSpliterator;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$ValueSpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2900
    .local p0, "this":Ljava/util/TreeMap$ValueSpliterator;, "Ljava/util/TreeMap$ValueSpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap$ValueSpliterator;->est:I

    if-gez v0, :cond_7

    .line 2901
    invoke-virtual {p0}, Ljava/util/TreeMap$ValueSpliterator;->getEstimate()I

    .line 2902
    :cond_7
    iget v0, p0, Ljava/util/TreeMap$ValueSpliterator;->side:I

    .line 2903
    .local v0, "d":I
    iget-object v8, p0, Ljava/util/TreeMap$ValueSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .local v8, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v9, p0, Ljava/util/TreeMap$ValueSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 2904
    .local v9, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-eqz v8, :cond_2a

    if-ne v8, v9, :cond_13

    goto :goto_2a

    .line 2905
    :cond_13
    if-nez v0, :cond_1c

    iget-object v2, p0, Ljava/util/TreeMap$ValueSpliterator;->tree:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;
    invoke-static {v2}, Ljava/util/TreeMap;->access$500(Ljava/util/TreeMap;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    goto :goto_2b

    .line 2906
    :cond_1c
    if-lez v0, :cond_21

    iget-object v2, v8, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2b

    .line 2907
    :cond_21
    if-gez v0, :cond_28

    if-eqz v9, :cond_28

    iget-object v2, v9, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2b

    .line 2908
    :cond_28
    move-object v2, v1

    goto :goto_2b

    .line 2904
    :cond_2a
    :goto_2a
    move-object v2, v1

    .line 2908
    :goto_2b
    move-object v10, v2

    .line 2909
    .local v10, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v10, :cond_57

    if-eq v10, v8, :cond_57

    if-eq v10, v9, :cond_57

    iget-object v2, p0, Ljava/util/TreeMap$ValueSpliterator;->tree:Ljava/util/TreeMap;

    iget-object v3, v8, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v4, v10, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    .line 2910
    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_57

    .line 2911
    const/4 v1, 0x1

    iput v1, p0, Ljava/util/TreeMap$ValueSpliterator;->side:I

    .line 2912
    new-instance v11, Ljava/util/TreeMap$ValueSpliterator;

    iget-object v2, p0, Ljava/util/TreeMap$ValueSpliterator;->tree:Ljava/util/TreeMap;

    iput-object v10, p0, Ljava/util/TreeMap$ValueSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    const/4 v5, -0x1

    iget v3, p0, Ljava/util/TreeMap$ValueSpliterator;->est:I

    ushr-int/lit8 v6, v3, 0x1

    iput v6, p0, Ljava/util/TreeMap$ValueSpliterator;->est:I

    iget v7, p0, Ljava/util/TreeMap$ValueSpliterator;->expectedModCount:I

    move-object v1, v11

    move-object v3, v8

    move-object v4, v10

    invoke-direct/range {v1 .. v7}, Ljava/util/TreeMap$ValueSpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v11

    .line 2915
    :cond_57
    return-object v1
.end method
