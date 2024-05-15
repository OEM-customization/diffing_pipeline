.class final Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;
.super Ljava/util/concurrent/locks/ReentrantLock$Sync;
.source "ReentrantLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonfairSync"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x658832e7537bbf0bL


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 203
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;-><init>()V

    return-void
.end method


# virtual methods
.method final greylist-max-o lock()V
    .registers 3

    .line 213
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->compareAndSetState(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 214
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    goto :goto_13

    .line 216
    :cond_10
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->acquire(I)V

    .line 217
    :goto_13
    return-void
.end method

.method protected final whitelist test-api tryAcquire(I)Z
    .registers 3
    .param p1, "acquires"    # I

    .line 220
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->nonfairTryAcquire(I)Z

    move-result v0

    return v0
.end method
