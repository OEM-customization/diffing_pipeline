.class final Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;
.super Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$NavigableSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SubMapKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap$NavigableSubMap<",
        "TK;TV;>.SubMapIterator<TK;>;",
        "Ljava/util/Spliterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/TreeMap$NavigableSubMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 4
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

    .line 1782
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    .line 1783
    invoke-direct {p0, p1, p2, p3}, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1784
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1809
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    const/16 v0, 0x15

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1806
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 1795
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1796
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 1797
    :cond_e
    return-void
.end method

.method public final whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 1813
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0}, Ljava/util/TreeMap$NavigableSubMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1786
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->nextEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 1

    .line 1789
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->removeAscending()V

    .line 1790
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 1799
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1800
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1801
    const/4 v0, 0x1

    return v0

    .line 1803
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 1792
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    const/4 v0, 0x0

    return-object v0
.end method
