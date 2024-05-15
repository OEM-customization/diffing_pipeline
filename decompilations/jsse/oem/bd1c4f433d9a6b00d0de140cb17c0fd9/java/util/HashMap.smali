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
        Ljava/util/HashMap$EntryIterator;,
        Ljava/util/HashMap$EntrySet;,
        Ljava/util/HashMap$EntrySpliterator;,
        Ljava/util/HashMap$HashIterator;,
        Ljava/util/HashMap$HashMapSpliterator;,
        Ljava/util/HashMap$KeyIterator;,
        Ljava/util/HashMap$KeySet;,
        Ljava/util/HashMap$KeySpliterator;,
        Ljava/util/HashMap$Node;,
        Ljava/util/HashMap$TreeNode;,
        Ljava/util/HashMap$ValueIterator;,
        Ljava/util/HashMap$ValueSpliterator;,
        Ljava/util/HashMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MIN_TREEIFY_CAPACITY:I = 0x40

.field static final TREEIFY_THRESHOLD:I = 0x8

.field static final UNTREEIFY_THRESHOLD:I = 0x6

.field private static final serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final loadFactor:F

.field transient modCount:I

.field transient size:I

.field transient table:[Ljava/util/HashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 474
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 475
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Ljava/util/HashMap;->loadFactor:F

    .line 476
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .prologue
    .line 467
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Ljava/util/HashMap;-><init>(IF)V

    .line 468
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 6
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 446
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 447
    if-gez p1, :cond_1f

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal initial capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_1f
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_25

    .line 451
    const/high16 p1, 0x40000000    # 2.0f

    .line 452
    :cond_25
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_30

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 453
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_4a
    iput p2, p0, Ljava/util/HashMap;->loadFactor:F

    .line 456
    invoke-static {p1}, Ljava/util/HashMap;->tableSizeFor(I)I

    move-result v0

    iput v0, p0, Ljava/util/HashMap;->threshold:I

    .line 457
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
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

.method static comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 10
    .param p0, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 346
    instance-of v6, p0, Ljava/lang/Comparable;

    if-eqz v6, :cond_3c

    .line 348
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/String;

    if-ne v1, v6, :cond_e

    .line 349
    return-object v1

    .line 350
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v5

    .local v5, "ts":[Ljava/lang/reflect/Type;
    if-eqz v5, :cond_3c

    .line 351
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v6, v5

    if-ge v2, v6, :cond_3c

    .line 352
    aget-object v4, v5, v2

    .local v4, "t":Ljava/lang/reflect/Type;
    instance-of v6, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_39

    move-object v3, v4

    .line 353
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .local v3, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 354
    const-class v7, Ljava/lang/Comparable;

    .line 353
    if-ne v6, v7, :cond_39

    .line 355
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "as":[Ljava/lang/reflect/Type;
    if-eqz v0, :cond_39

    .line 356
    array-length v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_39

    const/4 v6, 0x0

    aget-object v6, v0, v6

    if-ne v6, v1, :cond_39

    .line 357
    return-object v1

    .line 351
    .end local v0    # "as":[Ljava/lang/reflect/Type;
    .end local v3    # "p":Ljava/lang/reflect/ParameterizedType;
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 361
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "i":I
    .end local v4    # "t":Ljava/lang/reflect/Type;
    .end local v5    # "ts":[Ljava/lang/reflect/Type;
    :cond_3c
    return-object v8
.end method

.method static compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p0, :cond_a

    :cond_8
    const/4 v0, 0x0

    .end local p1    # "k":Ljava/lang/Object;
    :goto_9
    return v0

    .line 371
    .restart local p1    # "k":Ljava/lang/Object;
    :cond_a
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "k":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_9
.end method

.method static final hash(Ljava/lang/Object;)I
    .registers 3
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 338
    if-nez p0, :cond_4

    const/4 v1, 0x0

    :goto_3
    return v1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v1, v0

    goto :goto_3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 15
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/high16 v5, 0x4e800000

    const/4 v4, 0x0

    .line 1376
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1377
    invoke-virtual {p0}, Ljava/util/HashMap;->reinitialize()V

    .line 1378
    iget v0, p0, Ljava/util/HashMap;->loadFactor:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_18

    iget v0, p0, Ljava/util/HashMap;->loadFactor:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1379
    :cond_18
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal load factor: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1380
    iget v4, p0, Ljava/util/HashMap;->loadFactor:F

    .line 1379
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1381
    :cond_34
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 1382
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v11

    .line 1383
    .local v11, "mappings":I
    if-gez v11, :cond_57

    .line 1384
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal mappings count: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1386
    :cond_57
    if-lez v11, :cond_af

    .line 1389
    iget v0, p0, Ljava/util/HashMap;->loadFactor:F

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1390
    .local v10, "lf":F
    int-to-float v0, v11

    div-float/2addr v0, v10

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v7, v0, v1

    .line 1391
    .local v7, "fc":F
    const/high16 v0, 0x41800000    # 16.0f

    cmpg-float v0, v7, v0

    if-gez v0, :cond_9e

    .line 1392
    const/16 v6, 0x10

    .line 1396
    .local v6, "cap":I
    :goto_75
    int-to-float v0, v6

    mul-float v8, v0, v10

    .line 1397
    .local v8, "ft":F
    const/high16 v0, 0x40000000    # 2.0f

    if-ge v6, v0, :cond_ab

    cmpg-float v0, v8, v5

    if-gez v0, :cond_ab

    .line 1398
    float-to-int v0, v8

    .line 1397
    :goto_81
    iput v0, p0, Ljava/util/HashMap;->threshold:I

    .line 1400
    new-array v12, v6, [Ljava/util/HashMap$Node;

    .line 1401
    .local v12, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    iput-object v12, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 1404
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_88
    if-ge v9, v11, :cond_af

    .line 1406
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1408
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1409
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v2}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    .line 1404
    add-int/lit8 v9, v9, 0x1

    goto :goto_88

    .line 1393
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    .end local v6    # "cap":I
    .end local v8    # "ft":F
    .end local v9    # "i":I
    .end local v12    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_9e
    cmpl-float v0, v7, v5

    if-ltz v0, :cond_a5

    .line 1394
    const/high16 v6, 0x40000000    # 2.0f

    .restart local v6    # "cap":I
    goto :goto_75

    .line 1395
    .end local v6    # "cap":I
    :cond_a5
    float-to-int v0, v7

    invoke-static {v0}, Ljava/util/HashMap;->tableSizeFor(I)I

    move-result v6

    .restart local v6    # "cap":I
    goto :goto_75

    .line 1398
    .restart local v8    # "ft":F
    :cond_ab
    const v0, 0x7fffffff

    goto :goto_81

    .line 1412
    .end local v6    # "cap":I
    .end local v7    # "fc":F
    .end local v8    # "ft":F
    .end local v10    # "lf":F
    :cond_af
    return-void
.end method

.method static final tableSizeFor(I)I
    .registers 4
    .param p0, "cap"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 378
    add-int/lit8 v0, p0, -0x1

    .line 379
    .local v0, "n":I
    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v0, v2

    .line 380
    ushr-int/lit8 v2, v0, 0x2

    or-int/2addr v0, v2

    .line 381
    ushr-int/lit8 v2, v0, 0x4

    or-int/2addr v0, v2

    .line 382
    ushr-int/lit8 v2, v0, 0x8

    or-int/2addr v0, v2

    .line 383
    ushr-int/lit8 v2, v0, 0x10

    or-int/2addr v0, v2

    .line 384
    if-gez v0, :cond_17

    const/4 v1, 0x1

    :cond_16
    :goto_16
    return v1

    :cond_17
    if-ge v0, v1, :cond_16

    add-int/lit8 v1, v0, 0x1

    goto :goto_16
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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
.method afterNodeAccess(Ljava/util/HashMap$Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1778
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    return-void
.end method

.method afterNodeInsertion(Z)V
    .registers 2
    .param p1, "evict"    # Z

    .prologue
    .line 1779
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    return-void
.end method

.method afterNodeRemoval(Ljava/util/HashMap$Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1780
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    return-void
.end method

.method final capacity()I
    .registers 2

    .prologue
    .line 1343
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    array-length v0, v0

    :goto_7
    return v0

    .line 1344
    :cond_8
    iget v0, p0, Ljava/util/HashMap;->threshold:I

    if-lez v0, :cond_f

    iget v0, p0, Ljava/util/HashMap;->threshold:I

    goto :goto_7

    .line 1345
    :cond_f
    const/16 v0, 0x10

    goto :goto_7
.end method

.method public clear()V
    .registers 6

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 859
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/HashMap;->modCount:I

    .line 860
    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_1b

    iget v2, p0, Ljava/util/HashMap;->size:I

    if-lez v2, :cond_1b

    .line 861
    iput v3, p0, Ljava/util/HashMap;->size:I

    .line 862
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    array-length v2, v1

    if-ge v0, v2, :cond_1b

    .line 863
    aput-object v4, v1, v0

    .line 862
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 865
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1330
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_e

    .line 1335
    .local v1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->reinitialize()V

    .line 1336
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->putMapEntries(Ljava/util/Map;Z)V

    .line 1337
    return-object v1

    .line 1331
    .end local v1    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :catch_e
    move-exception v0

    .line 1333
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 1173
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-nez p2, :cond_8

    .line 1174
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1175
    :cond_8
    invoke-static/range {p1 .. p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v4

    .line 1177
    .local v4, "hash":I
    const/4 v11, 0x0

    .line 1178
    .local v11, "binCount":I
    const/4 v5, 0x0

    .line 1179
    .local v5, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/16 v17, 0x0

    .line 1180
    .local v17, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->size:I

    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/HashMap;->threshold:I

    if-gt v3, v6, :cond_20

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .local v7, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v7, :cond_5a

    .line 1182
    .end local v7    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_20
    :goto_20
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    move-result-object v7

    .restart local v7    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    array-length v0, v7

    move/from16 v16, v0

    .line 1183
    .local v16, "n":I
    :cond_27
    add-int/lit8 v3, v16, -0x1

    and-int v14, v3, v4

    .local v14, "i":I
    aget-object v13, v7, v14

    .local v13, "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v13, :cond_3c

    .line 1184
    instance-of v3, v13, Ljava/util/HashMap$TreeNode;

    if-eqz v3, :cond_60

    move-object v5, v13

    .line 1185
    check-cast v5, Ljava/util/HashMap$TreeNode;

    .local v5, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, p1

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v17

    .line 1198
    .end local v5    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v17    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_3c
    :goto_3c
    if-nez v17, :cond_7f

    const/16 v18, 0x0

    .line 1199
    :goto_40
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1200
    .local v10, "v":Ljava/lang/Object;, "TV;"
    if-eqz v17, :cond_91

    .line 1201
    if-eqz v10, :cond_86

    .line 1202
    move-object/from16 v0, v17

    iput-object v10, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1203
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1220
    .end local v7    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_59
    :goto_59
    return-object v10

    .line 1181
    .end local v10    # "v":Ljava/lang/Object;, "TV;"
    .end local v13    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v14    # "i":I
    .end local v16    # "n":I
    .local v5, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v7    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .restart local v17    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_5a
    array-length v0, v7

    move/from16 v16, v0

    .restart local v16    # "n":I
    if-nez v16, :cond_27

    goto :goto_20

    .line 1187
    .restart local v13    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .restart local v14    # "i":I
    :cond_60
    move-object v12, v13

    .line 1189
    .local v12, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_61
    iget v3, v12, Ljava/util/HashMap$Node;->hash:I

    if-ne v3, v4, :cond_78

    .line 1190
    iget-object v15, v12, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    .local v15, "k":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v15, v0, :cond_75

    if-eqz p1, :cond_78

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1189
    if-eqz v3, :cond_78

    .line 1191
    :cond_75
    move-object/from16 v17, v12

    .line 1192
    .local v17, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    goto :goto_3c

    .line 1194
    .end local v15    # "k":Ljava/lang/Object;, "TK;"
    .local v17, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_78
    add-int/lit8 v11, v11, 0x1

    .line 1195
    iget-object v12, v12, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-eqz v12, :cond_3c

    goto :goto_61

    .line 1198
    .end local v5    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v12    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v17    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_7f
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object/from16 v18, v0

    .local v18, "oldValue":Ljava/lang/Object;, "TV;"
    goto :goto_40

    .line 1206
    .end local v18    # "oldValue":Ljava/lang/Object;, "TV;"
    .restart local v10    # "v":Ljava/lang/Object;, "TV;"
    :cond_86
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v8}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    goto :goto_59

    .line 1208
    :cond_91
    if-eqz v10, :cond_59

    .line 1209
    if-eqz v5, :cond_b8

    move-object/from16 v6, p0

    move v8, v4

    move-object/from16 v9, p1

    .line 1210
    invoke-virtual/range {v5 .. v10}, Ljava/util/HashMap$TreeNode;->putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;

    .line 1216
    :cond_9d
    :goto_9d
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/HashMap;->modCount:I

    .line 1217
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->size:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/HashMap;->size:I

    .line 1218
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->afterNodeInsertion(Z)V

    goto :goto_59

    .line 1212
    :cond_b8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1, v10, v13}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v3

    aput-object v3, v7, v14

    .line 1213
    const/4 v3, 0x7

    if-lt v11, v3, :cond_9d

    .line 1214
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->treeifyBin([Ljava/util/HashMap$Node;I)V

    goto :goto_9d
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 1099
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    if-nez p2, :cond_8

    .line 1100
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1101
    :cond_8
    invoke-static/range {p1 .. p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v5

    .line 1103
    .local v5, "hash":I
    const/4 v8, 0x0

    .line 1104
    .local v8, "binCount":I
    const/4 v2, 0x0

    .line 1105
    .local v2, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v14, 0x0

    .line 1106
    .local v14, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->size:I

    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/HashMap;->threshold:I

    if-gt v3, v6, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .local v4, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v4, :cond_45

    .line 1108
    .end local v4    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_1f
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    move-result-object v4

    .restart local v4    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    array-length v13, v4

    .line 1109
    .local v13, "n":I
    :cond_24
    add-int/lit8 v3, v13, -0x1

    and-int v11, v3, v5

    .local v11, "i":I
    aget-object v10, v4, v11

    .local v10, "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v10, :cond_67

    .line 1110
    instance-of v3, v10, Ljava/util/HashMap$TreeNode;

    if-eqz v3, :cond_49

    move-object v2, v10

    .line 1111
    check-cast v2, Ljava/util/HashMap$TreeNode;

    .local v2, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v14

    .line 1124
    .end local v2    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v14    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_39
    :goto_39
    if-eqz v14, :cond_67

    iget-object v15, v14, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .local v15, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v15, :cond_67

    .line 1125
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1126
    return-object v15

    .line 1107
    .end local v10    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v11    # "i":I
    .end local v13    # "n":I
    .end local v15    # "oldValue":Ljava/lang/Object;, "TV;"
    .local v2, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v14    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_45
    array-length v13, v4

    .restart local v13    # "n":I
    if-nez v13, :cond_24

    goto :goto_1f

    .line 1113
    .restart local v10    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .restart local v11    # "i":I
    :cond_49
    move-object v9, v10

    .line 1115
    .local v9, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_4a
    iget v3, v9, Ljava/util/HashMap$Node;->hash:I

    if-ne v3, v5, :cond_60

    .line 1116
    iget-object v12, v9, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    .local v12, "k":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v12, v0, :cond_5e

    if-eqz p1, :cond_60

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1115
    if-eqz v3, :cond_60

    .line 1117
    :cond_5e
    move-object v14, v9

    .line 1118
    .local v14, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    goto :goto_39

    .line 1120
    .end local v12    # "k":Ljava/lang/Object;, "TK;"
    .local v14, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_60
    add-int/lit8 v8, v8, 0x1

    .line 1121
    iget-object v9, v9, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-eqz v9, :cond_39

    goto :goto_4a

    .line 1129
    .end local v2    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v9    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v14    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_67
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1130
    .local v7, "v":Ljava/lang/Object;, "TV;"
    if-nez v7, :cond_73

    .line 1131
    const/4 v3, 0x0

    return-object v3

    .line 1132
    :cond_73
    if-eqz v14, :cond_7d

    .line 1133
    iput-object v7, v14, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1134
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1135
    return-object v7

    .line 1137
    :cond_7d
    if-eqz v2, :cond_a1

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    .line 1138
    invoke-virtual/range {v2 .. v7}, Ljava/util/HashMap$TreeNode;->putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;

    .line 1144
    :cond_86
    :goto_86
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/HashMap;->modCount:I

    .line 1145
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->size:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/HashMap;->size:I

    .line 1146
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->afterNodeInsertion(Z)V

    .line 1147
    return-object v7

    .line 1140
    :cond_a1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1, v7, v10}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v3

    aput-object v3, v4, v11

    .line 1141
    const/4 v3, 0x7

    if-lt v8, v3, :cond_86

    .line 1142
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->treeifyBin([Ljava/util/HashMap$Node;I)V

    goto :goto_86
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    const/4 v3, 0x0

    .line 1152
    if-nez p2, :cond_9

    .line 1153
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1155
    :cond_9
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 1156
    .local v1, "hash":I
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v6

    .local v6, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_2a

    .line 1157
    iget-object v7, v6, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .local v7, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v7, :cond_2a

    .line 1158
    invoke-interface {p2, p1, v7}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1159
    .local v8, "v":Ljava/lang/Object;, "TV;"
    if-eqz v8, :cond_23

    .line 1160
    iput-object v8, v6, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1161
    invoke-virtual {p0, v6}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1162
    return-object v8

    .line 1165
    :cond_23
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    .line 1167
    .end local v7    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v8    # "v":Ljava/lang/Object;, "TV;"
    :cond_2a
    return-object v3
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 595
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 877
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .local v2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_25

    iget v4, p0, Ljava/util/HashMap;->size:I

    if-lez v4, :cond_25

    .line 878
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v4, v2

    if-ge v1, v4, :cond_25

    .line 879
    aget-object v0, v2, v1

    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_f
    if-eqz v0, :cond_22

    .line 880
    iget-object v3, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eq v3, p1, :cond_1d

    .line 881
    if-eqz p1, :cond_1f

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 880
    if-eqz v4, :cond_1f

    .line 882
    :cond_1d
    const/4 v4, 0x1

    return v4

    .line 879
    :cond_1f
    iget-object v0, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_f

    .line 878
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 886
    .end local v0    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v1    # "i":I
    :cond_25
    return v5
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1008
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0}, Ljava/util/HashMap$EntrySet;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1285
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-nez p1, :cond_8

    .line 1286
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1287
    :cond_8
    iget v4, p0, Ljava/util/HashMap;->size:I

    if-lez v4, :cond_35

    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .local v3, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_35

    .line 1288
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    .line 1290
    .local v2, "mc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v4, v3

    if-ge v1, v4, :cond_2b

    iget v4, p0, Ljava/util/HashMap;->modCount:I

    if-ne v2, v4, :cond_2b

    .line 1291
    aget-object v0, v3, v1

    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_1c
    if-eqz v0, :cond_28

    .line 1292
    iget-object v4, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    iget-object v5, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1291
    iget-object v0, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_1c

    .line 1290
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1294
    .end local v0    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_2b
    iget v4, p0, Ljava/util/HashMap;->modCount:I

    if-eq v4, v2, :cond_35

    .line 1295
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1297
    .end local v1    # "i":I
    .end local v2    # "mc":I
    .end local v3    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_35
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 556
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v0, :cond_c

    :goto_b
    return-object v1

    :cond_c
    iget-object v1, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    goto :goto_b
.end method

.method final getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;
    .registers 10
    .param p1, "hash"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v6, 0x0

    .line 568
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .local v4, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v4, :cond_44

    array-length v3, v4

    .local v3, "n":I
    if-lez v3, :cond_44

    .line 569
    add-int/lit8 v5, v3, -0x1

    and-int/2addr v5, p1

    aget-object v1, v4, v5

    .local v1, "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_44

    .line 570
    iget v5, v1, Ljava/util/HashMap$Node;->hash:I

    if-ne v5, p1, :cond_20

    .line 571
    iget-object v2, v1, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    .local v2, "k":Ljava/lang/Object;, "TK;"
    if-eq v2, p2, :cond_1f

    if-eqz p2, :cond_20

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 570
    if-eqz v5, :cond_20

    .line 572
    :cond_1f
    return-object v1

    .line 573
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    :cond_20
    iget-object v0, v1, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_44

    .line 574
    instance-of v5, v1, Ljava/util/HashMap$TreeNode;

    if-eqz v5, :cond_33

    .line 575
    check-cast v1, Ljava/util/HashMap$TreeNode;

    .end local v1    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v5

    return-object v5

    .line 580
    .restart local v1    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_2f
    iget-object v0, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-eqz v0, :cond_44

    .line 577
    :cond_33
    iget v5, v0, Ljava/util/HashMap$Node;->hash:I

    if-ne v5, p1, :cond_2f

    .line 578
    iget-object v2, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    .restart local v2    # "k":Ljava/lang/Object;, "TK;"
    if-eq v2, p2, :cond_43

    if-eqz p2, :cond_2f

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 577
    if-eqz v5, :cond_2f

    .line 579
    :cond_43
    return-object v0

    .line 583
    .end local v0    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v1    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "n":I
    :cond_44
    return-object v6
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1059
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v0, :cond_b

    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :goto_a
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_b
    iget-object p2, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    goto :goto_a
.end method

.method internalWriteEntries(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1785
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v3, p0, Ljava/util/HashMap;->size:I

    if-lez v3, :cond_20

    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .local v2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_20

    .line 1786
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v3, v2

    if-ge v1, v3, :cond_20

    .line 1787
    aget-object v0, v2, v1

    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_e
    if-eqz v0, :cond_1d

    .line 1788
    iget-object v3, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1789
    iget-object v3, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1787
    iget-object v0, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_e

    .line 1786
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1793
    .end local v0    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_20
    return-void
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 534
    iget v1, p0, Ljava/util/HashMap;->size:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 905
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 906
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_b

    .line 907
    new-instance v0, Ljava/util/HashMap$KeySet;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0}, Ljava/util/HashMap$KeySet;-><init>(Ljava/util/HashMap;)V

    .line 908
    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iput-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 910
    :cond_b
    return-object v0
.end method

.method final loadFactor()F
    .registers 2

    .prologue
    .line 1341
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->loadFactor:F

    return v0
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 1226
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    if-nez p2, :cond_8

    .line 1227
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1228
    :cond_8
    if-nez p3, :cond_10

    .line 1229
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1230
    :cond_10
    invoke-static/range {p1 .. p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v4

    .line 1232
    .local v4, "hash":I
    const/4 v11, 0x0

    .line 1233
    .local v11, "binCount":I
    const/4 v5, 0x0

    .line 1234
    .local v5, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/16 v17, 0x0

    .line 1235
    .local v17, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->size:I

    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/HashMap;->threshold:I

    if-gt v3, v6, :cond_28

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .local v7, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v7, :cond_68

    .line 1237
    .end local v7    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_28
    :goto_28
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    move-result-object v7

    .restart local v7    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    array-length v0, v7

    move/from16 v16, v0

    .line 1238
    .local v16, "n":I
    :cond_2f
    add-int/lit8 v3, v16, -0x1

    and-int v14, v3, v4

    .local v14, "i":I
    aget-object v13, v7, v14

    .local v13, "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v13, :cond_44

    .line 1239
    instance-of v3, v13, Ljava/util/HashMap$TreeNode;

    if-eqz v3, :cond_6e

    move-object v5, v13

    .line 1240
    check-cast v5, Ljava/util/HashMap$TreeNode;

    .local v5, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, p1

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v17

    .line 1253
    .end local v5    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v17    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_44
    :goto_44
    if-eqz v17, :cond_9b

    .line 1255
    move-object/from16 v0, v17

    iget-object v3, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    if-eqz v3, :cond_8d

    .line 1256
    move-object/from16 v0, v17

    iget-object v3, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v3, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 1259
    .local v18, "v":Ljava/lang/Object;, "TV;"
    :goto_58
    if-eqz v18, :cond_90

    .line 1260
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1261
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1265
    .end local v7    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_67
    return-object v18

    .line 1236
    .end local v13    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v14    # "i":I
    .end local v16    # "n":I
    .end local v18    # "v":Ljava/lang/Object;, "TV;"
    .local v5, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v7    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .restart local v17    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_68
    array-length v0, v7

    move/from16 v16, v0

    .restart local v16    # "n":I
    if-nez v16, :cond_2f

    goto :goto_28

    .line 1242
    .restart local v13    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .restart local v14    # "i":I
    :cond_6e
    move-object v12, v13

    .line 1244
    .local v12, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_6f
    iget v3, v12, Ljava/util/HashMap$Node;->hash:I

    if-ne v3, v4, :cond_86

    .line 1245
    iget-object v15, v12, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    .local v15, "k":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v15, v0, :cond_83

    if-eqz p1, :cond_86

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1244
    if-eqz v3, :cond_86

    .line 1246
    :cond_83
    move-object/from16 v17, v12

    .line 1247
    .local v17, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    goto :goto_44

    .line 1249
    .end local v15    # "k":Ljava/lang/Object;, "TK;"
    .local v17, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_86
    add-int/lit8 v11, v11, 0x1

    .line 1250
    iget-object v12, v12, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-eqz v12, :cond_44

    goto :goto_6f

    .line 1258
    .end local v5    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v12    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v17    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_8d
    move-object/from16 v18, p2

    .restart local v18    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_58

    .line 1264
    :cond_90
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v8}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    goto :goto_67

    .line 1267
    .end local v18    # "v":Ljava/lang/Object;, "TV;"
    :cond_9b
    if-eqz p2, :cond_c3

    .line 1268
    if-eqz v5, :cond_c4

    move-object/from16 v6, p0

    move v8, v4

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 1269
    invoke-virtual/range {v5 .. v10}, Ljava/util/HashMap$TreeNode;->putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;

    .line 1275
    :cond_a9
    :goto_a9
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/HashMap;->modCount:I

    .line 1276
    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/HashMap;->size:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/HashMap;->size:I

    .line 1277
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->afterNodeInsertion(Z)V

    .line 1279
    :cond_c3
    return-object p2

    .line 1271
    :cond_c4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v4, v1, v2, v13}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v3

    aput-object v3, v7, v14

    .line 1272
    const/4 v3, 0x7

    if-lt v11, v3, :cond_a9

    .line 1273
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->treeifyBin([Ljava/util/HashMap$Node;I)V

    goto :goto_a9
.end method

.method newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;
    .registers 6
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1746
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$Node;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/HashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    return-object v0
.end method

.method newTreeNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;
    .registers 6
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1756
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$TreeNode;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/HashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
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

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 784
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->putMapEntries(Ljava/util/Map;Z)V

    .line 785
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x1

    .line 1064
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final putMapEntries(Ljava/util/Map;Z)V
    .registers 14
    .param p2, "evict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/4 v4, 0x0

    .line 500
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v9

    .line 501
    .local v9, "s":I
    if-lez v9, :cond_55

    .line 502
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-nez v0, :cond_4d

    .line 503
    int-to-float v0, v9

    iget v1, p0, Ljava/util/HashMap;->loadFactor:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v8, v0, v1

    .line 504
    .local v8, "ft":F
    const/high16 v0, 0x4e800000

    cmpg-float v0, v8, v0

    if-gez v0, :cond_4a

    .line 505
    float-to-int v10, v8

    .line 506
    .local v10, "t":I
    :goto_1a
    iget v0, p0, Ljava/util/HashMap;->threshold:I

    if-le v10, v0, :cond_24

    .line 507
    invoke-static {v10}, Ljava/util/HashMap;->tableSizeFor(I)I

    move-result v0

    iput v0, p0, Ljava/util/HashMap;->threshold:I

    .line 511
    .end local v8    # "ft":F
    .end local v10    # "t":I
    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "e$iterator":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 512
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 513
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 514
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v2}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    goto :goto_2c

    .line 505
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v7    # "e$iterator":Ljava/util/Iterator;
    .restart local v8    # "ft":F
    :cond_4a
    const/high16 v10, 0x40000000    # 2.0f

    .restart local v10    # "t":I
    goto :goto_1a

    .line 509
    .end local v8    # "ft":F
    .end local v10    # "t":I
    :cond_4d
    iget v0, p0, Ljava/util/HashMap;->threshold:I

    if-le v9, v0, :cond_24

    .line 510
    invoke-virtual {p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    goto :goto_24

    .line 517
    :cond_55
    return-void
.end method

.method final putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;
    .registers 23
    .param p1, "hash"    # I
    .param p4, "onlyIfAbsent"    # Z
    .param p5, "evict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;ZZ)TV;"
        }
    .end annotation

    .prologue
    .line 627
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .local v6, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_9

    array-length v14, v6

    .local v14, "n":I
    if-nez v14, :cond_e

    .line 628
    .end local v14    # "n":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    move-result-object v6

    array-length v14, v6

    .line 629
    .restart local v14    # "n":I
    :cond_e
    add-int/lit8 v4, v14, -0x1

    and-int v12, v4, p1

    .local v12, "i":I
    aget-object v16, v6, v12

    .local v16, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v16, :cond_4b

    .line 630
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v4

    aput-object v4, v6, v12

    .line 660
    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/HashMap;->modCount:I

    .line 661
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/HashMap;->size:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/HashMap;->size:I

    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/HashMap;->threshold:I

    if-le v4, v5, :cond_42

    .line 662
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    .line 663
    :cond_42
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->afterNodeInsertion(Z)V

    .line 664
    const/4 v4, 0x0

    return-object v4

    .line 633
    :cond_4b
    move-object/from16 v0, v16

    iget v4, v0, Ljava/util/HashMap$Node;->hash:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_79

    .line 634
    move-object/from16 v0, v16

    iget-object v13, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    .local v13, "k":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p2

    if-eq v13, v0, :cond_65

    if-eqz p2, :cond_79

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 633
    if-eqz v4, :cond_79

    .line 635
    :cond_65
    move-object/from16 v11, v16

    .line 652
    .end local v13    # "k":Ljava/lang/Object;, "TK;"
    .local v11, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_67
    :goto_67
    if-eqz v11, :cond_25

    .line 653
    iget-object v15, v11, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 654
    .local v15, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz p4, :cond_6f

    if-nez v15, :cond_73

    .line 655
    :cond_6f
    move-object/from16 v0, p3

    iput-object v0, v11, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 656
    :cond_73
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 657
    return-object v15

    .line 636
    .end local v11    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v15    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_79
    move-object/from16 v0, v16

    instance-of v4, v0, Ljava/util/HashMap$TreeNode;

    if-eqz v4, :cond_90

    move-object/from16 v4, v16

    .line 637
    check-cast v4, Ljava/util/HashMap$TreeNode;

    move-object/from16 v5, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Ljava/util/HashMap$TreeNode;->putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v11

    .restart local v11    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    goto :goto_67

    .line 639
    .end local v11    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_90
    const/4 v10, 0x0

    .line 640
    .local v10, "binCount":I
    :goto_91
    move-object/from16 v0, v16

    iget-object v11, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .restart local v11    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v11, :cond_b3

    .line 641
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v4

    move-object/from16 v0, v16

    iput-object v4, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 642
    const/4 v4, 0x7

    if-lt v10, v4, :cond_67

    .line 643
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->treeifyBin([Ljava/util/HashMap$Node;I)V

    goto :goto_67

    .line 646
    :cond_b3
    iget v4, v11, Ljava/util/HashMap$Node;->hash:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_c9

    .line 647
    iget-object v13, v11, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    .restart local v13    # "k":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p2

    if-eq v13, v0, :cond_67

    if-eqz p2, :cond_c9

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 646
    if-nez v4, :cond_67

    .line 649
    .end local v13    # "k":Ljava/lang/Object;, "TK;"
    :cond_c9
    move-object/from16 v16, v11

    .line 639
    add-int/lit8 v10, v10, 0x1

    goto :goto_91
.end method

.method reinitialize()V
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1768
    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 1769
    iput-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    .line 1770
    iput-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 1771
    iput-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    .line 1772
    iput v1, p0, Ljava/util/HashMap;->modCount:I

    .line 1773
    iput v1, p0, Ljava/util/HashMap;->threshold:I

    .line 1774
    iput v1, p0, Ljava/util/HashMap;->size:I

    .line 1775
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 798
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object v6

    .local v6, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v6, :cond_10

    :goto_f
    return-object v3

    .line 799
    :cond_10
    iget-object v3, v6, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    goto :goto_f
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v4, 0x1

    .line 1069
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_10

    :goto_f
    return v4

    :cond_10
    const/4 v4, 0x0

    goto :goto_f
.end method

.method final removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;
    .registers 16
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
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v9, 0x0

    .line 815
    iget-object v6, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .local v6, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_73

    array-length v3, v6

    .local v3, "n":I
    if-lez v3, :cond_73

    .line 816
    add-int/lit8 v8, v3, -0x1

    and-int v1, v8, p1

    .local v1, "index":I
    aget-object v5, v6, v1

    .local v5, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v5, :cond_73

    .line 817
    const/4 v4, 0x0

    .line 818
    .local v4, "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget v8, v5, Ljava/util/HashMap$Node;->hash:I

    if-ne v8, p1, :cond_44

    .line 819
    iget-object v2, v5, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    .local v2, "k":Ljava/lang/Object;, "TK;"
    if-eq v2, p2, :cond_21

    if-eqz p2, :cond_44

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 818
    if-eqz v8, :cond_44

    .line 820
    :cond_21
    move-object v4, v5

    .line 836
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v4    # "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_22
    :goto_22
    if-eqz v4, :cond_73

    if-eqz p4, :cond_2a

    iget-object v7, v4, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .local v7, "v":Ljava/lang/Object;, "TV;"
    if-ne v7, p3, :cond_6b

    .line 838
    .end local v7    # "v":Ljava/lang/Object;, "TV;"
    :cond_2a
    instance-of v8, v4, Ljava/util/HashMap$TreeNode;

    if-eqz v8, :cond_74

    move-object v8, v4

    .line 839
    check-cast v8, Ljava/util/HashMap$TreeNode;

    invoke-virtual {v8, p0, v6, p5}, Ljava/util/HashMap$TreeNode;->removeTreeNode(Ljava/util/HashMap;[Ljava/util/HashMap$Node;Z)V

    .line 844
    :goto_34
    iget v8, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/util/HashMap;->modCount:I

    .line 845
    iget v8, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Ljava/util/HashMap;->size:I

    .line 846
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->afterNodeRemoval(Ljava/util/HashMap$Node;)V

    .line 847
    return-object v4

    .line 821
    .restart local v4    # "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_44
    iget-object v0, v5, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_22

    .line 822
    instance-of v8, v5, Ljava/util/HashMap$TreeNode;

    if-eqz v8, :cond_59

    move-object v8, v5

    .line 823
    check-cast v8, Ljava/util/HashMap$TreeNode;

    invoke-virtual {v8, p1, p2}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v4

    .local v4, "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    goto :goto_22

    .line 832
    .local v4, "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_54
    move-object v5, v0

    .line 833
    iget-object v0, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-eqz v0, :cond_22

    .line 826
    :cond_59
    iget v8, v0, Ljava/util/HashMap$Node;->hash:I

    if-ne v8, p1, :cond_54

    .line 827
    iget-object v2, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    .restart local v2    # "k":Ljava/lang/Object;, "TK;"
    if-eq v2, p2, :cond_69

    .line 828
    if-eqz p2, :cond_54

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 826
    if-eqz v8, :cond_54

    .line 829
    :cond_69
    move-object v4, v0

    .line 830
    .local v4, "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    goto :goto_22

    .line 837
    .end local v0    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v4    # "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .restart local v7    # "v":Ljava/lang/Object;, "TV;"
    :cond_6b
    if-eqz p3, :cond_73

    invoke-virtual {p3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 836
    if-nez v8, :cond_2a

    .line 850
    .end local v1    # "index":I
    .end local v3    # "n":I
    .end local v5    # "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v7    # "v":Ljava/lang/Object;, "TV;"
    :cond_73
    return-object v9

    .line 840
    .restart local v1    # "index":I
    .restart local v3    # "n":I
    .restart local v5    # "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_74
    if-ne v4, v5, :cond_7b

    .line 841
    iget-object v8, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    aput-object v8, v6, v1

    goto :goto_34

    .line 843
    :cond_7b
    iget-object v8, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    iput-object v8, v5, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_34
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x0

    .line 1087
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_13

    .line 1088
    iget-object v1, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1089
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1090
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1091
    return-object v1

    .line 1093
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_13
    return-object v3
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1075
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1d

    .line 1076
    iget-object v1, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eq v1, p2, :cond_16

    if-eqz v1, :cond_1d

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1075
    if-eqz v2, :cond_1d

    .line 1077
    :cond_16
    iput-object p3, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1078
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1079
    const/4 v2, 0x1

    return v2

    .line 1081
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_1d
    const/4 v2, 0x0

    return v2
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1302
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-nez p1, :cond_8

    .line 1303
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1304
    :cond_8
    iget v4, p0, Ljava/util/HashMap;->size:I

    if-lez v4, :cond_34

    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .local v3, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_34

    .line 1305
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    .line 1306
    .local v2, "mc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v4, v3

    if-ge v1, v4, :cond_2a

    .line 1307
    aget-object v0, v3, v1

    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_18
    if-eqz v0, :cond_27

    .line 1308
    iget-object v4, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    iget-object v5, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1307
    iget-object v0, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_18

    .line 1306
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1311
    .end local v0    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_2a
    iget v4, p0, Ljava/util/HashMap;->modCount:I

    if-eq v4, v2, :cond_34

    .line 1312
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1314
    .end local v1    # "i":I
    .end local v2    # "mc":I
    .end local v3    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_34
    return-void
.end method

.method replacementNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
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

.method replacementTreeNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
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

.method final resize()[Ljava/util/HashMap$Node;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 677
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 678
    .local v13, "oldTab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v13, :cond_1a

    const/4 v12, 0x0

    .line 679
    .local v12, "oldCap":I
    :goto_7
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/HashMap;->threshold:I

    .line 680
    .local v14, "oldThr":I
    const/4 v10, 0x0

    .line 681
    .local v10, "newThr":I
    if-lez v12, :cond_63

    .line 682
    const/high16 v15, 0x40000000    # 2.0f

    if-lt v12, v15, :cond_1c

    .line 683
    const v15, 0x7fffffff

    move-object/from16 v0, p0

    iput v15, v0, Ljava/util/HashMap;->threshold:I

    .line 684
    return-object v13

    .line 678
    .end local v10    # "newThr":I
    .end local v12    # "oldCap":I
    .end local v14    # "oldThr":I
    :cond_1a
    array-length v12, v13

    .restart local v12    # "oldCap":I
    goto :goto_7

    .line 686
    .restart local v10    # "newThr":I
    .restart local v14    # "oldThr":I
    :cond_1c
    shl-int/lit8 v8, v12, 0x1

    .local v8, "newCap":I
    const/high16 v15, 0x40000000    # 2.0f

    if-ge v8, v15, :cond_28

    .line 687
    const/16 v15, 0x10

    if-lt v12, v15, :cond_28

    .line 688
    shl-int/lit8 v10, v14, 0x1

    .line 696
    :cond_28
    :goto_28
    if-nez v10, :cond_3e

    .line 697
    int-to-float v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/HashMap;->loadFactor:F

    move/from16 v16, v0

    mul-float v2, v15, v16

    .line 698
    .local v2, "ft":F
    const/high16 v15, 0x40000000    # 2.0f

    if-ge v8, v15, :cond_6c

    const/high16 v15, 0x4e800000

    cmpg-float v15, v2, v15

    if-gez v15, :cond_6c

    .line 699
    float-to-int v10, v2

    .line 701
    .end local v2    # "ft":F
    :cond_3e
    :goto_3e
    move-object/from16 v0, p0

    iput v10, v0, Ljava/util/HashMap;->threshold:I

    .line 703
    new-array v9, v8, [Ljava/util/HashMap$Node;

    .line 704
    .local v9, "newTab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    move-object/from16 v0, p0

    iput-object v9, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 705
    if-eqz v13, :cond_ab

    .line 706
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4b
    if-ge v5, v12, :cond_ab

    .line 708
    aget-object v1, v13, v5

    .local v1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_60

    .line 709
    const/4 v15, 0x0

    aput-object v15, v13, v5

    .line 710
    iget-object v15, v1, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-nez v15, :cond_70

    .line 711
    iget v15, v1, Ljava/util/HashMap$Node;->hash:I

    add-int/lit8 v16, v8, -0x1

    and-int v15, v15, v16

    aput-object v1, v9, v15

    .line 706
    :cond_60
    :goto_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 690
    .end local v1    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v5    # "j":I
    .end local v8    # "newCap":I
    .end local v9    # "newTab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_63
    if-lez v14, :cond_67

    .line 691
    move v8, v14

    .restart local v8    # "newCap":I
    goto :goto_28

    .line 693
    .end local v8    # "newCap":I
    :cond_67
    const/16 v8, 0x10

    .line 694
    .restart local v8    # "newCap":I
    const/16 v10, 0xc

    goto :goto_28

    .line 699
    .restart local v2    # "ft":F
    :cond_6c
    const v10, 0x7fffffff

    goto :goto_3e

    .line 712
    .end local v2    # "ft":F
    .restart local v1    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .restart local v5    # "j":I
    .restart local v9    # "newTab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_70
    instance-of v15, v1, Ljava/util/HashMap$TreeNode;

    if-eqz v15, :cond_7d

    move-object v15, v1

    .line 713
    check-cast v15, Ljava/util/HashMap$TreeNode;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v9, v5, v12}, Ljava/util/HashMap$TreeNode;->split(Ljava/util/HashMap;[Ljava/util/HashMap$Node;II)V

    goto :goto_60

    .line 715
    :cond_7d
    const/4 v6, 0x0

    .local v6, "loHead":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v7, 0x0

    .line 716
    .local v7, "loTail":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    .local v3, "hiHead":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v4, 0x0

    .line 719
    .end local v3    # "hiHead":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v6    # "loHead":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v7    # "loTail":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_81
    iget-object v11, v1, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 720
    .local v11, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget v15, v1, Ljava/util/HashMap$Node;->hash:I

    and-int/2addr v15, v12

    if-nez v15, :cond_a3

    .line 721
    if-nez v7, :cond_a0

    .line 722
    move-object v6, v1

    .line 725
    :goto_8b
    move-object v7, v1

    .line 734
    :goto_8c
    move-object v1, v11

    if-nez v11, :cond_81

    .line 735
    if-eqz v7, :cond_96

    .line 736
    const/4 v15, 0x0

    iput-object v15, v7, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 737
    aput-object v6, v9, v5

    .line 739
    :cond_96
    if-eqz v4, :cond_60

    .line 740
    const/4 v15, 0x0

    iput-object v15, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 741
    add-int v15, v5, v12

    aput-object v3, v9, v15

    goto :goto_60

    .line 724
    :cond_a0
    iput-object v1, v7, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_8b

    .line 728
    :cond_a3
    if-nez v4, :cond_a8

    .line 729
    move-object v3, v1

    .line 732
    :goto_a6
    move-object v4, v1

    .local v4, "hiTail":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    goto :goto_8c

    .line 731
    .end local v4    # "hiTail":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_a8
    iput-object v1, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_a6

    .line 747
    .end local v1    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v5    # "j":I
    .end local v11    # "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_ab
    return-object v9
.end method

.method public size()I
    .registers 2

    .prologue
    .line 525
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    return v0
.end method

.method final treeifyBin([Ljava/util/HashMap$Node;I)V
    .registers 11
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v7, 0x0

    .line 756
    if-eqz p1, :cond_8

    array-length v3, p1

    .local v3, "n":I
    const/16 v6, 0x40

    if-ge v3, v6, :cond_c

    .line 757
    .end local v3    # "n":I
    :cond_8
    invoke-virtual {p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    .line 773
    :cond_b
    :goto_b
    return-void

    .line 758
    .restart local v3    # "n":I
    :cond_c
    add-int/lit8 v6, v3, -0x1

    and-int v2, v6, p2

    .local v2, "index":I
    aget-object v0, p1, v2

    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_b

    .line 759
    const/4 v1, 0x0

    .local v1, "hd":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    .line 761
    .end local v1    # "hd":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_16
    invoke-virtual {p0, v0, v7}, Ljava/util/HashMap;->replacementTreeNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;

    move-result-object v4

    .line 762
    .local v4, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v5, :cond_2a

    .line 763
    move-object v1, v4

    .line 768
    :goto_1d
    move-object v5, v4

    .line 769
    .local v5, "tl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v0, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-nez v0, :cond_16

    .line 770
    aput-object v1, p1, v2

    if-eqz v1, :cond_b

    .line 771
    invoke-virtual {v1, p1}, Ljava/util/HashMap$TreeNode;->treeify([Ljava/util/HashMap$Node;)V

    goto :goto_b

    .line 765
    .end local v5    # "tl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_2a
    iput-object v5, v4, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 766
    iput-object v4, v5, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    goto :goto_1d
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 957
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    .line 958
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_b

    .line 959
    new-instance v0, Ljava/util/HashMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0}, Ljava/util/HashMap$Values;-><init>(Ljava/util/HashMap;)V

    .line 960
    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iput-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    .line 962
    :cond_b
    return-object v0
.end method
