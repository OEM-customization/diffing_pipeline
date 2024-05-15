.class public interface abstract Lsun/nio/ch/SelChImpl;
.super Ljava/lang/Object;
.source "SelChImpl.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# virtual methods
.method public abstract blacklist getFD()Ljava/io/FileDescriptor;
.end method

.method public abstract blacklist getFDVal()I
.end method

.method public abstract blacklist kill()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
.end method

.method public abstract blacklist translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
.end method

.method public abstract blacklist translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
.end method

.method public abstract blacklist validOps()I
.end method
