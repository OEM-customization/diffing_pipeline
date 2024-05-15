.class final Lsun/nio/ch/PendingFuture;
.super Ljava/lang/Object;
.source "PendingFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final CANCELLED:Ljava/util/concurrent/CancellationException;


# instance fields
.field private final attachment:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final channel:Ljava/nio/channels/AsynchronousChannel;

.field private volatile context:Ljava/lang/Object;

.field private volatile exc:Ljava/lang/Throwable;

.field private final handler:Ljava/nio/channels/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;"
        }
    .end annotation
.end field

.field private volatile haveResult:Z

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private timeoutTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    .line 38
    sput-object v0, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/AsynchronousChannel;)V
    .registers 3
    .param p1, "channel"    # Ljava/nio/channels/AsynchronousChannel;

    .prologue
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0, v0}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/AsynchronousChannel;Ljava/lang/Object;)V
    .registers 4
    .param p1, "channel"    # Ljava/nio/channels/AsynchronousChannel;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0, v0, p2}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;)V
    .registers 4
    .param p1, "channel"    # Ljava/nio/channels/AsynchronousChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/AsynchronousChannel;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;TA;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    .local p2, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p3, "attachment":Ljava/lang/Object;, "TA;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->channel:Ljava/nio/channels/AsynchronousChannel;

    .line 75
    iput-object p2, p0, Lsun/nio/ch/PendingFuture;->handler:Ljava/nio/channels/CompletionHandler;

    .line 76
    iput-object p3, p0, Lsun/nio/ch/PendingFuture;->attachment:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "channel"    # Ljava/nio/channels/AsynchronousChannel;
    .param p4, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/AsynchronousChannel;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;TA;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    .local p2, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p3, "attachment":Ljava/lang/Object;, "TA;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->channel:Ljava/nio/channels/AsynchronousChannel;

    .line 65
    iput-object p2, p0, Lsun/nio/ch/PendingFuture;->handler:Ljava/nio/channels/CompletionHandler;

    .line 66
    iput-object p3, p0, Lsun/nio/ch/PendingFuture;->attachment:Ljava/lang/Object;

    .line 67
    iput-object p4, p0, Lsun/nio/ch/PendingFuture;->context:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method private prepareForWait()Z
    .registers 4

    .prologue
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    const/4 v2, 0x1

    .line 119
    monitor-enter p0

    .line 120
    :try_start_2
    iget-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_17

    if-eqz v0, :cond_9

    .line 121
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 123
    :cond_9
    :try_start_9
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_15

    .line 124
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    .line 125
    return v2

    .line 119
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method attachment()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->attachment:Ljava/lang/Object;

    return-object v0
.end method

.method public cancel(Z)Z
    .registers 6
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 227
    monitor-enter p0

    .line 228
    :try_start_3
    iget-boolean v1, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3f

    if-eqz v1, :cond_9

    monitor-exit p0

    .line 229
    return v2

    .line 232
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->channel()Ljava/nio/channels/AsynchronousChannel;

    move-result-object v1

    instance-of v1, v1, Lsun/nio/ch/Cancellable;

    if-eqz v1, :cond_1a

    .line 233
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->channel()Ljava/nio/channels/AsynchronousChannel;

    move-result-object v1

    check-cast v1, Lsun/nio/ch/Cancellable;

    invoke-interface {v1, p0}, Lsun/nio/ch/Cancellable;->onCancel(Lsun/nio/ch/PendingFuture;)V

    .line 236
    :cond_1a
    sget-object v1, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    iput-object v1, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    .line 237
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    .line 238
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_2b

    .line 239
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_3f

    :cond_2b
    monitor-exit p0

    .line 243
    if-eqz p1, :cond_35

    .line 245
    :try_start_2e
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->channel()Ljava/nio/channels/AsynchronousChannel;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/channels/AsynchronousChannel;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_35} :catch_42

    .line 250
    :cond_35
    :goto_35
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_3e

    .line 251
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 252
    :cond_3e
    return v3

    .line 227
    :catchall_3f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 246
    :catch_42
    move-exception v0

    .local v0, "ignore":Ljava/io/IOException;
    goto :goto_35
.end method

.method channel()Ljava/nio/channels/AsynchronousChannel;
    .registers 2

    .prologue
    .line 88
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->channel:Ljava/nio/channels/AsynchronousChannel;

    return-object v0
.end method

.method exception()Ljava/lang/Throwable;
    .registers 3

    .prologue
    .line 208
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    sget-object v1, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-boolean v1, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    if-nez v1, :cond_f

    .line 178
    invoke-direct {p0}, Lsun/nio/ch/PendingFuture;->prepareForWait()Z

    move-result v0

    .line 179
    .local v0, "needToWait":Z
    if-eqz v0, :cond_f

    .line 180
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 182
    .end local v0    # "needToWait":Z
    :cond_f
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    if-eqz v1, :cond_27

    .line 183
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    sget-object v2, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    if-ne v1, v2, :cond_1f

    .line 184
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    .line 185
    :cond_1f
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget-object v2, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 187
    :cond_27
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->result:Ljava/lang/Object;

    return-object v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-boolean v1, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    if-nez v1, :cond_18

    .line 195
    invoke-direct {p0}, Lsun/nio/ch/PendingFuture;->prepareForWait()Z

    move-result v0

    .line 196
    .local v0, "needToWait":Z
    if-eqz v0, :cond_18

    .line 197
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 199
    .end local v0    # "needToWait":Z
    :cond_18
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    if-eqz v1, :cond_30

    .line 200
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    sget-object v2, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    if-ne v1, v2, :cond_28

    .line 201
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    .line 202
    :cond_28
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget-object v2, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 204
    :cond_30
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->result:Ljava/lang/Object;

    return-object v1
.end method

.method getContext()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 104
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->context:Ljava/lang/Object;

    return-object v0
.end method

.method handler()Ljava/nio/channels/CompletionHandler;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->handler:Ljava/nio/channels/CompletionHandler;

    return-object v0
.end method

.method public isCancelled()Z
    .registers 3

    .prologue
    .line 217
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    sget-object v1, Lsun/nio/ch/PendingFuture;->CANCELLED:Ljava/util/concurrent/CancellationException;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 222
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    return v0
.end method

.method setContext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 100
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->context:Ljava/lang/Object;

    .line 101
    return-void
.end method

.method setFailure(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "x"    # Ljava/lang/Throwable;

    .prologue
    .line 150
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    instance-of v1, p1, Ljava/io/IOException;

    if-nez v1, :cond_10

    instance-of v1, p1, Ljava/lang/SecurityException;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_10

    .line 151
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "x":Ljava/lang/Throwable;
    .local v0, "x":Ljava/lang/Throwable;
    move-object p1, v0

    .line 152
    .end local v0    # "x":Ljava/lang/Throwable;
    .restart local p1    # "x":Ljava/lang/Throwable;
    :cond_10
    monitor-enter p0

    .line 153
    :try_start_11
    iget-boolean v1, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_31

    if-eqz v1, :cond_17

    monitor-exit p0

    .line 154
    return-void

    .line 155
    :cond_17
    :try_start_17
    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->exc:Ljava/lang/Throwable;

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    .line 157
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_26

    .line 158
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 159
    :cond_26
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_2f

    .line 160
    iget-object v1, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_31

    :cond_2f
    monitor-exit p0

    .line 162
    return-void

    .line 152
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method setResult(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    .local p1, "res":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 135
    :try_start_1
    iget-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    monitor-exit p0

    .line 136
    return-void

    .line 137
    :cond_7
    :try_start_7
    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->result:Ljava/lang/Object;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    .line 139
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_16

    .line 140
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 141
    :cond_16
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1f

    .line 142
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit p0

    .line 144
    return-void

    .line 134
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .param p2, "x"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    .local p1, "res":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_6

    .line 169
    invoke-virtual {p0, p1}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;)V

    .line 173
    :goto_5
    return-void

    .line 171
    :cond_6
    invoke-virtual {p0, p2}, Lsun/nio/ch/PendingFuture;->setFailure(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method setTimeoutTask(Ljava/util/concurrent/Future;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    .local p1, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    monitor-enter p0

    .line 109
    :try_start_1
    iget-boolean v0, p0, Lsun/nio/ch/PendingFuture;->haveResult:Z

    if-eqz v0, :cond_b

    .line 110
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_e

    :goto_9
    monitor-exit p0

    .line 115
    return-void

    .line 112
    :cond_b
    :try_start_b
    iput-object p1, p0, Lsun/nio/ch/PendingFuture;->timeoutTask:Ljava/util/concurrent/Future;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_e

    goto :goto_9

    .line 108
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method value()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-object v0, p0, Lsun/nio/ch/PendingFuture;->result:Ljava/lang/Object;

    return-object v0
.end method
