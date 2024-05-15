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
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field greylist-max-o expectedModCount:I

.field final greylist-max-o fenceKey:Ljava/lang/Object;

.field greylist-max-o lastReturned:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o next:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/TreeMap$NavigableSubMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/TreeMap$NavigableSubMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1693
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1694
    iget-object v0, p1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->modCount:I
    invoke-static {v0}, Ljava/util/TreeMap;->access$100(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    .line 1695
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1696
    iput-object p2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1697
    if-nez p3, :cond_19

    # getter for: Ljava/util/TreeMap;->UNBOUNDED:Ljava/lang/Object;
    invoke-static {}, Ljava/util/TreeMap;->access$200()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b

    :cond_19
    iget-object v0, p3, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    :goto_1b
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    .line 1698
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api hasNext()Z
    .registers 3

    .line 1701
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_c

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method final greylist-max-o nextEntry()Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1705
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1706
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_25

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    if-eq v1, v2, :cond_25

    .line 1708
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->modCount:I
    invoke-static {v1}, Ljava/util/TreeMap;->access$100(Ljava/util/TreeMap;)I

    move-result v1

    iget v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    if-ne v1, v2, :cond_1f

    .line 1710
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1711
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1712
    return-object v0

    .line 1709
    :cond_1f
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1707
    :cond_25
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method final greylist-max-o prevEntry()Ljava/util/TreeMap$TreeMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1716
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1717
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_25

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    if-eq v1, v2, :cond_25

    .line 1719
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->modCount:I
    invoke-static {v1}, Ljava/util/TreeMap;->access$100(Ljava/util/TreeMap;)I

    move-result v1

    iget v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    if-ne v1, v2, :cond_1f

    .line 1721
    invoke-static {v0}, Ljava/util/TreeMap;->predecessor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1722
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1723
    return-object v0

    .line 1720
    :cond_1f
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1718
    :cond_25
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method final greylist-max-o removeAscending()V
    .registers 3

    .line 1727
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_3d

    .line 1729
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->modCount:I
    invoke-static {v0}, Ljava/util/TreeMap;->access$100(Ljava/util/TreeMap;)I

    move-result v0

    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    if-ne v0, v1, :cond_37

    .line 1732
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_20

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_20

    .line 1733
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1734
    :cond_20
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    # invokes: Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$000(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1735
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1736
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->modCount:I
    invoke-static {v0}, Ljava/util/TreeMap;->access$100(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    .line 1737
    return-void

    .line 1730
    :cond_37
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1728
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method final greylist-max-o removeDescending()V
    .registers 3

    .line 1740
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_2d

    .line 1742
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->modCount:I
    invoke-static {v0}, Ljava/util/TreeMap;->access$100(Ljava/util/TreeMap;)I

    move-result v0

    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    if-ne v0, v1, :cond_27

    .line 1744
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    # invokes: Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$000(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1745
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1746
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->modCount:I
    invoke-static {v0}, Ljava/util/TreeMap;->access$100(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    .line 1747
    return-void

    .line 1743
    :cond_27
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1741
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
