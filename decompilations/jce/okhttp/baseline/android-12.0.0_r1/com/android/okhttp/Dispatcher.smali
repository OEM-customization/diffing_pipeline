.class public final Lcom/android/okhttp/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field private final greylist-max-o executedCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/okhttp/Call;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o executorService:Ljava/util/concurrent/ExecutorService;

.field private greylist-max-o maxRequests:I

.field private greylist-max-o maxRequestsPerHost:I

.field private final greylist-max-o readyCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/okhttp/Call$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o runningCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/okhttp/Call$AsyncCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    .line 46
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    .line 49
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    .line 52
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    .line 59
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    .line 46
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    .line 49
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    .line 52
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    .line 55
    iput-object p1, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 56
    return-void
.end method

.method private greylist-max-o promoteCalls()V
    .registers 5

    .line 148
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    if-lt v0, v1, :cond_b

    return-void

    .line 149
    :cond_b
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 151
    :cond_14
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/okhttp/Call$AsyncCall;>;"
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/Call$AsyncCall;

    .line 154
    .local v1, "call":Lcom/android/okhttp/Call$AsyncCall;
    invoke-direct {p0, v1}, Lcom/android/okhttp/Dispatcher;->runningCallsForHost(Lcom/android/okhttp/Call$AsyncCall;)I

    move-result v2

    iget v3, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    if-ge v2, v3, :cond_3d

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 156
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p0}, Lcom/android/okhttp/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 160
    :cond_3d
    iget-object v2, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    iget v3, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    if-lt v2, v3, :cond_48

    return-void

    .line 161
    .end local v1    # "call":Lcom/android/okhttp/Call$AsyncCall;
    :cond_48
    goto :goto_1a

    .line 162
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/okhttp/Call$AsyncCall;>;"
    :cond_49
    return-void
.end method

.method private greylist-max-o runningCallsForHost(Lcom/android/okhttp/Call$AsyncCall;)I
    .registers 7
    .param p1, "call"    # Lcom/android/okhttp/Call$AsyncCall;

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/Call$AsyncCall;

    .line 168
    .local v2, "c":Lcom/android/okhttp/Call$AsyncCall;
    invoke-virtual {v2}, Lcom/android/okhttp/Call$AsyncCall;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/okhttp/Call$AsyncCall;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    add-int/lit8 v0, v0, 0x1

    .line 169
    .end local v2    # "c":Lcom/android/okhttp/Call$AsyncCall;
    :cond_23
    goto :goto_7

    .line 170
    :cond_24
    return v0
.end method


# virtual methods
.method public declared-synchronized greylist-max-o cancel(Ljava/lang/Object;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/Object;

    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/Call$AsyncCall;

    .line 121
    .local v1, "call":Lcom/android/okhttp/Call$AsyncCall;
    invoke-virtual {v1}, Lcom/android/okhttp/Call$AsyncCall;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 122
    invoke-virtual {v1}, Lcom/android/okhttp/Call$AsyncCall;->cancel()V

    .line 124
    .end local v1    # "call":Lcom/android/okhttp/Call$AsyncCall;
    .end local p0    # "this":Lcom/android/okhttp/Dispatcher;
    :cond_20
    goto :goto_7

    .line 126
    :cond_21
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/Call$AsyncCall;

    .line 127
    .restart local v1    # "call":Lcom/android/okhttp/Call$AsyncCall;
    invoke-virtual {v1}, Lcom/android/okhttp/Call$AsyncCall;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 128
    invoke-virtual {v1}, Lcom/android/okhttp/Call$AsyncCall;->get()Lcom/android/okhttp/Call;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/okhttp/Call;->canceled:Z

    .line 129
    invoke-virtual {v1}, Lcom/android/okhttp/Call$AsyncCall;->get()Lcom/android/okhttp/Call;

    move-result-object v2

    iget-object v2, v2, Lcom/android/okhttp/Call;->engine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 130
    .local v2, "engine":Lcom/android/okhttp/internal/http/HttpEngine;
    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/HttpEngine;->cancel()V

    .line 132
    .end local v1    # "call":Lcom/android/okhttp/Call$AsyncCall;
    .end local v2    # "engine":Lcom/android/okhttp/internal/http/HttpEngine;
    :cond_4f
    goto :goto_27

    .line 134
    :cond_50
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/Call;

    .line 135
    .local v1, "call":Lcom/android/okhttp/Call;
    invoke-virtual {v1}, Lcom/android/okhttp/Call;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 136
    invoke-virtual {v1}, Lcom/android/okhttp/Call;->cancel()V
    :try_end_6f
    .catchall {:try_start_1 .. :try_end_6f} :catchall_72

    .line 138
    .end local v1    # "call":Lcom/android/okhttp/Call;
    :cond_6f
    goto :goto_56

    .line 139
    :cond_70
    monitor-exit p0

    return-void

    .line 119
    .end local p1    # "tag":Ljava/lang/Object;
    :catchall_72
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o enqueue(Lcom/android/okhttp/Call$AsyncCall;)V
    .registers 4
    .param p1, "call"    # Lcom/android/okhttp/Call$AsyncCall;

    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    if-ge v0, v1, :cond_20

    invoke-direct {p0, p1}, Lcom/android/okhttp/Dispatcher;->runningCallsForHost(Lcom/android/okhttp/Call$AsyncCall;)I

    move-result v0

    iget v1, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    if-ge v0, v1, :cond_20

    .line 111
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0}, Lcom/android/okhttp/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_25

    .line 114
    .end local p0    # "this":Lcom/android/okhttp/Dispatcher;
    :cond_20
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 116
    :goto_25
    monitor-exit p0

    return-void

    .line 109
    .end local p1    # "call":Lcom/android/okhttp/Call$AsyncCall;
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o executed(Lcom/android/okhttp/Call;)V
    .registers 3
    .param p1, "call"    # Lcom/android/okhttp/Call;

    monitor-enter p0

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 176
    monitor-exit p0

    return-void

    .line 174
    .end local p0    # "this":Lcom/android/okhttp/Dispatcher;
    .end local p1    # "call":Lcom/android/okhttp/Call;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o finished(Lcom/android/okhttp/Call$AsyncCall;)V
    .registers 4
    .param p1, "call"    # Lcom/android/okhttp/Call$AsyncCall;

    monitor-enter p0

    .line 143
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 144
    invoke-direct {p0}, Lcom/android/okhttp/Dispatcher;->promoteCalls()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 145
    monitor-exit p0

    return-void

    .line 143
    .end local p0    # "this":Lcom/android/okhttp/Dispatcher;
    :cond_e
    :try_start_e
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "AsyncCall wasn\'t running!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_16

    .line 142
    .end local p1    # "call":Lcom/android/okhttp/Call$AsyncCall;
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o finished(Lcom/android/okhttp/Call;)V
    .registers 4
    .param p1, "call"    # Lcom/android/okhttp/Call;

    monitor-enter p0

    .line 180
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executedCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_13

    if-eqz v0, :cond_b

    .line 181
    monitor-exit p0

    return-void

    .line 180
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Call wasn\'t in-flight!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_13

    .line 179
    .end local p0    # "this":Lcom/android/okhttp/Dispatcher;
    .end local p1    # "call":Lcom/android/okhttp/Call;
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o getExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 10

    monitor-enter p0

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_21

    .line 63
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkHttp Dispatcher"

    const/4 v8, 0x0

    .line 64
    invoke-static {v1, v8}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 66
    .end local p0    # "this":Lcom/android/okhttp/Dispatcher;
    :cond_21
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v0

    .line 61
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o getMaxRequests()I
    .registers 2

    monitor-enter p0

    .line 85
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 85
    .end local p0    # "this":Lcom/android/okhttp/Dispatcher;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o getMaxRequestsPerHost()I
    .registers 2

    monitor-enter p0

    .line 106
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 106
    .end local p0    # "this":Lcom/android/okhttp/Dispatcher;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o getQueuedCallCount()I
    .registers 2

    monitor-enter p0

    .line 188
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 188
    .end local p0    # "this":Lcom/android/okhttp/Dispatcher;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o getRunningCallCount()I
    .registers 2

    monitor-enter p0

    .line 184
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 184
    .end local p0    # "this":Lcom/android/okhttp/Dispatcher;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o setMaxRequests(I)V
    .registers 5
    .param p1, "maxRequests"    # I

    monitor-enter p0

    .line 77
    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    .line 80
    :try_start_4
    iput p1, p0, Lcom/android/okhttp/Dispatcher;->maxRequests:I

    .line 81
    invoke-direct {p0}, Lcom/android/okhttp/Dispatcher;->promoteCalls()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 82
    monitor-exit p0

    return-void

    .line 76
    .end local p0    # "this":Lcom/android/okhttp/Dispatcher;
    .end local p1    # "maxRequests":I
    :catchall_b
    move-exception p1

    goto :goto_24

    .line 78
    .restart local p1    # "maxRequests":I
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_b

    .line 76
    .end local p1    # "maxRequests":I
    :goto_24
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o setMaxRequestsPerHost(I)V
    .registers 5
    .param p1, "maxRequestsPerHost"    # I

    monitor-enter p0

    .line 98
    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    .line 101
    :try_start_4
    iput p1, p0, Lcom/android/okhttp/Dispatcher;->maxRequestsPerHost:I

    .line 102
    invoke-direct {p0}, Lcom/android/okhttp/Dispatcher;->promoteCalls()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 103
    monitor-exit p0

    return-void

    .line 97
    .end local p0    # "this":Lcom/android/okhttp/Dispatcher;
    .end local p1    # "maxRequestsPerHost":I
    :catchall_b
    move-exception p1

    goto :goto_24

    .line 99
    .restart local p1    # "maxRequestsPerHost":I
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_b

    .line 97
    .end local p1    # "maxRequestsPerHost":I
    :goto_24
    monitor-exit p0

    throw p1
.end method
