.class Lsun/nio/ch/AsynchronousChannelGroupImpl$3;
.super Ljava/lang/Object;
.source "AsynchronousChannelGroupImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/AsynchronousChannelGroupImpl;->shutdownExecutors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/nio/ch/AsynchronousChannelGroupImpl;


# direct methods
.method constructor blacklist <init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V
    .registers 2
    .param p1, "this$0"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;

    .line 249
    iput-object p1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$3;->this$0:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api run()Ljava/lang/Object;
    .registers 2

    .line 249
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl$3;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 2

    .line 251
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$3;->this$0:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    # getter for: Lsun/nio/ch/AsynchronousChannelGroupImpl;->pool:Lsun/nio/ch/ThreadPool;
    invoke-static {v0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->access$000(Lsun/nio/ch/AsynchronousChannelGroupImpl;)Lsun/nio/ch/ThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 252
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$3;->this$0:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    # getter for: Lsun/nio/ch/AsynchronousChannelGroupImpl;->timeoutExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->access$100(Lsun/nio/ch/AsynchronousChannelGroupImpl;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 253
    const/4 v0, 0x0

    return-object v0
.end method
