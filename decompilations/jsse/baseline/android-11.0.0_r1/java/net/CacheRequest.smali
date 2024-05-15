.class public abstract Ljava/net/CacheRequest;
.super Ljava/lang/Object;
.source "CacheRequest.java"


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist core-platform-api test-api abort()V
.end method

.method public abstract whitelist core-platform-api test-api getBody()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
