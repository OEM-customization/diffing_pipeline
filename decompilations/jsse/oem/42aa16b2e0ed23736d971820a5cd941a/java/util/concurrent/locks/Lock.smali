.class public interface abstract Ljava/util/concurrent/locks/Lock;
.super Ljava/lang/Object;
.source "Lock.java"


# virtual methods
.method public abstract whitelist core-platform-api test-api lock()V
.end method

.method public abstract whitelist core-platform-api test-api lockInterruptibly()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api newCondition()Ljava/util/concurrent/locks/Condition;
.end method

.method public abstract whitelist core-platform-api test-api tryLock()Z
.end method

.method public abstract whitelist core-platform-api test-api tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api unlock()V
.end method
