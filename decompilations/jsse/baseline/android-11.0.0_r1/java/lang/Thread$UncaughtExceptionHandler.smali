.class public interface abstract Ljava/lang/Thread$UncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "Thread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UncaughtExceptionHandler"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract whitelist core-platform-api test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end method
