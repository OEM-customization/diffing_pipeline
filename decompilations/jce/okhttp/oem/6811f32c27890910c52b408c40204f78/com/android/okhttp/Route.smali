.class public final Lcom/android/okhttp/Route;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field final address:Lcom/android/okhttp/Address;

.field final inetSocketAddress:Ljava/net/InetSocketAddress;

.field final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .registers 6
    .param p1, "address"    # Lcom/android/okhttp/Address;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .param p3, "inetSocketAddress"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_e

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_e
    if-nez p2, :cond_19

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_19
    if-nez p3, :cond_24

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_24
    iput-object p1, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    .line 50
    iput-object p2, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    .line 51
    iput-object p3, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 82
    instance-of v2, p1, Lcom/android/okhttp/Route;

    if-eqz v2, :cond_25

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/android/okhttp/Route;

    .line 84
    .local v0, "other":Lcom/android/okhttp/Route;
    iget-object v2, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v3, v0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 85
    iget-object v2, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    iget-object v3, v0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2, v3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 84
    if-eqz v2, :cond_24

    .line 86
    iget-object v1, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v2, v0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 84
    :cond_24
    return v1

    .line 88
    .end local v0    # "other":Lcom/android/okhttp/Route;
    :cond_25
    return v1
.end method

.method public getAddress()Lcom/android/okhttp/Address;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 92
    const/16 v0, 0x11

    .line 93
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 94
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 95
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 96
    return v0
.end method

.method public requiresTunnel()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v1, v1, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method
