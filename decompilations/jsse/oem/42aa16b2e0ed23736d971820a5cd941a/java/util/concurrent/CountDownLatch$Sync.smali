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
.field private static final whitelist serialVersionUID:J = 0x45248f9a985464a6L


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "count"    # I

    .line 165
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 166
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CountDownLatch$Sync;->setState(I)V

    .line 167
    return-void
.end method


# virtual methods
.method greylist-max-o getCount()I
    .registers 2

    .line 170
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch$Sync;->getState()I

    move-result v0

    return v0
.end method

.method protected whitelist core-platform-api test-api tryAcquireShared(I)I
    .registers 3
    .param p1, "acquires"    # I

    .line 174
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch$Sync;->getState()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method protected whitelist core-platform-api test-api tryReleaseShared(I)Z
    .registers 6
    .param p1, "releases"    # I

    .line 180
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch$Sync;->getState()I

    move-result v0

    .line 181
    .local v0, "c":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 182
    return v1

    .line 183
    :cond_8
    add-int/lit8 v2, v0, -0x1

    .line 184
    .local v2, "nextc":I
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/CountDownLatch$Sync;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 185
    if-nez v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    .line 186
    .end local v0    # "c":I
    .end local v2    # "nextc":I
    :cond_14
    goto :goto_0
.end method
