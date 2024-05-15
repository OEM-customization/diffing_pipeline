.class Lsun/nio/ch/AsynchronousChannelGroupImpl$2;
.super Ljava/lang/Object;
.source "AsynchronousChannelGroupImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/AsynchronousChannelGroupImpl;->startInternalThread(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/ch/AsynchronousChannelGroupImpl;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$2;->this$0:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    iput-object p2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$2;->val$task:Ljava/lang/Runnable;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousChannelGroupImpl$2;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 3

    .prologue
    .line 123
    invoke-static {}, Lsun/nio/ch/ThreadPool;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iget-object v1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$2;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method
