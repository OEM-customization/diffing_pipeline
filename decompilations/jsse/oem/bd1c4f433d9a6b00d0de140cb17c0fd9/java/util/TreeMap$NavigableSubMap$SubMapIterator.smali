.class abstract Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;
.super Ljava/lang/Object;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$NavigableSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SubMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field final fenceKey:Ljava/lang/Object;

.field lastReturned:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljava/util/TreeMap$NavigableSubMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    .local p1, "this$1":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 1718
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1720
    iget-object v0, p1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    .line 1721
    iput-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1722
    iput-object p2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1723
    if-nez p3, :cond_1b

    invoke-static {}, Ljava/util/TreeMap;->-get0()Ljava/lang/Object;

    move-result-object v0

    :goto_18
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    .line 1724
    return-void

    .line 1723
    :cond_1b
    iget-object v0, p3, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    goto :goto_18
.end method


# virtual methods
.method public final hasNext()Z
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    const/4 v0, 0x0

    .line 1727
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_e

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    if-eq v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method final nextEntry()Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1731
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1732
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_a

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    if-ne v1, v2, :cond_10

    .line 1733
    :cond_a
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1734
    :cond_10
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v1

    iget v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    if-eq v1, v2, :cond_22

    .line 1735
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1736
    :cond_22
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1737
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1738
    return-object v0
.end method

.method final prevEntry()Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1742
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1743
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_a

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    if-ne v1, v2, :cond_10

    .line 1744
    :cond_a
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1745
    :cond_10
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v1

    iget v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    if-eq v1, v2, :cond_22

    .line 1746
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1747
    :cond_22
    invoke-static {v0}, Ljava/util/TreeMap;->predecessor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1748
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1749
    return-object v0
.end method

.method final removeAscending()V
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    const/4 v2, 0x0

    .line 1753
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v0, :cond_b

    .line 1754
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1755
    :cond_b
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v0

    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1d

    .line 1756
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1758
    :cond_1d
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_2d

    .line 1759
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1760
    :cond_2d
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    invoke-static {v0, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1761
    iput-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1762
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    .line 1763
    return-void
.end method

.method final removeDescending()V
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    const/4 v2, 0x0

    .line 1766
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v0, :cond_b

    .line 1767
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1768
    :cond_b
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v0

    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1d

    .line 1769
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1770
    :cond_1d
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    invoke-static {v0, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1771
    iput-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1772
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    .line 1773
    return-void
.end method
