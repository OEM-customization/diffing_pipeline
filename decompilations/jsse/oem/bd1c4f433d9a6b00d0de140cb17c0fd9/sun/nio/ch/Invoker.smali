.class Lsun/nio/ch/Invoker;
.super Ljava/lang/Object;
.source "Invoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Invoker$1;,
        Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final maxHandlerInvokeCount:I

.field private static final myGroupAndInvokeCount:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lsun/nio/ch/Invoker$GroupAndInvokeCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-class v0, Lsun/nio/ch/Invoker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/Invoker;->-assertionsDisabled:Z

    .line 44
    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v1, "sun.nio.ch.maxCompletionHandlersOnStack"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    .line 43
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lsun/nio/ch/Invoker;->maxHandlerInvokeCount:I

    .line 72
    new-instance v0, Lsun/nio/ch/Invoker$1;

    invoke-direct {v0}, Lsun/nio/ch/Invoker$1;-><init>()V

    .line 71
    sput-object v0, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bindToGroup(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V
    .registers 3
    .param p0, "group"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;

    .prologue
    .line 82
    sget-object v0, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    new-instance v1, Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    invoke-direct {v1, p0}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method static getGroupAndInvokeCount()Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    return-object v0
.end method

.method static invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 11
    .param p0, "channel"    # Ljava/nio/channels/AsynchronousChannel;
    .param p4, "exc"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/AsynchronousChannel;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;TA;TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p2, "attachment":Ljava/lang/Object;, "TA;"
    .local p3, "result":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .line 173
    .local v1, "invokeDirect":Z
    const/4 v0, 0x0

    .line 174
    .local v0, "identityOkay":Z
    sget-object v4, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    .line 175
    .local v3, "thisGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    if-eqz v3, :cond_25

    .line 176
    invoke-virtual {v3}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->group()Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v5

    move-object v4, p0

    check-cast v4, Lsun/nio/ch/Groupable;

    invoke-interface {v4}, Lsun/nio/ch/Groupable;->group()Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v4

    if-ne v5, v4, :cond_1a

    .line 177
    const/4 v0, 0x1

    .line 178
    :cond_1a
    if-eqz v0, :cond_25

    .line 179
    invoke-virtual {v3}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->invokeCount()I

    move-result v4

    sget v5, Lsun/nio/ch/Invoker;->maxHandlerInvokeCount:I

    if-ge v4, v5, :cond_25

    .line 182
    const/4 v1, 0x1

    .line 185
    :cond_25
    if-eqz v1, :cond_2b

    .line 186
    invoke-static {v3, p1, p2, p3, p4}, Lsun/nio/ch/Invoker;->invokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 201
    :goto_2a
    return-void

    .line 189
    :cond_2b
    :try_start_2b
    invoke-static {p0, p1, p2, p3, p4}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_2a

    .line 190
    :catch_2f
    move-exception v2

    .line 193
    .local v2, "ree":Ljava/util/concurrent/RejectedExecutionException;
    if-eqz v0, :cond_36

    .line 194
    invoke-static {v3, p1, p2, p3, p4}, Lsun/nio/ch/Invoker;->invokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2a

    .line 197
    :cond_36
    new-instance v4, Ljava/nio/channels/ShutdownChannelGroupException;

    invoke-direct {v4}, Ljava/nio/channels/ShutdownChannelGroupException;-><init>()V

    throw v4
.end method

.method static invoke(Lsun/nio/ch/PendingFuture;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/nio/ch/PendingFuture",
            "<TV;TA;>;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    sget-boolean v1, Lsun/nio/ch/Invoker;->-assertionsDisabled:Z

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 296
    :cond_10
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->handler()Ljava/nio/channels/CompletionHandler;

    move-result-object v0

    .line 297
    .local v0, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    if-eqz v0, :cond_29

    .line 298
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->channel()Ljava/nio/channels/AsynchronousChannel;

    move-result-object v1

    .line 300
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->attachment()Ljava/lang/Object;

    move-result-object v2

    .line 301
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->value()Ljava/lang/Object;

    move-result-object v3

    .line 302
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->exception()Ljava/lang/Throwable;

    move-result-object v4

    .line 298
    invoke-static {v1, v0, v2, v3, v4}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 304
    :cond_29
    return-void
.end method

.method static invokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "myGroupAndInvokeCount"    # Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .param p4, "exc"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/nio/ch/Invoker$GroupAndInvokeCount;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;TA;TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p2, "attachment":Ljava/lang/Object;, "TA;"
    .local p3, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->incrementInvokeCount()V

    .line 158
    invoke-static {p1, p2, p3, p4}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 159
    return-void
.end method

.method static invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8
    .param p0, "channel"    # Ljava/nio/channels/AsynchronousChannel;
    .param p4, "exc"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/AsynchronousChannel;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;TA;TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p2, "attachment":Ljava/lang/Object;, "TA;"
    .local p3, "result":Ljava/lang/Object;, "TV;"
    :try_start_0
    check-cast p0, Lsun/nio/ch/Groupable;

    .end local p0    # "channel":Ljava/nio/channels/AsynchronousChannel;
    invoke-interface {p0}, Lsun/nio/ch/Groupable;->group()Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v1

    new-instance v2, Lsun/nio/ch/Invoker$2;

    invoke-direct {v2, p1, p2, p3, p4}, Lsun/nio/ch/Invoker$2;-><init>(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->executeOnPooledThread(Ljava/lang/Runnable;)V
    :try_end_e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_e} :catch_f

    .line 225
    return-void

    .line 222
    :catch_f
    move-exception v0

    .line 223
    .local v0, "ree":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v1, Ljava/nio/channels/ShutdownChannelGroupException;

    invoke-direct {v1}, Ljava/nio/channels/ShutdownChannelGroupException;-><init>()V

    throw v1
.end method

.method static invokeIndirectly(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p3, "exc"    # Ljava/lang/Throwable;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;TA;TV;",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p1, "attachment":Ljava/lang/Object;, "TA;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    new-instance v1, Lsun/nio/ch/Invoker$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lsun/nio/ch/Invoker$3;-><init>(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-interface {p4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_8} :catch_9

    .line 245
    return-void

    .line 242
    :catch_9
    move-exception v0

    .line 243
    .local v0, "ree":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v1, Ljava/nio/channels/ShutdownChannelGroupException;

    invoke-direct {v1}, Ljava/nio/channels/ShutdownChannelGroupException;-><init>()V

    throw v1
.end method

.method static invokeIndirectly(Lsun/nio/ch/PendingFuture;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/nio/ch/PendingFuture",
            "<TV;TA;>;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    sget-boolean v1, Lsun/nio/ch/Invoker;->-assertionsDisabled:Z

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 312
    :cond_10
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->handler()Ljava/nio/channels/CompletionHandler;

    move-result-object v0

    .line 313
    .local v0, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    if-eqz v0, :cond_29

    .line 314
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->channel()Ljava/nio/channels/AsynchronousChannel;

    move-result-object v1

    .line 316
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->attachment()Ljava/lang/Object;

    move-result-object v2

    .line 317
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->value()Ljava/lang/Object;

    move-result-object v3

    .line 318
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->exception()Ljava/lang/Throwable;

    move-result-object v4

    .line 314
    invoke-static {v1, v0, v2, v3, v4}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 320
    :cond_29
    return-void
.end method

.method static invokeOnThreadInThreadPool(Lsun/nio/ch/Groupable;Ljava/lang/Runnable;)V
    .registers 7
    .param p0, "channel"    # Lsun/nio/ch/Groupable;
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 256
    sget-object v4, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    .line 257
    .local v3, "thisGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    invoke-interface {p0}, Lsun/nio/ch/Groupable;->group()Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v2

    .line 258
    .local v2, "targetGroup":Lsun/nio/ch/AsynchronousChannelGroupImpl;
    if-nez v3, :cond_15

    .line 259
    const/4 v0, 0x0

    .line 264
    .local v0, "invokeDirect":Z
    :goto_f
    if-eqz v0, :cond_1f

    .line 265
    :try_start_11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_14
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_11 .. :try_end_14} :catch_23

    .line 272
    :goto_14
    return-void

    .line 261
    .end local v0    # "invokeDirect":Z
    :cond_15
    invoke-static {v3}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->-get0(Lsun/nio/ch/Invoker$GroupAndInvokeCount;)Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v4

    if-ne v4, v2, :cond_1d

    const/4 v0, 0x1

    .restart local v0    # "invokeDirect":Z
    goto :goto_f

    .end local v0    # "invokeDirect":Z
    :cond_1d
    const/4 v0, 0x0

    .restart local v0    # "invokeDirect":Z
    goto :goto_f

    .line 267
    :cond_1f
    :try_start_1f
    invoke-virtual {v2, p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->executeOnPooledThread(Ljava/lang/Runnable;)V
    :try_end_22
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_14

    .line 269
    :catch_23
    move-exception v1

    .line 270
    .local v1, "ree":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v4, Ljava/nio/channels/ShutdownChannelGroupException;

    invoke-direct {v4}, Ljava/nio/channels/ShutdownChannelGroupException;-><init>()V

    throw v4
.end method

.method static invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .param p3, "exc"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;TA;TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p1, "attachment":Ljava/lang/Object;, "TA;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p3, :cond_9

    .line 126
    invoke-interface {p0, p2, p1}, Ljava/nio/channels/CompletionHandler;->completed(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    :goto_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 146
    return-void

    .line 128
    :cond_9
    invoke-interface {p0, p3, p1}, Ljava/nio/channels/CompletionHandler;->failed(Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method static invokeUnchecked(Lsun/nio/ch/PendingFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/nio/ch/PendingFuture",
            "<TV;TA;>;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    sget-boolean v1, Lsun/nio/ch/Invoker;->-assertionsDisabled:Z

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 280
    :cond_10
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->handler()Ljava/nio/channels/CompletionHandler;

    move-result-object v0

    .line 281
    .local v0, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    if-eqz v0, :cond_25

    .line 283
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->attachment()Ljava/lang/Object;

    move-result-object v1

    .line 284
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->value()Ljava/lang/Object;

    move-result-object v2

    .line 285
    invoke-virtual {p0}, Lsun/nio/ch/PendingFuture;->exception()Ljava/lang/Throwable;

    move-result-object v3

    .line 282
    invoke-static {v0, v1, v2, v3}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 287
    :cond_25
    return-void
.end method

.method static isBoundToAnyGroup()Z
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lsun/nio/ch/Invoker;->myGroupAndInvokeCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static mayInvokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Lsun/nio/ch/AsynchronousChannelGroupImpl;)Z
    .registers 4
    .param p0, "myGroupAndInvokeCount"    # Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .param p1, "group"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;

    .prologue
    .line 107
    if-eqz p0, :cond_12

    .line 108
    invoke-virtual {p0}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->group()Lsun/nio/ch/AsynchronousChannelGroupImpl;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 109
    invoke-virtual {p0}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->invokeCount()I

    move-result v0

    sget v1, Lsun/nio/ch/Invoker;->maxHandlerInvokeCount:I

    if-ge v0, v1, :cond_12

    .line 111
    const/4 v0, 0x1

    return v0

    .line 113
    :cond_12
    const/4 v0, 0x0

    return v0
.end method
