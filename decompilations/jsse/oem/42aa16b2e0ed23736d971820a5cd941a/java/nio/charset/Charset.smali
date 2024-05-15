.class public abstract Ljava/nio/charset/Charset;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/nio/charset/Charset;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile greylist-max-o bugLevel:Ljava/lang/String;

.field private static volatile greylist-max-o cache1:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o cache2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist defaultCharset:Ljava/nio/charset/Charset;

.field private static greylist-max-o gate:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ThreadLocal<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o aliasSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o aliases:[Ljava/lang/String;

.field private final greylist-max-o name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 279
    const/4 v0, 0x0

    sput-object v0, Ljava/nio/charset/Charset;->bugLevel:Ljava/lang/String;

    .line 330
    sput-object v0, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    .line 404
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "canonicalName"    # Ljava/lang/String;
    .param p2, "aliases"    # [Ljava/lang/String;

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    .line 690
    invoke-static {p1}, Ljava/nio/charset/Charset;->checkName(Ljava/lang/String;)V

    .line 691
    if-nez p2, :cond_f

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_10

    :cond_f
    move-object v0, p2

    .line 692
    .local v0, "as":[Ljava/lang/String;
    :goto_10
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, v0

    if-ge v1, v2, :cond_1c

    .line 693
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/nio/charset/Charset;->checkName(Ljava/lang/String;)V

    .line 692
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 694
    .end local v1    # "i":I
    :cond_1c
    iput-object p1, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    .line 695
    iput-object v0, p0, Ljava/nio/charset/Charset;->aliases:[Ljava/lang/String;

    .line 696
    return-void
.end method

.method static synthetic blacklist access$000()Ljava/util/Iterator;
    .registers 1

    .line 273
    invoke-static {}, Ljava/nio/charset/Charset;->providers()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$100(Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 2
    .param p0, "x0"    # Ljava/util/Iterator;
    .param p1, "x1"    # Ljava/util/Map;

    .line 273
    invoke-static {p0, p1}, Ljava/nio/charset/Charset;->put(Ljava/util/Iterator;Ljava/util/Map;)V

    return-void
.end method

.method static greylist-max-o atBugLevel(Ljava/lang/String;)Z
    .registers 5
    .param p0, "bl"    # Ljava/lang/String;

    .line 282
    sget-object v0, Ljava/nio/charset/Charset;->bugLevel:Ljava/lang/String;

    .line 283
    .local v0, "level":Ljava/lang/String;
    if-nez v0, :cond_1e

    .line 284
    invoke-static {}, Lsun/misc/VM;->isBooted()Z

    move-result v1

    if-nez v1, :cond_c

    .line 285
    const/4 v1, 0x0

    return v1

    .line 286
    :cond_c
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string v2, "sun.nio.cs.bugLevel"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    sput-object v1, Ljava/nio/charset/Charset;->bugLevel:Ljava/lang/String;

    .line 289
    :cond_1e
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static whitelist core-platform-api test-api availableCharsets()Ljava/util/SortedMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .line 625
    new-instance v0, Ljava/nio/charset/Charset$3;

    invoke-direct {v0}, Ljava/nio/charset/Charset$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private static greylist-max-o cache(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 8
    .param p0, "charsetName"    # Ljava/lang/String;
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 334
    sget-object v0, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    monitor-enter v0

    .line 335
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "canonicalName":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/Charset;

    .line 338
    .local v2, "canonicalCharset":Ljava/nio/charset/Charset;
    if-eqz v2, :cond_13

    .line 339
    move-object p1, v2

    goto :goto_33

    .line 341
    :cond_13
    sget-object v3, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 344
    .local v4, "alias":Ljava/lang/String;
    sget-object v5, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v5, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    nop

    .end local v4    # "alias":Ljava/lang/String;
    goto :goto_20

    .line 348
    :cond_33
    :goto_33
    sget-object v3, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    nop

    .end local v1    # "canonicalName":Ljava/lang/String;
    .end local v2    # "canonicalCharset":Ljava/nio/charset/Charset;
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_42

    .line 351
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    .line 352
    return-void

    .line 349
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private static greylist-max-o checkName(Ljava/lang/String;)V
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 302
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 303
    .local v0, "n":I
    const-string v1, "1.4"

    invoke-static {v1}, Ljava/nio/charset/Charset;->atBugLevel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 304
    if-eqz v0, :cond_f

    goto :goto_15

    .line 305
    :cond_f
    new-instance v1, Ljava/nio/charset/IllegalCharsetNameException;

    invoke-direct {v1, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    :cond_15
    :goto_15
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_62

    .line 308
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 309
    .local v2, "c":C
    const/16 v3, 0x41

    if-lt v2, v3, :cond_25

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_25

    goto :goto_59

    .line 310
    :cond_25
    const/16 v3, 0x61

    if-lt v2, v3, :cond_2e

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_2e

    goto :goto_59

    .line 311
    :cond_2e
    const/16 v3, 0x30

    if-lt v2, v3, :cond_37

    const/16 v3, 0x39

    if-gt v2, v3, :cond_37

    goto :goto_59

    .line 312
    :cond_37
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_3e

    if-eqz v1, :cond_3e

    goto :goto_59

    .line 313
    :cond_3e
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_45

    if-eqz v1, :cond_45

    goto :goto_59

    .line 314
    :cond_45
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_4c

    if-eqz v1, :cond_4c

    goto :goto_59

    .line 315
    :cond_4c
    const/16 v3, 0x5f

    if-ne v2, v3, :cond_53

    if-eqz v1, :cond_53

    goto :goto_59

    .line 316
    :cond_53
    const/16 v3, 0x2e

    if-ne v2, v3, :cond_5c

    if-eqz v1, :cond_5c

    .line 307
    .end local v2    # "c":C
    :goto_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 317
    .restart local v2    # "c":C
    :cond_5c
    new-instance v3, Ljava/nio/charset/IllegalCharsetNameException;

    invoke-direct {v3, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 319
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_62
    return-void
.end method

.method public static whitelist core-platform-api test-api defaultCharset()Ljava/nio/charset/Charset;
    .registers 2

    .line 659
    const-class v0, Ljava/nio/charset/Charset;

    monitor-enter v0

    .line 660
    :try_start_3
    sget-object v1, Ljava/nio/charset/Charset;->defaultCharset:Ljava/nio/charset/Charset;

    if-nez v1, :cond_b

    .line 661
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v1, Ljava/nio/charset/Charset;->defaultCharset:Ljava/nio/charset/Charset;

    .line 664
    :cond_b
    sget-object v1, Ljava/nio/charset/Charset;->defaultCharset:Ljava/nio/charset/Charset;

    monitor-exit v0

    return-object v1

    .line 665
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public static whitelist core-platform-api test-api forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "charsetName"    # Ljava/lang/String;

    .line 563
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 564
    .local v0, "cs":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_7

    .line 565
    return-object v0

    .line 566
    :cond_7
    new-instance v1, Ljava/nio/charset/UnsupportedCharsetException;

    invoke-direct {v1, p0}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 578
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 579
    :catch_5
    move-exception v0

    .line 580
    .local v0, "cause":Ljava/lang/Exception;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 581
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 582
    throw v1
.end method

.method public static whitelist core-platform-api test-api isSupported(Ljava/lang/String;)Z
    .registers 2
    .param p0, "charsetName"    # Ljava/lang/String;

    .line 540
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static greylist-max-o lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "charsetName"    # Ljava/lang/String;

    .line 490
    if-eqz p0, :cond_1c

    .line 494
    sget-object v0, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    .line 495
    .local v0, "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 496
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    return-object v1

    .line 497
    :cond_17
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookup2(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    return-object v1

    .line 491
    .end local v0    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null charset name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o lookup2(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 4
    .param p0, "charsetName"    # Ljava/lang/String;

    .line 502
    sget-object v0, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    monitor-enter v0

    .line 503
    :try_start_3
    sget-object v1, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    move-object v2, v1

    .local v2, "cs":Ljava/nio/charset/Charset;
    if-eqz v1, :cond_17

    .line 504
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, p0, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v1, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    .line 505
    monitor-exit v0

    return-object v2

    .line 507
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_30

    .line 511
    invoke-static {p0}, Lcom/android/icu/charset/CharsetICU;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    move-object v1, v0

    .end local v2    # "cs":Ljava/nio/charset/Charset;
    .local v1, "cs":Ljava/nio/charset/Charset;
    if-nez v0, :cond_2c

    .line 512
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookupViaProviders(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_27

    goto :goto_2c

    .line 519
    :cond_27
    invoke-static {p0}, Ljava/nio/charset/Charset;->checkName(Ljava/lang/String;)V

    .line 520
    const/4 v0, 0x0

    return-object v0

    .line 514
    :cond_2c
    :goto_2c
    invoke-static {p0, v1}, Ljava/nio/charset/Charset;->cache(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 515
    return-object v1

    .line 507
    .end local v1    # "cs":Ljava/nio/charset/Charset;
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private static greylist-max-o lookupViaProviders(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 4
    .param p0, "charsetName"    # Ljava/lang/String;

    .line 417
    invoke-static {}, Lsun/misc/VM;->isBooted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 418
    return-object v1

    .line 420
    :cond_8
    sget-object v0, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 422
    return-object v1

    .line 424
    :cond_11
    :try_start_11
    sget-object v0, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 426
    new-instance v0, Ljava/nio/charset/Charset$2;

    invoke-direct {v0, p0}, Ljava/nio/charset/Charset$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_29

    .line 441
    sget-object v2, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 426
    return-object v0

    .line 441
    :catchall_29
    move-exception v0

    sget-object v2, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 442
    throw v0
.end method

.method private static greylist-max-o providers()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/charset/spi/CharsetProvider;",
            ">;"
        }
    .end annotation

    .line 359
    new-instance v0, Ljava/nio/charset/Charset$1;

    invoke-direct {v0}, Ljava/nio/charset/Charset$1;-><init>()V

    return-object v0
.end method

.method private static greylist-max-o put(Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/nio/charset/Charset;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;)V"
        }
    .end annotation

    .line 591
    .local p0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/charset/Charset;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 592
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .line 593
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 594
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    :cond_1d
    goto :goto_0

    .line 596
    :cond_1e
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api aliases()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 713
    iget-object v0, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    if-eqz v0, :cond_5

    .line 714
    return-object v0

    .line 715
    :cond_5
    iget-object v0, p0, Ljava/nio/charset/Charset;->aliases:[Ljava/lang/String;

    array-length v0, v0

    .line 716
    .local v0, "n":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 717
    .local v1, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_1a

    .line 718
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliases:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 717
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 719
    .end local v2    # "i":I
    :cond_1a
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    .line 720
    return-object v2
.end method

.method public whitelist core-platform-api test-api canEncode()Z
    .registers 2

    .line 824
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 273
    check-cast p1, Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->compareTo(Ljava/nio/charset/Charset;)I

    move-result p1

    return p1
.end method

.method public final whitelist core-platform-api test-api compareTo(Ljava/nio/charset/Charset;)I
    .registers 4
    .param p1, "that"    # Ljava/nio/charset/Charset;

    .line 929
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract whitelist core-platform-api test-api contains(Ljava/nio/charset/Charset;)Z
.end method

.method public final whitelist core-platform-api test-api decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .registers 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .line 854
    :try_start_0
    invoke-static {p0}, Lsun/nio/cs/ThreadLocalCoders;->decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 855
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 856
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 857
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0
    :try_end_14
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_14} :catch_15

    .line 854
    return-object v0

    .line 858
    :catch_15
    move-exception v0

    .line 859
    .local v0, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api displayName()Ljava/lang/String;
    .registers 2

    .line 733
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api displayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 761
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 913
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "cb"    # Ljava/nio/CharBuffer;

    .line 890
    :try_start_0
    invoke-static {p0}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 891
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 892
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 893
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_14
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_14} :catch_15

    .line 890
    return-object v0

    .line 894
    :catch_15
    move-exception v0

    .line 895
    .local v0, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "ob"    # Ljava/lang/Object;

    .line 951
    instance-of v0, p1, Ljava/nio/charset/Charset;

    if-nez v0, :cond_6

    .line 952
    const/4 v0, 0x0

    return v0

    .line 953
    :cond_6
    if-ne p0, p1, :cond_a

    .line 954
    const/4 v0, 0x1

    return v0

    .line 955
    :cond_a
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 938
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api isRegistered()Z
    .registers 3

    .line 745
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    const-string v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    const-string v1, "x-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public final whitelist core-platform-api test-api name()Ljava/lang/String;
    .registers 2

    .line 704
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api newDecoder()Ljava/nio/charset/CharsetDecoder;
.end method

.method public abstract whitelist core-platform-api test-api newEncoder()Ljava/nio/charset/CharsetEncoder;
.end method

.method public final whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 964
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
