.class abstract Ljava/beans/ChangeListenerMap;
.super Ljava/lang/Object;
.source "ChangeListenerMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L::Ljava/util/EventListener;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized add(Ljava/lang/String;Ljava/util/EventListener;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "T",
            "L;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    .local p2, "listener":Ljava/util/EventListener;, "TL;"
    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-nez v3, :cond_c

    .line 79
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    .line 81
    :cond_c
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    .line 82
    .local v0, "array":[Ljava/util/EventListener;, "[TL;"
    if-eqz v0, :cond_2d

    .line 83
    array-length v2, v0

    .line 86
    .local v2, "size":I
    :goto_17
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    move-result-object v1

    .line 87
    .local v1, "clone":[Ljava/util/EventListener;, "[TL;"
    aput-object p2, v1, v2

    .line 88
    if-eqz v0, :cond_26

    .line 89
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    :cond_26
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2f

    monitor-exit p0

    .line 92
    return-void

    .line 84
    .end local v1    # "clone":[Ljava/util/EventListener;, "[TL;"
    .end local v2    # "size":I
    :cond_2d
    const/4 v2, 0x0

    .restart local v2    # "size":I
    goto :goto_17

    .end local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .end local v2    # "size":I
    :catchall_2f
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public abstract extract(Ljava/util/EventListener;)Ljava/util/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation
.end method

.method public final declared-synchronized get(Ljava/lang/String;)[Ljava/util/EventListener;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[T",
            "L;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    const/4 v0, 0x0

    monitor-enter p0

    .line 135
    :try_start_2
    iget-object v1, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-eqz v1, :cond_e

    .line 136
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    .line 135
    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getEntries()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "[T",
            "L;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 230
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 229
    :goto_a
    return-object v0

    .line 231
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_a
.end method

.method public final declared-synchronized getListeners()[Ljava/util/EventListener;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[T",
            "L;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    const/4 v8, 0x0

    monitor-enter p0

    .line 167
    :try_start_2
    iget-object v6, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-nez v6, :cond_d

    .line 168
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_6d

    move-result-object v6

    monitor-exit p0

    return-object v6

    .line 170
    :cond_d
    :try_start_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    iget-object v6, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/EventListener;

    .line 173
    .local v4, "listeners":[Ljava/util/EventListener;, "[TL;"
    if-eqz v4, :cond_29

    .line 174
    array-length v7, v4

    move v6, v8

    :goto_1f
    if-ge v6, v7, :cond_29

    aget-object v3, v4, v6

    .line 175
    .local v3, "listener":Ljava/util/EventListener;, "TL;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 178
    .end local v3    # "listener":Ljava/util/EventListener;, "TL;"
    :cond_29
    iget-object v6, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[TL;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 180
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_33

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/EventListener;

    array-length v9, v6

    move v7, v8

    :goto_4f
    if-ge v7, v9, :cond_33

    aget-object v3, v6, v7

    .line 182
    .restart local v3    # "listener":Ljava/util/EventListener;, "TL;"
    invoke-virtual {p0, v5, v3}, Ljava/beans/ChangeListenerMap;->newProxy(Ljava/lang/String;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    .line 186
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[TL;>;"
    .end local v3    # "listener":Ljava/util/EventListener;, "TL;"
    .end local v5    # "name":Ljava/lang/String;
    :cond_5d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/EventListener;
    :try_end_6b
    .catchall {:try_start_d .. :try_end_6b} :catchall_6d

    monitor-exit p0

    return-object v6

    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    .end local v4    # "listeners":[Ljava/util/EventListener;, "[TL;"
    :catchall_6d
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public final getListeners(Ljava/lang/String;)[Ljava/util/EventListener;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[T",
            "L;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    if-eqz p1, :cond_f

    .line 197
    invoke-virtual {p0, p1}, Ljava/beans/ChangeListenerMap;->get(Ljava/lang/String;)[Ljava/util/EventListener;

    move-result-object v0

    .line 198
    .local v0, "listeners":[Ljava/util/EventListener;, "[TL;"
    if-eqz v0, :cond_f

    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/EventListener;

    return-object v1

    .line 202
    .end local v0    # "listeners":[Ljava/util/EventListener;, "[TL;"
    :cond_f
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    move-result-object v1

    return-object v1
.end method

.method public final declared-synchronized hasListeners(Ljava/lang/String;)Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    .line 214
    :try_start_3
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_22

    if-nez v3, :cond_9

    monitor-exit p0

    .line 215
    return v2

    .line 217
    :cond_9
    :try_start_9
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    .line 218
    .local v0, "array":[Ljava/util/EventListener;, "[TL;"
    if-nez v0, :cond_1e

    if-eqz p1, :cond_20

    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_22

    move-result-object v3

    if-eqz v3, :cond_20

    :cond_1e
    :goto_1e
    monitor-exit p0

    return v1

    :cond_20
    move v1, v2

    goto :goto_1e

    .end local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected abstract newArray(I)[Ljava/util/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[T",
            "L;"
        }
    .end annotation
.end method

.method protected abstract newProxy(Ljava/lang/String;Ljava/util/EventListener;)Ljava/util/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation
.end method

.method public final declared-synchronized remove(Ljava/lang/String;Ljava/util/EventListener;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "T",
            "L;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    .local p2, "listener":Ljava/util/EventListener;, "TL;"
    monitor-enter p0

    .line 103
    :try_start_1
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-eqz v4, :cond_35

    .line 104
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    .line 105
    .local v0, "array":[Ljava/util/EventListener;, "[TL;"
    if-eqz v0, :cond_35

    .line 106
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v4, v0

    if-ge v2, v4, :cond_35

    .line 107
    aget-object v4, v0, v2

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 108
    array-length v4, v0

    add-int/lit8 v3, v4, -0x1

    .line 109
    .local v3, "size":I
    if-lez v3, :cond_37

    .line 110
    invoke-virtual {p0, v3}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    move-result-object v1

    .line 111
    .local v1, "clone":[Ljava/util/EventListener;, "[TL;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    add-int/lit8 v4, v2, 0x1

    sub-int v5, v3, v2

    invoke-static {v0, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_48

    .end local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .end local v1    # "clone":[Ljava/util/EventListener;, "[TL;"
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_35
    :goto_35
    monitor-exit p0

    .line 126
    return-void

    .line 116
    .restart local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :cond_37
    :try_start_37
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 118
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_48

    goto :goto_35

    .end local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catchall_48
    move-exception v4

    monitor-exit p0

    throw v4

    .line 106
    .restart local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .restart local v2    # "i":I
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method

.method public final set(Ljava/lang/String;[Ljava/util/EventListener;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[T",
            "L;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    .local p2, "listeners":[Ljava/util/EventListener;, "[TL;"
    const/4 v1, 0x0

    .line 147
    if-eqz p2, :cond_14

    .line 148
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-nez v0, :cond_e

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    .line 151
    :cond_e
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_13
    :goto_13
    return-void

    .line 153
    :cond_14
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-eqz v0, :cond_13

    .line 154
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 156
    iput-object v1, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    goto :goto_13
.end method
