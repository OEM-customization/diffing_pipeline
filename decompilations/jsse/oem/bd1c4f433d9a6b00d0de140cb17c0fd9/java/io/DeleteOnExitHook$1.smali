.class final Ljava/io/DeleteOnExitHook$1;
.super Ljava/lang/Thread;
.source "DeleteOnExitHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/DeleteOnExitHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 42
    invoke-static {}, Ljava/io/DeleteOnExitHook;->runHooks()V

    .line 43
    return-void
.end method
