.class public final Lcom/android/okhttp/Route;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field final greylist-max-o address:Lcom/android/okhttp/Address;

.field final greylist-max-o inetSocketAddress:Ljava/net/InetSocketAddress;

.field final greylist-max-o proxy:Ljava/net/Proxy;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/okhttp/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .registers 6
    .param p1, "address"    # Lcom/android/okhttp/Address;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .param p3, "inetSocketAddress"    # Ljava/net/InetSocketAddress;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_20

    .line 45
    if-eqz p2, :cond_18

    .line 48
    if-eqz p3, :cond_10

    .line 51
    iput-object p1, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    .line 52
    iput-object p2, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    .line 53
    iput-object p3, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 54
    return-void

    .line 49
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 84
    instance-of v0, p1, Lcom/android/okhttp/Route;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 85
    move-object v0, p1

    check-cast v0, Lcom/android/okhttp/Route;

    .line 86
    .local v0, "other":Lcom/android/okhttp/Route;
    iget-object v2, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v3, v0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    iget-object v3, v0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    .line 87
    invoke-virtual {v2, v3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v3, v0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 88
    invoke-virtual {v2, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    nop

    .line 86
    :goto_29
    return v1

    .line 90
    .end local v0    # "other":Lcom/android/okhttp/Route;
    :cond_2a
    return v1
.end method

.method public greylist-max-o getAddress()Lcom/android/okhttp/Address;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    return-object v0
.end method

.method public greylist-max-o getProxy()Ljava/net/Proxy;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public greylist-max-o getSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 94
    const/16 v0, 0x11

    .line 95
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v2}, Lcom/android/okhttp/Address;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 96
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 97
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 98
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public greylist-max-o requiresTunnel()Z
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v0, v0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
