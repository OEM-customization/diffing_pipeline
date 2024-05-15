.class abstract Ljava/util/TreeMap$NavigableSubMap$EntrySetView;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$NavigableSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "EntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private transient size:I

.field private transient sizeModCount:I

.field final synthetic this$1:Ljava/util/TreeMap$NavigableSubMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$NavigableSubMap;)V
    .registers 3

    .prologue
    .line 1657
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    .local p1, "this$1":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1658
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    .line 1657
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    const/4 v3, 0x0

    .line 1681
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_6

    .line 1682
    return v3

    :cond_6
    move-object v0, p1

    .line 1683
    check-cast v0, Ljava/util/Map$Entry;

    .line 1684
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1685
    .local v1, "key":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    invoke-virtual {v4, v1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1686
    return v3

    .line 1687
    :cond_16
    iget-object v4, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v4, v4, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v4, v1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    .line 1688
    .local v2, "node":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<**>;"
    if-eqz v2, :cond_2c

    .line 1689
    invoke-virtual {v2}, Ljava/util/TreeMap$TreeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1688
    :cond_2c
    return v3
.end method

.method public isEmpty()Z
    .registers 4

    .prologue
    .line 1676
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    invoke-virtual {v1}, Ljava/util/TreeMap$NavigableSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .line 1677
    .local v0, "n":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_11

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap$NavigableSubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    const/4 v5, 0x0

    .line 1693
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_6

    .line 1694
    return v5

    :cond_6
    move-object v0, p1

    .line 1695
    check-cast v0, Ljava/util/Map$Entry;

    .line 1696
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1697
    .local v1, "key":Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 1698
    return v5

    .line 1699
    :cond_16
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v3, v3, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    .line 1700
    .local v2, "node":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v2, :cond_37

    invoke-virtual {v2}, Ljava/util/TreeMap$TreeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1701
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1700
    invoke-static {v3, v4}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1702
    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v3, v3, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v3, v2}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1703
    const/4 v3, 0x1

    return v3

    .line 1705
    :cond_37
    return v5
.end method

.method public size()I
    .registers 4

    .prologue
    .line 1661
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-boolean v1, v1, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-boolean v1, v1, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    if-eqz v1, :cond_15

    .line 1662
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    return v1

    .line 1663
    :cond_15
    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_26

    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->sizeModCount:I

    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v2, v2, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v2}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v2

    if-eq v1, v2, :cond_47

    .line 1664
    :cond_26
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v1

    iput v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->sizeModCount:I

    .line 1665
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    .line 1666
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1667
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1668
    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    .line 1669
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_37

    .line 1672
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_47
    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;->size:I

    return v1
.end method
