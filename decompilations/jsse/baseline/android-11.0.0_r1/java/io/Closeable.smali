.class public interface abstract Ljava/io/Closeable;
.super Ljava/lang/Object;
.source "Closeable.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract whitelist core-platform-api test-api close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
