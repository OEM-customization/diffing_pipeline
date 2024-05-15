.class Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;
.super Ljava/lang/Object;
.source "UnixAsynchronousSocketChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;


# direct methods
.method constructor <init>(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)V
    .registers 2
    .param p1, "this$0"    # Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 468
    const/4 v4, 0x0

    .line 469
    .local v4, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 470
    .local v0, "att":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 472
    .local v3, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v5}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-get4(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 473
    :try_start_b
    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v5}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-get3(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_3f

    move-result v5

    if-nez v5, :cond_15

    monitor-exit v6

    .line 474
    return-void

    .line 475
    :cond_15
    :try_start_15
    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-set0(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;Z)Z

    .line 476
    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v5}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-get2(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/nio/channels/CompletionHandler;

    move-result-object v4

    .line 477
    .local v4, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v5}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-get0(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;

    move-result-object v0

    .line 478
    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v5}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-get1(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Lsun/nio/ch/PendingFuture;
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_3f

    move-result-object v3

    .local v3, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    monitor-exit v6

    .line 482
    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading(Z)V

    .line 485
    new-instance v2, Ljava/nio/channels/InterruptedByTimeoutException;

    invoke-direct {v2}, Ljava/nio/channels/InterruptedByTimeoutException;-><init>()V

    .line 486
    .local v2, "exc":Ljava/lang/Exception;
    if-nez v4, :cond_42

    .line 487
    invoke-virtual {v3, v2}, Lsun/nio/ch/PendingFuture;->setFailure(Ljava/lang/Throwable;)V

    .line 492
    :goto_3e
    return-void

    .line 472
    .end local v0    # "att":Ljava/lang/Object;
    .end local v2    # "exc":Ljava/lang/Exception;
    .end local v4    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    .local v3, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    :catchall_3f
    move-exception v5

    monitor-exit v6

    throw v5

    .line 489
    .restart local v0    # "att":Ljava/lang/Object;
    .restart local v2    # "exc":Ljava/lang/Exception;
    .local v3, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    .restart local v4    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    :cond_42
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    .line 490
    .local v1, "ch":Ljava/nio/channels/AsynchronousChannel;
    invoke-static {v1, v4, v0, v8, v2}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3e
.end method
