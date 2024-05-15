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
.field final synthetic this$0:Lsun/nio/fs/AbstractWatchService;


# direct methods
.method constructor <init>(Lsun/nio/fs/AbstractWatchService;Ljava/nio/file/Path;Lsun/nio/fs/AbstractWatchService;)V
    .registers 4
    .param p1, "this$0"    # Lsun/nio/fs/AbstractWatchService;
    .param p2, "$anonymous0"    # Ljava/nio/file/Path;
    .param p3, "$anonymous1"    # Lsun/nio/fs/AbstractWatchService;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/fs/AbstractWatchService$1;->this$0:Lsun/nio/fs/AbstractWatchService;

    .line 44
    invoke-direct {p0, p2, p3}, Lsun/nio/fs/AbstractWatchKey;-><init>(Ljava/nio/file/Path;Lsun/nio/fs/AbstractWatchService;)V

    .line 1
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method
