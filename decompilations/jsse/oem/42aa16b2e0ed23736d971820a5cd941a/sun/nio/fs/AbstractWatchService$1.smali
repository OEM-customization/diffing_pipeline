.class Lsun/nio/fs/AbstractWatchService$1;
.super Lsun/nio/fs/AbstractWatchKey;
.source "AbstractWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/AbstractWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/nio/fs/AbstractWatchService;


# direct methods
.method constructor blacklist <init>(Lsun/nio/fs/AbstractWatchService;Ljava/nio/file/Path;Lsun/nio/fs/AbstractWatchService;)V
    .registers 4
    .param p1, "this$0"    # Lsun/nio/fs/AbstractWatchService;
    .param p2, "dir"    # Ljava/nio/file/Path;
    .param p3, "watcher"    # Lsun/nio/fs/AbstractWatchService;

    .line 44
    iput-object p1, p0, Lsun/nio/fs/AbstractWatchService$1;->this$0:Lsun/nio/fs/AbstractWatchService;

    invoke-direct {p0, p2, p3}, Lsun/nio/fs/AbstractWatchKey;-><init>(Ljava/nio/file/Path;Lsun/nio/fs/AbstractWatchService;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api cancel()V
    .registers 1

    .line 52
    return-void
.end method

.method public whitelist core-platform-api test-api isValid()Z
    .registers 2

    .line 47
    const/4 v0, 0x1

    return v0
.end method
