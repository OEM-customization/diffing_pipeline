.class final Ljava/util/TreeMap$KeySpliterator;
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
    name = "KeySpliterator"
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
        "<TK;>;"
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
    .line 2771
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap$KeySpliterator<TK;TV;>;"
    .local p1, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "origin":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/TreeMap$TreeMapSpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    .line 2772
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap$KeySpliterator<TK;TV;>;"
    const/4 v0, 0x0

    .line 2833
    iget v1, p0, Ljava/util/TreeMap$KeySpliterator;->side:I

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
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 2794
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-nez p1, :cond_8

    .line 2795
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 2796
    :cond_8
    iget v4, p0, Ljava/util/TreeMap$KeySpliterator;->est:I

    if-gez v4, :cond_f

    .line 2797
    invoke-virtual {p0}, Ljava/util/TreeMap$KeySpliterator;->getEstimate()I

    .line 2798
    :cond_f
    iget-object v1, p0, Ljava/util/TreeMap$KeySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 2799
    .local v1, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_47

    if-eq v0, v1, :cond_47

    .line 2800
    iput-object v1, p0, Ljava/util/TreeMap$KeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 2802
    :cond_19
    iget-object v4, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2803
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v2, :cond_28

    .line 2804
    :goto_22
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .local v3, "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v3, :cond_32

    .line 2805
    move-object v2, v3

    goto :goto_22

    .line 2808
    .end local v3    # "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_28
    :goto_28
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_32

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v4, :cond_32

    .line 2809
    move-object v0, v2

    goto :goto_28

    .line 2811
    :cond_32
    move-object v0, v2

    if-eqz v2, :cond_37

    if-ne v0, v1, :cond_19

    .line 2812
    :cond_37
    iget-object v4, p0, Ljava/util/TreeMap$KeySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v4

    iget v5, p0, Ljava/util/TreeMap$KeySpliterator;->expectedModCount:I

    if-eq v4, v5, :cond_47

    .line 2813
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 2815
    .end local v2    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_47
    return-void
.end method

.method public final getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 2838
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap$KeySpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get1(Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v2, 0x0

    .line 2819
    if-nez p1, :cond_9

    .line 2820
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2821
    :cond_9
    iget v1, p0, Ljava/util/TreeMap$KeySpliterator;->est:I

    if-gez v1, :cond_10

    .line 2822
    invoke-virtual {p0}, Ljava/util/TreeMap$KeySpliterator;->getEstimate()I

    .line 2823
    :cond_10
    iget-object v0, p0, Ljava/util/TreeMap$KeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_18

    iget-object v1, p0, Ljava/util/TreeMap$KeySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v1, :cond_19

    .line 2824
    :cond_18
    return v2

    .line 2825
    :cond_19
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/TreeMap$KeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 2826
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2827
    iget-object v1, p0, Ljava/util/TreeMap$KeySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v1

    iget v2, p0, Ljava/util/TreeMap$KeySpliterator;->expectedModCount:I

    if-eq v1, v2, :cond_34

    .line 2828
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 2829
    :cond_34
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 2774
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$KeySpliterator;->trySplit()Ljava/util/TreeMap$KeySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/TreeMap$KeySpliterator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$KeySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap$KeySpliterator<TK;TV;>;"
    const/4 v5, 0x0

    .line 2775
    iget v0, p0, Ljava/util/TreeMap$KeySpliterator;->est:I

    if-gez v0, :cond_8

    .line 2776
    invoke-virtual {p0}, Ljava/util/TreeMap$KeySpliterator;->getEstimate()I

    .line 2777
    :cond_8
    iget v7, p0, Ljava/util/TreeMap$KeySpliterator;->side:I

    .line 2778
    .local v7, "d":I
    iget-object v2, p0, Ljava/util/TreeMap$KeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .local v2, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v8, p0, Ljava/util/TreeMap$KeySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 2779
    .local v8, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v2, :cond_12

    if-ne v2, v8, :cond_3b

    :cond_12
    const/4 v3, 0x0

    .line 2784
    :goto_13
    if-eqz v3, :cond_52

    if-eq v3, v2, :cond_52

    if-eq v3, v8, :cond_52

    .line 2785
    iget-object v0, p0, Ljava/util/TreeMap$KeySpliterator;->tree:Ljava/util/TreeMap;

    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_52

    .line 2786
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/TreeMap$KeySpliterator;->side:I

    .line 2787
    new-instance v0, Ljava/util/TreeMap$KeySpliterator;

    .line 2788
    iget-object v1, p0, Ljava/util/TreeMap$KeySpliterator;->tree:Ljava/util/TreeMap;

    iput-object v3, p0, Ljava/util/TreeMap$KeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    iget v4, p0, Ljava/util/TreeMap$KeySpliterator;->est:I

    ushr-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/TreeMap$KeySpliterator;->est:I

    iget v6, p0, Ljava/util/TreeMap$KeySpliterator;->expectedModCount:I

    const/4 v4, -0x1

    .line 2787
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$KeySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v0

    .line 2780
    :cond_3b
    if-nez v7, :cond_44

    iget-object v0, p0, Ljava/util/TreeMap$KeySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get3(Ljava/util/TreeMap;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    .local v3, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    goto :goto_13

    .line 2781
    .end local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_44
    if-lez v7, :cond_49

    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .restart local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    goto :goto_13

    .line 2782
    .end local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_49
    if-gez v7, :cond_50

    if-eqz v8, :cond_50

    iget-object v3, v8, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .restart local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    goto :goto_13

    .line 2783
    .end local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_50
    const/4 v3, 0x0

    .local v3, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    goto :goto_13

    .line 2790
    .end local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_52
    return-object v5
.end method
