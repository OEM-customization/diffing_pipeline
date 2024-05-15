.class public interface abstract Ljavax/sql/ConnectionEventListener;
.super Ljava/lang/Object;
.source "ConnectionEventListener.java"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract whitelist core-platform-api test-api connectionClosed(Ljavax/sql/ConnectionEvent;)V
.end method

.method public abstract whitelist core-platform-api test-api connectionErrorOccurred(Ljavax/sql/ConnectionEvent;)V
.end method
