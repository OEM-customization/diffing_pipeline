.class public final Lcom/android/okhttp/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field private final executedCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/okhttp/Call;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private maxRequests:I

.field private maxRequestsPerHost:I

.field private final readyCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/okhttp/Call$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/okhttp/Call$AsyncCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    .line 44
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    .line 50
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    .line 44
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    .line 50
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    .line 53
    iput-object p1, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 54
    return-void
.end method

.method private promoteCalls()V
    .registers 5

    .prologue
    .line 146
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    iget v3, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    if-lt v2, v3, :cond_b

    return-void

    .line 147
    :cond_b
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    return-void

    .line 149
    :cond_14
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/okhttp/Call$AsyncCall;>;"
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/Call$AsyncCall;

    .line 152
    .local v0, "call":Lcom/android/okhttp/Call$AsyncCall;
    invoke-direct {p0, v0}, Lcom/android/okhttp/Dispatcher;->runningCallsForHost(Lcom/android/okhttp/Call$AsyncCall;)I

    move-result v2

    iget v3, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    if-ge v2, v3, :cond_3d

    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 154
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/okhttp/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 158
    :cond_3d
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    iget v3, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    if-lt v2, v3, :cond_1a

    return-void

    .line 160
    .end local v0    # "call":Lcom/android/okhttp/Call$AsyncCall;
    :cond_48
    return-void
.end method

.method private runningCallsForHost(Lcom/android/okhttp/Call$AsyncCall;)I
    .registers 7
    .param p1, "call"    # Lcom/android/okhttp/Call$AsyncCall;

    .prologue
    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "result":I
    iget-object v3, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/Call$AsyncCall;

    .line 166
    .local v0, "c":Lcom/android/okhttp/Call$AsyncCall;
    invoke-virtual {v0}, Lcom/android/okhttp/Call$AsyncCall;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/okhttp/Call$AsyncCall;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 168
    .end local v0    # "c":Lcom/android/okhttp/Call$AsyncCall;
    :cond_24
    return v2
.end method


# virtual methods
.method public declared-synchronized cancel(Ljava/lang/Object;)V
    .registers 8
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 118
    :try_start_1
    iget-object v4, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "call$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/Call$AsyncCall;

    .line 119
    .local v0, "call":Lcom/android/okhttp/Call$AsyncCall;
    invoke-virtual {v0}, Lcom/android/okhttp/Call$AsyncCall;->tag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 120
    invoke-virtual {v0}, Lcom/android/okhttp/Call$AsyncCall;->cancel()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_7

    .end local v0    # "call":Lcom/android/okhttp/Call$AsyncCall;
    .end local v2    # "call$iterator":Ljava/util/Iterator;
    :catchall_21
    move-exception v4

    monitor-exit p0

    throw v4

    .line 124
    .restart local v2    # "call$iterator":Ljava/util/Iterator;
    :cond_24
    :try_start_24
    iget-object v4, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/Call$AsyncCall;

    .line 125
    .restart local v0    # "call":Lcom/android/okhttp/Call$AsyncCall;
    invoke-virtual {v0}, Lcom/android/okhttp/Call$AsyncCall;->tag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 126
    invoke-virtual {v0}, Lcom/android/okhttp/Call$AsyncCall;->get()Lcom/android/okhttp/Call;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/okhttp/Call;->canceled:Z

    .line 127
    invoke-virtual {v0}, Lcom/android/okhttp/Call$AsyncCall;->get()Lcom/android/okhttp/Call;

    move-result-object v4

    iget-object v3, v4, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 128
    .local v3, "engine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->cancel()V

    goto :goto_2a

    .line 132
    .end local v0    # "call":Lcom/android/okhttp/Call$AsyncCall;
    .end local v3    # "engine":Lcom/android/okhttp/internal/http/HttpEngine;
    :cond_53
    iget-object v4, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_59
    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/Call;

    .line 133
    .local v1, "call":Lcom/android/okhttp/Call;
    invoke-virtual {v1}, Lcom/android/okhttp/Call;->tag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 134
    invoke-virtual {v1}, Lcom/android/okhttp/Call;->cancel()V
    :try_end_72
    .catchall {:try_start_24 .. :try_end_72} :catchall_21

    goto :goto_59

    .end local v1    # "call":Lcom/android/okhttp/Call;
    :cond_73
    monitor-exit p0

    .line 137
    return-void
.end method

.method declared-synchronized enqueue(Lcom/android/okhttp/Call$AsyncCall;)V
    .registers 4
    .param p1, "call"    # Lcom/android/okhttp/Call$AsyncCall;

    .prologue
    monitor-enter p0

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    if-ge v0, v1, :cond_21

    invoke-direct {p0, p1}, Lcom/android/okhttp/Dispatcher;->runningCallsForHost(Lcom/android/okhttp/Call$AsyncCall;)I

    move-result v0

    iget v1, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    if-ge v0, v1, :cond_21

    .line 109
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p0}, Lcom/android/okhttp/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_27

    :goto_1f
    monitor-exit p0

    .line 114
    return-void

    .line 112
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_27

    goto :goto_1f

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized executed(Lcom/android/okhttp/Call;)V
    .registers 3
    .param p1, "call"    # Lcom/android/okhttp/Call;

    .prologue
    monitor-enter p0

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 174
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized finished(Lcom/android/okhttp/Call$AsyncCall;)V
    .registers 4
    .param p1, "call"    # Lcom/android/okhttp/Call$AsyncCall;

    .prologue
    monitor-enter p0

    .line 141
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "AsyncCall wasn\'t running!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :cond_15
    :try_start_15
    invoke-direct {p0}, Lcom/android/okhttp/Dispatcher;->promoteCalls()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_12

    monitor-exit p0

    .line 143
    return-void
.end method

.method declared-synchronized finished(Lcom/android/okhttp/Call;)V
    .registers 4
    .param p1, "call"    # Lcom/android/okhttp/Call;

    .prologue
    monitor-enter p0

    .line 178
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Call wasn\'t in-flight!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_15
    monitor-exit p0

    .line 179
    return-void
.end method

.method public declared-synchronized getExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 10

    .prologue
    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_21

    .line 61
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 62
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string/jumbo v0, "OkHttp Dispatcher"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    .line 61
    const/4 v2, 0x0

    const v3, 0x7fffffff

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 64
    :cond_21
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxRequests()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 83
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxRequestsPerHost()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 104
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getQueuedCallCount()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 186
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRunningCallCount()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 182
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxRequests(I)V
    .registers 5
    .param p1, "maxRequests"    # I

    .prologue
    monitor-enter p0

    .line 75
    const/4 v0, 0x1

    if-ge p1, v0, :cond_21

    .line 76
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 78
    :cond_21
    :try_start_21
    iput p1, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    .line 79
    invoke-direct {p0}, Lcom/android/okhttp/Dispatcher;->promoteCalls()V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    monitor-exit p0

    .line 80
    return-void
.end method

.method public declared-synchronized setMaxRequestsPerHost(I)V
    .registers 5
    .param p1, "maxRequestsPerHost"    # I

    .prologue
    monitor-enter p0

    .line 96
    const/4 v0, 0x1

    if-ge p1, v0, :cond_21

    .line 97
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :cond_21
    :try_start_21
    iput p1, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    .line 100
    invoke-direct {p0}, Lcom/android/okhttp/Dispatcher;->promoteCalls()V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    monitor-exit p0

    .line 101
    return-void
.end method
