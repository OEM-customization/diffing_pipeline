.class public final Ljava/net/NetworkInterface;
.super Ljava/lang/Object;
.source "NetworkInterface.java"


# static fields
.field private static final defaultIndex:I

.field private static final defaultInterface:Ljava/net/NetworkInterface;


# instance fields
.field private addrs:[Ljava/net/InetAddress;

.field private bindings:[Ljava/net/InterfaceAddress;

.field private childs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field private displayName:Ljava/lang/String;

.field private hardwareAddr:[B

.field private index:I

.field private name:Ljava/lang/String;

.field private parent:Ljava/net/NetworkInterface;

.field private virtual:Z


# direct methods
.method static synthetic -get0(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;
    .registers 2
    .param p0, "-this"    # Ljava/net/NetworkInterface;

    .prologue
    iget-object v0, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    invoke-static {}, Ljava/net/DefaultInterface;->getDefault()Ljava/net/NetworkInterface;

    move-result-object v0

    sput-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    .line 73
    sget-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    if-eqz v0, :cond_13

    .line 74
    sget-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v0

    sput v0, Ljava/net/NetworkInterface;->defaultIndex:I

    .line 58
    :goto_12
    return-void

    .line 76
    :cond_13
    const/4 v0, 0x0

    sput v0, Ljava/net/NetworkInterface;->defaultIndex:I

    goto :goto_12
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    .line 87
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I[Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "addrs"    # [Ljava/net/InetAddress;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    .line 90
    iput-object p1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    .line 91
    iput p2, p0, Ljava/net/NetworkInterface;->index:I

    .line 92
    iput-object p3, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    .line 93
    return-void
.end method

.method private static getAll()[Ljava/net/NetworkInterface;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 369
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 373
    .local v16, "inetMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/system/StructIfaddrs;>;>;"
    :try_start_5
    sget-object v23, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface/range {v23 .. v23}, Llibcore/io/Os;->getifaddrs()[Landroid/system/StructIfaddrs;
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_a} :catch_36

    move-result-object v13

    .line 378
    .local v13, "ifaddrs":[Landroid/system/StructIfaddrs;
    const/16 v23, 0x0

    array-length v0, v13

    move/from16 v24, v0

    :goto_10
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3c

    aget-object v11, v13, v23

    .line 379
    .local v11, "ifa":Landroid/system/StructIfaddrs;
    iget-object v0, v11, Landroid/system/StructIfaddrs;->ifa_name:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 382
    .local v17, "name":Ljava/lang/String;
    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .local v14, "ifas":Ljava/util/List;, "Ljava/util/List<Landroid/system/StructIfaddrs;>;"
    if-nez v14, :cond_30

    .line 383
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "ifas":Ljava/util/List;, "Ljava/util/List<Landroid/system/StructIfaddrs;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .restart local v14    # "ifas":Ljava/util/List;, "Ljava/util/List<Landroid/system/StructIfaddrs;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_30
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v23, v23, 0x1

    goto :goto_10

    .line 374
    .end local v11    # "ifa":Landroid/system/StructIfaddrs;
    .end local v13    # "ifaddrs":[Landroid/system/StructIfaddrs;
    .end local v14    # "ifas":Ljava/util/List;, "Ljava/util/List<Landroid/system/StructIfaddrs;>;"
    .end local v17    # "name":Ljava/lang/String;
    :catch_36
    move-exception v7

    .line 375
    .local v7, "e":Landroid/system/ErrnoException;
    invoke-virtual {v7}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v23

    throw v23

    .line 391
    .end local v7    # "e":Landroid/system/ErrnoException;
    .restart local v13    # "ifaddrs":[Landroid/system/StructIfaddrs;
    :cond_3c
    new-instance v20, Ljava/util/HashMap;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 392
    .local v20, "nis":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/net/NetworkInterface;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "e$iterator":Ljava/util/Iterator;
    :cond_51
    :goto_51
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_130

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 393
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/system/StructIfaddrs;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 394
    .restart local v17    # "name":Ljava/lang/String;
    sget-object v24, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Llibcore/io/Os;->if_nametoindex(Ljava/lang/String;)I

    move-result v15

    .line 395
    .local v15, "index":I
    if-eqz v15, :cond_51

    .line 400
    new-instance v18, Ljava/net/NetworkInterface;

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;I[Ljava/net/InetAddress;)V

    .line 401
    .local v18, "ni":Ljava/net/NetworkInterface;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    .line 403
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v4, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v5, "binds":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "ifa$iterator":Ljava/util/Iterator;
    :cond_9c
    :goto_9c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_e8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/system/StructIfaddrs;

    .line 407
    .restart local v11    # "ifa":Landroid/system/StructIfaddrs;
    iget-object v0, v11, Landroid/system/StructIfaddrs;->ifa_addr:Ljava/net/InetAddress;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d7

    .line 408
    iget-object v0, v11, Landroid/system/StructIfaddrs;->ifa_addr:Ljava/net/InetAddress;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v24, Ljava/net/InterfaceAddress;

    iget-object v0, v11, Landroid/system/StructIfaddrs;->ifa_addr:Ljava/net/InetAddress;

    move-object/from16 v25, v0

    iget-object v0, v11, Landroid/system/StructIfaddrs;->ifa_broadaddr:Ljava/net/InetAddress;

    move-object/from16 v23, v0

    check-cast v23, Ljava/net/Inet4Address;

    .line 410
    iget-object v0, v11, Landroid/system/StructIfaddrs;->ifa_netmask:Ljava/net/InetAddress;

    move-object/from16 v26, v0

    .line 409
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Ljava/net/InterfaceAddress;-><init>(Ljava/net/InetAddress;Ljava/net/Inet4Address;Ljava/net/InetAddress;)V

    move-object/from16 v0, v24

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_d7
    iget-object v0, v11, Landroid/system/StructIfaddrs;->hwaddr:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_9c

    .line 414
    iget-object v0, v11, Landroid/system/StructIfaddrs;->hwaddr:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/net/NetworkInterface;->hardwareAddr:[B

    goto :goto_9c

    .line 418
    .end local v11    # "ifa":Landroid/system/StructIfaddrs;
    :cond_e8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/net/InetAddress;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/net/InetAddress;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    .line 419
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/net/InterfaceAddress;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/net/InterfaceAddress;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    .line 420
    new-instance v23, Ljava/util/ArrayList;

    const/16 v24, 0x0

    invoke-direct/range {v23 .. v24}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/net/NetworkInterface;->childs:Ljava/util/List;

    .line 421
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_51

    .line 425
    .end local v4    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v5    # "binds":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/system/StructIfaddrs;>;>;"
    .end local v12    # "ifa$iterator":Ljava/util/Iterator;
    .end local v15    # "index":I
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "ni":Ljava/net/NetworkInterface;
    :cond_130
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_138
    :goto_138
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_18e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 426
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/net/NetworkInterface;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/net/NetworkInterface;

    .line 427
    .restart local v18    # "ni":Ljava/net/NetworkInterface;
    invoke-virtual/range {v18 .. v18}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v19

    .line 428
    .local v19, "niName":Ljava/lang/String;
    const/16 v23, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 429
    .local v6, "colonIdx":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v6, v0, :cond_138

    .line 431
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 432
    .local v22, "parentName":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/net/NetworkInterface;

    .line 434
    .local v21, "parent":Ljava/net/NetworkInterface;
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljava/net/NetworkInterface;->virtual:Z

    .line 435
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 436
    move-object/from16 v0, v21

    iget-object v0, v0, Ljava/net/NetworkInterface;->childs:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_138

    .line 440
    .end local v6    # "colonIdx":I
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/net/NetworkInterface;>;"
    .end local v18    # "ni":Ljava/net/NetworkInterface;
    .end local v19    # "niName":Ljava/lang/String;
    .end local v21    # "parent":Ljava/net/NetworkInterface;
    .end local v22    # "parentName":Ljava/lang/String;
    :cond_18e
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Ljava/net/NetworkInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/net/NetworkInterface;

    return-object v23
.end method

.method public static getByIndex(I)Ljava/net/NetworkInterface;
    .registers 6
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 290
    if-gez p0, :cond_c

    .line 291
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Interface index can\'t be negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    :cond_c
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v1

    .line 294
    .local v1, "nis":[Ljava/net/NetworkInterface;
    array-length v3, v1

    :goto_11
    if-ge v2, v3, :cond_1f

    aget-object v0, v1, v2

    .line 295
    .local v0, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    if-ne v4, p0, :cond_1c

    .line 296
    return-object v0

    .line 294
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 299
    .end local v0    # "ni":Ljava/net/NetworkInterface;
    :cond_1f
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;
    .registers 9
    .param p0, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 325
    if-nez p0, :cond_9

    .line 326
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 328
    :cond_9
    instance-of v4, p0, Ljava/net/Inet4Address;

    if-nez v4, :cond_1a

    instance-of v4, p0, Ljava/net/Inet6Address;

    :goto_f
    if-nez v4, :cond_1c

    .line 329
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "invalid address type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 328
    :cond_1a
    const/4 v4, 0x1

    goto :goto_f

    .line 332
    :cond_1c
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v3

    .line 333
    .local v3, "nis":[Ljava/net/NetworkInterface;
    const/4 v4, 0x0

    array-length v5, v3

    :goto_22
    if-ge v4, v5, :cond_48

    aget-object v2, v3, v4

    .line 334
    .local v2, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "inetAddress$iterator":Ljava/util/Iterator;
    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 335
    .local v0, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v0, p0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 336
    return-object v2

    .line 333
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 340
    .end local v1    # "inetAddress$iterator":Ljava/util/Iterator;
    .end local v2    # "ni":Ljava/net/NetworkInterface;
    :cond_48
    return-object v7
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 266
    if-nez p0, :cond_9

    .line 267
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 269
    :cond_9
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v1

    .line 270
    .local v1, "nis":[Ljava/net/NetworkInterface;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_f
    if-ge v2, v3, :cond_21

    aget-object v0, v1, v2

    .line 271
    .local v0, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 272
    return-object v0

    .line 270
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 275
    .end local v0    # "ni":Ljava/net/NetworkInterface;
    :cond_21
    return-object v5
.end method

.method static getDefault()Ljava/net/NetworkInterface;
    .registers 1

    .prologue
    .line 648
    sget-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method private getFlags()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 557
    const/4 v2, 0x0

    .line 559
    .local v2, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    sget-object v3, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    sget v4, Landroid/system/OsConstants;->AF_INET:I

    sget v5, Landroid/system/OsConstants;->SOCK_DGRAM:I

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 560
    .local v2, "fd":Ljava/io/FileDescriptor;
    sget-object v3, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    iget-object v4, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Llibcore/io/Os;->ioctlFlags(Ljava/io/FileDescriptor;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_13} :catch_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_18
    .catchall {:try_start_1 .. :try_end_13} :catchall_1f

    move-result v3

    .line 566
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 560
    return v3

    .line 563
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_18
    move-exception v1

    .line 564
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_19
    new-instance v3, Ljava/net/SocketException;

    invoke-direct {v3, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1f

    .line 565
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_1f
    move-exception v3

    .line 566
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 565
    throw v3

    .line 561
    :catch_24
    move-exception v0

    .line 562
    .local v0, "e":Landroid/system/ErrnoException;
    :try_start_25
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v3

    throw v3
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_1f
.end method

.method public static getNetworkInterfaces()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    move-result-object v0

    .line 361
    .local v0, "netifs":[Ljava/net/NetworkInterface;
    array-length v1, v0

    if-nez v1, :cond_9

    .line 362
    const/4 v1, 0x0

    return-object v1

    .line 364
    :cond_9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 585
    instance-of v8, p1, Ljava/net/NetworkInterface;

    if-nez v8, :cond_7

    .line 586
    return v7

    :cond_7
    move-object v4, p1

    .line 588
    check-cast v4, Ljava/net/NetworkInterface;

    .line 589
    .local v4, "that":Ljava/net/NetworkInterface;
    iget-object v8, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-eqz v8, :cond_19

    .line 590
    iget-object v8, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iget-object v9, v4, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 591
    return v7

    .line 594
    :cond_19
    iget-object v8, v4, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-eqz v8, :cond_1e

    .line 595
    return v7

    .line 599
    :cond_1e
    iget-object v8, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    if-nez v8, :cond_29

    .line 600
    iget-object v8, v4, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    if-nez v8, :cond_27

    :goto_26
    return v6

    :cond_27
    move v6, v7

    goto :goto_26

    .line 601
    :cond_29
    iget-object v8, v4, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    if-nez v8, :cond_2e

    .line 602
    return v7

    .line 607
    :cond_2e
    iget-object v8, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    array-length v8, v8

    iget-object v9, v4, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    array-length v9, v9

    if-eq v8, v9, :cond_37

    .line 608
    return v7

    .line 611
    :cond_37
    iget-object v5, v4, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    .line 612
    .local v5, "thatAddrs":[Ljava/net/InetAddress;
    array-length v0, v5

    .line 614
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    if-ge v2, v0, :cond_57

    .line 615
    const/4 v1, 0x0

    .line 616
    .local v1, "found":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3f
    if-ge v3, v0, :cond_4e

    .line 617
    iget-object v8, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    aget-object v8, v8, v2

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 618
    const/4 v1, 0x1

    .line 622
    :cond_4e
    if-nez v1, :cond_54

    .line 623
    return v7

    .line 616
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 614
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 626
    .end local v1    # "found":Z
    .end local v3    # "j":I
    :cond_57
    return v6
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 246
    const-string/jumbo v0, ""

    iget-object v1, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    goto :goto_c
.end method

.method public getHardwareAddress()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 511
    iget-object v1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 512
    .local v0, "ni":Ljava/net/NetworkInterface;
    if-nez v0, :cond_11

    .line 513
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "NetworkInterface doesn\'t exist anymore"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :cond_11
    iget-object v1, v0, Ljava/net/NetworkInterface;->hardwareAddr:[B

    return-object v1
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 233
    iget v0, p0, Ljava/net/NetworkInterface;->index:I

    return v0
.end method

.method public getInetAddresses()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ljava/net/NetworkInterface$1checkedAddresses;

    invoke-direct {v0, p0}, Ljava/net/NetworkInterface$1checkedAddresses;-><init>(Ljava/net/NetworkInterface;)V

    return-object v0
.end method

.method public getInterfaceAddresses()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .local v2, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    iget-object v4, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    if-eqz v4, :cond_30

    .line 181
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 182
    .local v3, "sec":Ljava/lang/SecurityManager;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_f
    iget-object v4, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    array-length v4, v4

    if-ge v1, v4, :cond_30

    .line 184
    if-eqz v3, :cond_26

    .line 185
    :try_start_16
    iget-object v4, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 187
    :cond_26
    iget-object v4, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    aget-object v4, v4, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_2d} :catch_31

    .line 182
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 192
    .end local v1    # "j":I
    .end local v3    # "sec":Ljava/lang/SecurityManager;
    :cond_30
    return-object v2

    .line 188
    .restart local v1    # "j":I
    .restart local v3    # "sec":Ljava/lang/SecurityManager;
    :catch_31
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_2d
.end method

.method public getMTU()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 526
    const/4 v2, 0x0

    .line 528
    .local v2, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    sget-object v3, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    sget v4, Landroid/system/OsConstants;->AF_INET:I

    sget v5, Landroid/system/OsConstants;->SOCK_DGRAM:I

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 529
    .local v2, "fd":Ljava/io/FileDescriptor;
    sget-object v3, Llibcore/io/Libcore;->rawOs:Llibcore/io/Os;

    iget-object v4, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Llibcore/io/Os;->ioctlMTU(Ljava/io/FileDescriptor;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_13} :catch_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_18
    .catchall {:try_start_1 .. :try_end_13} :catchall_1f

    move-result v3

    .line 535
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 529
    return v3

    .line 532
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_18
    move-exception v1

    .line 533
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_19
    new-instance v3, Ljava/net/SocketException;

    invoke-direct {v3, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1f

    .line 534
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_1f
    move-exception v3

    .line 535
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 534
    throw v3

    .line 530
    :catch_24
    move-exception v0

    .line 531
    .local v0, "e":Landroid/system/ErrnoException;
    :try_start_25
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v3

    throw v3
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_1f
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/net/NetworkInterface;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public getSubInterfaces()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Ljava/net/NetworkInterface;->childs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public isLoopback()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 464
    invoke-direct {p0}, Ljava/net/NetworkInterface;->getFlags()I

    move-result v1

    sget v2, Landroid/system/OsConstants;->IFF_LOOPBACK:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public isPointToPoint()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 479
    invoke-direct {p0}, Ljava/net/NetworkInterface;->getFlags()I

    move-result v1

    sget v2, Landroid/system/OsConstants;->IFF_POINTOPOINT:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public isUp()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 452
    invoke-direct {p0}, Ljava/net/NetworkInterface;->getFlags()I

    move-result v1

    sget v2, Landroid/system/OsConstants;->IFF_UP:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public isVirtual()Z
    .registers 2

    .prologue
    .line 553
    iget-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    return v0
.end method

.method public supportsMulticast()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 491
    invoke-direct {p0}, Ljava/net/NetworkInterface;->getFlags()I

    move-result v1

    sget v2, Landroid/system/OsConstants;->IFF_MULTICAST:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 634
    const-string/jumbo v0, "name:"

    .line 635
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    if-nez v1, :cond_41

    const-string/jumbo v1, "null"

    :goto_13
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    iget-object v1, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    if-eqz v1, :cond_40

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    :cond_40
    return-object v0

    .line 635
    :cond_41
    iget-object v1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    goto :goto_13
.end method
