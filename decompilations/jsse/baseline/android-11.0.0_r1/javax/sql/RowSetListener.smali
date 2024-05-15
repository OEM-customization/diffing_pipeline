.class public interface abstract Ljavax/sql/RowSetListener;
.super Ljava/lang/Object;
.source "RowSetListener.java"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract whitelist core-platform-api test-api cursorMoved(Ljavax/sql/RowSetEvent;)V
.end method

.method public abstract whitelist core-platform-api test-api rowChanged(Ljavax/sql/RowSetEvent;)V
.end method

.method public abstract whitelist core-platform-api test-api rowSetChanged(Ljavax/sql/RowSetEvent;)V
.end method
