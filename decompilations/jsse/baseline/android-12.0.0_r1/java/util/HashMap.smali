.class public Ljava/util/HashMap;
.super Ljava/util/AbstractMap;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/HashMap$TreeNode;,
        Ljava/util/HashMap$EntrySpliterator;,
        Ljava/util/HashMap$ValueSpliterator;,
        Ljava/util/HashMap$KeySpliterator;,
        Ljava/util/HashMap$HashMapSpliterator;,
        Ljava/util/HashMap$EntryIterator;,
        Ljava/util/HashMap$ValueIterator;,
        Ljava/util/HashMap$KeyIterator;,
        Ljava/util/HashMap$HashIterator;,
        Ljava/util/HashMap$EntrySet;,
        Ljava/util/HashMap$Values;,
        Ljava/util/HashMap$KeySet;,
        Ljava/util/HashMap$Node;
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
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final greylist-max-o DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final greylist-max-o DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final greylist-max-o MAXIMUM_CAPACITY:I = 0x40000000

.field static final greylist-max-o MIN_TREEIFY_CAPACITY:I = 0x40

.field static final greylist-max-o TREEIFY_THRESHOLD:I = 0x8

.field static final greylist-max-o UNTREEIFY_THRESHOLD:I = 0x6

.field private static final whitelist serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field transient greylist-max-o entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final greylist-max-o loadFactor:F

.field transient greylist modCount:I

.field transient greylist-max-o size:I

.field transient greylist table:[Ljava/util/HashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o threshold:I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 474
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 475
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Ljava/util/HashMap;->loadFactor:F

    .line 476
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 467
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Ljava/util/HashMap;-><init>(IF)V

    .line 468
    return-void
.end method

.method public constructor whitelist test-api <init>(IF)V
    .registers 6
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 446
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 447
    if-ltz p1, :cond_36

    .line 450
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_b

    .line 451
    const/high16 p1, 0x40000000    # 2.0f

    .line 452
    :cond_b
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1f

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 455
    iput p2, p0, Ljava/util/HashMap;->loadFactor:F

    .line 456
    invoke-static {p1}, Ljava/util/HashMap;->tableSizeFor(I)I

    move-result v0

    iput v0, p0, Ljava/util/HashMap;->threshold:I

    .line 457
    return-void

    .line 453
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal initial capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 487
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 488
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Ljava/util/HashMap;->loadFactor:F

    .line 489
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->putMapEntries(Ljava/util/Map;Z)V

    .line 490
    return-void
.end method

.method static greylist-max-o comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 9
    .param p0, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 346
    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_40

    .line 348
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_e

    .line 349
    return-object v1

    .line 350
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v2, v0

    .local v2, "ts":[Ljava/lang/reflect/Type;
    if-eqz v0, :cond_40

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    array-length v3, v2

    if-ge v0, v3, :cond_40

    .line 352
    aget-object v3, v2, v0

    move-object v4, v3

    .local v4, "t":Ljava/lang/reflect/Type;
    instance-of v3, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_3d

    move-object v3, v4

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    move-object v5, v3

    .line 353
    .local v5, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-class v6, Ljava/lang/Comparable;

    if-ne v3, v6, :cond_3d

    .line 355
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    move-object v6, v3

    .local v6, "as":[Ljava/lang/reflect/Type;
    if-eqz v3, :cond_3d

    array-length v3, v6

    const/4 v7, 0x1

    if-ne v3, v7, :cond_3d

    const/4 v3, 0x0

    aget-object v3, v6, v3

    if-ne v3, v1, :cond_3d

    .line 357
    return-object v1

    .line 351
    .end local v5    # "p":Ljava/lang/reflect/ParameterizedType;
    .end local v6    # "as":[Ljava/lang/reflect/Type;
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 361
    .end local v0    # "i":I
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ts":[Ljava/lang/reflect/Type;
    .end local v4    # "t":Ljava/lang/reflect/Type;
    :cond_40
    const/4 v0, 0x0

    return-object v0
.end method

.method static greylist-max-o compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 370
    .local p0, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p0, :cond_9

    goto :goto_11

    .line 371
    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_12

    .line 370
    :cond_11
    :goto_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method static final greylist-max-o hash(Ljava/lang/Object;)I
    .registers 4
    .param p0, "key"    # Ljava/lang/Object;

    .line 338
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    move v1, v0

    .local v1, "h":I
    ushr-int/lit8 v2, v1, 0x10

    xor-int/2addr v0, v2

    .end local v1    # "h":I
    :goto_c
    return v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 18
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1376
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    move-object/from16 v6, p0

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1377
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->reinitialize()V

    .line 1378
    iget v0, v6, Ljava/util/HashMap;->loadFactor:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_95

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_95

    .line 1381
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 1382
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    .line 1383
    .local v7, "mappings":I
    if-ltz v7, :cond_7e

    .line 1386
    if-lez v7, :cond_7d

    .line 1389
    const/high16 v0, 0x3e800000    # 0.25f

    iget v1, v6, Ljava/util/HashMap;->loadFactor:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1390
    .local v8, "lf":F
    int-to-float v0, v7

    div-float/2addr v0, v8

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v9, v0, v1

    .line 1391
    .local v9, "fc":F
    const/high16 v0, 0x41800000    # 16.0f

    cmpg-float v0, v9, v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x4e800000

    if-gez v0, :cond_41

    .line 1392
    const/16 v0, 0x10

    goto :goto_4c

    .line 1393
    :cond_41
    cmpl-float v0, v9, v2

    if-ltz v0, :cond_47

    .line 1394
    move v0, v1

    goto :goto_4c

    .line 1395
    :cond_47
    float-to-int v0, v9

    invoke-static {v0}, Ljava/util/HashMap;->tableSizeFor(I)I

    move-result v0

    :goto_4c
    move v10, v0

    .line 1396
    .local v10, "cap":I
    int-to-float v0, v10

    mul-float v11, v0, v8

    .line 1397
    .local v11, "ft":F
    if-ge v10, v1, :cond_58

    cmpg-float v0, v11, v2

    if-gez v0, :cond_58

    .line 1398
    float-to-int v0, v11

    goto :goto_5b

    :cond_58
    const v0, 0x7fffffff

    :goto_5b
    iput v0, v6, Ljava/util/HashMap;->threshold:I

    .line 1400
    new-array v12, v10, [Ljava/util/HashMap$Node;

    .line 1401
    .local v12, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    iput-object v12, v6, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 1404
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_63
    if-ge v13, v7, :cond_7d

    .line 1406
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v14

    .line 1408
    .local v14, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v15

    .line 1409
    .local v15, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v14}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v2, v14

    move-object v3, v15

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    .line 1404
    .end local v14    # "key":Ljava/lang/Object;, "TK;"
    .end local v15    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v13, v13, 0x1

    goto :goto_63

    .line 1412
    .end local v8    # "lf":F
    .end local v9    # "fc":F
    .end local v10    # "cap":I
    .end local v11    # "ft":F
    .end local v12    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v13    # "i":I
    :cond_7d
    return-void

    .line 1384
    :cond_7e
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal mappings count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1379
    .end local v7    # "mappings":I
    :cond_95
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Ljava/util/HashMap;->loadFactor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final greylist-max-o tableSizeFor(I)I
    .registers 3
    .param p0, "cap"    # I

    .line 378
    add-int/lit8 v0, p0, -0x1

    .line 379
    .local v0, "n":I
    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 380
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 381
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 382
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 383
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 384
    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_17

    const/4 v1, 0x1

    goto :goto_1c

    :cond_17
    if-lt v0, v1, :cond_1a

    goto :goto_1c

    :cond_1a
    add-int/lit8 v1, v0, 0x1

    :goto_1c
    return v1
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1361
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->capacity()I

    move-result v0

    .line 1363
    .local v0, "buckets":I
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1364
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1365
    iget v1, p0, Ljava/util/HashMap;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1366
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->internalWriteEntries(Ljava/io/ObjectOutputStream;)V

    .line 1367
    return-void
.end method


# virtual methods
.method greylist-max-o afterNodeAccess(Ljava/util/HashMap$Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1778
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    return-void
.end method

.method greylist-max-o afterNodeInsertion(Z)V
    .registers 2
    .param p1, "evict"    # Z

    .line 1779
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    return-void
.end method

.method greylist-max-o afterNodeRemoval(Ljava/util/HashMap$Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1780
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    return-void
.end method

.method final greylist-max-o capacity()I
    .registers 2

    .line 1343
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-eqz v0, :cond_6

    array-length v0, v0

    goto :goto_d

    .line 1344
    :cond_6
    iget v0, p0, Ljava/util/HashMap;->threshold:I

    if-lez v0, :cond_b

    goto :goto_d

    .line 1345
    :cond_b
    const/16 v0, 0x10

    .line 1343
    :goto_d
    return v0
.end method

.method public whitelist test-api clear()V
    .registers 4

    .line 859
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/HashMap;->modCount:I

    .line 860
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1c

    iget v0, p0, Ljava/util/HashMap;->size:I

    if-lez v0, :cond_1c

    .line 861
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/HashMap;->size:I

    .line 862
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 863
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 862
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 865
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 1330
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_f

    .line 1334
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    nop

    .line 1335
    invoke-virtual {v0}, Ljava/util/HashMap;->reinitialize()V

    .line 1336
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->putMapEntries(Ljava/util/Map;Z)V

    .line 1337
    return-object v0

    .line 1331
    .end local v0    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :catch_f
    move-exception v0

    .line 1333
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1173
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    if-eqz v8, :cond_dc

    .line 1175
    invoke-static/range {p1 .. p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v9

    .line 1177
    .local v9, "hash":I
    const/4 v0, 0x0

    .line 1178
    .local v0, "binCount":I
    const/4 v1, 0x0

    .line 1179
    .local v1, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v2, 0x0

    .line 1180
    .local v2, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget v3, v6, Ljava/util/HashMap;->size:I

    iget v4, v6, Ljava/util/HashMap;->threshold:I

    if-gt v3, v4, :cond_22

    iget-object v3, v6, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v4, v3

    .local v4, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_22

    array-length v3, v4

    move v5, v3

    .local v5, "n":I
    if-nez v3, :cond_1f

    goto :goto_22

    :cond_1f
    move-object v10, v4

    move v11, v5

    goto :goto_2a

    .line 1182
    .end local v4    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v5    # "n":I
    :cond_22
    :goto_22
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    move-result-object v3

    move-object v4, v3

    .restart local v4    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    array-length v5, v3

    move-object v10, v4

    move v11, v5

    .line 1183
    .end local v4    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local v10, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local v11, "n":I
    :goto_2a
    add-int/lit8 v3, v11, -0x1

    and-int/2addr v3, v9

    move v12, v3

    .local v12, "i":I
    aget-object v3, v10, v3

    move-object v13, v3

    .local v13, "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_65

    .line 1184
    instance-of v3, v13, Ljava/util/HashMap$TreeNode;

    if-eqz v3, :cond_43

    .line 1185
    move-object v3, v13

    check-cast v3, Ljava/util/HashMap$TreeNode;

    move-object v1, v3

    invoke-virtual {v3, v9, v7}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v2

    move v14, v0

    move-object v15, v1

    move-object v5, v2

    goto :goto_68

    .line 1187
    :cond_43
    move-object v3, v13

    .line 1189
    .local v3, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_44
    iget v4, v3, Ljava/util/HashMap$Node;->hash:I

    if-ne v4, v9, :cond_5a

    iget-object v4, v3, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "k":Ljava/lang/Object;, "TK;"
    if-eq v4, v7, :cond_55

    if-eqz v7, :cond_5a

    .line 1190
    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 1191
    :cond_55
    move-object v2, v3

    .line 1192
    move v14, v0

    move-object v15, v1

    move-object v5, v2

    goto :goto_68

    .line 1194
    .end local v5    # "k":Ljava/lang/Object;, "TK;"
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    .line 1195
    iget-object v4, v3, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v3, v4

    if-nez v4, :cond_44

    move v14, v0

    move-object v15, v1

    move-object v5, v2

    goto :goto_68

    .line 1183
    .end local v3    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_65
    move v14, v0

    move-object v15, v1

    move-object v5, v2

    .line 1198
    .end local v0    # "binCount":I
    .end local v1    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local v5, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local v14, "binCount":I
    .local v15, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_68
    if-nez v5, :cond_6c

    const/4 v0, 0x0

    goto :goto_6e

    :cond_6c
    iget-object v0, v5, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    :goto_6e
    move-object v4, v0

    .line 1199
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-interface {v8, v7, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1200
    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_a0

    .line 1201
    if-eqz v3, :cond_83

    .line 1202
    iput-object v3, v5, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1203
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    move-object v0, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto/16 :goto_db

    .line 1206
    :cond_83
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, p1

    move-object/from16 v19, v3

    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .local v19, "v":Ljava/lang/Object;, "TV;"
    move-object/from16 v3, v16

    move-object/from16 v16, v4

    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    .local v16, "oldValue":Ljava/lang/Object;, "TV;"
    move/from16 v4, v17

    move-object/from16 v17, v5

    .end local v5    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local v17, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-object/from16 v0, v19

    goto :goto_db

    .line 1208
    .end local v16    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v17    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v19    # "v":Ljava/lang/Object;, "TV;"
    .restart local v3    # "v":Ljava/lang/Object;, "TV;"
    .restart local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    .restart local v5    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_a0
    move-object/from16 v19, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v5    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .restart local v16    # "oldValue":Ljava/lang/Object;, "TV;"
    .restart local v17    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .restart local v19    # "v":Ljava/lang/Object;, "TV;"
    move-object/from16 v5, v19

    .end local v19    # "v":Ljava/lang/Object;, "TV;"
    .local v5, "v":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_da

    .line 1209
    if-eqz v15, :cond_bb

    .line 1210
    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v10

    move v3, v9

    move-object/from16 v4, p1

    move-object/from16 v19, v5

    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    .restart local v19    # "v":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap$TreeNode;->putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-object/from16 v0, v19

    goto :goto_cb

    .line 1212
    .end local v19    # "v":Ljava/lang/Object;, "TV;"
    .restart local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_bb
    move-object/from16 v19, v5

    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    .restart local v19    # "v":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, v19

    .end local v19    # "v":Ljava/lang/Object;, "TV;"
    .local v0, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {v6, v9, v7, v0, v13}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v1

    aput-object v1, v10, v12

    .line 1213
    const/4 v1, 0x7

    if-lt v14, v1, :cond_cb

    .line 1214
    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->treeifyBin([Ljava/util/HashMap$Node;I)V

    .line 1216
    :cond_cb
    :goto_cb
    iget v1, v6, Ljava/util/HashMap;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v6, Ljava/util/HashMap;->modCount:I

    .line 1217
    iget v1, v6, Ljava/util/HashMap;->size:I

    add-int/2addr v1, v2

    iput v1, v6, Ljava/util/HashMap;->size:I

    .line 1218
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->afterNodeInsertion(Z)V

    goto :goto_db

    .line 1208
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    .restart local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_da
    move-object v0, v5

    .line 1220
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    .restart local v0    # "v":Ljava/lang/Object;, "TV;"
    :goto_db
    return-object v0

    .line 1174
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    .end local v9    # "hash":I
    .end local v10    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v11    # "n":I
    .end local v12    # "i":I
    .end local v13    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v14    # "binCount":I
    .end local v15    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v16    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v17    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_dc
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 1099
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    if-eqz v8, :cond_b3

    .line 1101
    invoke-static/range {p1 .. p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v9

    .line 1103
    .local v9, "hash":I
    const/4 v0, 0x0

    .line 1104
    .local v0, "binCount":I
    const/4 v1, 0x0

    .line 1105
    .local v1, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v2, 0x0

    .line 1106
    .local v2, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget v3, v6, Ljava/util/HashMap;->size:I

    iget v4, v6, Ljava/util/HashMap;->threshold:I

    if-gt v3, v4, :cond_22

    iget-object v3, v6, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v4, v3

    .local v4, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_22

    array-length v3, v4

    move v5, v3

    .local v5, "n":I
    if-nez v3, :cond_1f

    goto :goto_22

    :cond_1f
    move-object v10, v4

    move v11, v5

    goto :goto_2a

    .line 1108
    .end local v4    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v5    # "n":I
    :cond_22
    :goto_22
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    move-result-object v3

    move-object v4, v3

    .restart local v4    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    array-length v5, v3

    move-object v10, v4

    move v11, v5

    .line 1109
    .end local v4    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local v10, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local v11, "n":I
    :goto_2a
    add-int/lit8 v3, v11, -0x1

    and-int/2addr v3, v9

    move v12, v3

    .local v12, "i":I
    aget-object v3, v10, v3

    move-object v13, v3

    .local v13, "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_6a

    .line 1110
    instance-of v3, v13, Ljava/util/HashMap$TreeNode;

    if-eqz v3, :cond_40

    .line 1111
    move-object v3, v13

    check-cast v3, Ljava/util/HashMap$TreeNode;

    move-object v1, v3

    invoke-virtual {v3, v9, v7}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v2

    goto :goto_5b

    .line 1113
    :cond_40
    move-object v3, v13

    .line 1115
    .local v3, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_41
    iget v4, v3, Ljava/util/HashMap$Node;->hash:I

    if-ne v4, v9, :cond_54

    iget-object v4, v3, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "k":Ljava/lang/Object;, "TK;"
    if-eq v4, v7, :cond_52

    if-eqz v7, :cond_54

    .line 1116
    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 1117
    :cond_52
    move-object v2, v3

    .line 1118
    goto :goto_5b

    .line 1120
    .end local v5    # "k":Ljava/lang/Object;, "TK;"
    :cond_54
    add-int/lit8 v0, v0, 0x1

    .line 1121
    iget-object v4, v3, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v3, v4

    if-nez v4, :cond_41

    .line 1124
    .end local v3    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_5b
    if-eqz v2, :cond_66

    iget-object v3, v2, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_66

    .line 1125
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1126
    return-object v4

    .line 1129
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_66
    move v14, v0

    move-object v15, v1

    move-object v5, v2

    goto :goto_6d

    .line 1109
    :cond_6a
    move v14, v0

    move-object v15, v1

    move-object v5, v2

    .line 1129
    .end local v0    # "binCount":I
    .end local v1    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local v5, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local v14, "binCount":I
    .local v15, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_6d
    invoke-interface {v8, v7}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1130
    .local v4, "v":Ljava/lang/Object;, "TV;"
    if-nez v4, :cond_75

    .line 1131
    const/4 v0, 0x0

    return-object v0

    .line 1132
    :cond_75
    if-eqz v5, :cond_7d

    .line 1133
    iput-object v4, v5, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1134
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1135
    return-object v4

    .line 1137
    :cond_7d
    if-eqz v15, :cond_92

    .line 1138
    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v10

    move v3, v9

    move-object/from16 v16, v4

    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    .local v16, "v":Ljava/lang/Object;, "TV;"
    move-object/from16 v4, p1

    move-object/from16 v17, v5

    .end local v5    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local v17, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap$TreeNode;->putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-object/from16 v0, v16

    goto :goto_a4

    .line 1140
    .end local v16    # "v":Ljava/lang/Object;, "TV;"
    .end local v17    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .restart local v4    # "v":Ljava/lang/Object;, "TV;"
    .restart local v5    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_92
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    .end local v5    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .restart local v16    # "v":Ljava/lang/Object;, "TV;"
    .restart local v17    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move-object/from16 v0, v16

    .end local v16    # "v":Ljava/lang/Object;, "TV;"
    .local v0, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {v6, v9, v7, v0, v13}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v1

    aput-object v1, v10, v12

    .line 1141
    const/4 v1, 0x7

    if-lt v14, v1, :cond_a4

    .line 1142
    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->treeifyBin([Ljava/util/HashMap$Node;I)V

    .line 1144
    :cond_a4
    :goto_a4
    iget v1, v6, Ljava/util/HashMap;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v6, Ljava/util/HashMap;->modCount:I

    .line 1145
    iget v1, v6, Ljava/util/HashMap;->size:I

    add-int/2addr v1, v2

    iput v1, v6, Ljava/util/HashMap;->size:I

    .line 1146
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->afterNodeInsertion(Z)V

    .line 1147
    return-object v0

    .line 1100
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    .end local v9    # "hash":I
    .end local v10    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v11    # "n":I
    .end local v12    # "i":I
    .end local v13    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v14    # "binCount":I
    .end local v15    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v17    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_b3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1152
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p2, :cond_29

    .line 1155
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v6

    .line 1156
    .local v6, "hash":I
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v7, v0

    .local v7, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_27

    iget-object v0, v7, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object v8, v0

    .local v8, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_27

    .line 1158
    invoke-interface {p2, p1, v8}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1159
    .local v9, "v":Ljava/lang/Object;, "TV;"
    if-eqz v9, :cond_1e

    .line 1160
    iput-object v9, v7, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1161
    invoke-virtual {p0, v7}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1162
    return-object v9

    .line 1165
    :cond_1e
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    .line 1167
    .end local v8    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v9    # "v":Ljava/lang/Object;, "TV;"
    :cond_27
    const/4 v0, 0x0

    return-object v0

    .line 1153
    .end local v6    # "hash":I
    .end local v7    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 595
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "value"    # Ljava/lang/Object;

    .line 877
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_27

    iget v0, p0, Ljava/util/HashMap;->size:I

    if-lez v0, :cond_27

    .line 878
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, v1

    if-ge v0, v2, :cond_27

    .line 879
    aget-object v2, v1, v0

    .local v2, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_f
    if-eqz v2, :cond_24

    .line 880
    iget-object v3, v2, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "v":Ljava/lang/Object;, "TV;"
    if-eq v3, p1, :cond_22

    if-eqz p1, :cond_1f

    .line 881
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_22

    .line 879
    :cond_1f
    iget-object v2, v2, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_f

    .line 882
    :cond_22
    :goto_22
    const/4 v3, 0x1

    return v3

    .line 878
    .end local v2    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 886
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1008
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    move-object v1, v0

    .local v1, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_d

    new-instance v0, Ljava/util/HashMap$EntrySet;

    invoke-direct {v0, p0}, Ljava/util/HashMap$EntrySet;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    goto :goto_e

    :cond_d
    move-object v0, v1

    :goto_e
    return-object v0
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

    .line 1285
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-eqz p1, :cond_32

    .line 1287
    iget v0, p0, Ljava/util/HashMap;->size:I

    if-lez v0, :cond_31

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_31

    .line 1288
    iget v0, p0, Ljava/util/HashMap;->modCount:I

    .line 1290
    .local v0, "mc":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_26

    iget v3, p0, Ljava/util/HashMap;->modCount:I

    if-ne v0, v3, :cond_26

    .line 1291
    aget-object v3, v1, v2

    .local v3, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_17
    if-eqz v3, :cond_23

    .line 1292
    iget-object v4, v3, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    iget-object v5, v3, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1291
    iget-object v3, v3, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_17

    .line 1290
    .end local v3    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1294
    .end local v2    # "i":I
    :cond_26
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    if-ne v2, v0, :cond_2b

    goto :goto_31

    .line 1295
    :cond_2b
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1297
    .end local v0    # "mc":I
    .end local v1    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_31
    :goto_31
    return-void

    .line 1286
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 556
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_f

    :cond_d
    iget-object v0, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    :goto_f
    return-object v0
.end method

.method final greylist-max-o getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;
    .registers 9
    .param p1, "hash"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 568
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_4b

    array-length v0, v1

    move v2, v0

    .local v2, "n":I
    if-lez v0, :cond_4b

    add-int/lit8 v0, v2, -0x1

    and-int/2addr v0, p1

    aget-object v0, v1, v0

    move-object v3, v0

    .local v3, "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_4b

    .line 570
    iget v0, v3, Ljava/util/HashMap$Node;->hash:I

    if-ne v0, p1, :cond_23

    iget-object v0, v3, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v4, v0

    .local v4, "k":Ljava/lang/Object;, "TK;"
    if-eq v0, p2, :cond_22

    if-eqz p2, :cond_23

    .line 571
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 572
    :cond_22
    return-object v3

    .line 573
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    :cond_23
    iget-object v0, v3, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v4, v0

    .local v4, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_4b

    .line 574
    instance-of v0, v3, Ljava/util/HashMap$TreeNode;

    if-eqz v0, :cond_34

    .line 575
    move-object v0, v3

    check-cast v0, Ljava/util/HashMap$TreeNode;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v0

    return-object v0

    .line 577
    :cond_34
    iget v0, v4, Ljava/util/HashMap$Node;->hash:I

    if-ne v0, p1, :cond_46

    iget-object v0, v4, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v5, v0

    .local v5, "k":Ljava/lang/Object;, "TK;"
    if-eq v0, p2, :cond_45

    if-eqz p2, :cond_46

    .line 578
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 579
    :cond_45
    return-object v4

    .line 580
    .end local v5    # "k":Ljava/lang/Object;, "TK;"
    :cond_46
    iget-object v0, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v4, v0

    if-nez v0, :cond_34

    .line 583
    .end local v2    # "n":I
    .end local v3    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v4    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_4b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 1059
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v0, :cond_d

    move-object v0, p2

    goto :goto_f

    :cond_d
    iget-object v0, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    :goto_f
    return-object v0
.end method

.method greylist-max-o internalWriteEntries(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1785
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    if-lez v0, :cond_21

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_21

    .line 1786
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, v1

    if-ge v0, v2, :cond_21

    .line 1787
    aget-object v2, v1, v0

    .local v2, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_f
    if-eqz v2, :cond_1e

    .line 1788
    iget-object v3, v2, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1789
    iget-object v3, v2, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1787
    iget-object v2, v2, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_f

    .line 1786
    .end local v2    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1793
    .end local v0    # "i":I
    .end local v1    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_21
    return-void
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 534
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 905
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 906
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_c

    .line 907
    new-instance v1, Ljava/util/HashMap$KeySet;

    invoke-direct {v1, p0}, Ljava/util/HashMap$KeySet;-><init>(Ljava/util/HashMap;)V

    move-object v0, v1

    .line 908
    iput-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 910
    :cond_c
    return-object v0
.end method

.method final greylist-max-o loadFactor()F
    .registers 2

    .line 1341
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->loadFactor:F

    return v0
.end method

.method public whitelist test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1226
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    if-eqz v8, :cond_d8

    .line 1228
    if-eqz v9, :cond_d2

    .line 1230
    invoke-static/range {p1 .. p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v10

    .line 1232
    .local v10, "hash":I
    const/4 v0, 0x0

    .line 1233
    .local v0, "binCount":I
    const/4 v1, 0x0

    .line 1234
    .local v1, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v2, 0x0

    .line 1235
    .local v2, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget v3, v6, Ljava/util/HashMap;->size:I

    iget v4, v6, Ljava/util/HashMap;->threshold:I

    if-gt v3, v4, :cond_26

    iget-object v3, v6, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v4, v3

    .local v4, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_26

    array-length v3, v4

    move v5, v3

    .local v5, "n":I
    if-nez v3, :cond_23

    goto :goto_26

    :cond_23
    move-object v11, v4

    move v12, v5

    goto :goto_2e

    .line 1237
    .end local v4    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v5    # "n":I
    :cond_26
    :goto_26
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    move-result-object v3

    move-object v4, v3

    .restart local v4    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    array-length v5, v3

    move-object v11, v4

    move v12, v5

    .line 1238
    .end local v4    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local v11, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local v12, "n":I
    :goto_2e
    add-int/lit8 v3, v12, -0x1

    and-int/2addr v3, v10

    move v13, v3

    .local v13, "i":I
    aget-object v3, v11, v3

    move-object v14, v3

    .local v14, "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_6c

    .line 1239
    instance-of v3, v14, Ljava/util/HashMap$TreeNode;

    if-eqz v3, :cond_48

    .line 1240
    move-object v3, v14

    check-cast v3, Ljava/util/HashMap$TreeNode;

    move-object v1, v3

    invoke-virtual {v3, v10, v7}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v2

    move v15, v0

    move-object/from16 v16, v1

    move-object v5, v2

    goto :goto_70

    .line 1242
    :cond_48
    move-object v3, v14

    .line 1244
    .local v3, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_49
    iget v4, v3, Ljava/util/HashMap$Node;->hash:I

    if-ne v4, v10, :cond_60

    iget-object v4, v3, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v5, v4

    .local v5, "k":Ljava/lang/Object;, "TK;"
    if-eq v4, v7, :cond_5a

    if-eqz v7, :cond_60

    .line 1245
    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 1246
    :cond_5a
    move-object v2, v3

    .line 1247
    move v15, v0

    move-object/from16 v16, v1

    move-object v5, v2

    goto :goto_70

    .line 1249
    .end local v5    # "k":Ljava/lang/Object;, "TK;"
    :cond_60
    add-int/lit8 v0, v0, 0x1

    .line 1250
    iget-object v4, v3, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v3, v4

    if-nez v4, :cond_49

    move v15, v0

    move-object/from16 v16, v1

    move-object v5, v2

    goto :goto_70

    .line 1238
    .end local v3    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_6c
    move v15, v0

    move-object/from16 v16, v1

    move-object v5, v2

    .line 1253
    .end local v0    # "binCount":I
    .end local v1    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local v5, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local v15, "binCount":I
    .local v16, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_70
    if-eqz v5, :cond_a3

    .line 1255
    iget-object v0, v5, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7e

    .line 1256
    iget-object v0, v5, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-interface {v9, v0, v8}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    .local v0, "v":Ljava/lang/Object;, "TV;"
    goto :goto_81

    .line 1258
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    :cond_7e
    move-object/from16 v0, p2

    move-object v4, v0

    .line 1259
    .local v4, "v":Ljava/lang/Object;, "TV;"
    :goto_81
    if-eqz v4, :cond_8d

    .line 1260
    iput-object v4, v5, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1261
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    move-object/from16 v19, v4

    move-object/from16 v17, v5

    goto :goto_a2

    .line 1264
    :cond_8d
    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move v1, v10

    move-object/from16 v2, p1

    move-object/from16 v19, v4

    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    .local v19, "v":Ljava/lang/Object;, "TV;"
    move/from16 v4, v17

    move-object/from16 v17, v5

    .end local v5    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local v17, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    .line 1265
    :goto_a2
    return-object v19

    .line 1267
    .end local v17    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v19    # "v":Ljava/lang/Object;, "TV;"
    .restart local v5    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_a3
    move-object/from16 v17, v5

    .end local v5    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .restart local v17    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v8, :cond_d1

    .line 1268
    if-eqz v16, :cond_b7

    .line 1269
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v11

    move v3, v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap$TreeNode;->putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;

    goto :goto_c3

    .line 1271
    :cond_b7
    invoke-virtual {v6, v10, v7, v8, v14}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v0

    aput-object v0, v11, v13

    .line 1272
    const/4 v0, 0x7

    if-lt v15, v0, :cond_c3

    .line 1273
    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->treeifyBin([Ljava/util/HashMap$Node;I)V

    .line 1275
    :cond_c3
    :goto_c3
    iget v0, v6, Ljava/util/HashMap;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v6, Ljava/util/HashMap;->modCount:I

    .line 1276
    iget v0, v6, Ljava/util/HashMap;->size:I

    add-int/2addr v0, v1

    iput v0, v6, Ljava/util/HashMap;->size:I

    .line 1277
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->afterNodeInsertion(Z)V

    .line 1279
    :cond_d1
    return-object v8

    .line 1229
    .end local v10    # "hash":I
    .end local v11    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v12    # "n":I
    .end local v13    # "i":I
    .end local v14    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v15    # "binCount":I
    .end local v16    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v17    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_d2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1227
    :cond_d8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method greylist-max-o newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;
    .registers 6
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1746
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$Node;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/HashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    return-object v0
.end method

.method greylist-max-o newTreeNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;
    .registers 6
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1756
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$TreeNode;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/HashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 611
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 784
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->putMapEntries(Ljava/util/Map;Z)V

    .line 785
    return-void
.end method

.method public whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1064
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o putMapEntries(Ljava/util/Map;Z)V
    .registers 14
    .param p2, "evict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;Z)V"
        }
    .end annotation

    .line 500
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 501
    .local v0, "s":I
    if-lez v0, :cond_56

    .line 502
    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-nez v1, :cond_26

    .line 503
    int-to-float v1, v0

    iget v2, p0, Ljava/util/HashMap;->loadFactor:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    .line 504
    .local v1, "ft":F
    const/high16 v2, 0x4e800000

    cmpg-float v2, v1, v2

    if-gez v2, :cond_19

    .line 505
    float-to-int v2, v1

    goto :goto_1b

    :cond_19
    const/high16 v2, 0x40000000    # 2.0f

    .line 506
    .local v2, "t":I
    :goto_1b
    iget v3, p0, Ljava/util/HashMap;->threshold:I

    if-le v2, v3, :cond_25

    .line 507
    invoke-static {v2}, Ljava/util/HashMap;->tableSizeFor(I)I

    move-result v3

    iput v3, p0, Ljava/util/HashMap;->threshold:I

    .line 508
    .end local v1    # "ft":F
    .end local v2    # "t":I
    :cond_25
    goto :goto_2d

    .line 509
    :cond_26
    iget v1, p0, Ljava/util/HashMap;->threshold:I

    if-le v0, v1, :cond_2d

    .line 510
    invoke-virtual {p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    .line 511
    :cond_2d
    :goto_2d
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 512
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 513
    .local v9, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 514
    .local v10, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v9}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v4

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, v9

    move-object v6, v10

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Ljava/util/HashMap;->putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    .line 515
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v9    # "key":Ljava/lang/Object;, "TK;"
    .end local v10    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_35

    .line 517
    :cond_56
    return-void
.end method

.method final greylist-max-o putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;
    .registers 21
    .param p1, "hash"    # I
    .param p4, "onlyIfAbsent"    # Z
    .param p5, "evict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;ZZ)TV;"
        }
    .end annotation

    .line 627
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    move-object v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    iget-object v0, v6, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_14

    array-length v0, v1

    move v2, v0

    .local v2, "n":I
    if-nez v0, :cond_11

    goto :goto_14

    :cond_11
    move-object v10, v1

    move v11, v2

    goto :goto_1c

    .line 628
    .end local v2    # "n":I
    :cond_14
    :goto_14
    invoke-virtual {p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v1, v0

    array-length v2, v0

    move-object v10, v1

    move v11, v2

    .line 629
    .end local v1    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local v10, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local v11, "n":I
    :goto_1c
    add-int/lit8 v0, v11, -0x1

    and-int/2addr v0, v7

    move v12, v0

    .local v12, "i":I
    aget-object v0, v10, v0

    move-object v13, v0

    .local v13, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v14, 0x0

    if-nez v0, :cond_2e

    .line 630
    invoke-virtual {p0, v7, v8, v9, v14}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v0

    aput-object v0, v10, v12

    goto/16 :goto_8f

    .line 633
    :cond_2e
    iget v0, v13, Ljava/util/HashMap$Node;->hash:I

    if-ne v0, v7, :cond_41

    iget-object v0, v13, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "k":Ljava/lang/Object;, "TK;"
    if-eq v0, v8, :cond_3f

    if-eqz v8, :cond_41

    .line 634
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 635
    :cond_3f
    move-object v0, v13

    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    goto :goto_81

    .line 636
    .end local v0    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    :cond_41
    instance-of v0, v13, Ljava/util/HashMap$TreeNode;

    if-eqz v0, :cond_55

    .line 637
    move-object v0, v13

    check-cast v0, Ljava/util/HashMap$TreeNode;

    move-object v1, p0

    move-object v2, v10

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap$TreeNode;->putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v0

    .restart local v0    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    goto :goto_81

    .line 639
    .end local v0    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_55
    const/4 v0, 0x0

    .line 640
    .local v0, "binCount":I
    :goto_56
    iget-object v1, v13, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v2, v1

    .local v2, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v1, :cond_68

    .line 641
    invoke-virtual {p0, v7, v8, v9, v14}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v1

    iput-object v1, v13, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 642
    const/4 v1, 0x7

    if-lt v0, v1, :cond_80

    .line 643
    invoke-virtual {p0, v10, v7}, Ljava/util/HashMap;->treeifyBin([Ljava/util/HashMap$Node;I)V

    goto :goto_80

    .line 646
    :cond_68
    iget v1, v2, Ljava/util/HashMap$Node;->hash:I

    if-ne v1, v7, :cond_a8

    iget-object v1, v2, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v3, v1

    .local v3, "k":Ljava/lang/Object;, "TK;"
    if-eq v1, v8, :cond_80

    if-eqz v8, :cond_7d

    .line 647
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 648
    goto :goto_80

    .line 647
    :cond_7a
    move/from16 v1, p5

    goto :goto_aa

    .line 646
    :cond_7d
    move/from16 v1, p5

    goto :goto_aa

    .line 652
    .end local v0    # "binCount":I
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    :cond_80
    :goto_80
    move-object v0, v2

    .end local v2    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_81
    if-eqz v0, :cond_8f

    .line 653
    iget-object v1, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 654
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz p4, :cond_89

    if-nez v1, :cond_8b

    .line 655
    :cond_89
    iput-object v9, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 656
    :cond_8b
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 657
    return-object v1

    .line 660
    .end local v0    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_8f
    :goto_8f
    iget v0, v6, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Ljava/util/HashMap;->modCount:I

    .line 661
    iget v0, v6, Ljava/util/HashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Ljava/util/HashMap;->size:I

    iget v1, v6, Ljava/util/HashMap;->threshold:I

    if-le v0, v1, :cond_a2

    .line 662
    invoke-virtual {p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    .line 663
    :cond_a2
    move/from16 v1, p5

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->afterNodeInsertion(Z)V

    .line 664
    return-object v14

    .line 646
    .local v0, "binCount":I
    .restart local v2    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_a8
    move/from16 v1, p5

    .line 649
    :goto_aa
    move-object v13, v2

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_56
.end method

.method greylist-max-o reinitialize()V
    .registers 2

    .line 1768
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 1769
    iput-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    .line 1770
    iput-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 1771
    iput-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    .line 1772
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/HashMap;->modCount:I

    .line 1773
    iput v0, p0, Ljava/util/HashMap;->threshold:I

    .line 1774
    iput v0, p0, Ljava/util/HashMap;->size:I

    .line 1775
    return-void
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 798
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v0, :cond_12

    .line 799
    const/4 v0, 0x0

    goto :goto_14

    :cond_12
    iget-object v0, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 798
    :goto_14
    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1069
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method final greylist-max-o removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;
    .registers 14
    .param p1, "hash"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "matchValue"    # Z
    .param p5, "movable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "ZZ)",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 815
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_87

    array-length v0, v1

    move v2, v0

    .local v2, "n":I
    if-lez v0, :cond_87

    add-int/lit8 v0, v2, -0x1

    and-int/2addr v0, p1

    move v3, v0

    .local v3, "index":I
    aget-object v0, v1, v0

    move-object v4, v0

    .local v4, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_87

    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget v5, v4, Ljava/util/HashMap$Node;->hash:I

    if-ne v5, p1, :cond_26

    iget-object v5, v4, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v6, v5

    .local v6, "k":Ljava/lang/Object;, "TK;"
    if-eq v5, p2, :cond_24

    if-eqz p2, :cond_26

    .line 819
    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 820
    :cond_24
    move-object v0, v4

    goto :goto_50

    .line 821
    .end local v6    # "k":Ljava/lang/Object;, "TK;"
    :cond_26
    iget-object v5, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v6, v5

    .local v6, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v5, :cond_50

    .line 822
    instance-of v5, v4, Ljava/util/HashMap$TreeNode;

    if-eqz v5, :cond_37

    .line 823
    move-object v5, v4

    check-cast v5, Ljava/util/HashMap$TreeNode;

    invoke-virtual {v5, p1, p2}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v0

    goto :goto_50

    .line 826
    :cond_37
    iget v5, v6, Ljava/util/HashMap$Node;->hash:I

    if-ne v5, p1, :cond_4a

    iget-object v5, v6, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v7, v5

    .local v7, "k":Ljava/lang/Object;, "TK;"
    if-eq v5, p2, :cond_48

    if-eqz p2, :cond_4a

    .line 828
    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 829
    :cond_48
    move-object v0, v6

    .line 830
    goto :goto_50

    .line 832
    .end local v7    # "k":Ljava/lang/Object;, "TK;"
    :cond_4a
    move-object v4, v6

    .line 833
    iget-object v5, v6, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v6, v5

    if-nez v5, :cond_37

    .line 836
    .end local v6    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_50
    :goto_50
    if-eqz v0, :cond_87

    if-eqz p4, :cond_61

    iget-object v5, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object v6, v5

    .local v6, "v":Ljava/lang/Object;, "TV;"
    if-eq v5, p3, :cond_61

    if-eqz p3, :cond_87

    .line 837
    invoke-virtual {p3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 838
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_61
    instance-of v5, v0, Ljava/util/HashMap$TreeNode;

    if-eqz v5, :cond_6c

    .line 839
    move-object v5, v0

    check-cast v5, Ljava/util/HashMap$TreeNode;

    invoke-virtual {v5, p0, v1, p5}, Ljava/util/HashMap$TreeNode;->removeTreeNode(Ljava/util/HashMap;[Ljava/util/HashMap$Node;Z)V

    goto :goto_77

    .line 840
    :cond_6c
    if-ne v0, v4, :cond_73

    .line 841
    iget-object v5, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    aput-object v5, v1, v3

    goto :goto_77

    .line 843
    :cond_73
    iget-object v5, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    iput-object v5, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 844
    :goto_77
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/HashMap;->modCount:I

    .line 845
    iget v5, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/HashMap;->size:I

    .line 846
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->afterNodeRemoval(Ljava/util/HashMap$Node;)V

    .line 847
    return-object v0

    .line 850
    .end local v0    # "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v2    # "n":I
    .end local v3    # "index":I
    .end local v4    # "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_87
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1087
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_13

    .line 1088
    iget-object v0, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1089
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1090
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1091
    return-object v0

    .line 1093
    .end local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1075
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1f

    iget-object v0, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object v2, v0

    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eq v0, p2, :cond_18

    if-eqz v2, :cond_1f

    .line 1076
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1077
    :cond_18
    iput-object p3, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1078
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1079
    const/4 v0, 0x1

    return v0

    .line 1081
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1302
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_31

    .line 1304
    iget v0, p0, Ljava/util/HashMap;->size:I

    if-lez v0, :cond_30

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_30

    .line 1305
    iget v0, p0, Ljava/util/HashMap;->modCount:I

    .line 1306
    .local v0, "mc":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_25

    .line 1307
    aget-object v3, v1, v2

    .local v3, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_13
    if-eqz v3, :cond_22

    .line 1308
    iget-object v4, v3, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    iget-object v5, v3, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1307
    iget-object v3, v3, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_13

    .line 1306
    .end local v3    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1311
    .end local v2    # "i":I
    :cond_25
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    if-ne v2, v0, :cond_2a

    goto :goto_30

    .line 1312
    :cond_2a
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1314
    .end local v0    # "mc":I
    .end local v1    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_30
    :goto_30
    return-void

    .line 1303
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method greylist-max-o replacementNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1751
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local p2, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$Node;

    iget v1, p1, Ljava/util/HashMap$Node;->hash:I

    iget-object v2, p1, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, p1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p2}, Ljava/util/HashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    return-object v0
.end method

.method greylist-max-o replacementTreeNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1761
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local p2, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$TreeNode;

    iget v1, p1, Ljava/util/HashMap$Node;->hash:I

    iget-object v2, p1, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, p1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p2}, Ljava/util/HashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    return-object v0
.end method

.method final greylist-max-o resize()[Ljava/util/HashMap$Node;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 677
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 678
    .local v0, "oldTab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_7

    :cond_6
    array-length v1, v0

    .line 679
    .local v1, "oldCap":I
    :goto_7
    iget v2, p0, Ljava/util/HashMap;->threshold:I

    .line 680
    .local v2, "oldThr":I
    const/4 v3, 0x0

    .line 681
    .local v3, "newThr":I
    const v4, 0x7fffffff

    const/high16 v5, 0x40000000    # 2.0f

    if-lez v1, :cond_22

    .line 682
    if-lt v1, v5, :cond_16

    .line 683
    iput v4, p0, Ljava/util/HashMap;->threshold:I

    .line 684
    return-object v0

    .line 686
    :cond_16
    shl-int/lit8 v6, v1, 0x1

    move v7, v6

    .local v7, "newCap":I
    if-ge v6, v5, :cond_2a

    const/16 v6, 0x10

    if-lt v1, v6, :cond_2a

    .line 688
    shl-int/lit8 v3, v2, 0x1

    goto :goto_2a

    .line 690
    .end local v7    # "newCap":I
    :cond_22
    if-lez v2, :cond_26

    .line 691
    move v7, v2

    .restart local v7    # "newCap":I
    goto :goto_2a

    .line 693
    .end local v7    # "newCap":I
    :cond_26
    const/16 v7, 0x10

    .line 694
    .restart local v7    # "newCap":I
    const/16 v3, 0xc

    .line 696
    :cond_2a
    :goto_2a
    if-nez v3, :cond_3c

    .line 697
    int-to-float v6, v7

    iget v8, p0, Ljava/util/HashMap;->loadFactor:F

    mul-float/2addr v6, v8

    .line 698
    .local v6, "ft":F
    if-ge v7, v5, :cond_3a

    const/high16 v5, 0x4e800000

    cmpg-float v5, v6, v5

    if-gez v5, :cond_3a

    .line 699
    float-to-int v4, v6

    goto :goto_3b

    :cond_3a
    nop

    :goto_3b
    move v3, v4

    .line 701
    .end local v6    # "ft":F
    :cond_3c
    iput v3, p0, Ljava/util/HashMap;->threshold:I

    .line 703
    new-array v4, v7, [Ljava/util/HashMap$Node;

    .line 704
    .local v4, "newTab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    iput-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 705
    if-eqz v0, :cond_94

    .line 706
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_45
    if-ge v5, v1, :cond_94

    .line 708
    aget-object v6, v0, v5

    move-object v8, v6

    .local v8, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_91

    .line 709
    const/4 v6, 0x0

    aput-object v6, v0, v5

    .line 710
    iget-object v9, v8, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-nez v9, :cond_5b

    .line 711
    iget v6, v8, Ljava/util/HashMap$Node;->hash:I

    add-int/lit8 v9, v7, -0x1

    and-int/2addr v6, v9

    aput-object v8, v4, v6

    goto :goto_91

    .line 712
    :cond_5b
    instance-of v9, v8, Ljava/util/HashMap$TreeNode;

    if-eqz v9, :cond_66

    .line 713
    move-object v6, v8

    check-cast v6, Ljava/util/HashMap$TreeNode;

    invoke-virtual {v6, p0, v4, v5, v1}, Ljava/util/HashMap$TreeNode;->split(Ljava/util/HashMap;[Ljava/util/HashMap$Node;II)V

    goto :goto_91

    .line 715
    :cond_66
    const/4 v9, 0x0

    .local v9, "loHead":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v10, 0x0

    .line 716
    .local v10, "loTail":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v11, 0x0

    .local v11, "hiHead":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v12, 0x0

    .line 719
    .local v12, "hiTail":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_6a
    iget-object v13, v8, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 720
    .local v13, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget v14, v8, Ljava/util/HashMap$Node;->hash:I

    and-int/2addr v14, v1

    if-nez v14, :cond_79

    .line 721
    if-nez v10, :cond_75

    .line 722
    move-object v9, v8

    goto :goto_77

    .line 724
    :cond_75
    iput-object v8, v10, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 725
    :goto_77
    move-object v10, v8

    goto :goto_80

    .line 728
    :cond_79
    if-nez v12, :cond_7d

    .line 729
    move-object v11, v8

    goto :goto_7f

    .line 731
    :cond_7d
    iput-object v8, v12, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 732
    :goto_7f
    move-object v12, v8

    .line 734
    :goto_80
    move-object v8, v13

    if-nez v13, :cond_6a

    .line 735
    if-eqz v10, :cond_89

    .line 736
    iput-object v6, v10, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 737
    aput-object v9, v4, v5

    .line 739
    :cond_89
    if-eqz v12, :cond_91

    .line 740
    iput-object v6, v12, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 741
    add-int v6, v5, v1

    aput-object v11, v4, v6

    .line 706
    .end local v8    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v9    # "loHead":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v10    # "loTail":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v11    # "hiHead":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v12    # "hiTail":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v13    # "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_91
    :goto_91
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 747
    .end local v5    # "j":I
    :cond_94
    return-object v4
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 525
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    return v0
.end method

.method final greylist-max-o treeifyBin([Ljava/util/HashMap$Node;I)V
    .registers 9
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 756
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_2f

    array-length v0, p1

    move v1, v0

    .local v1, "n":I
    const/16 v2, 0x40

    if-ge v0, v2, :cond_9

    goto :goto_2f

    .line 758
    :cond_9
    add-int/lit8 v0, v1, -0x1

    and-int/2addr v0, p2

    move v2, v0

    .local v2, "index":I
    aget-object v0, p1, v0

    move-object v3, v0

    .local v3, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_32

    .line 759
    const/4 v0, 0x0

    .local v0, "hd":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v4, 0x0

    .line 761
    .local v4, "tl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_14
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Ljava/util/HashMap;->replacementTreeNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;

    move-result-object v5

    .line 762
    .local v5, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v4, :cond_1d

    .line 763
    move-object v0, v5

    goto :goto_21

    .line 765
    :cond_1d
    iput-object v4, v5, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 766
    iput-object v5, v4, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 768
    :goto_21
    move-object v4, v5

    .line 769
    .end local v5    # "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v5, v3, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v3, v5

    if-nez v5, :cond_14

    .line 770
    aput-object v0, p1, v2

    if-eqz v0, :cond_32

    .line 771
    invoke-virtual {v0, p1}, Ljava/util/HashMap$TreeNode;->treeify([Ljava/util/HashMap$Node;)V

    goto :goto_32

    .line 757
    .end local v0    # "hd":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v1    # "n":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v4    # "tl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    .line 773
    :cond_32
    :goto_32
    return-void
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 957
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    .line 958
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_c

    .line 959
    new-instance v1, Ljava/util/HashMap$Values;

    invoke-direct {v1, p0}, Ljava/util/HashMap$Values;-><init>(Ljava/util/HashMap;)V

    move-object v0, v1

    .line 960
    iput-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    .line 962
    :cond_c
    return-object v0
.end method
