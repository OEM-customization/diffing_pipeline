.class final Ljava/util/concurrent/locks/StampedLock$ReadLockView;
.super Ljava/lang/Object;
.source "StampedLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/Lock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/StampedLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ReadLockView"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/locks/StampedLock;


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/StampedLock;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/concurrent/locks/StampedLock;

    .prologue
    .line 879
    iput-object p1, p0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lock()V
    .registers 2

    .prologue
    .line 880
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->readLock()J

    return-void
.end method

.method public lockInterruptibly()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 882
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->readLockInterruptibly()J

    .line 883
    return-void
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .registers 2

    .prologue
    .line 891
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public tryLock()Z
    .registers 5

    .prologue
    .line 884
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->tryReadLock()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .registers 9
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 887
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/locks/StampedLock;->tryReadLock(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public unlock()V
    .registers 2

    .prologue
    .line 889
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$ReadLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->unstampedUnlockRead()V

    return-void
.end method
