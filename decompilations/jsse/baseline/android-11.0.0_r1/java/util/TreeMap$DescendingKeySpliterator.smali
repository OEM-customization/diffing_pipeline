.class final Ljava/util/TreeMap$DescendingKeySpliterator;
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
    name = "DescendingKeySpliterator"
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
        "TK;>;"
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

    .line 2823
    .local p0, "this":Ljava/util/TreeMap$DescendingKeySpliterator;, "Ljava/util/TreeMap$DescendingKeySpliterator<TK;TV;>;"
    .local p1, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "origin":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/TreeMap$TreeMapSpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    .line 2824
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api characteristics()I
    .registers 2

    .line 2885
    .local p0, "this":Ljava/util/TreeMap$DescendingKeySpliterator;, "Ljava/util/TreeMap$DescendingKeySpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->side:I

    if-nez v0, :cond_7

    const/16 v0, 0x40

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    or-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 2846
    .local p0, "this":Ljava/util/TreeMap$DescendingKeySpliterator;, "Ljava/util/TreeMap$DescendingKeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_47

    .line 2848
    iget v0, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->est:I

    if-gez v0, :cond_9

    .line 2849
    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingKeySpliterator;->getEstimate()I

    .line 2850
    :cond_9
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 2851
    .local v0, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    move-object v2, v1

    .local v2, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_46

    if-eq v2, v0, :cond_46

    .line 2852
    iput-object v0, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 2854
    :cond_14
    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2855
    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    move-object v3, v1

    .local v3, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_25

    .line 2856
    :goto_1e
    iget-object v1, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    move-object v4, v1

    .local v4, "pr":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_30

    .line 2857
    move-object v3, v4

    goto :goto_1e

    .line 2860
    .end local v4    # "pr":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_25
    :goto_25
    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    move-object v3, v1

    if-eqz v1, :cond_30

    iget-object v1, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v2, v1, :cond_30

    .line 2861
    move-object v2, v3

    goto :goto_25

    .line 2863
    :cond_30
    move-object v2, v3

    if-eqz v3, :cond_35

    if-ne v2, v0, :cond_14

    .line 2864
    :cond_35
    iget-object v1, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->tree:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->modCount:I
    invoke-static {v1}, Ljava/util/TreeMap;->access$100(Ljava/util/TreeMap;)I

    move-result v1

    iget v4, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->expectedModCount:I

    if-ne v1, v4, :cond_40

    goto :goto_46

    .line 2865
    :cond_40
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 2867
    .end local v3    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_46
    :goto_46
    return-void

    .line 2847
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
            "-TK;>;)Z"
        }
    .end annotation

    .line 2871
    .local p0, "this":Ljava/util/TreeMap$DescendingKeySpliterator;, "Ljava/util/TreeMap$DescendingKeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_32

    .line 2873
    iget v0, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->est:I

    if-gez v0, :cond_9

    .line 2874
    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingKeySpliterator;->getEstimate()I

    .line 2875
    :cond_9
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    move-object v1, v0

    .local v1, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_30

    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, v0, :cond_13

    goto :goto_30

    .line 2877
    :cond_13
    invoke-static {v1}, Ljava/util/TreeMap;->predecessor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 2878
    iget-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2879
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->tree:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->modCount:I
    invoke-static {v0}, Ljava/util/TreeMap;->access$100(Ljava/util/TreeMap;)I

    move-result v0

    iget v2, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->expectedModCount:I

    if-ne v0, v2, :cond_2a

    .line 2881
    const/4 v0, 0x1

    return v0

    .line 2880
    :cond_2a
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 2876
    :cond_30
    :goto_30
    const/4 v0, 0x0

    return v0

    .line 2872
    .end local v1    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_32
    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 2817
    .local p0, "this":Ljava/util/TreeMap$DescendingKeySpliterator;, "Ljava/util/TreeMap$DescendingKeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingKeySpliterator;->trySplit()Ljava/util/TreeMap$DescendingKeySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/TreeMap$DescendingKeySpliterator;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$DescendingKeySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2827
    .local p0, "this":Ljava/util/TreeMap$DescendingKeySpliterator;, "Ljava/util/TreeMap$DescendingKeySpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->est:I

    if-gez v0, :cond_7

    .line 2828
    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingKeySpliterator;->getEstimate()I

    .line 2829
    :cond_7
    iget v0, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->side:I

    .line 2830
    .local v0, "d":I
    iget-object v8, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .local v8, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v9, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 2831
    .local v9, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-eqz v8, :cond_2a

    if-ne v8, v9, :cond_13

    goto :goto_2a

    .line 2832
    :cond_13
    if-nez v0, :cond_1c

    iget-object v2, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->tree:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;
    invoke-static {v2}, Ljava/util/TreeMap;->access$500(Ljava/util/TreeMap;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    goto :goto_2b

    .line 2833
    :cond_1c
    if-gez v0, :cond_21

    iget-object v2, v8, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2b

    .line 2834
    :cond_21
    if-lez v0, :cond_28

    if-eqz v9, :cond_28

    iget-object v2, v9, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2b

    .line 2835
    :cond_28
    move-object v2, v1

    goto :goto_2b

    .line 2831
    :cond_2a
    :goto_2a
    move-object v2, v1

    .line 2835
    :goto_2b
    move-object v10, v2

    .line 2836
    .local v10, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v10, :cond_57

    if-eq v10, v8, :cond_57

    if-eq v10, v9, :cond_57

    iget-object v2, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->tree:Ljava/util/TreeMap;

    iget-object v3, v8, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v4, v10, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    .line 2837
    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_57

    .line 2838
    const/4 v1, 0x1

    iput v1, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->side:I

    .line 2839
    new-instance v11, Ljava/util/TreeMap$DescendingKeySpliterator;

    iget-object v2, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->tree:Ljava/util/TreeMap;

    iput-object v10, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    const/4 v5, -0x1

    iget v3, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->est:I

    ushr-int/lit8 v6, v3, 0x1

    iput v6, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->est:I

    iget v7, p0, Ljava/util/TreeMap$DescendingKeySpliterator;->expectedModCount:I

    move-object v1, v11

    move-object v3, v8

    move-object v4, v10

    invoke-direct/range {v1 .. v7}, Ljava/util/TreeMap$DescendingKeySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v11

    .line 2842
    :cond_57
    return-object v1
.end method
