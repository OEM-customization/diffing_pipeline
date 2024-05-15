.class public final Ljava/net/NetworkInterface;
.super Ljava/lang/Object;
.source "NetworkInterface.java"


# static fields
.field private static final greylist-max-o defaultIndex:I

.field private static final greylist-max-o defaultInterface:Ljava/net/NetworkInterface;


# instance fields
.field private greylist-max-o addrs:[Ljava/net/InetAddress;

.field private greylist-max-o bindings:[Ljava/net/InterfaceAddress;

.field private greylist-max-o childs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o displayName:Ljava/lang/String;

.field private greylist-max-o hardwareAddr:[B

.field private greylist-max-o index:I

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o parent:Ljava/net/NetworkInterface;

.field private greylist-max-o virtual:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 97
    invoke-static {}, Ljava/net/DefaultInterface;->getDefault()Ljava/net/NetworkInterface;

    move-result-object v0

    sput-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    .line 98
    if-eqz v0, :cond_f

    .line 99
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v0

    sput v0, Ljava/net/NetworkInterface;->defaultIndex:I

    goto :goto_12

    .line 101
    :cond_f
    const/4 v0, 0x0

    sput v0, Ljava/net/NetworkInterface;->defaultIndex:I

    .line 103
    :goto_12
    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    .line 112
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;I[Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "addrs"    # [Ljava/net/InetAddress;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    .line 115
    iput-object p1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    .line 116
    iput p2, p0, Ljava/net/NetworkInterface;->index:I

    .line 117
    iput-object p3, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    .line 118
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;
    .registers 2
    .param p0, "x0"    # Ljava/net/NetworkInterface;

    .line 67
    iget-object v0, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    return-object v0
.end method

.method private static greylist-max-o getAll()[Ljava/net/NetworkInterface;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 435
    .local v1, "inetMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/system/StructIfaddrs;>;>;"
    :try_start_6
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getifaddrs()[Landroid/system/StructIfaddrs;

    move-result-object v0
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_c} :catch_122

    .line 438
    .local v0, "ifaddrs":[Landroid/system/StructIfaddrs;
    nop

    .line 440
    array-length v2, v0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v2, :cond_2d

    aget-object v5, v0, v4

    .line 441
    .local v5, "ifa":Landroid/system/StructIfaddrs;
    iget-object v6, v5, Landroid/system/StructIfaddrs;->ifa_name:Ljava/lang/String;

    .line 444
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move-object v8, v7

    .local v8, "ifas":Ljava/util/List;, "Ljava/util/List<Landroid/system/StructIfaddrs;>;"
    if-nez v7, :cond_27

    .line 445
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v7

    .line 446
    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_27
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    .end local v5    # "ifa":Landroid/system/StructIfaddrs;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "ifas":Ljava/util/List;, "Ljava/util/List<Landroid/system/StructIfaddrs;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 453
    :cond_2d
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 454
    .local v2, "nis":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/NetworkInterface;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 455
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/system/StructIfaddrs;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 456
    .restart local v6    # "name":Ljava/lang/String;
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8}, Llibcore/io/Os;->if_nametoindex(Ljava/lang/String;)I

    move-result v7

    .line 457
    .local v7, "index":I
    if-nez v7, :cond_5f

    .line 459
    goto :goto_3e

    .line 462
    :cond_5f
    new-instance v8, Ljava/net/NetworkInterface;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v7, v9}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;I[Ljava/net/InetAddress;)V

    .line 463
    .local v8, "ni":Ljava/net/NetworkInterface;
    iput-object v6, v8, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    .line 465
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v9, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v10, "binds":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/system/StructIfaddrs;

    .line 469
    .local v12, "ifa":Landroid/system/StructIfaddrs;
    iget-object v13, v12, Landroid/system/StructIfaddrs;->ifa_addr:Ljava/net/InetAddress;

    if-eqz v13, :cond_a0

    .line 470
    iget-object v13, v12, Landroid/system/StructIfaddrs;->ifa_addr:Ljava/net/InetAddress;

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v13, Ljava/net/InterfaceAddress;

    iget-object v14, v12, Landroid/system/StructIfaddrs;->ifa_addr:Ljava/net/InetAddress;

    iget-object v15, v12, Landroid/system/StructIfaddrs;->ifa_broadaddr:Ljava/net/InetAddress;

    check-cast v15, Ljava/net/Inet4Address;

    iget-object v3, v12, Landroid/system/StructIfaddrs;->ifa_netmask:Ljava/net/InetAddress;

    invoke-direct {v13, v14, v15, v3}, Ljava/net/InterfaceAddress;-><init>(Ljava/net/InetAddress;Ljava/net/Inet4Address;Ljava/net/InetAddress;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_a0
    iget-object v3, v12, Landroid/system/StructIfaddrs;->hwaddr:[B

    if-eqz v3, :cond_a8

    .line 476
    iget-object v3, v12, Landroid/system/StructIfaddrs;->hwaddr:[B

    iput-object v3, v8, Ljava/net/NetworkInterface;->hardwareAddr:[B

    .line 478
    .end local v12    # "ifa":Landroid/system/StructIfaddrs;
    :cond_a8
    goto :goto_7b

    .line 480
    :cond_a9
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/net/InetAddress;

    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/net/InetAddress;

    iput-object v3, v8, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    .line 481
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/net/InterfaceAddress;

    invoke-interface {v10, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/net/InterfaceAddress;

    iput-object v3, v8, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    .line 482
    new-instance v3, Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v8, Ljava/net/NetworkInterface;->childs:Ljava/util/List;

    .line 483
    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/system/StructIfaddrs;>;>;"
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "index":I
    .end local v8    # "ni":Ljava/net/NetworkInterface;
    .end local v9    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v10    # "binds":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    goto/16 :goto_3e

    .line 487
    :cond_d2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_da
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_111

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 488
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/net/NetworkInterface;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 489
    .local v5, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    .line 490
    .local v6, "niName":Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 491
    .local v7, "colonIdx":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_10f

    .line 493
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 494
    .local v9, "parentName":Ljava/lang/String;
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/NetworkInterface;

    .line 496
    .local v10, "parent":Ljava/net/NetworkInterface;
    const/4 v11, 0x1

    iput-boolean v11, v5, Ljava/net/NetworkInterface;->virtual:Z

    .line 497
    iput-object v10, v5, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 498
    iget-object v11, v10, Ljava/net/NetworkInterface;->childs:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_110

    .line 491
    .end local v9    # "parentName":Ljava/lang/String;
    .end local v10    # "parent":Ljava/net/NetworkInterface;
    :cond_10f
    const/4 v8, 0x0

    .line 500
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/net/NetworkInterface;>;"
    .end local v5    # "ni":Ljava/net/NetworkInterface;
    .end local v6    # "niName":Ljava/lang/String;
    .end local v7    # "colonIdx":I
    :goto_110
    goto :goto_da

    .line 502
    :cond_111
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ljava/net/NetworkInterface;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/net/NetworkInterface;

    return-object v3

    .line 436
    .end local v0    # "ifaddrs":[Landroid/system/StructIfaddrs;
    .end local v2    # "nis":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/NetworkInterface;>;"
    :catch_122
    move-exception v0

    .line 437
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist core-platform-api test-api getByIndex(I)Ljava/net/NetworkInterface;
    .registers 6
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 321
    if-ltz p0, :cond_18

    .line 325
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v0

    .line 326
    .local v0, "nis":[Ljava/net/NetworkInterface;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 327
    .local v3, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    if-ne v4, p0, :cond_13

    .line 328
    return-object v3

    .line 326
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 331
    :cond_16
    const/4 v1, 0x0

    return-object v1

    .line 322
    .end local v0    # "nis":[Ljava/net/NetworkInterface;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interface index can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist core-platform-api test-api getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;
    .registers 9
    .param p0, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 357
    const/4 v0, 0x0

    if-eqz p0, :cond_42

    .line 360
    instance-of v1, p0, Ljava/net/Inet4Address;

    if-nez v1, :cond_14

    instance-of v1, p0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_c

    goto :goto_14

    .line 361
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_14
    :goto_14
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v1

    .line 366
    .local v1, "nis":[Ljava/net/NetworkInterface;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_41

    aget-object v4, v1, v3

    .line 367
    .local v4, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 368
    .local v6, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v6, p0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 369
    return-object v4

    .line 371
    .end local v6    # "inetAddress":Ljava/net/InetAddress;
    :cond_3d
    goto :goto_2a

    .line 366
    .end local v4    # "ni":Ljava/net/NetworkInterface;
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 373
    :cond_41
    return-object v0

    .line 358
    .end local v1    # "nis":[Ljava/net/NetworkInterface;
    :cond_42
    throw v0
.end method

.method public static whitelist core-platform-api test-api getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 294
    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    .line 298
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v1

    .line 299
    .local v1, "nis":[Ljava/net/NetworkInterface;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 300
    .local v4, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 301
    return-object v4

    .line 299
    .end local v4    # "ni":Ljava/net/NetworkInterface;
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 304
    :cond_1b
    return-object v0

    .line 295
    .end local v1    # "nis":[Ljava/net/NetworkInterface;
    :cond_1c
    throw v0
.end method

.method static greylist-max-o getDefault()Ljava/net/NetworkInterface;
    .registers 1

    .line 746
    sget-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method private greylist-max-o getFlags()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 651
    const/4 v0, 0x0

    .line 653
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    sget-object v1, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->AF_INET:I

    sget v3, Landroid/system/OsConstants;->SOCK_DGRAM:I

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 654
    sget-object v1, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Llibcore/io/Os;->ioctlFlags(Ljava/io/FileDescriptor;Ljava/lang/String;)I

    move-result v1
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_15} :catch_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1b
    .catchall {:try_start_1 .. :try_end_15} :catchall_19

    .line 660
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 654
    return v1

    .line 660
    :catchall_19
    move-exception v1

    goto :goto_28

    .line 657
    :catch_1b
    move-exception v1

    .line 658
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1c
    new-instance v2, Ljava/net/SocketException;

    invoke-direct {v2, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "this":Ljava/net/NetworkInterface;
    throw v2

    .line 655
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Ljava/net/NetworkInterface;
    :catch_22
    move-exception v1

    .line 656
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "this":Ljava/net/NetworkInterface;
    throw v2
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_19

    .line 660
    .end local v1    # "e":Landroid/system/ErrnoException;
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Ljava/net/NetworkInterface;
    :goto_28
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 661
    throw v1
.end method

.method public static whitelist core-platform-api test-api getNetworkInterfaces()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 398
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v0

    .line 402
    .local v0, "netifs":[Ljava/net/NetworkInterface;
    array-length v1, v0

    if-nez v1, :cond_9

    .line 403
    const/4 v1, 0x0

    return-object v1

    .line 423
    :cond_9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "obj"    # Ljava/lang/Object;

    .line 680
    instance-of v0, p1, Ljava/net/NetworkInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 681
    return v1

    .line 683
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/net/NetworkInterface;

    .line 684
    .local v0, "that":Ljava/net/NetworkInterface;
    iget-object v2, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 685
    iget-object v3, v0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 686
    return v1

    .line 689
    :cond_16
    iget-object v2, v0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 690
    return v1

    .line 694
    :cond_1b
    iget-object v2, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    const/4 v3, 0x1

    if-nez v2, :cond_26

    .line 695
    iget-object v2, v0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    if-nez v2, :cond_25

    move v1, v3

    :cond_25
    return v1

    .line 696
    :cond_26
    iget-object v4, v0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    if-nez v4, :cond_2b

    .line 697
    return v1

    .line 702
    :cond_2b
    array-length v2, v2

    array-length v4, v4

    if-eq v2, v4, :cond_30

    .line 703
    return v1

    .line 706
    :cond_30
    iget-object v2, v0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    .line 707
    .local v2, "thatAddrs":[Ljava/net/InetAddress;
    array-length v4, v2

    .line 709
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_34
    if-ge v5, v4, :cond_51

    .line 710
    const/4 v6, 0x0

    .line 711
    .local v6, "found":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_38
    if-ge v7, v4, :cond_4b

    .line 712
    iget-object v8, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    aget-object v8, v8, v5

    aget-object v9, v2, v7

    invoke-virtual {v8, v9}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 713
    const/4 v6, 0x1

    .line 714
    goto :goto_4b

    .line 711
    :cond_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    .line 717
    .end local v7    # "j":I
    :cond_4b
    :goto_4b
    if-nez v6, :cond_4e

    .line 718
    return v1

    .line 709
    .end local v6    # "found":Z
    :cond_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 721
    .end local v5    # "i":I
    :cond_51
    return v3
.end method

.method public whitelist core-platform-api test-api getDisplayName()Ljava/lang/String;
    .registers 3

    .line 272
    iget-object v0, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_e

    :cond_c
    iget-object v0, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    :goto_e
    return-object v0
.end method

.method public whitelist core-platform-api test-api getHardwareAddress()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 590
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 591
    .local v0, "ni":Ljava/net/NetworkInterface;
    if-eqz v0, :cond_b

    .line 594
    iget-object v1, v0, Ljava/net/NetworkInterface;->hardwareAddr:[B

    return-object v1

    .line 592
    :cond_b
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "NetworkInterface doesn\'t exist anymore"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api getIndex()I
    .registers 2

    .line 259
    iget v0, p0, Ljava/net/NetworkInterface;->index:I

    return v0
.end method

.method public whitelist core-platform-api test-api getInetAddresses()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/net/NetworkInterface$1checkedAddresses;

    invoke-direct {v0, p0}, Ljava/net/NetworkInterface$1checkedAddresses;-><init>(Ljava/net/NetworkInterface;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api getInterfaceAddresses()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    iget-object v1, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    if-eqz v1, :cond_31

    .line 206
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 207
    .local v1, "sec":Ljava/lang/SecurityManager;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_f
    iget-object v3, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    array-length v4, v3

    if-ge v2, v4, :cond_31

    .line 209
    if-eqz v1, :cond_24

    .line 210
    :try_start_16
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 212
    :cond_24
    iget-object v3, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_2b} :catch_2c

    goto :goto_2d

    .line 213
    :catch_2c
    move-exception v3

    :goto_2d
    nop

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 217
    .end local v1    # "sec":Ljava/lang/SecurityManager;
    .end local v2    # "j":I
    :cond_31
    return-object v0
.end method

.method public whitelist core-platform-api test-api getMTU()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 608
    const/4 v0, 0x0

    .line 610
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    sget-object v1, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->AF_INET:I

    sget v3, Landroid/system/OsConstants;->SOCK_DGRAM:I

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 611
    sget-object v1, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Llibcore/io/Os;->ioctlMTU(Ljava/io/FileDescriptor;Ljava/lang/String;)I

    move-result v1
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_15} :catch_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1b
    .catchall {:try_start_1 .. :try_end_15} :catchall_19

    .line 617
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 611
    return v1

    .line 617
    :catchall_19
    move-exception v1

    goto :goto_28

    .line 614
    :catch_1b
    move-exception v1

    .line 615
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1c
    new-instance v2, Ljava/net/SocketException;

    invoke-direct {v2, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "this":Ljava/net/NetworkInterface;
    throw v2

    .line 612
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Ljava/net/NetworkInterface;
    :catch_22
    move-exception v1

    .line 613
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "this":Ljava/net/NetworkInterface;
    throw v2
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_19

    .line 617
    .end local v1    # "e":Landroid/system/ErrnoException;
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Ljava/net/NetworkInterface;
    :goto_28
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 618
    throw v1
.end method

.method public whitelist core-platform-api test-api getName()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getParent()Ljava/net/NetworkInterface;
    .registers 2

    .line 244
    iget-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSubInterfaces()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Ljava/net/NetworkInterface;->childs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 725
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public whitelist core-platform-api test-api isLoopback()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 530
    invoke-direct {p0}, Ljava/net/NetworkInterface;->getFlags()I

    move-result v0

    sget v1, Landroid/system/OsConstants;->IFF_LOOPBACK:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist core-platform-api test-api isPointToPoint()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 546
    invoke-direct {p0}, Ljava/net/NetworkInterface;->getFlags()I

    move-result v0

    sget v1, Landroid/system/OsConstants;->IFF_POINTOPOINT:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist core-platform-api test-api isUp()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 516
    sget v0, Landroid/system/OsConstants;->IFF_UP:I

    sget v1, Landroid/system/OsConstants;->IFF_RUNNING:I

    or-int/2addr v0, v1

    .line 517
    .local v0, "mask":I
    invoke-direct {p0}, Ljava/net/NetworkInterface;->getFlags()I

    move-result v1

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public whitelist core-platform-api test-api isVirtual()Z
    .registers 2

    .line 635
    iget-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    return v0
.end method

.method public whitelist core-platform-api test-api supportsMulticast()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 559
    invoke-direct {p0}, Ljava/net/NetworkInterface;->getFlags()I

    move-result v0

    sget v1, Landroid/system/OsConstants;->IFF_MULTICAST:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 729
    const-string v0, "name:"

    .line 730
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-nez v2, :cond_10

    const-string v2, "null"

    :cond_10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    iget-object v1, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    if-eqz v1, :cond_36

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    :cond_36
    return-object v0
.end method
