.class public interface abstract Ljava/util/concurrent/locks/Condition;
.super Ljava/lang/Object;
.source "Condition.java"


# virtual methods
.method public abstract whitelist core-platform-api test-api await()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api await(JLjava/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api awaitNanos(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api awaitUninterruptibly()V
.end method

.method public abstract whitelist core-platform-api test-api awaitUntil(Ljava/util/Date;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api signal()V
.end method

.method public abstract whitelist core-platform-api test-api signalAll()V
.end method
