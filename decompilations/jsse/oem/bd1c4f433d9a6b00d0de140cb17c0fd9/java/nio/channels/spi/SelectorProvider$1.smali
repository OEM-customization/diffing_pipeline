.class final Ljava/nio/channels/spi/SelectorProvider$1;
.super Ljava/lang/Object;
.source "SelectorProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;
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
        "Ljava/nio/channels/spi/SelectorProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/nio/channels/spi/SelectorProvider$1;->run()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/nio/channels/spi/SelectorProvider;
    .registers 2

    .prologue
    .line 171
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->-wrap1()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 172
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->-get0()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    return-object v0

    .line 173
    :cond_b
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->-wrap0()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 174
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->-get0()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    return-object v0

    .line 175
    :cond_16
    invoke-static {}, Lsun/nio/ch/DefaultSelectorProvider;->create()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/spi/SelectorProvider;->-set0(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/spi/SelectorProvider;

    .line 176
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->-get0()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    return-object v0
.end method
