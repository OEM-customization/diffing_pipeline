.class abstract Lsun/nio/fs/AbstractWatchKey;
.super Ljava/lang/Object;
.source "AbstractWatchKey.java"

# interfaces
.implements Ljava/nio/file/WatchKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/AbstractWatchKey$Event;,
        Lsun/nio/fs/AbstractWatchKey$State;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final MAX_EVENT_LIST_SIZE:I = 0x200

.field static final OVERFLOW_EVENT:Lsun/nio/fs/AbstractWatchKey$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/nio/fs/AbstractWatchKey$Event",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dir:Ljava/nio/file/Path;

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/file/WatchEvent",
            "<*>;>;"
        }
    .end annotation
.end field

.field private lastModifyEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/nio/file/WatchEvent",
            "<*>;>;"
        }
    .end annotation
.end field

.field private state:Lsun/nio/fs/AbstractWatchKey$State;

.field private final watcher:Lsun/nio/fs/AbstractWatchService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-class v0, Lsun/nio/fs/AbstractWatchKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/fs/AbstractWatchKey;->-assertionsDisabled:Z

    .line 46
    new-instance v0, Lsun/nio/fs/AbstractWatchKey$Event;

    sget-object v1, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/AbstractWatchKey$Event;-><init>(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    .line 45
    sput-object v0, Lsun/nio/fs/AbstractWatchKey;->OVERFLOW_EVENT:Lsun/nio/fs/AbstractWatchKey$Event;

    .line 35
    return-void
.end method

.method protected constructor <init>(Ljava/nio/file/Path;Lsun/nio/fs/AbstractWatchService;)V
    .registers 4
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "watcher"    # Lsun/nio/fs/AbstractWatchService;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lsun/nio/fs/AbstractWatchKey;->watcher:Lsun/nio/fs/AbstractWatchService;

    .line 71
    iput-object p1, p0, Lsun/nio/fs/AbstractWatchKey;->dir:Ljava/nio/file/Path;

    .line 72
    sget-object v0, Lsun/nio/fs/AbstractWatchKey$State;->READY:Lsun/nio/fs/AbstractWatchKey$State;

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    .line 75
    return-void
.end method


# virtual methods
.method public final pollEvents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/file/WatchEvent",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 164
    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    .line 166
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/WatchEvent<*>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    .line 167
    iget-object v1, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    .line 168
    return-object v0

    .line 164
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/WatchEvent<*>;>;"
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final reset()Z
    .registers 3

    .prologue
    .line 174
    monitor-enter p0

    .line 175
    :try_start_1
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    sget-object v1, Lsun/nio/fs/AbstractWatchKey$State;->SIGNALLED:Lsun/nio/fs/AbstractWatchKey$State;

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 176
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 177
    sget-object v0, Lsun/nio/fs/AbstractWatchKey$State;->READY:Lsun/nio/fs/AbstractWatchKey$State;

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    .line 183
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchKey;->isValid()Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_25

    move-result v0

    monitor-exit p0

    return v0

    .line 180
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->watcher:Lsun/nio/fs/AbstractWatchService;

    invoke-virtual {v0, p0}, Lsun/nio/fs/AbstractWatchService;->enqueueKey(Ljava/nio/file/WatchKey;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_25

    goto :goto_19

    .line 174
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final signal()V
    .registers 3

    .prologue
    .line 93
    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    sget-object v1, Lsun/nio/fs/AbstractWatchKey$State;->READY:Lsun/nio/fs/AbstractWatchKey$State;

    if-ne v0, v1, :cond_10

    .line 95
    sget-object v0, Lsun/nio/fs/AbstractWatchKey$State;->SIGNALLED:Lsun/nio/fs/AbstractWatchKey$State;

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    .line 96
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->watcher:Lsun/nio/fs/AbstractWatchService;

    invoke-virtual {v0, p0}, Lsun/nio/fs/AbstractWatchService;->enqueueKey(Ljava/nio/file/WatchKey;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    .line 99
    return-void

    .line 93
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V
    .registers 10
    .param p2, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "kind":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-ne p1, v5, :cond_37

    const/4 v2, 0x1

    .line 107
    .local v2, "isModify":Z
    :goto_5
    monitor-enter p0

    .line 108
    :try_start_6
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 109
    .local v4, "size":I
    if-lez v4, :cond_76

    .line 112
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/WatchEvent;

    .line 113
    .local v3, "prev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    invoke-interface {v3}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v5

    sget-object v6, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-eq v5, v6, :cond_30

    .line 114
    invoke-interface {v3}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v5

    if-ne p1, v5, :cond_39

    .line 115
    invoke-interface {v3}, Ljava/nio/file/WatchEvent;->context()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 113
    if-eqz v5, :cond_39

    .line 117
    :cond_30
    check-cast v3, Lsun/nio/fs/AbstractWatchKey$Event;

    .end local v3    # "prev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    invoke-virtual {v3}, Lsun/nio/fs/AbstractWatchKey$Event;->increment()V
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_5f

    monitor-exit p0

    .line 118
    return-void

    .line 106
    .end local v2    # "isModify":Z
    .end local v4    # "size":I
    :cond_37
    const/4 v2, 0x0

    .restart local v2    # "isModify":Z
    goto :goto_5

    .line 123
    .restart local v3    # "prev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    .restart local v4    # "size":I
    :cond_39
    :try_start_39
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6e

    .line 124
    if-eqz v2, :cond_69

    .line 125
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/WatchEvent;

    .line 126
    .local v0, "ev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    if-eqz v0, :cond_6e

    .line 127
    sget-boolean v5, Lsun/nio/fs/AbstractWatchKey;->-assertionsDisabled:Z

    if-nez v5, :cond_62

    invoke-interface {v0}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v5

    sget-object v6, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-eq v5, v6, :cond_62

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_5f
    .catchall {:try_start_39 .. :try_end_5f} :catchall_5f

    .line 107
    .end local v0    # "ev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    .end local v3    # "prev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    .end local v4    # "size":I
    .end local p2    # "context":Ljava/lang/Object;
    :catchall_5f
    move-exception v5

    monitor-exit p0

    throw v5

    .line 128
    .restart local v0    # "ev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    .restart local v3    # "prev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    .restart local v4    # "size":I
    .restart local p2    # "context":Ljava/lang/Object;
    :cond_62
    :try_start_62
    check-cast v0, Lsun/nio/fs/AbstractWatchKey$Event;

    .end local v0    # "ev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    invoke-virtual {v0}, Lsun/nio/fs/AbstractWatchKey$Event;->increment()V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_5f

    monitor-exit p0

    .line 129
    return-void

    .line 134
    :cond_69
    :try_start_69
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_6e
    const/16 v5, 0x200

    if-lt v4, v5, :cond_76

    .line 141
    sget-object p1, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    .line 142
    const/4 v2, 0x0

    .line 143
    const/4 p2, 0x0

    .line 149
    .end local v3    # "prev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    .end local p2    # "context":Ljava/lang/Object;
    :cond_76
    new-instance v1, Lsun/nio/fs/AbstractWatchKey$Event;

    invoke-direct {v1, p1, p2}, Lsun/nio/fs/AbstractWatchKey$Event;-><init>(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    .line 150
    .local v1, "ev":Lsun/nio/fs/AbstractWatchKey$Event;, "Lsun/nio/fs/AbstractWatchKey$Event<Ljava/lang/Object;>;"
    if-eqz v2, :cond_8c

    .line 151
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v5, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_82
    :goto_82
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchKey;->signal()V
    :try_end_8a
    .catchall {:try_start_69 .. :try_end_8a} :catchall_5f

    monitor-exit p0

    .line 160
    return-void

    .line 152
    :cond_8c
    :try_start_8c
    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-ne p1, v5, :cond_82

    .line 154
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 155
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V
    :try_end_9a
    .catchall {:try_start_8c .. :try_end_9a} :catchall_5f

    goto :goto_82
.end method

.method public watchable()Ljava/nio/file/Path;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->dir:Ljava/nio/file/Path;

    return-object v0
.end method

.method public bridge synthetic watchable()Ljava/nio/file/Watchable;
    .registers 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchKey;->watchable()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method final watcher()Lsun/nio/fs/AbstractWatchService;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->watcher:Lsun/nio/fs/AbstractWatchService;

    return-object v0
.end method
