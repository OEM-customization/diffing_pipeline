.class final Ljava/util/concurrent/locks/ReentrantLock$FairSync;
.super Ljava/util/concurrent/locks/ReentrantLock$Sync;
.source "ReentrantLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FairSync"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x29a554bceb4b42ecL


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 227
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;-><init>()V

    return-void
.end method


# virtual methods
.method final greylist-max-o lock()V
    .registers 2

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->acquire(I)V

    .line 232
    return-void
.end method

.method protected final whitelist core-platform-api test-api tryAcquire(I)Z
    .registers 7
    .param p1, "acquires"    # I

    .line 241
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 242
    .local v0, "current":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->getState()I

    move-result v1

    .line 243
    .local v1, "c":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1c

    .line 244
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->hasQueuedPredecessors()Z

    move-result v4

    if-nez v4, :cond_32

    .line 245
    invoke-virtual {p0, v3, p1}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->compareAndSetState(II)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 246
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 247
    return v2

    .line 250
    :cond_1c
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v0, v4, :cond_32

    .line 251
    add-int v3, v1, p1

    .line 252
    .local v3, "nextc":I
    if-ltz v3, :cond_2a

    .line 254
    invoke-virtual {p0, v3}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;->setState(I)V

    .line 255
    return v2

    .line 253
    :cond_2a
    new-instance v2, Ljava/lang/Error;

    const-string v4, "Maximum lock count exceeded"

    invoke-direct {v2, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    .end local v3    # "nextc":I
    :cond_32
    return v3
.end method
