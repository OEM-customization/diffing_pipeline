.class final Ljava/util/concurrent/CountDownLatch$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "CountDownLatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CountDownLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sync"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x45248f9a985464a6L


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 166
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CountDownLatch$Sync;->setState(I)V

    .line 167
    return-void
.end method


# virtual methods
.method getCount()I
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch$Sync;->getState()I

    move-result v0

    return v0
.end method

.method protected tryAcquireShared(I)I
    .registers 3
    .param p1, "acquires"    # I

    .prologue
    .line 174
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch$Sync;->getState()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method protected tryReleaseShared(I)Z
    .registers 6
    .param p1, "releases"    # I

    .prologue
    const/4 v2, 0x0

    .line 180
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch$Sync;->getState()I

    move-result v0

    .line 181
    .local v0, "c":I
    if-nez v0, :cond_8

    .line 182
    return v2

    .line 183
    :cond_8
    add-int/lit8 v1, v0, -0x1

    .line 184
    .local v1, "nextc":I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/CountDownLatch$Sync;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    if-nez v1, :cond_13

    const/4 v2, 0x1

    :cond_13
    return v2
.end method
