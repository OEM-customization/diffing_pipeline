.class final Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder$1;
.super Ljava/lang/Object;
.source "AsynchronousChannelProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->load()Ljava/nio/channels/spi/AsynchronousChannelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/nio/channels/spi/AsynchronousChannelProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder$1;->run()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 3

    .prologue
    .line 82
    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->-wrap1()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    .line 83
    .local v0, "p":Ljava/nio/channels/spi/AsynchronousChannelProvider;
    if-eqz v0, :cond_7

    .line 84
    return-object v0

    .line 85
    :cond_7
    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->-wrap0()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_e

    .line 87
    return-object v0

    .line 88
    :cond_e
    invoke-static {}, Lsun/nio/ch/DefaultAsynchronousChannelProvider;->create()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v1

    return-object v1
.end method
