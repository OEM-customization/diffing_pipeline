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
        "Ljava/util/Collections$CheckedSortedMap<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x4357691bf8b35350L


# instance fields
.field private final greylist-max-o nm:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 4098
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p2, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 4099
    iput-object p1, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    .line 4100
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4125
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 4126
    .local v0, "ceiling":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4127
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    goto :goto_11

    .line 4128
    :cond_10
    const/4 v1, 0x0

    .line 4126
    :goto_11
    return-object v1
.end method

.method public whitelist core-platform-api test-api ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 4131
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 4102
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api descendingKeySet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 4183
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api descendingMap()Ljava/util/NavigableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4171
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

.method public whitelist core-platform-api test-api firstEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4143
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 4144
    .local v0, "first":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4145
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    goto :goto_11

    .line 4146
    :cond_10
    const/4 v1, 0x0

    .line 4144
    :goto_11
    return-object v1
.end method

.method public whitelist core-platform-api test-api firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 4103
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4116
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 4117
    .local v0, "floor":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4118
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    goto :goto_11

    .line 4119
    :cond_10
    const/4 v1, 0x0

    .line 4117
    :goto_11
    return-object v1
.end method

.method public whitelist core-platform-api test-api floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 4122
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4194
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

.method public whitelist core-platform-api test-api headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 6
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4207
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

.method public bridge synthetic whitelist core-platform-api test-api headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 2

    .line 4089
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedNavigableMap;->headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4134
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 4135
    .local v0, "higher":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4136
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    goto :goto_11

    .line 4137
    :cond_10
    const/4 v1, 0x0

    .line 4135
    :goto_11
    return-object v1
.end method

.method public whitelist core-platform-api test-api higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 4140
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist keySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 4175
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/Collections$CheckedNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api keySet()Ljava/util/Set;
    .registers 2

    .line 4089
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/Collections$CheckedNavigableMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api lastEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4150
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 4151
    .local v0, "last":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4152
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    goto :goto_11

    .line 4153
    :cond_10
    const/4 v1, 0x0

    .line 4151
    :goto_11
    return-object v1
.end method

.method public whitelist core-platform-api test-api lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 4104
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4107
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 4108
    .local v0, "lower":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4109
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    goto :goto_11

    .line 4110
    :cond_10
    const/4 v1, 0x0

    .line 4108
    :goto_11
    return-object v1
.end method

.method public whitelist core-platform-api test-api lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 4113
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api navigableKeySet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 4179
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api pollFirstEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4157
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 4158
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_a

    .line 4159
    const/4 v1, 0x0

    goto :goto_11

    .line 4160
    :cond_a
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    .line 4158
    :goto_11
    return-object v1
.end method

.method public whitelist core-platform-api test-api pollLastEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4164
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 4165
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_a

    .line 4166
    const/4 v1, 0x0

    goto :goto_11

    .line 4167
    :cond_a
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    .line 4165
    :goto_11
    return-object v1
.end method

.method public blacklist subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4188
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, p2, v2}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 8
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4203
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

.method public bridge synthetic whitelist core-platform-api test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3

    .line 4089
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/Collections$CheckedNavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4199
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

.method public whitelist core-platform-api test-api tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 6
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4211
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

.method public bridge synthetic whitelist core-platform-api test-api tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 2

    .line 4089
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedNavigableMap;->tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
