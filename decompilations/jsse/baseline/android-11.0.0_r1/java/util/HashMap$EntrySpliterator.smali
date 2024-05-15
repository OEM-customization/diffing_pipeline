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
        "Ljava/util/HashMap$HashMapSpliterator<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/HashMap;IIII)V
    .registers 6
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "TK;TV;>;IIII)V"
        }
    .end annotation

    .line 1665
    .local p0, "this":Ljava/util/HashMap$EntrySpliterator;, "Ljava/util/HashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/HashMap$HashMapSpliterator;-><init>(Ljava/util/HashMap;IIII)V

    .line 1666
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api characteristics()I
    .registers 3

    .line 1727
    .local p0, "this":Ljava/util/HashMap$EntrySpliterator;, "Ljava/util/HashMap$EntrySpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap$EntrySpliterator;->fence:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljava/util/HashMap$EntrySpliterator;->est:I

    iget-object v1, p0, Ljava/util/HashMap$EntrySpliterator;->map:Ljava/util/HashMap;

    iget v1, v1, Ljava/util/HashMap;->size:I

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

    .line 1677
    .local p0, "this":Ljava/util/HashMap$EntrySpliterator;, "Ljava/util/HashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_4f

    .line 1679
    iget-object v1, p0, Ljava/util/HashMap$EntrySpliterator;->map:Ljava/util/HashMap;

    .line 1680
    .local v1, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v2, v1, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 1681
    .local v2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    iget v3, p0, Ljava/util/HashMap$EntrySpliterator;->fence:I

    move v4, v3

    .local v4, "hi":I
    if-gez v3, :cond_19

    .line 1682
    iget v3, v1, Ljava/util/HashMap;->modCount:I

    iput v3, p0, Ljava/util/HashMap$EntrySpliterator;->expectedModCount:I

    .line 1683
    .local v3, "mc":I
    if-nez v2, :cond_14

    const/4 v5, 0x0

    goto :goto_15

    :cond_14
    array-length v5, v2

    :goto_15
    iput v5, p0, Ljava/util/HashMap$EntrySpliterator;->fence:I

    move v4, v5

    goto :goto_1b

    .line 1686
    .end local v3    # "mc":I
    :cond_19
    iget v3, p0, Ljava/util/HashMap$EntrySpliterator;->expectedModCount:I

    .line 1687
    .restart local v3    # "mc":I
    :goto_1b
    if-eqz v2, :cond_4e

    array-length v5, v2

    if-lt v5, v4, :cond_4e

    iget v5, p0, Ljava/util/HashMap$EntrySpliterator;->index:I

    move v6, v5

    .local v6, "i":I
    if-ltz v5, :cond_4e

    iput v4, p0, Ljava/util/HashMap$EntrySpliterator;->index:I

    if-lt v6, v4, :cond_2d

    iget-object v5, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    if-eqz v5, :cond_4e

    .line 1689
    :cond_2d
    iget-object v5, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    .line 1690
    .local v5, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iput-object v0, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    .line 1692
    :cond_31
    if-nez v5, :cond_39

    .line 1693
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "i":I
    .local v0, "i":I
    aget-object v5, v2, v6

    move v6, v0

    goto :goto_3f

    .line 1695
    .end local v0    # "i":I
    .restart local v6    # "i":I
    :cond_39
    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1696
    iget-object v0, v5, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v5, v0

    .line 1698
    :goto_3f
    if-nez v5, :cond_31

    if-lt v6, v4, :cond_31

    .line 1699
    iget v0, v1, Ljava/util/HashMap;->modCount:I

    if-ne v0, v3, :cond_48

    goto :goto_4e

    .line 1700
    :cond_48
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1702
    .end local v5    # "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v6    # "i":I
    :cond_4e
    :goto_4e
    return-void

    .line 1678
    .end local v1    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .end local v2    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v3    # "mc":I
    .end local v4    # "hi":I
    :cond_4f
    throw v0
.end method

.method public whitelist core-platform-api test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 1706
    .local p0, "this":Ljava/util/HashMap$EntrySpliterator;, "Ljava/util/HashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_48

    .line 1708
    iget-object v0, p0, Ljava/util/HashMap$EntrySpliterator;->map:Ljava/util/HashMap;

    iget-object v0, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 1709
    .local v0, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_46

    array-length v1, v0

    invoke-virtual {p0}, Ljava/util/HashMap$EntrySpliterator;->getFence()I

    move-result v2

    move v3, v2

    .local v3, "hi":I
    if-lt v1, v2, :cond_46

    iget v1, p0, Ljava/util/HashMap$EntrySpliterator;->index:I

    if-ltz v1, :cond_46

    .line 1710
    :goto_14
    iget-object v1, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    if-nez v1, :cond_1c

    iget v1, p0, Ljava/util/HashMap$EntrySpliterator;->index:I

    if-ge v1, v3, :cond_46

    .line 1711
    :cond_1c
    iget-object v1, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    if-nez v1, :cond_2b

    .line 1712
    iget v1, p0, Ljava/util/HashMap$EntrySpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/HashMap$EntrySpliterator;->index:I

    aget-object v1, v0, v1

    iput-object v1, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    goto :goto_14

    .line 1714
    :cond_2b
    iget-object v1, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    .line 1715
    .local v1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-object v2, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    iget-object v2, v2, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    iput-object v2, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    .line 1716
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1717
    iget-object v2, p0, Ljava/util/HashMap$EntrySpliterator;->map:Ljava/util/HashMap;

    iget v2, v2, Ljava/util/HashMap;->modCount:I

    iget v4, p0, Ljava/util/HashMap$EntrySpliterator;->expectedModCount:I

    if-ne v2, v4, :cond_40

    .line 1719
    const/4 v2, 0x1

    return v2

    .line 1718
    :cond_40
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1723
    .end local v1    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v3    # "hi":I
    :cond_46
    const/4 v1, 0x0

    return v1

    .line 1707
    .end local v0    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_48
    const/4 v0, 0x0

    throw v0
.end method

.method public blacklist trySplit()Ljava/util/HashMap$EntrySpliterator;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap$EntrySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1669
    .local p0, "this":Ljava/util/HashMap$EntrySpliterator;, "Ljava/util/HashMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/HashMap$EntrySpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v7, p0, Ljava/util/HashMap$EntrySpliterator;->index:I

    .local v7, "lo":I
    add-int v1, v7, v0

    ushr-int/lit8 v8, v1, 0x1

    .line 1670
    .local v8, "mid":I
    if-ge v7, v8, :cond_26

    iget-object v1, p0, Ljava/util/HashMap$EntrySpliterator;->current:Ljava/util/HashMap$Node;

    if-eqz v1, :cond_11

    goto :goto_26

    .line 1671
    :cond_11
    new-instance v9, Ljava/util/HashMap$EntrySpliterator;

    iget-object v2, p0, Ljava/util/HashMap$EntrySpliterator;->map:Ljava/util/HashMap;

    iput v8, p0, Ljava/util/HashMap$EntrySpliterator;->index:I

    iget v1, p0, Ljava/util/HashMap$EntrySpliterator;->est:I

    ushr-int/lit8 v5, v1, 0x1

    iput v5, p0, Ljava/util/HashMap$EntrySpliterator;->est:I

    iget v6, p0, Ljava/util/HashMap$EntrySpliterator;->expectedModCount:I

    move-object v1, v9

    move v3, v7

    move v4, v8

    invoke-direct/range {v1 .. v6}, Ljava/util/HashMap$EntrySpliterator;-><init>(Ljava/util/HashMap;IIII)V

    goto :goto_27

    .line 1670
    :cond_26
    :goto_26
    const/4 v9, 0x0

    :goto_27
    return-object v9
.end method

.method public bridge synthetic whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1660
    .local p0, "this":Ljava/util/HashMap$EntrySpliterator;, "Ljava/util/HashMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/HashMap$EntrySpliterator;->trySplit()Ljava/util/HashMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method
