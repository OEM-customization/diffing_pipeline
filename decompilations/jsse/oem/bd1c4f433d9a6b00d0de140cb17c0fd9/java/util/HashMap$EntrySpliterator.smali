.class final Ljava/util/HashMap$EntrySpliterator;
.super Ljava/util/HashMap$HashMapSpliterator;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
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
        "Ljava/util/HashMap$HashMapSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/HashMap;IIII)V
    .registers 6
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    .prologue
    .line 1665
    .local p0, "this":Ljava/util/HashMap$EntrySpliterator;, "Ljava/util/HashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/HashMap$HashMapSpliterator;-><init>(Ljava/util/HashMap;IIII)V

    .line 1666
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/HashMap$EntrySpliterator;, "Ljava/util/HashMap$EntrySpliterator<TK;TV;>;"
    const/4 v0, 0x0

    .line 1727
    iget v1, p0, Ljava/util/HashMap$EntrySpliterator;->fence:I

    if-ltz v1, :cond_d

    iget v1, p0, Ljava/util/HashMap$EntrySpliterator;->est:I

    iget-object v2, p0, Ljava/util/HashMap$EntrySpliterator;->map:Ljava/util/HashMap;

    iget v2, v2, Ljava/util/HashMap;->size:I

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
    .local p0, "this":Ljava/util/HashMap$EntrySpliterator;, "Ljava/util/HashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1677
    if-nez p1, :cond_a

    .line 1678
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 1679
    :cond_a
    iget-object v3, p0, Ljava/util/HashMap$EntrySpliterator;->map:Ljava/util/HashMap;

    .line 1680
    .local v3, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v6, v3, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 1681
    .local v6, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap$EntrySpliterator;->fence:I

    .local v0, "hi":I
    if-gez v0, :cond_3f

    .line 1682
    iget v4, v3, Ljava/util/HashMap;->modCount:I

    iput v4, p0, Ljava/util/HashMap$EntrySpliterator;->expectedModCount:I

    .line 1683
    .local v4, "mc":I
    if-nez v6, :cond_3d

    move v0, v7

    :goto_19
    iput v0, p0, Ljava/util/HashMap$EntrySpliterator;->fence:I

    .line 1687
    :goto_1b
    if-eqz v6, :cond_53

    array-length v7, v6

    if-lt v7, v0, :cond_53

    .line 1688
    iget v1, p0, Ljava/util/HashMap$EntrySpliterator;->index:I

    .local v1, "i":I
    if-ltz v1, :cond_53

    iput v0, p0, Ljava/util/HashMap$EntrySpliterator;->index:I

    if-lt v1, v0, :cond_2c

    iget-object v7, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    if-eqz v7, :cond_53

    .line 1689
    :cond_2c
    iget-object v5, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    .line 1690
    .local v5, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iput-object v8, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    move v2, v1

    .line 1692
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_31
    if-nez v5, :cond_42

    .line 1693
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v5, v6, v2

    .line 1698
    :goto_37
    if-nez v5, :cond_3b

    if-ge v1, v0, :cond_49

    :cond_3b
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_31

    .line 1683
    .end local v2    # "i":I
    .end local v5    # "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_3d
    array-length v0, v6

    goto :goto_19

    .line 1686
    .end local v4    # "mc":I
    :cond_3f
    iget v4, p0, Ljava/util/HashMap$EntrySpliterator;->expectedModCount:I

    .restart local v4    # "mc":I
    goto :goto_1b

    .line 1695
    .restart local v2    # "i":I
    .restart local v5    # "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_42
    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1696
    iget-object v5, v5, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_37

    .line 1699
    :cond_49
    iget v7, v3, Ljava/util/HashMap;->modCount:I

    if-eq v7, v4, :cond_53

    .line 1700
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    .line 1702
    .end local v1    # "i":I
    .end local v5    # "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_53
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 8
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
    .local p0, "this":Ljava/util/HashMap$EntrySpliterator;, "Ljava/util/HashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v5, 0x0

    .line 1706
    if-nez p1, :cond_9

    .line 1707
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1708
    :cond_9
    iget-object v3, p0, Ljava/util/HashMap$EntrySpliterator;->map:Ljava/util/HashMap;

    iget-object v2, v3, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 1709
    .local v2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_4c

    array-length v3, v2

    invoke-virtual {p0}, Ljava/util/HashMap$EntrySpliterator;->getFence()I

    move-result v1

    .local v1, "hi":I
    if-lt v3, v1, :cond_4c

    iget v3, p0, Ljava/util/HashMap$EntrySpliterator;->index:I

    if-ltz v3, :cond_4c

    .line 1710
    :goto_1a
    iget-object v3, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    if-nez v3, :cond_22

    iget v3, p0, Ljava/util/HashMap$EntrySpliterator;->index:I

    if-ge v3, v1, :cond_4c

    .line 1711
    :cond_22
    iget-object v3, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    if-nez v3, :cond_31

    .line 1712
    iget v3, p0, Ljava/util/HashMap$EntrySpliterator;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/util/HashMap$EntrySpliterator;->index:I

    aget-object v3, v2, v3

    iput-object v3, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    goto :goto_1a

    .line 1714
    :cond_31
    iget-object v0, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    .line 1715
    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-object v3, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    iget-object v3, v3, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    iput-object v3, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    .line 1716
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1717
    iget-object v3, p0, Ljava/util/HashMap$EntrySpliterator;->map:Ljava/util/HashMap;

    iget v3, v3, Ljava/util/HashMap;->modCount:I

    iget v4, p0, Ljava/util/HashMap$EntrySpliterator;->expectedModCount:I

    if-eq v3, v4, :cond_4a

    .line 1718
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1719
    :cond_4a
    const/4 v3, 0x1

    return v3

    .line 1723
    .end local v0    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v1    # "hi":I
    :cond_4c
    return v5
.end method

.method public trySplit()Ljava/util/HashMap$EntrySpliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap$EntrySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap$EntrySpliterator;, "Ljava/util/HashMap$EntrySpliterator<TK;TV;>;"
    const/4 v0, 0x0

    .line 1669
    invoke-virtual {p0}, Ljava/util/HashMap$EntrySpliterator;->getFence()I

    move-result v6

    .local v6, "hi":I
    iget v2, p0, Ljava/util/HashMap$EntrySpliterator;->index:I

    .local v2, "lo":I
    add-int v1, v2, v6

    ushr-int/lit8 v3, v1, 0x1

    .line 1670
    .local v3, "mid":I
    if-ge v2, v3, :cond_11

    iget-object v1, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return-object v0

    .line 1671
    :cond_12
    new-instance v0, Ljava/util/HashMap$EntrySpliterator;

    iget-object v1, p0, Ljava/util/HashMap$EntrySpliterator;->map:Ljava/util/HashMap;

    iput v3, p0, Ljava/util/HashMap$EntrySpliterator;->index:I

    iget v4, p0, Ljava/util/HashMap$EntrySpliterator;->est:I

    ushr-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/HashMap$EntrySpliterator;->est:I

    .line 1672
    iget v5, p0, Ljava/util/HashMap$EntrySpliterator;->expectedModCount:I

    .line 1671
    invoke-direct/range {v0 .. v5}, Ljava/util/HashMap$EntrySpliterator;-><init>(Ljava/util/HashMap;IIII)V

    goto :goto_11
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 1668
    .local p0, "this":Ljava/util/HashMap$EntrySpliterator;, "Ljava/util/HashMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/HashMap$EntrySpliterator;->trySplit()Ljava/util/HashMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method
