.class final Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;
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
    name = "DescendingSubMapKeyIterator"
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

    .line 1820
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.DescendingSubMapKeyIterator;"
    .local p2, "last":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;->this$0:Ljava/util/TreeMap$NavigableSubMap;

    .line 1821
    invoke-direct {p0, p1, p2, p3}, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1822
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api characteristics()I
    .registers 2

    .line 1847
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.DescendingSubMapKeyIterator;"
    const/16 v0, 0x11

    return v0
.end method

.method public whitelist core-platform-api test-api estimateSize()J
    .registers 3

    .line 1844
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.DescendingSubMapKeyIterator;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 1833
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.DescendingSubMapKeyIterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1834
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 1835
    :cond_e
    return-void
.end method

.method public whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1824
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.DescendingSubMapKeyIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;->prevEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist core-platform-api test-api remove()V
    .registers 1

    .line 1827
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.DescendingSubMapKeyIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;->removeDescending()V

    .line 1828
    return-void
.end method

.method public whitelist core-platform-api test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 1837
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.DescendingSubMapKeyIterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1838
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1839
    const/4 v0, 0x1

    return v0

    .line 1841
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 1830
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.DescendingSubMapKeyIterator;"
    const/4 v0, 0x0

    return-object v0
.end method
