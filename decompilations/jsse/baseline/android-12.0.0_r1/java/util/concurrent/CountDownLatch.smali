.class public Ljava/util/concurrent/CountDownLatch;
.super Ljava/lang/Object;
.source "CountDownLatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CountDownLatch$Sync;
    }
.end annotation


# instance fields
.field private final greylist-max-o sync:Ljava/util/concurrent/CountDownLatch$Sync;


# direct methods
.method public constructor whitelist test-api <init>(I)V
    .registers 4
    .param p1, "count"    # I

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    if-ltz p1, :cond_d

    .line 201
    new-instance v0, Ljava/util/concurrent/CountDownLatch$Sync;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch$Sync;-><init>(I)V

    iput-object v0, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    .line 202
    return-void

    .line 200
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api await()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CountDownLatch$Sync;->acquireSharedInterruptibly(I)V

    .line 233
    return-void
.end method

.method public whitelist test-api await(JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/concurrent/CountDownLatch$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api countDown()V
    .registers 3

    .line 292
    iget-object v0, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CountDownLatch$Sync;->releaseShared(I)Z

    .line 293
    return-void
.end method

.method public whitelist test-api getCount()J
    .registers 3

    .line 303
    iget-object v0, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch$Sync;->getCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/concurrent/CountDownLatch;->sync:Ljava/util/concurrent/CountDownLatch$Sync;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch$Sync;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
