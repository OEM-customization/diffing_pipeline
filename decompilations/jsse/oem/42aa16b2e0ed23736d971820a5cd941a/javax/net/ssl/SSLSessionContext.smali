.class public interface abstract Ljavax/net/ssl/SSLSessionContext;
.super Ljava/lang/Object;
.source "SSLSessionContext.java"


# virtual methods
.method public abstract whitelist core-platform-api test-api getIds()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getSession([B)Ljavax/net/ssl/SSLSession;
.end method

.method public abstract whitelist core-platform-api test-api getSessionCacheSize()I
.end method

.method public abstract whitelist core-platform-api test-api getSessionTimeout()I
.end method

.method public abstract whitelist core-platform-api test-api setSessionCacheSize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api setSessionTimeout(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
