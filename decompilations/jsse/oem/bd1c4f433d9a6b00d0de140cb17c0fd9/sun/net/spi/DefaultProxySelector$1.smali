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
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/Proxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/spi/DefaultProxySelector;

.field final synthetic val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

.field final synthetic val$proto:Ljava/lang/String;

.field final synthetic val$urlhost:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;Lsun/net/spi/DefaultProxySelector$NonProxyInfo;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lsun/net/spi/DefaultProxySelector;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/net/spi/DefaultProxySelector$1;->this$0:Lsun/net/spi/DefaultProxySelector;

    iput-object p2, p0, Lsun/net/spi/DefaultProxySelector$1;->val$proto:Ljava/lang/String;

    iput-object p3, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iput-object p4, p0, Lsun/net/spi/DefaultProxySelector$1;->val$urlhost:Ljava/lang/String;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lsun/net/spi/DefaultProxySelector$1;->run()Ljava/net/Proxy;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/Proxy;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 220
    const/4 v4, 0x0

    .line 221
    .local v4, "phost":Ljava/lang/String;
    const/4 v5, 0x0

    .line 222
    .local v5, "pport":I
    const/4 v3, 0x0

    .line 223
    .local v3, "nphosts":Ljava/lang/String;
    const/4 v6, 0x0

    .line 226
    .local v6, "saddr":Ljava/net/InetSocketAddress;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget-object v8, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    array-length v8, v8

    if-ge v0, v8, :cond_169

    .line 227
    sget-object v8, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v8, v8, v0

    aget-object v8, v8, v11

    iget-object v9, p0, Lsun/net/spi/DefaultProxySelector$1;->val$proto:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_165

    .line 228
    const/4 v1, 0x1

    .end local v4    # "phost":Ljava/lang/String;
    .local v1, "j":I
    :goto_1a
    sget-object v8, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v8, v8, v0

    array-length v8, v8

    if-ge v1, v8, :cond_47

    .line 233
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v9, v9, v0

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Host"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lsun/net/NetProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "phost":Ljava/lang/String;
    if-eqz v4, :cond_52

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_52

    .line 237
    .end local v4    # "phost":Ljava/lang/String;
    :cond_47
    if-eqz v4, :cond_4f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_55

    .line 258
    :cond_4f
    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object v8

    .line 228
    .restart local v4    # "phost":Ljava/lang/String;
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 262
    .end local v4    # "phost":Ljava/lang/String;
    :cond_55
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    if-eqz v8, :cond_c2

    .line 263
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v8, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->property:Ljava/lang/String;

    invoke-static {v8}, Lsun/net/NetProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "nphosts":Ljava/lang/String;
    iget-object v9, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    monitor-enter v9

    .line 265
    if-nez v3, :cond_a6

    .line 266
    :try_start_66
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v8, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->defaultVal:Ljava/lang/String;

    if-eqz v8, :cond_98

    .line 267
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v3, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->defaultVal:Ljava/lang/String;

    .line 279
    :cond_70
    :goto_70
    if-eqz v3, :cond_88

    .line 280
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v8, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_88

    .line 281
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    invoke-static {v3}, Lsun/net/spi/DefaultProxySelector;->toPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    iput-object v10, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->pattern:Ljava/util/regex/Pattern;

    .line 282
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iput-object v3, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    .line 285
    :cond_88
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v8, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->pattern:Ljava/util/regex/Pattern;

    iget-object v10, p0, Lsun/net/spi/DefaultProxySelector$1;->val$urlhost:Ljava/lang/String;

    invoke-static {v8, v10}, Lsun/net/spi/DefaultProxySelector;->shouldNotUseProxyFor(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c1

    .line 286
    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;
    :try_end_96
    .catchall {:try_start_66 .. :try_end_96} :catchall_a3

    monitor-exit v9

    return-object v8

    .line 269
    :cond_98
    :try_start_98
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const/4 v10, 0x0

    iput-object v10, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    .line 270
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const/4 v10, 0x0

    iput-object v10, v8, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->pattern:Ljava/util/regex/Pattern;
    :try_end_a2
    .catchall {:try_start_98 .. :try_end_a2} :catchall_a3

    goto :goto_70

    .line 264
    :catchall_a3
    move-exception v8

    monitor-exit v9

    throw v8

    .line 272
    :cond_a6
    :try_start_a6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_70

    .line 276
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "|localhost|127.*|[::1]|0.0.0.0|[::0]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_bf
    .catchall {:try_start_a6 .. :try_end_bf} :catchall_a3

    move-result-object v3

    goto :goto_70

    :cond_c1
    monitor-exit v9

    .line 292
    .end local v3    # "nphosts":Ljava/lang/String;
    :cond_c2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v9, v9, v0

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Port"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lsun/net/NetProperties;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 293
    if-nez v5, :cond_122

    sget-object v8, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v8, v8, v0

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_122

    .line 297
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_f0
    sget-object v8, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v8, v8, v0

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_122

    .line 298
    if-eq v2, v1, :cond_11f

    if-nez v5, :cond_11f

    .line 299
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v9, v9, v0

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Port"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Lsun/net/NetProperties;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 297
    :cond_11f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f0

    .line 304
    .end local v2    # "k":I
    :cond_122
    if-nez v5, :cond_136

    .line 305
    sget-object v8, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v8, v8, v0

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ne v1, v8, :cond_154

    .line 306
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->this$0:Lsun/net/spi/DefaultProxySelector;

    const-string/jumbo v9, "socket"

    invoke-static {v8, v9}, Lsun/net/spi/DefaultProxySelector;->-wrap0(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;)I

    move-result v5

    .line 313
    :cond_136
    :goto_136
    invoke-static {v4, v5}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v6

    .line 315
    .local v6, "saddr":Ljava/net/InetSocketAddress;
    sget-object v8, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v8, v8, v0

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ne v1, v8, :cond_15d

    .line 316
    const-string/jumbo v8, "socksProxyVersion"

    const/4 v9, 0x5

    invoke-static {v8, v9}, Lsun/net/NetProperties;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 317
    .local v7, "version":I
    invoke-static {v6, v7}, Lsun/net/SocksProxy;->create(Ljava/net/SocketAddress;I)Lsun/net/SocksProxy;

    move-result-object v8

    return-object v8

    .line 308
    .end local v7    # "version":I
    .local v6, "saddr":Ljava/net/InetSocketAddress;
    :cond_154
    iget-object v8, p0, Lsun/net/spi/DefaultProxySelector$1;->this$0:Lsun/net/spi/DefaultProxySelector;

    iget-object v9, p0, Lsun/net/spi/DefaultProxySelector$1;->val$proto:Ljava/lang/String;

    invoke-static {v8, v9}, Lsun/net/spi/DefaultProxySelector;->-wrap0(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;)I

    move-result v5

    goto :goto_136

    .line 319
    .local v6, "saddr":Ljava/net/InetSocketAddress;
    :cond_15d
    new-instance v8, Ljava/net/Proxy;

    sget-object v9, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v8, v9, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v8

    .line 226
    .end local v1    # "j":I
    .local v3, "nphosts":Ljava/lang/String;
    .local v4, "phost":Ljava/lang/String;
    .local v6, "saddr":Ljava/net/InetSocketAddress;
    :cond_165
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 323
    :cond_169
    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object v8
.end method
