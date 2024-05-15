.class abstract Lsun/nio/fs/AbstractWatchService;
.super Ljava/lang/Object;
.source "AbstractWatchService.java"

# interfaces
.implements Ljava/nio/file/WatchService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/AbstractWatchService$1;
    }
.end annotation


# instance fields
.field private final CLOSE_KEY:Ljava/nio/file/WatchKey;

.field private final closeLock:Ljava/lang/Object;

.field private volatile closed:Z

.field private final pendingKeys:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Ljava/nio/file/WatchKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 39
    iput-object v0, p0, Lsun/nio/fs/AbstractWatchService;->pendingKeys:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 44
    new-instance v0, Lsun/nio/fs/AbstractWatchService$1;

    invoke-direct {v0, p0, v1, v1}, Lsun/nio/fs/AbstractWatchService$1;-><init>(Lsun/nio/fs/AbstractWatchService;Ljava/nio/file/Path;Lsun/nio/fs/AbstractWatchService;)V

    .line 43
    iput-object v0, p0, Lsun/nio/fs/AbstractWatchService;->CLOSE_KEY:Ljava/nio/file/WatchKey;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchService;->closeLock:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method private checkKey(Ljava/nio/file/WatchKey;)V
    .registers 3
    .param p1, "key"    # Ljava/nio/file/WatchKey;

    .prologue
    .line 88
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchService;->CLOSE_KEY:Ljava/nio/file/WatchKey;

    if-ne p1, v0, :cond_7

    .line 90
    invoke-virtual {p0, p1}, Lsun/nio/fs/AbstractWatchService;->enqueueKey(Ljava/nio/file/WatchKey;)V

    .line 92
    :cond_7
    invoke-direct {p0}, Lsun/nio/fs/AbstractWatchService;->checkOpen()V

    .line 93
    return-void
.end method

.method private checkOpen()V
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lsun/nio/fs/AbstractWatchService;->closed:Z

    if-eqz v0, :cond_a

    .line 80
    new-instance v0, Ljava/nio/file/ClosedWatchServiceException;

    invoke-direct {v0}, Ljava/nio/file/ClosedWatchServiceException;-><init>()V

    throw v0

    .line 81
    :cond_a
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v1, p0, Lsun/nio/fs/AbstractWatchService;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_3
    iget-boolean v0, p0, Lsun/nio/fs/AbstractWatchService;->closed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1d

    if-eqz v0, :cond_9

    monitor-exit v1

    .line 150
    return-void

    .line 151
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lsun/nio/fs/AbstractWatchService;->closed:Z

    .line 153
    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchService;->implClose()V

    .line 157
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchService;->pendingKeys:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 158
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchService;->pendingKeys:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v2, p0, Lsun/nio/fs/AbstractWatchService;->CLOSE_KEY:Ljava/nio/file/WatchKey;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_1d

    monitor-exit v1

    .line 160
    return-void

    .line 147
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final closeLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchService;->closeLock:Ljava/lang/Object;

    return-object v0
.end method

.method final enqueueKey(Ljava/nio/file/WatchKey;)V
    .registers 3
    .param p1, "key"    # Ljava/nio/file/WatchKey;

    .prologue
    .line 72
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchService;->pendingKeys:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method abstract implClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final isOpen()Z
    .registers 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lsun/nio/fs/AbstractWatchService;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final poll()Ljava/nio/file/WatchKey;
    .registers 3

    .prologue
    .line 97
    invoke-direct {p0}, Lsun/nio/fs/AbstractWatchService;->checkOpen()V

    .line 98
    iget-object v1, p0, Lsun/nio/fs/AbstractWatchService;->pendingKeys:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/WatchKey;

    .line 99
    .local v0, "key":Ljava/nio/file/WatchKey;
    invoke-direct {p0, v0}, Lsun/nio/fs/AbstractWatchService;->checkKey(Ljava/nio/file/WatchKey;)V

    .line 100
    return-object v0
.end method

.method public final poll(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/WatchKey;
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Lsun/nio/fs/AbstractWatchService;->checkOpen()V

    .line 108
    iget-object v1, p0, Lsun/nio/fs/AbstractWatchService;->pendingKeys:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/WatchKey;

    .line 109
    .local v0, "key":Ljava/nio/file/WatchKey;
    invoke-direct {p0, v0}, Lsun/nio/fs/AbstractWatchService;->checkKey(Ljava/nio/file/WatchKey;)V

    .line 110
    return-object v0
.end method

.method varargs abstract register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final take()Ljava/nio/file/WatchKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Lsun/nio/fs/AbstractWatchService;->checkOpen()V

    .line 118
    iget-object v1, p0, Lsun/nio/fs/AbstractWatchService;->pendingKeys:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/WatchKey;

    .line 119
    .local v0, "key":Ljava/nio/file/WatchKey;
    invoke-direct {p0, v0}, Lsun/nio/fs/AbstractWatchService;->checkKey(Ljava/nio/file/WatchKey;)V

    .line 120
    return-object v0
.end method
