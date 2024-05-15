.class abstract Ljava/util/concurrent/Semaphore$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "Semaphore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Semaphore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Sync"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x108c7583c161b715L


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "permits"    # I

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 176
    invoke-virtual {p0, p1}, Ljava/util/concurrent/Semaphore$Sync;->setState(I)V

    .line 177
    return-void
.end method


# virtual methods
.method final drainPermits()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 217
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    .line 218
    .local v0, "current":I
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    :cond_d
    return v0
.end method

.method final getPermits()I
    .registers 2

    .prologue
    .line 180
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    return v0
.end method

.method final nonfairTryAcquireShared(I)I
    .registers 5
    .param p1, "acquires"    # I

    .prologue
    .line 185
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    .line 186
    .local v0, "available":I
    sub-int v1, v0, p1

    .line 187
    .local v1, "remaining":I
    if-ltz v1, :cond_e

    .line 188
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v2

    .line 187
    if-eqz v2, :cond_0

    .line 189
    :cond_e
    return v1
.end method

.method final reducePermits(I)V
    .registers 6
    .param p1, "reductions"    # I

    .prologue
    .line 206
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    .line 207
    .local v0, "current":I
    sub-int v1, v0, p1

    .line 208
    .local v1, "next":I
    if-le v1, v0, :cond_11

    .line 209
    new-instance v2, Ljava/lang/Error;

    const-string/jumbo v3, "Permit count underflow"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_11
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    return-void
.end method

.method protected final tryReleaseShared(I)Z
    .registers 6
    .param p1, "releases"    # I

    .prologue
    .line 195
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore$Sync;->getState()I

    move-result v0

    .line 196
    .local v0, "current":I
    add-int v1, v0, p1

    .line 197
    .local v1, "next":I
    if-ge v1, v0, :cond_11

    .line 198
    new-instance v2, Ljava/lang/Error;

    const-string/jumbo v3, "Maximum permit count exceeded"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_11
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/Semaphore$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    const/4 v2, 0x1

    return v2
.end method
