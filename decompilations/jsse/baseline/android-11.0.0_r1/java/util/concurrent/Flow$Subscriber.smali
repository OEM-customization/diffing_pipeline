.class public interface abstract Ljava/util/concurrent/Flow$Subscriber;
.super Ljava/lang/Object;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Subscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract whitelist core-platform-api test-api onComplete()V
.end method

.method public abstract whitelist core-platform-api test-api onError(Ljava/lang/Throwable;)V
.end method

.method public abstract whitelist core-platform-api test-api onNext(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api onSubscribe(Ljava/util/concurrent/Flow$Subscription;)V
.end method
