.class Ljava/nio/channels/spi/SelectorProvider$1;
.super Ljava/lang/Object;
.source "SelectorProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/nio/channels/spi/SelectorProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 169
    invoke-virtual {p0}, Ljava/nio/channels/spi/SelectorProvider$1;->run()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/nio/channels/spi/SelectorProvider;
    .registers 2

    .line 171
    # invokes: Ljava/nio/channels/spi/SelectorProvider;->loadProviderFromProperty()Z
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 172
    # getter for: Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->access$100()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    return-object v0

    .line 173
    :cond_b
    # invokes: Ljava/nio/channels/spi/SelectorProvider;->loadProviderAsService()Z
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->access$200()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 174
    # getter for: Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->access$100()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    return-object v0

    .line 175
    :cond_16
    invoke-static {}, Lsun/nio/ch/DefaultSelectorProvider;->create()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    # setter for: Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;
    invoke-static {v0}, Ljava/nio/channels/spi/SelectorProvider;->access$102(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/spi/SelectorProvider;

    .line 176
    # getter for: Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->access$100()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    return-object v0
.end method
