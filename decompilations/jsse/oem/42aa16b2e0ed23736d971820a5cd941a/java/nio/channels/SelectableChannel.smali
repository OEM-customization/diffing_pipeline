.class public abstract Ljava/nio/channels/SelectableChannel;
.super Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.source "SelectableChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# direct methods
.method protected constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist core-platform-api test-api blockingLock()Ljava/lang/Object;
.end method

.method public abstract whitelist core-platform-api test-api configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api isBlocking()Z
.end method

.method public abstract whitelist core-platform-api test-api isRegistered()Z
.end method

.method public abstract whitelist core-platform-api test-api keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
.end method

.method public abstract whitelist core-platform-api test-api provider()Ljava/nio/channels/spi/SelectorProvider;
.end method

.method public final whitelist core-platform-api test-api register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    .registers 4
    .param p1, "sel"    # Ljava/nio/channels/Selector;
    .param p2, "ops"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api validOps()I
.end method
