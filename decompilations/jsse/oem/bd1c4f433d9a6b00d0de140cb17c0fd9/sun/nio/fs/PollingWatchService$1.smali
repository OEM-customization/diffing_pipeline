.class Lsun/nio/fs/PollingWatchService$1;
.super Ljava/lang/Object;
.source "PollingWatchService.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/PollingWatchService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/fs/PollingWatchService;


# direct methods
.method constructor <init>(Lsun/nio/fs/PollingWatchService;)V
    .registers 2
    .param p1, "this$0"    # Lsun/nio/fs/PollingWatchService;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/fs/PollingWatchService$1;->this$0:Lsun/nio/fs/PollingWatchService;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 63
    return-object v0
.end method
