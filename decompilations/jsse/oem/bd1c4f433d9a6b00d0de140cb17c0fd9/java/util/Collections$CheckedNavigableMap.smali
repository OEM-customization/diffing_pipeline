.class Ljava/util/Collections$CheckedNavigableMap;
.super Ljava/util/Collections$CheckedSortedMap;
.source "Collections.java"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedNavigableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$CheckedSortedMap",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4357691bf8b35350L


# instance fields
.field private final nm:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4087
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p2, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 4088
    iput-object p1, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    .line 4089
    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 4114
    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 4115
    .local v0, "ceiling":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4116
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    .line 4115
    :cond_10
    return-object v1
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 4120
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

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
    .line 4091
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4172
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4160
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 4132
    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 4133
    .local v0, "first":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4134
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    .line 4133
    :cond_10
    return-object v1
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 4092
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 4105
    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 4106
    .local v0, "floor":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4107
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    .line 4106
    :cond_10
    return-object v1
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 4111
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4183
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 6
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4196
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3

    .prologue
    .line 4181
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedNavigableMap;->headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 4123
    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 4124
    .local v0, "higher":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4125
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    .line 4124
    :cond_10
    return-object v1
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 4129
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4164
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/Collections$CheckedNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 4163
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/Collections$CheckedNavigableMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 4139
    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 4140
    .local v0, "last":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4141
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    .line 4140
    :cond_10
    return-object v1
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 4093
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 4096
    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 4097
    .local v0, "lower":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4098
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    .line 4097
    :cond_10
    return-object v1
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 4102
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4168
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 4146
    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 4147
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_a

    :goto_9
    return-object v1

    .line 4149
    :cond_a
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    goto :goto_9
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 4153
    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 4154
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_a

    :goto_9
    return-object v1

    .line 4156
    :cond_a
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    goto :goto_9
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4177
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, p2, v2}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 4178
    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    .line 4177
    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 8
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
    .line 4192
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4

    .prologue
    .line 4175
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/Collections$CheckedNavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4188
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 6
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4200
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3

    .prologue
    .line 4186
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedNavigableMap;->tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
