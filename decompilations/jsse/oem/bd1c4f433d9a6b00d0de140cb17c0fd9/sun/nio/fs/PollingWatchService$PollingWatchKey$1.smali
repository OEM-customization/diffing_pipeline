.class Lsun/nio/fs/PollingWatchService$PollingWatchKey$1;
.super Ljava/lang/Object;
.source "PollingWatchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/PollingWatchService$PollingWatchKey;->enable(Ljava/util/Set;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsun/nio/fs/PollingWatchService$PollingWatchKey;


# direct methods
.method constructor <init>(Lsun/nio/fs/PollingWatchService$PollingWatchKey;)V
    .registers 2
    .param p1, "this$1"    # Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey$1;->this$1:Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey$1;->this$1:Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    invoke-virtual {v0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->poll()V

    return-void
.end method
