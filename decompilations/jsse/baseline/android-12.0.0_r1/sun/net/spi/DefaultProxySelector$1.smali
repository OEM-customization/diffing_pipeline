.class Lsun/net/spi/DefaultProxySelector$1;
.super Ljava/lang/Object;
.source "DefaultProxySelector.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/spi/DefaultProxySelector;->select(Ljava/net/URI;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/net/Proxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/net/spi/DefaultProxySelector;

.field final synthetic blacklist val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

.field final synthetic blacklist val$proto:Ljava/lang/String;

.field final synthetic blacklist val$urlhost:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;Lsun/net/spi/DefaultProxySelector$NonProxyInfo;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lsun/net/spi/DefaultProxySelector;

    .line 219
    iput-object p1, p0, Lsun/net/spi/DefaultProxySelector$1;->this$0:Lsun/net/spi/DefaultProxySelector;

    iput-object p2, p0, Lsun/net/spi/DefaultProxySelector$1;->val$proto:Ljava/lang/String;

    iput-object p3, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iput-object p4, p0, Lsun/net/spi/DefaultProxySelector$1;->val$urlhost:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 219
    invoke-virtual {p0}, Lsun/net/spi/DefaultProxySelector$1;->run()Ljava/net/Proxy;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/net/Proxy;
    .registers 11

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "phost":Ljava/lang/String;
    const/4 v1, 0x0

    .line 224
    .local v1, "pport":I
    const/4 v2, 0x0

    .line 225
    .local v2, "nphosts":Ljava/lang/String;
    const/4 v3, 0x0

    .line 228
    .local v3, "saddr":Ljava/net/InetSocketAddress;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    sget-object v5, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_15e

    .line 229
    sget-object v5, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v5, v5, v4

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v7, p0, Lsun/net/spi/DefaultProxySelector$1;->val$proto:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15a

    .line 230
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_1a
    sget-object v7, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v7, v7, v4

    array-length v7, v7

    if-ge v5, v7, :cond_48

    .line 235
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v8, v8, v4

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Host"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lsun/net/NetProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_45

    .line 237
    goto :goto_48

    .line 230
    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 239
    :cond_48
    :goto_48
    if-eqz v0, :cond_157

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_52

    goto/16 :goto_157

    .line 264
    :cond_52
    iget-object v7, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    if-eqz v7, :cond_bc

    .line 265
    iget-object v7, v7, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->property:Ljava/lang/String;

    invoke-static {v7}, Lsun/net/NetProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    iget-object v7, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    monitor-enter v7

    .line 267
    if-nez v2, :cond_77

    .line 268
    :try_start_61
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v8, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->defaultVal:Ljava/lang/String;

    if-eqz v8, :cond_6d

    .line 269
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v8, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->defaultVal:Ljava/lang/String;

    move-object v2, v8

    goto :goto_8f

    .line 271
    :cond_6d
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const/4 v9, 0x0

    iput-object v9, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    .line 272
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iput-object v9, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->pattern:Ljava/util/regex/Pattern;

    goto :goto_8f

    .line 274
    :cond_77
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_8f

    .line 278
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "|localhost|127.*|[::1]|0.0.0.0|[::0]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 281
    :cond_8f
    :goto_8f
    if-eqz v2, :cond_a7

    .line 282
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v8, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a7

    .line 283
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    invoke-static {v2}, Lsun/net/spi/DefaultProxySelector;->toPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    iput-object v9, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->pattern:Ljava/util/regex/Pattern;

    .line 284
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iput-object v2, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    .line 287
    :cond_a7
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v8, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->pattern:Ljava/util/regex/Pattern;

    iget-object v9, p0, Lsun/net/spi/DefaultProxySelector$1;->val$urlhost:Ljava/lang/String;

    invoke-static {v8, v9}, Lsun/net/spi/DefaultProxySelector;->shouldNotUseProxyFor(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 288
    sget-object v6, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    monitor-exit v7

    return-object v6

    .line 290
    :cond_b7
    monitor-exit v7

    goto :goto_bc

    :catchall_b9
    move-exception v6

    monitor-exit v7
    :try_end_bb
    .catchall {:try_start_61 .. :try_end_bb} :catchall_b9

    throw v6

    .line 294
    :cond_bc
    :goto_bc
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v8, v8, v4

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Port"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lsun/net/NetProperties;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 295
    if-nez v1, :cond_116

    sget-object v7, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v7, v7, v4

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_116

    .line 299
    const/4 v7, 0x1

    .local v7, "k":I
    :goto_e7
    sget-object v8, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v8, v8, v4

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_116

    .line 300
    if-eq v7, v5, :cond_113

    if-nez v1, :cond_113

    .line 301
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v9, v9, v4

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Port"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lsun/net/NetProperties;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 299
    :cond_113
    add-int/lit8 v7, v7, 0x1

    goto :goto_e7

    .line 306
    .end local v7    # "k":I
    :cond_116
    if-nez v1, :cond_132

    .line 307
    sget-object v6, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v6, v6, v4

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_12a

    .line 308
    iget-object v6, p0, Lsun/net/spi/DefaultProxySelector$1;->this$0:Lsun/net/spi/DefaultProxySelector;

    const-string v7, "socket"

    # invokes: Lsun/net/spi/DefaultProxySelector;->defaultPort(Ljava/lang/String;)I
    invoke-static {v6, v7}, Lsun/net/spi/DefaultProxySelector;->access$000(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;)I

    move-result v1

    goto :goto_132

    .line 310
    :cond_12a
    iget-object v6, p0, Lsun/net/spi/DefaultProxySelector$1;->this$0:Lsun/net/spi/DefaultProxySelector;

    iget-object v7, p0, Lsun/net/spi/DefaultProxySelector$1;->val$proto:Ljava/lang/String;

    # invokes: Lsun/net/spi/DefaultProxySelector;->defaultPort(Ljava/lang/String;)I
    invoke-static {v6, v7}, Lsun/net/spi/DefaultProxySelector;->access$000(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;)I

    move-result v1

    .line 315
    :cond_132
    :goto_132
    invoke-static {v0, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    .line 317
    sget-object v6, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v6, v6, v4

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_14f

    .line 318
    const-string v6, "socksProxyVersion"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lsun/net/NetProperties;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 319
    .local v6, "version":I
    invoke-static {v3, v6}, Lsun/net/SocksProxy;->create(Ljava/net/SocketAddress;I)Lsun/net/SocksProxy;

    move-result-object v7

    return-object v7

    .line 321
    .end local v6    # "version":I
    :cond_14f
    new-instance v6, Ljava/net/Proxy;

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v6, v7, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v6

    .line 260
    :cond_157
    :goto_157
    sget-object v6, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object v6

    .line 228
    .end local v5    # "j":I
    :cond_15a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 325
    :cond_15e
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object v5
.end method
