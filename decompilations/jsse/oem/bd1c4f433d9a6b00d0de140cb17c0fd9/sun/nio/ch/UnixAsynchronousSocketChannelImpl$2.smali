.class Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;
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
    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 663
    const/4 v3, 0x0

    .line 664
    .local v3, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 665
    .local v0, "att":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 667
    .local v2, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-get4(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 668
    :try_start_b
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-get8(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_41

    move-result v4

    if-nez v4, :cond_15

    monitor-exit v5

    .line 669
    return-void

    .line 670
    :cond_15
    :try_start_15
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-set1(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;Z)Z

    .line 671
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-get7(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/nio/channels/CompletionHandler;

    move-result-object v3

    .line 672
    .local v3, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-get5(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;

    move-result-object v0

    .line 673
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-get6(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Lsun/nio/ch/PendingFuture;
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_41

    move-result-object v2

    .local v2, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    monitor-exit v5

    .line 677
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting(Z)V

    .line 680
    new-instance v1, Ljava/nio/channels/InterruptedByTimeoutException;

    invoke-direct {v1}, Ljava/nio/channels/InterruptedByTimeoutException;-><init>()V

    .line 681
    .local v1, "exc":Ljava/lang/Exception;
    if-eqz v3, :cond_44

    .line 682
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;->this$0:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-static {v4, v3, v0, v7, v1}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 687
    :goto_40
    return-void

    .line 667
    .end local v0    # "att":Ljava/lang/Object;
    .end local v1    # "exc":Ljava/lang/Exception;
    .end local v3    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    .local v2, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    :catchall_41
    move-exception v4

    monitor-exit v5

    throw v4

    .line 685
    .restart local v0    # "att":Ljava/lang/Object;
    .restart local v1    # "exc":Ljava/lang/Exception;
    .local v2, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    .restart local v3    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    :cond_44
    invoke-virtual {v2, v1}, Lsun/nio/ch/PendingFuture;->setFailure(Ljava/lang/Throwable;)V

    goto :goto_40
.end method
