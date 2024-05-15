.class public Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.super Ljava/lang/Object;
.source "ReentrantReadWriteLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/ReadWriteLock;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    }
.end annotation


# static fields
.field private static final TID:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = -0x610a2aff0f4a97b4L


# instance fields
.field private final readerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field final sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

.field private final writerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 1504
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->U:Lsun/misc/Unsafe;

    .line 1508
    :try_start_6
    sget-object v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->U:Lsun/misc/Unsafe;

    .line 1509
    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "tid"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1508
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->TID:J
    :try_end_17
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_17} :catch_18

    .line 217
    return-void

    .line 1510
    :catch_18
    move-exception v0

    .line 1511
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 233
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "fair"    # Z

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    if-eqz p1, :cond_1b

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;-><init>()V

    :goto_a
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    .line 243
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;-><init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 244
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;-><init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 245
    return-void

    .line 242
    :cond_1b
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;-><init>()V

    goto :goto_a
.end method

.method static final getThreadId(Ljava/lang/Thread;)J
    .registers 5
    .param p0, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 1500
    sget-object v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->TID:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected getOwner()Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 1256
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public final getQueueLength()I
    .registers 2

    .prologue
    .line 1386
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getQueueLength()I

    move-result v0

    return v0
.end method

.method protected getQueuedReaderThreads()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1343
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getSharedQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getQueuedThreads()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1401
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getQueuedWriterThreads()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1328
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getReadHoldCount()I
    .registers 2

    .prologue
    .line 1313
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadHoldCount()I

    move-result v0

    return v0
.end method

.method public getReadLockCount()I
    .registers 2

    .prologue
    .line 1266
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadLockCount()I

    move-result v0

    return v0
.end method

.method public getWaitQueueLength(Ljava/util/concurrent/locks/Condition;)I
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;

    .prologue
    .line 1443
    if-nez p1, :cond_8

    .line 1444
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1445
    :cond_8
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-nez v0, :cond_15

    .line 1446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1447
    :cond_15
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    check-cast p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    .end local p1    # "condition":Ljava/util/concurrent/locks/Condition;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)I

    move-result v0

    return v0
.end method

.method protected getWaitingThreads(Ljava/util/concurrent/locks/Condition;)Ljava/util/Collection;
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/Condition;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1468
    if-nez p1, :cond_8

    .line 1469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1470
    :cond_8
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-nez v0, :cond_15

    .line 1471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1472
    :cond_15
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    check-cast p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    .end local p1    # "condition":Ljava/util/concurrent/locks/Condition;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getWriteHoldCount()I
    .registers 2

    .prologue
    .line 1300
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWriteHoldCount()I

    move-result v0

    return v0
.end method

.method public final hasQueuedThread(Ljava/lang/Thread;)Z
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 1372
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isQueued(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public final hasQueuedThreads()Z
    .registers 2

    .prologue
    .line 1357
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public hasWaiters(Ljava/util/concurrent/locks/Condition;)Z
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;

    .prologue
    .line 1420
    if-nez p1, :cond_8

    .line 1421
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1422
    :cond_8
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-nez v0, :cond_15

    .line 1423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1424
    :cond_15
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    check-cast p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    .end local p1    # "condition":Ljava/util/concurrent/locks/Condition;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    move-result v0

    return v0
.end method

.method public final isFair()Z
    .registers 2

    .prologue
    .line 1239
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    instance-of v0, v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$FairSync;

    return v0
.end method

.method public isWriteLocked()Z
    .registers 2

    .prologue
    .line 1278
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isWriteLocked()Z

    move-result v0

    return v0
.end method

.method public isWriteLockedByCurrentThread()Z
    .registers 2

    .prologue
    .line 1288
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isHeldExclusively()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readLock()Ljava/util/concurrent/locks/Lock;
    .registers 2

    .prologue
    .line 248
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1485
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getCount()I

    move-result v0

    .line 1486
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v2

    .line 1487
    .local v2, "w":I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v1

    .line 1489
    .local v1, "r":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1490
    const-string/jumbo v4, "[Write locks = "

    .line 1489
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1490
    const-string/jumbo v4, ", Read locks = "

    .line 1489
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1490
    const-string/jumbo v4, "]"

    .line 1489
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic writeLock()Ljava/util/concurrent/locks/Lock;
    .registers 2

    .prologue
    .line 247
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    return-object v0
.end method

.method public writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-object v0
.end method
