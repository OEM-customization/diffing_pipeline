.class public abstract Ljava/nio/channels/spi/AbstractSelectionKey;
.super Ljava/nio/channels/SelectionKey;
.source "AbstractSelectionKey.java"


# instance fields
.field private volatile valid:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/nio/channels/SelectionKey;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->valid:Z

    .line 48
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .prologue
    .line 70
    monitor-enter p0

    .line 71
    :try_start_1
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->valid:Z

    if-eqz v0, :cond_11

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->valid:Z

    .line 73
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/spi/AbstractSelector;

    invoke-virtual {v0, p0}, Ljava/nio/channels/spi/AbstractSelector;->cancel(Ljava/nio/channels/SelectionKey;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    .line 76
    return-void

    .line 70
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method invalidate()V
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->valid:Z

    .line 58
    return-void
.end method

.method public final isValid()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->valid:Z

    return v0
.end method