.class final Ljava/util/TreeMap$DescendingSubMap;
.super Ljava/util/TreeMap$NavigableSubMap;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DescendingSubMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$DescendingSubMap$DescendingEntrySetView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeMap$NavigableSubMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xcab946d1f0f9d0cL


# instance fields
.field private final reverseComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V
    .registers 9
    .param p2, "fromStart"    # Z
    .param p4, "loInclusive"    # Z
    .param p5, "toEnd"    # Z
    .param p7, "hiInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;ZTK;ZZTK;Z)V"
        }
    .end annotation

    .prologue
    .line 1977
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    .local p1, "m":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p3, "lo":Ljava/lang/Object;, "TK;"
    .local p6, "hi":Ljava/lang/Object;, "TK;"
    invoke-direct/range {p0 .. p7}, Ljava/util/TreeMap$NavigableSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    .line 1981
    iget-object v0, p0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get1(Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 1980
    iput-object v0, p0, Ljava/util/TreeMap$DescendingSubMap;->reverseComparator:Ljava/util/Comparator;

    .line 1978
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 1984
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$DescendingSubMap;->reverseComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method descendingKeyIterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2040
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingSubMap;->absHighFence()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2023
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    iget-object v8, p0, Ljava/util/TreeMap$DescendingSubMap;->descendingMapView:Ljava/util/NavigableMap;

    .line 2024
    .local v8, "mv":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    if-eqz v8, :cond_5

    .end local v8    # "mv":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    :goto_4
    return-object v8

    .line 2026
    .restart local v8    # "mv":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    :cond_5
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    iget-object v1, p0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    .line 2027
    iget-boolean v2, p0, Ljava/util/TreeMap$DescendingSubMap;->fromStart:Z

    iget-object v3, p0, Ljava/util/TreeMap$DescendingSubMap;->lo:Ljava/lang/Object;

    iget-boolean v4, p0, Ljava/util/TreeMap$DescendingSubMap;->loInclusive:Z

    .line 2028
    iget-boolean v5, p0, Ljava/util/TreeMap$DescendingSubMap;->toEnd:Z

    iget-object v6, p0, Ljava/util/TreeMap$DescendingSubMap;->hi:Ljava/lang/Object;

    iget-boolean v7, p0, Ljava/util/TreeMap$DescendingSubMap;->hiInclusive:Z

    .line 2026
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    .line 2025
    iput-object v0, p0, Ljava/util/TreeMap$DescendingSubMap;->descendingMapView:Ljava/util/NavigableMap;

    move-object v8, v0

    goto :goto_4
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2050
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$DescendingSubMap;->entrySetView:Ljava/util/TreeMap$NavigableSubMap$EntrySetView;

    .line 2051
    .local v0, "es":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    if-eqz v0, :cond_5

    .end local v0    # "es":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    :goto_4
    return-object v0

    .restart local v0    # "es":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    :cond_5
    new-instance v0, Ljava/util/TreeMap$DescendingSubMap$DescendingEntrySetView;

    .end local v0    # "es":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$DescendingSubMap$DescendingEntrySetView;-><init>(Ljava/util/TreeMap$DescendingSubMap;)V

    iput-object v0, p0, Ljava/util/TreeMap$DescendingSubMap;->entrySetView:Ljava/util/TreeMap$NavigableSubMap$EntrySetView;

    goto :goto_4
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 11
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 2001
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$DescendingSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Ljava/util/TreeMap$DescendingSubMap;->fromStart:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$DescendingSubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 2004
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "toKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2002
    :cond_1e
    iget-boolean v0, p0, Ljava/util/TreeMap$DescendingSubMap;->loInclusive:Z

    .line 2001
    if-nez v0, :cond_15

    if-nez p2, :cond_15

    .line 2005
    :cond_24
    new-instance v0, Ljava/util/TreeMap$DescendingSubMap;

    iget-object v1, p0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    .line 2007
    iget-boolean v5, p0, Ljava/util/TreeMap$DescendingSubMap;->toEnd:Z

    iget-object v6, p0, Ljava/util/TreeMap$DescendingSubMap;->hi:Ljava/lang/Object;

    iget-boolean v7, p0, Ljava/util/TreeMap$DescendingSubMap;->hiInclusive:Z

    move-object v3, p1

    move v4, p2

    .line 2005
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method keyIterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2032
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingSubMap;->absLowFence()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method keySpliterator()Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2036
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingSubMap;->absLowFence()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method subCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2056
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$DescendingSubMap;->absFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method subFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2058
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$DescendingSubMap;->absCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method subHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2057
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$DescendingSubMap;->absLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method subHighest()Ljava/util/TreeMap$TreeMapEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2055
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method subLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2059
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$DescendingSubMap;->absHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method subLowest()Ljava/util/TreeMap$TreeMapEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2054
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 13
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 1989
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap$DescendingSubMap;->inRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1990
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fromKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1991
    :cond_10
    invoke-virtual {p0, p3, p4}, Ljava/util/TreeMap$DescendingSubMap;->inRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1992
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "toKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1993
    :cond_1f
    new-instance v0, Ljava/util/TreeMap$DescendingSubMap;

    iget-object v1, p0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    move-object v3, p3

    move v4, p4

    move v5, v2

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 11
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap$DescendingSubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .line 2013
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$DescendingSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Ljava/util/TreeMap$DescendingSubMap;->toEnd:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$DescendingSubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 2016
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fromKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2014
    :cond_1e
    iget-boolean v0, p0, Ljava/util/TreeMap$DescendingSubMap;->hiInclusive:Z

    .line 2013
    if-nez v0, :cond_15

    if-nez p2, :cond_15

    .line 2017
    :cond_24
    new-instance v0, Ljava/util/TreeMap$DescendingSubMap;

    iget-object v1, p0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    .line 2018
    iget-boolean v2, p0, Ljava/util/TreeMap$DescendingSubMap;->fromStart:Z

    iget-object v3, p0, Ljava/util/TreeMap$DescendingSubMap;->lo:Ljava/lang/Object;

    iget-boolean v4, p0, Ljava/util/TreeMap$DescendingSubMap;->loInclusive:Z

    move-object v6, p1

    move v7, p2

    .line 2017
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method
