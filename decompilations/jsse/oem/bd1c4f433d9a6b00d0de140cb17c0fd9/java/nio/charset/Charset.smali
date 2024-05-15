.class public abstract Ljava/nio/charset/Charset;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/charset/Charset;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile bugLevel:Ljava/lang/String;

.field private static volatile cache1:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final cache2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultCharset:Ljava/nio/charset/Charset;

.field private static gate:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ThreadLocal",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private aliasSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aliases:[Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0()Ljava/util/Iterator;
    .registers 1

    invoke-static {}, Ljava/nio/charset/Charset;->providers()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 2
    .param p0, "i"    # Ljava/util/Iterator;
    .param p1, "m"    # Ljava/util/Map;

    .prologue
    invoke-static {p0, p1}, Ljava/nio/charset/Charset;->put(Ljava/util/Iterator;Ljava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 279
    sput-object v0, Ljava/nio/charset/Charset;->bugLevel:Ljava/lang/String;

    .line 330
    sput-object v0, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    .line 405
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 404
    sput-object v0, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    .line 273
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "canonicalName"    # Ljava/lang/String;
    .param p2, "aliases"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-object v2, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    .line 689
    invoke-static {p1}, Ljava/nio/charset/Charset;->checkName(Ljava/lang/String;)V

    .line 690
    if-nez p2, :cond_1a

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    .line 691
    .local v0, "as":[Ljava/lang/String;
    :goto_e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_1c

    .line 692
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/nio/charset/Charset;->checkName(Ljava/lang/String;)V

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 690
    .end local v0    # "as":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1a
    move-object v0, p2

    .restart local v0    # "as":[Ljava/lang/String;
    goto :goto_e

    .line 693
    .restart local v1    # "i":I
    :cond_1c
    iput-object p1, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    .line 694
    iput-object v0, p0, Ljava/nio/charset/Charset;->aliases:[Ljava/lang/String;

    .line 695
    return-void
.end method

.method static atBugLevel(Ljava/lang/String;)Z
    .registers 5
    .param p0, "bl"    # Ljava/lang/String;

    .prologue
    .line 282
    sget-object v0, Ljava/nio/charset/Charset;->bugLevel:Ljava/lang/String;

    .line 283
    .local v0, "level":Ljava/lang/String;
    if-nez v0, :cond_1f

    .line 284
    invoke-static {}, Lsun/misc/VM;->isBooted()Z

    move-result v1

    if-nez v1, :cond_c

    .line 285
    const/4 v1, 0x0

    return v1

    .line 287
    :cond_c
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "sun.nio.cs.bugLevel"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "level":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "level":Ljava/lang/String;
    sput-object v0, Ljava/nio/charset/Charset;->bugLevel:Ljava/lang/String;

    .line 289
    :cond_1f
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static availableCharsets()Ljava/util/SortedMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    new-instance v0, Ljava/nio/charset/Charset$3;

    invoke-direct {v0}, Ljava/nio/charset/Charset$3;-><init>()V

    .line 625
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private static cache(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 8
    .param p0, "charsetName"    # Ljava/lang/String;
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .prologue
    .line 334
    sget-object v5, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    monitor-enter v5

    .line 335
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "canonicalName":Ljava/lang/String;
    sget-object v4, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/Charset;

    .line 338
    .local v2, "canonicalCharset":Ljava/nio/charset/Charset;
    if-eqz v2, :cond_20

    .line 339
    move-object p1, v2

    .line 348
    :cond_12
    sget-object v4, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v4, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_3f

    monitor-exit v5

    .line 351
    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v4, p0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v4, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    .line 352
    return-void

    .line 341
    :cond_20
    :try_start_20
    sget-object v4, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "alias$iterator":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 344
    .local v0, "alias":Ljava/lang/String;
    sget-object v4, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_3f

    goto :goto_2d

    .line 334
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "alias$iterator":Ljava/util/Iterator;
    .end local v2    # "canonicalCharset":Ljava/nio/charset/Charset;
    .end local v3    # "canonicalName":Ljava/lang/String;
    :catchall_3f
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static checkName(Ljava/lang/String;)V
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 303
    .local v2, "n":I
    const-string/jumbo v3, "1.4"

    invoke-static {v3}, Ljava/nio/charset/Charset;->atBugLevel(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 304
    if-nez v2, :cond_15

    .line 305
    new-instance v3, Ljava/nio/charset/IllegalCharsetNameException;

    invoke-direct {v3, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 307
    :cond_15
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v2, :cond_5b

    .line 308
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 309
    .local v0, "c":C
    const/16 v3, 0x41

    if-lt v0, v3, :cond_27

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_27

    .line 307
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 310
    :cond_27
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2f

    const/16 v3, 0x7a

    if-le v0, v3, :cond_24

    .line 311
    :cond_2f
    const/16 v3, 0x30

    if-lt v0, v3, :cond_37

    const/16 v3, 0x39

    if-le v0, v3, :cond_24

    .line 312
    :cond_37
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_3d

    if-nez v1, :cond_24

    .line 313
    :cond_3d
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_43

    if-nez v1, :cond_24

    .line 314
    :cond_43
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_49

    if-nez v1, :cond_24

    .line 315
    :cond_49
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_4f

    if-nez v1, :cond_24

    .line 316
    :cond_4f
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_55

    if-nez v1, :cond_24

    .line 317
    :cond_55
    new-instance v3, Ljava/nio/charset/IllegalCharsetNameException;

    invoke-direct {v3, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 319
    .end local v0    # "c":C
    :cond_5b
    return-void
.end method

.method public static defaultCharset()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 659
    const-class v1, Ljava/nio/charset/Charset;

    monitor-enter v1

    .line 660
    :try_start_3
    sget-object v0, Ljava/nio/charset/Charset;->defaultCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_b

    .line 661
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Ljava/nio/charset/Charset;->defaultCharset:Ljava/nio/charset/Charset;

    .line 664
    :cond_b
    sget-object v0, Ljava/nio/charset/Charset;->defaultCharset:Ljava/nio/charset/Charset;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v1

    return-object v0

    .line 659
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
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

.method public static forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 4
    .param p0, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 578
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v2

    return-object v2

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

.method public static isSupported(Ljava/lang/String;)Z
    .registers 2
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 540
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 4
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 490
    if-nez p0, :cond_b

    .line 491
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Null charset name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :cond_b
    sget-object v0, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;

    .line 495
    .local v0, "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 496
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    return-object v1

    .line 497
    :cond_20
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookup2(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    return-object v1
.end method

.method private static lookup2(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 5
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 502
    sget-object v2, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    monitor-enter v2

    .line 503
    :try_start_4
    sget-object v1, Ljava/nio/charset/Charset;->cache2:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .local v0, "cs":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_17

    .line 504
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, p0, v0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v1, Ljava/nio/charset/Charset;->cache1:Ljava/util/Map$Entry;
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_28

    monitor-exit v2

    .line 505
    return-object v0

    :cond_17
    monitor-exit v2

    .line 511
    invoke-static {p0}, Llibcore/icu/NativeConverter;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_24

    .line 512
    invoke-static {p0}, Ljava/nio/charset/Charset;->lookupViaProviders(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 514
    :cond_24
    invoke-static {p0, v0}, Ljava/nio/charset/Charset;->cache(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 515
    return-object v0

    .line 502
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    :catchall_28
    move-exception v1

    monitor-exit v2

    throw v1

    .line 519
    .restart local v0    # "cs":Ljava/nio/charset/Charset;
    :cond_2b
    invoke-static {p0}, Ljava/nio/charset/Charset;->checkName(Ljava/lang/String;)V

    .line 520
    return-object v3
.end method

.method private static lookupViaProviders(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 4
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 417
    invoke-static {}, Lsun/misc/VM;->isBooted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 418
    return-object v2

    .line 420
    :cond_8
    sget-object v0, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 422
    return-object v2

    .line 424
    :cond_11
    :try_start_11
    sget-object v0, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 427
    new-instance v0, Ljava/nio/charset/Charset$2;

    invoke-direct {v0, p0}, Ljava/nio/charset/Charset$2;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_29

    .line 441
    sget-object v1, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 426
    return-object v0

    .line 440
    :catchall_29
    move-exception v0

    .line 441
    sget-object v1, Ljava/nio/charset/Charset;->gate:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 440
    throw v0
.end method

.method private static providers()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/charset/spi/CharsetProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Ljava/nio/charset/Charset$1;

    invoke-direct {v0}, Ljava/nio/charset/Charset$1;-><init>()V

    return-object v0
.end method

.method private static put(Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/charset/Charset;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

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

    if-nez v1, :cond_0

    .line 594
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 596
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    :cond_1e
    return-void
.end method


# virtual methods
.method public final aliases()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    if-eqz v3, :cond_7

    .line 713
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    return-object v3

    .line 714
    :cond_7
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliases:[Ljava/lang/String;

    array-length v2, v3

    .line 715
    .local v2, "n":I
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 716
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v2, :cond_1c

    .line 717
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliases:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 718
    :cond_1c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    .line 719
    iget-object v3, p0, Ljava/nio/charset/Charset;->aliasSet:Ljava/util/Set;

    return-object v3
.end method

.method public canEncode()Z
    .registers 2

    .prologue
    .line 823
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 915
    check-cast p1, Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->compareTo(Ljava/nio/charset/Charset;)I

    move-result v0

    return v0
.end method

.method public final compareTo(Ljava/nio/charset/Charset;)I
    .registers 4
    .param p1, "that"    # Ljava/nio/charset/Charset;

    .prologue
    .line 928
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract contains(Ljava/nio/charset/Charset;)Z
.end method

.method public final decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .registers 5
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 853
    :try_start_0
    invoke-static {p0}, Lsun/nio/cs/ThreadLocalCoders;->decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 854
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 853
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 855
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 853
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_13
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    return-object v1

    .line 857
    :catch_15
    move-exception v0

    .line 858
    .local v0, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public displayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 732
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public displayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 760
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 912
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "cb"    # Ljava/nio/CharBuffer;

    .prologue
    .line 889
    :try_start_0
    invoke-static {p0}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 890
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 889
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 891
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 889
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_13
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    return-object v1

    .line 893
    :catch_15
    move-exception v0

    .line 894
    .local v0, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    .line 950
    instance-of v0, p1, Ljava/nio/charset/Charset;

    if-nez v0, :cond_6

    .line 951
    const/4 v0, 0x0

    return v0

    .line 952
    :cond_6
    if-ne p0, p1, :cond_a

    .line 953
    const/4 v0, 0x1

    return v0

    .line 954
    :cond_a
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    check-cast p1, Ljava/nio/charset/Charset;

    .end local p1    # "ob":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 937
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isRegistered()Z
    .registers 3

    .prologue
    .line 744
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    const-string/jumbo v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    const-string/jumbo v1, "x-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 703
    iget-object v0, p0, Ljava/nio/charset/Charset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract newDecoder()Ljava/nio/charset/CharsetDecoder;
.end method

.method public abstract newEncoder()Ljava/nio/charset/CharsetEncoder;
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 963
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
