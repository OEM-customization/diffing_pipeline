.class public Ljava/util/IdentityHashMap;
.super Ljava/util/AbstractMap;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/IdentityHashMap$EntrySpliterator;,
        Ljava/util/IdentityHashMap$ValueSpliterator;,
        Ljava/util/IdentityHashMap$KeySpliterator;,
        Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;,
        Ljava/util/IdentityHashMap$EntrySet;,
        Ljava/util/IdentityHashMap$Values;,
        Ljava/util/IdentityHashMap$KeySet;,
        Ljava/util/IdentityHashMap$EntryIterator;,
        Ljava/util/IdentityHashMap$ValueIterator;,
        Ljava/util/IdentityHashMap$KeyIterator;,
        Ljava/util/IdentityHashMap$IdentityHashMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_CAPACITY:I = 0x20

.field private static final greylist-max-o MAXIMUM_CAPACITY:I = 0x20000000

.field private static final greylist-max-o MINIMUM_CAPACITY:I = 0x4

.field static final greylist-max-o NULL_KEY:Ljava/lang/Object;

.field private static final whitelist serialVersionUID:J = 0x71a2650133f2e980L


# instance fields
.field private transient greylist-max-o entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient greylist-max-o modCount:I

.field greylist-max-o size:I

.field transient greylist-max-o table:[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/IdentityHashMap;->NULL_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 209
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 210
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->init(I)V

    .line 211
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 5
    .param p1, "expectedMaxSize"    # I

    .line 222
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 223
    if-ltz p1, :cond_d

    .line 226
    invoke-static {p1}, Ljava/util/IdentityHashMap;->capacity(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->init(I)V

    .line 227
    return-void

    .line 224
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expectedMaxSize is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 266
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 267
    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 268
    return-void
.end method

.method static synthetic blacklist access$000(II)I
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 138
    invoke-static {p0, p1}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$100(Ljava/lang/Object;I)I
    .registers 3
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # I

    .line 138
    invoke-static {p0, p1}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1100(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "x0"    # Ljava/util/IdentityHashMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/util/IdentityHashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1200(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "x0"    # Ljava/util/IdentityHashMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/util/IdentityHashMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o capacity(I)I
    .registers 2
    .param p0, "expectedMaxSize"    # I

    .line 239
    const v0, 0xaaaaaaa

    if-le p0, v0, :cond_8

    const/high16 v0, 0x20000000

    goto :goto_14

    .line 240
    :cond_8
    const/4 v0, 0x2

    if-gt p0, v0, :cond_d

    const/4 v0, 0x4

    goto :goto_14

    .line 241
    :cond_d
    shl-int/lit8 v0, p0, 0x1

    add-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 238
    :goto_14
    return v0
.end method

.method private greylist-max-o closeDeletion(I)V
    .registers 9
    .param p1, "d"    # I

    .line 583
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 584
    .local v0, "tab":[Ljava/lang/Object;
    array-length v1, v0

    .line 591
    .local v1, "len":I
    invoke-static {p1, v1}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v2

    .local v2, "i":I
    :goto_7
    aget-object v3, v0, v2

    move-object v4, v3

    .local v4, "item":Ljava/lang/Object;
    if-eqz v3, :cond_31

    .line 599
    invoke-static {v4, v1}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v3

    .line 600
    .local v3, "r":I
    if-ge v2, v3, :cond_16

    if-le v3, p1, :cond_1a

    if-le p1, v2, :cond_1a

    :cond_16
    if-gt v3, p1, :cond_2c

    if-gt p1, v2, :cond_2c

    .line 601
    :cond_1a
    aput-object v4, v0, p1

    .line 602
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, v2, 0x1

    aget-object v6, v0, v6

    aput-object v6, v0, v5

    .line 603
    const/4 v5, 0x0

    aput-object v5, v0, v2

    .line 604
    add-int/lit8 v6, v2, 0x1

    aput-object v5, v0, v6

    .line 605
    move p1, v2

    .line 592
    .end local v3    # "r":I
    :cond_2c
    invoke-static {v2, v1}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v2

    goto :goto_7

    .line 608
    .end local v2    # "i":I
    :cond_31
    return-void
.end method

.method private greylist-max-o containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 390
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 391
    .local v0, "k":Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 392
    .local v1, "tab":[Ljava/lang/Object;
    array-length v2, v1

    .line 393
    .local v2, "len":I
    invoke-static {v0, v2}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v3

    .line 395
    .local v3, "i":I
    :goto_b
    aget-object v4, v1, v3

    .line 396
    .local v4, "item":Ljava/lang/Object;
    const/4 v5, 0x0

    if-ne v4, v0, :cond_18

    .line 397
    add-int/lit8 v6, v3, 0x1

    aget-object v6, v1, v6

    if-ne v6, p2, :cond_17

    const/4 v5, 0x1

    :cond_17
    return v5

    .line 398
    :cond_18
    if-nez v4, :cond_1b

    .line 399
    return v5

    .line 400
    :cond_1b
    invoke-static {v3, v2}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v3

    .line 401
    .end local v4    # "item":Ljava/lang/Object;
    goto :goto_b
.end method

.method private static greylist-max-o hash(Ljava/lang/Object;I)I
    .registers 5
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "length"    # I

    .line 294
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 296
    .local v0, "h":I
    shl-int/lit8 v1, v0, 0x1

    shl-int/lit8 v2, v0, 0x8

    sub-int/2addr v1, v2

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    return v1
.end method

.method private greylist-max-o init(I)V
    .registers 3
    .param p1, "initCapacity"    # I

    .line 254
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 255
    return-void
.end method

.method private static greylist-max-o maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "key"    # Ljava/lang/Object;

    .line 195
    if-nez p0, :cond_5

    sget-object v0, Ljava/util/IdentityHashMap;->NULL_KEY:Ljava/lang/Object;

    goto :goto_6

    :cond_5
    move-object v0, p0

    :goto_6
    return-object v0
.end method

.method private static greylist-max-o nextKeyIndex(II)I
    .registers 3
    .param p0, "i"    # I
    .param p1, "len"    # I

    .line 303
    add-int/lit8 v0, p0, 0x2

    if-ge v0, p1, :cond_7

    add-int/lit8 v0, p0, 0x2

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private greylist-max-o putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .line 1326
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1327
    .local v0, "k":Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1328
    .local v1, "tab":[Ljava/lang/Object;
    array-length v2, v1

    .line 1329
    .local v2, "len":I
    invoke-static {v0, v2}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v3

    .line 1332
    .local v3, "i":I
    :goto_b
    aget-object v4, v1, v3

    move-object v5, v4

    .local v5, "item":Ljava/lang/Object;
    if-eqz v4, :cond_1d

    .line 1333
    if-eq v5, v0, :cond_17

    .line 1335
    invoke-static {v3, v2}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v3

    goto :goto_b

    .line 1334
    :cond_17
    new-instance v4, Ljava/io/StreamCorruptedException;

    invoke-direct {v4}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v4

    .line 1337
    :cond_1d
    aput-object v0, v1, v3

    .line 1338
    add-int/lit8 v4, v3, 0x1

    aput-object p2, v1, v4

    .line 1339
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1300
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1303
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1304
    .local v0, "size":I
    if-ltz v0, :cond_22

    .line 1307
    invoke-static {v0}, Ljava/util/IdentityHashMap;->capacity(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/IdentityHashMap;->init(I)V

    .line 1310
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_21

    .line 1312
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1314
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1315
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v2, v3}, Ljava/util/IdentityHashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1310
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1317
    .end local v1    # "i":I
    :cond_21
    return-void

    .line 1305
    :cond_22
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal mappings count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 551
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 552
    .local v0, "k":Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 553
    .local v1, "tab":[Ljava/lang/Object;
    array-length v2, v1

    .line 554
    .local v2, "len":I
    invoke-static {v0, v2}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v3

    .line 557
    .local v3, "i":I
    :goto_b
    aget-object v4, v1, v3

    .line 558
    .local v4, "item":Ljava/lang/Object;
    const/4 v5, 0x0

    if-ne v4, v0, :cond_2d

    .line 559
    add-int/lit8 v6, v3, 0x1

    aget-object v6, v1, v6

    if-eq v6, p2, :cond_17

    .line 560
    return v5

    .line 561
    :cond_17
    iget v5, p0, Ljava/util/IdentityHashMap;->modCount:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 562
    iget v5, p0, Ljava/util/IdentityHashMap;->size:I

    sub-int/2addr v5, v6

    iput v5, p0, Ljava/util/IdentityHashMap;->size:I

    .line 563
    const/4 v5, 0x0

    aput-object v5, v1, v3

    .line 564
    add-int/lit8 v7, v3, 0x1

    aput-object v5, v1, v7

    .line 565
    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->closeDeletion(I)V

    .line 566
    return v6

    .line 568
    :cond_2d
    if-nez v4, :cond_30

    .line 569
    return v5

    .line 570
    :cond_30
    invoke-static {v3, v2}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v3

    .line 571
    .end local v4    # "item":Ljava/lang/Object;
    goto :goto_b
.end method

.method private greylist-max-o resize(I)Z
    .registers 11
    .param p1, "newCapacity"    # I

    .line 459
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    mul-int/lit8 v0, p1, 0x2

    .line 461
    .local v0, "newLength":I
    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 462
    .local v1, "oldTable":[Ljava/lang/Object;
    array-length v2, v1

    .line 463
    .local v2, "oldLength":I
    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_1a

    .line 464
    iget v4, p0, Ljava/util/IdentityHashMap;->size:I

    const v5, 0x1fffffff

    if-eq v4, v5, :cond_12

    .line 466
    return v3

    .line 465
    :cond_12
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Capacity exhausted."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 468
    :cond_1a
    if-lt v2, v0, :cond_1d

    .line 469
    return v3

    .line 471
    :cond_1d
    new-array v3, v0, [Ljava/lang/Object;

    .line 473
    .local v3, "newTable":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_20
    if-ge v4, v2, :cond_47

    .line 474
    aget-object v5, v1, v4

    .line 475
    .local v5, "key":Ljava/lang/Object;
    if-eqz v5, :cond_44

    .line 476
    add-int/lit8 v6, v4, 0x1

    aget-object v6, v1, v6

    .line 477
    .local v6, "value":Ljava/lang/Object;
    const/4 v7, 0x0

    aput-object v7, v1, v4

    .line 478
    add-int/lit8 v8, v4, 0x1

    aput-object v7, v1, v8

    .line 479
    invoke-static {v5, v0}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v7

    .line 480
    .local v7, "i":I
    :goto_35
    aget-object v8, v3, v7

    if-eqz v8, :cond_3e

    .line 481
    invoke-static {v7, v0}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v7

    goto :goto_35

    .line 482
    :cond_3e
    aput-object v5, v3, v7

    .line 483
    add-int/lit8 v8, v7, 0x1

    aput-object v6, v3, v8

    .line 473
    .end local v5    # "key":Ljava/lang/Object;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "i":I
    :cond_44
    add-int/lit8 v4, v4, 0x2

    goto :goto_20

    .line 486
    .end local v4    # "j":I
    :cond_47
    iput-object v3, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 487
    const/4 v4, 0x1

    return v4
.end method

.method static final greylist-max-o unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "key"    # Ljava/lang/Object;

    .line 202
    sget-object v0, Ljava/util/IdentityHashMap;->NULL_KEY:Ljava/lang/Object;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    move-object v0, p0

    :goto_7
    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1277
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1280
    iget v0, p0, Ljava/util/IdentityHashMap;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1283
    iget-object v0, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1284
    .local v0, "tab":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_23

    .line 1285
    aget-object v2, v0, v1

    .line 1286
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_20

    .line 1287
    invoke-static {v2}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1288
    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1284
    .end local v2    # "key":Ljava/lang/Object;
    :cond_20
    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    .line 1291
    .end local v1    # "i":I
    :cond_23
    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 4

    .line 615
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 616
    iget-object v0, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 617
    .local v0, "tab":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_12

    .line 618
    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 617
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 619
    .end local v1    # "i":I
    :cond_12
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/IdentityHashMap;->size:I

    .line 620
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 703
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/IdentityHashMap;

    .line 704
    .local v0, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<**>;"
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    .line 705
    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_13} :catch_14

    .line 706
    return-object v0

    .line 707
    .end local v0    # "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<**>;"
    :catch_14
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;

    .line 349
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 350
    .local v0, "k":Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 351
    .local v1, "tab":[Ljava/lang/Object;
    array-length v2, v1

    .line 352
    .local v2, "len":I
    invoke-static {v0, v2}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v3

    .line 354
    .local v3, "i":I
    :goto_b
    aget-object v4, v1, v3

    .line 355
    .local v4, "item":Ljava/lang/Object;
    if-ne v4, v0, :cond_11

    .line 356
    const/4 v5, 0x1

    return v5

    .line 357
    :cond_11
    if-nez v4, :cond_15

    .line 358
    const/4 v5, 0x0

    return v5

    .line 359
    :cond_15
    invoke-static {v3, v2}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v3

    .line 360
    .end local v4    # "item":Ljava/lang/Object;
    goto :goto_b
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 373
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 374
    .local v0, "tab":[Ljava/lang/Object;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 375
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_12

    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    if-eqz v2, :cond_12

    .line 376
    const/4 v2, 0x1

    return v2

    .line 374
    :cond_12
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 378
    .end local v1    # "i":I
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1177
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    .line 1178
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_5

    .line 1179
    return-object v0

    .line 1181
    :cond_5
    new-instance v1, Ljava/util/IdentityHashMap$EntrySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/IdentityHashMap$EntrySet;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$1;)V

    iput-object v1, p0, Ljava/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 640
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 641
    return v0

    .line 642
    :cond_4
    instance-of v1, p1, Ljava/util/IdentityHashMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 643
    move-object v1, p1

    check-cast v1, Ljava/util/IdentityHashMap;

    .line 644
    .local v1, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<**>;"
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->size()I

    move-result v3

    iget v4, p0, Ljava/util/IdentityHashMap;->size:I

    if-eq v3, v4, :cond_15

    .line 645
    return v2

    .line 647
    :cond_15
    iget-object v3, v1, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 648
    .local v3, "tab":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    array-length v5, v3

    if-ge v4, v5, :cond_2d

    .line 649
    aget-object v5, v3, v4

    .line 650
    .local v5, "k":Ljava/lang/Object;
    if-eqz v5, :cond_2a

    add-int/lit8 v6, v4, 0x1

    aget-object v6, v3, v6

    invoke-direct {p0, v5, v6}, Ljava/util/IdentityHashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 651
    return v2

    .line 648
    .end local v5    # "k":Ljava/lang/Object;
    :cond_2a
    add-int/lit8 v4, v4, 0x2

    goto :goto_18

    .line 653
    .end local v4    # "i":I
    :cond_2d
    return v0

    .line 654
    .end local v1    # "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<**>;"
    .end local v3    # "tab":[Ljava/lang/Object;
    :cond_2e
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_42

    .line 655
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 656
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 658
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_42
    return v2
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1344
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    iget v0, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 1347
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1348
    .local v1, "t":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_8
    array-length v3, v1

    if-ge v2, v3, :cond_27

    .line 1349
    aget-object v3, v1, v2

    .line 1350
    .local v3, "k":Ljava/lang/Object;
    if-eqz v3, :cond_1a

    .line 1351
    invoke-static {v3}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    aget-object v5, v1, v5

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1354
    :cond_1a
    iget v4, p0, Ljava/util/IdentityHashMap;->modCount:I

    if-ne v4, v0, :cond_21

    .line 1348
    .end local v3    # "k":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x2

    goto :goto_8

    .line 1355
    .restart local v3    # "k":Ljava/lang/Object;
    :cond_21
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1358
    .end local v2    # "index":I
    .end local v3    # "k":Ljava/lang/Object;
    :cond_27
    return-void
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 325
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 326
    .local v0, "k":Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 327
    .local v1, "tab":[Ljava/lang/Object;
    array-length v2, v1

    .line 328
    .local v2, "len":I
    invoke-static {v0, v2}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v3

    .line 330
    .local v3, "i":I
    :goto_b
    aget-object v4, v1, v3

    .line 331
    .local v4, "item":Ljava/lang/Object;
    if-ne v4, v0, :cond_14

    .line 332
    add-int/lit8 v5, v3, 0x1

    aget-object v5, v1, v5

    return-object v5

    .line 333
    :cond_14
    if-nez v4, :cond_18

    .line 334
    const/4 v5, 0x0

    return-object v5

    .line 335
    :cond_18
    invoke-static {v3, v2}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v3

    .line 336
    .end local v4    # "item":Ljava/lang/Object;
    goto :goto_b
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 682
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 683
    .local v0, "result":I
    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 684
    .local v1, "tab":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    array-length v3, v1

    if-ge v2, v3, :cond_20

    .line 685
    aget-object v3, v1, v2

    .line 686
    .local v3, "key":Ljava/lang/Object;
    if-eqz v3, :cond_1d

    .line 687
    invoke-static {v3}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 688
    .local v4, "k":Ljava/lang/Object;
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    aget-object v6, v1, v6

    .line 689
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    xor-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 684
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "k":Ljava/lang/Object;
    :cond_1d
    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    .line 692
    .end local v2    # "i":I
    :cond_20
    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 287
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/IdentityHashMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 966
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    .line 967
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_d

    .line 968
    new-instance v1, Ljava/util/IdentityHashMap$KeySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/IdentityHashMap$KeySet;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$1;)V

    move-object v0, v1

    .line 969
    iput-object v0, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    .line 971
    :cond_d
    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 420
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 423
    .local v0, "k":Ljava/lang/Object;
    :goto_4
    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 424
    .local v1, "tab":[Ljava/lang/Object;
    array-length v2, v1

    .line 425
    .local v2, "len":I
    invoke-static {v0, v2}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v3

    .line 427
    .local v3, "i":I
    :goto_b
    aget-object v4, v1, v3

    move-object v5, v4

    .local v5, "item":Ljava/lang/Object;
    if-eqz v4, :cond_20

    .line 429
    if-ne v5, v0, :cond_1b

    .line 431
    add-int/lit8 v4, v3, 0x1

    aget-object v4, v1, v4

    .line 432
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    add-int/lit8 v6, v3, 0x1

    aput-object p2, v1, v6

    .line 433
    return-object v4

    .line 428
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1b
    invoke-static {v3, v2}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v3

    goto :goto_b

    .line 437
    .end local v5    # "item":Ljava/lang/Object;
    :cond_20
    iget v4, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v4, v4, 0x1

    .line 440
    .local v4, "s":I
    shl-int/lit8 v5, v4, 0x1

    add-int/2addr v5, v4

    if-le v5, v2, :cond_30

    invoke-direct {p0, v2}, Ljava/util/IdentityHashMap;->resize(I)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 441
    goto :goto_4

    .line 443
    :cond_30
    iget v5, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 444
    aput-object v0, v1, v3

    .line 445
    add-int/lit8 v5, v3, 0x1

    aput-object p2, v1, v5

    .line 446
    iput v4, p0, Ljava/util/IdentityHashMap;->size:I

    .line 447
    const/4 v5, 0x0

    return-object v5
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 499
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 500
    .local v0, "n":I
    if-nez v0, :cond_7

    .line 501
    return-void

    .line 502
    :cond_7
    iget v1, p0, Ljava/util/IdentityHashMap;->size:I

    if-le v0, v1, :cond_12

    .line 503
    invoke-static {v0}, Ljava/util/IdentityHashMap;->capacity(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/IdentityHashMap;->resize(I)Z

    .line 505
    :cond_12
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 506
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 507
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_32
    return-void
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 519
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 520
    .local v0, "k":Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 521
    .local v1, "tab":[Ljava/lang/Object;
    array-length v2, v1

    .line 522
    .local v2, "len":I
    invoke-static {v0, v2}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v3

    .line 525
    .local v3, "i":I
    :goto_b
    aget-object v4, v1, v3

    .line 526
    .local v4, "item":Ljava/lang/Object;
    const/4 v5, 0x0

    if-ne v4, v0, :cond_2a

    .line 527
    iget v6, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 528
    iget v6, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/IdentityHashMap;->size:I

    .line 530
    add-int/lit8 v6, v3, 0x1

    aget-object v6, v1, v6

    .line 531
    .local v6, "oldValue":Ljava/lang/Object;, "TV;"
    add-int/lit8 v7, v3, 0x1

    aput-object v5, v1, v7

    .line 532
    aput-object v5, v1, v3

    .line 533
    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->closeDeletion(I)V

    .line 534
    return-object v6

    .line 536
    .end local v6    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2a
    if-nez v4, :cond_2d

    .line 537
    return-object v5

    .line 538
    :cond_2d
    invoke-static {v3, v2}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v3

    .line 539
    .end local v4    # "item":Ljava/lang/Object;
    goto :goto_b
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1363
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    iget v0, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 1366
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1367
    .local v1, "t":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_8
    array-length v3, v1

    if-ge v2, v3, :cond_2c

    .line 1368
    aget-object v3, v1, v2

    .line 1369
    .local v3, "k":Ljava/lang/Object;
    if-eqz v3, :cond_1f

    .line 1370
    add-int/lit8 v4, v2, 0x1

    invoke-static {v3}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    aget-object v6, v1, v6

    invoke-interface {p1, v5, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    .line 1373
    :cond_1f
    iget v4, p0, Ljava/util/IdentityHashMap;->modCount:I

    if-ne v4, v0, :cond_26

    .line 1367
    .end local v3    # "k":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x2

    goto :goto_8

    .line 1374
    .restart local v3    # "k":Ljava/lang/Object;
    :cond_26
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1377
    .end local v2    # "index":I
    .end local v3    # "k":Ljava/lang/Object;
    :cond_2c
    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 276
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/IdentityHashMap;->size:I

    return v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1072
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap;->values:Ljava/util/Collection;

    .line 1073
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_d

    .line 1074
    new-instance v1, Ljava/util/IdentityHashMap$Values;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/IdentityHashMap$Values;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$1;)V

    move-object v0, v1

    .line 1075
    iput-object v0, p0, Ljava/util/IdentityHashMap;->values:Ljava/util/Collection;

    .line 1077
    :cond_d
    return-object v0
.end method
