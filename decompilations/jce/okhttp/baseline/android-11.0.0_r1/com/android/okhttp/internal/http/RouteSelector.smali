.class public final Lcom/android/okhttp/internal/http/RouteSelector;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# instance fields
.field private final greylist-max-o address:Lcom/android/okhttp/Address;

.field private greylist-max-o inetSocketAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o lastInetSocketAddress:Ljava/net/InetSocketAddress;

.field private greylist-max-o lastProxy:Ljava/net/Proxy;

.field private greylist-max-o nextInetSocketAddressIndex:I

.field private greylist-max-o nextProxyIndex:I

.field private final greylist-max-o postponedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/Route;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o proxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/RouteDatabase;)V
    .registers 5
    .param p1, "address"    # Lcom/android/okhttp/Address;
    .param p2, "routeDatabase"    # Lcom/android/okhttp/internal/RouteDatabase;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    .line 61
    iput-object p2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    .line 63
    invoke-virtual {p1}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/okhttp/Address;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/http/RouteSelector;->resetNextProxy(Lcom/android/okhttp/HttpUrl;Ljava/net/Proxy;)V

    .line 64
    return-void
.end method

.method static greylist-max-o getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 3
    .param p0, "socketAddress"    # Ljava/net/InetSocketAddress;

    .line 194
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 195
    .local v0, "address":Ljava/net/InetAddress;
    if-nez v0, :cond_b

    .line 199
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 203
    :cond_b
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o hasNextInetSocketAddress()Z
    .registers 3

    .line 208
    iget v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private greylist-max-o hasNextPostponed()Z
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o hasNextProxy()Z
    .registers 3

    .line 134
    iget v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private greylist-max-o nextInetSocketAddress()Ljava/net/InetSocketAddress;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 217
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    iget v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0

    .line 214
    :cond_15
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v2}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o nextPostponed()Lcom/android/okhttp/Route;
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/Route;

    return-object v0
.end method

.method private greylist-max-o nextProxy()Ljava/net/Proxy;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 143
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    iget v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 144
    .local v0, "result":Ljava/net/Proxy;
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/RouteSelector;->resetNextInetSocketAddress(Ljava/net/Proxy;)V

    .line 145
    return-object v0

    .line 140
    .end local v0    # "result":Ljava/net/Proxy;
    :cond_18
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v2}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o resetNextInetSocketAddress(Ljava/net/Proxy;)V
    .registers 10
    .param p1, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 155
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_47

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_18

    goto :goto_47

    .line 159
    :cond_18
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 160
    .local v0, "proxyAddress":Ljava/net/SocketAddress;
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_2c

    .line 164
    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 165
    .local v1, "proxySocketAddress":Ljava/net/InetSocketAddress;
    invoke-static {v1}, Lcom/android/okhttp/internal/http/RouteSelector;->getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "socketHost":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .local v3, "socketPort":I
    goto :goto_53

    .line 161
    .end local v1    # "proxySocketAddress":Ljava/net/InetSocketAddress;
    .end local v2    # "socketHost":Ljava/lang/String;
    .end local v3    # "socketPort":I
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    .end local v0    # "proxyAddress":Ljava/net/SocketAddress;
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v2

    .line 157
    .restart local v2    # "socketHost":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriPort()I

    move-result v3

    .line 169
    .restart local v3    # "socketPort":I
    :goto_53
    const/4 v0, 0x1

    if-lt v3, v0, :cond_95

    const v0, 0xffff

    if-gt v3, v0, :cond_95

    .line 174
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_6d

    .line 175
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_91

    .line 178
    :cond_6d
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getDns()Lcom/android/okhttp/Dns;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/okhttp/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_7c
    if-ge v1, v4, :cond_91

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 181
    .local v5, "inetAddress":Ljava/net/InetAddress;
    iget-object v6, p0, Lcom/android/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v5, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v5    # "inetAddress":Ljava/net/InetAddress;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 185
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_91
    :goto_91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    .line 186
    return-void

    .line 170
    :cond_95
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No route to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; port is out of range"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o resetNextProxy(Lcom/android/okhttp/HttpUrl;Ljava/net/Proxy;)V
    .registers 6
    .param p1, "url"    # Lcom/android/okhttp/HttpUrl;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .line 116
    if-eqz p2, :cond_9

    .line 118
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    goto :goto_37

    .line 122
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    .line 123
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "selectedProxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    :cond_25
    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v0    # "selectedProxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    :goto_37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    .line 130
    return-void
.end method


# virtual methods
.method public greylist-max-o connectFailed(Lcom/android/okhttp/Route;Ljava/io/IOException;)V
    .registers 6
    .param p1, "failedRoute"    # Lcom/android/okhttp/Route;
    .param p2, "failure"    # Ljava/io/IOException;

    .line 105
    invoke-virtual {p1}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_2f

    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 107
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    .line 108
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 107
    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 111
    :cond_2f
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/RouteDatabase;->failed(Lcom/android/okhttp/Route;)V

    .line 112
    return-void
.end method

.method public greylist hasNext()Z
    .registers 2

    .line 72
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_15

    .line 73
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_15

    .line 74
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextPostponed()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 72
    :goto_16
    return v0
.end method

.method public greylist-max-o next()Lcom/android/okhttp/Route;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_23

    .line 80
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 81
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->hasNextPostponed()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 84
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->nextPostponed()Lcom/android/okhttp/Route;

    move-result-object v0

    return-object v0

    .line 82
    :cond_17
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 86
    :cond_1d
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->nextProxy()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    .line 88
    :cond_23
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->nextInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    .line 90
    new-instance v1, Lcom/android/okhttp/Route;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/RouteSelector;->address:Lcom/android/okhttp/Address;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/okhttp/Route;-><init>(Lcom/android/okhttp/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    move-object v0, v1

    .line 91
    .local v0, "route":Lcom/android/okhttp/Route;
    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/RouteDatabase;->shouldPostpone(Lcom/android/okhttp/Route;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 92
    iget-object v1, p0, Lcom/android/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/RouteSelector;->next()Lcom/android/okhttp/Route;

    move-result-object v1

    return-object v1

    .line 97
    :cond_45
    return-object v0
.end method
