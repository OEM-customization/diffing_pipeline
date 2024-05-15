.class public Ljava/util/concurrent/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;,
        Ljava/util/concurrent/ConcurrentHashMap$BulkTask;,
        Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;,
        Ljava/util/concurrent/ConcurrentHashMap$ValuesView;,
        Ljava/util/concurrent/ConcurrentHashMap$KeySetView;,
        Ljava/util/concurrent/ConcurrentHashMap$CollectionView;,
        Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;,
        Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;,
        Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;,
        Ljava/util/concurrent/ConcurrentHashMap$MapEntry;,
        Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$Traverser;,
        Ljava/util/concurrent/ConcurrentHashMap$TableStack;,
        Ljava/util/concurrent/ConcurrentHashMap$TreeBin;,
        Ljava/util/concurrent/ConcurrentHashMap$TreeNode;,
        Ljava/util/concurrent/ConcurrentHashMap$CounterCell;,
        Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;,
        Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;,
        Ljava/util/concurrent/ConcurrentHashMap$Segment;,
        Ljava/util/concurrent/ConcurrentHashMap$Node;
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
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o ABASE:I

.field private static final greylist-max-o ASHIFT:I

.field private static final greylist-max-o BASECOUNT:J

.field private static final greylist-max-o CELLSBUSY:J

.field private static final greylist-max-o CELLVALUE:J

.field private static final greylist-max-o DEFAULT_CAPACITY:I = 0x10

.field private static final greylist-max-o DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final greylist-max-o HASH_BITS:I = 0x7fffffff

.field private static final greylist-max-o LOAD_FACTOR:F = 0.75f

.field private static final greylist-max-o MAXIMUM_CAPACITY:I = 0x40000000

.field static final greylist-max-o MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final greylist-max-o MAX_RESIZERS:I = 0xffff

.field private static final greylist-max-o MIN_TRANSFER_STRIDE:I = 0x10

.field static final greylist-max-o MIN_TREEIFY_CAPACITY:I = 0x40

.field static final greylist-max-o MOVED:I = -0x1

.field static final greylist-max-o NCPU:I

.field static final greylist-max-o RESERVED:I = -0x3

.field private static final greylist-max-o RESIZE_STAMP_BITS:I = 0x10

.field private static final greylist-max-o RESIZE_STAMP_SHIFT:I = 0x10

.field private static final greylist-max-o SIZECTL:J

.field private static final greylist-max-o TRANSFERINDEX:J

.field static final greylist-max-o TREEBIN:I = -0x2

.field static final greylist-max-o TREEIFY_THRESHOLD:I = 0x8

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field static final greylist-max-o UNTREEIFY_THRESHOLD:I = 0x6

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field private volatile transient greylist-max-o baseCount:J

.field private volatile transient greylist-max-o cellsBusy:I

.field private volatile transient greylist-max-o counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

.field private transient greylist-max-o entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient greylist-max-o nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient greylist-max-o sizeCtl:I

.field volatile transient greylist-max-o table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient greylist-max-o transferIndex:I

.field private transient greylist-max-o values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 597
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sput v1, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    .line 609
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/io/ObjectStreamField;

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v3, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    const-string v4, "segments"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/io/ObjectStreamField;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "segmentMask"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/io/ObjectStreamField;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "segmentShift"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sput-object v1, Ljava/util/concurrent/ConcurrentHashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 6347
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    .line 6358
    :try_start_3b
    const-string v2, "sizeCtl"

    .line 6359
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    .line 6360
    const-string v2, "transferIndex"

    .line 6361
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    .line 6362
    const-string v2, "baseCount"

    .line 6363
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    .line 6364
    const-string v2, "cellsBusy"

    .line 6365
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    .line 6367
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    const-string v2, "value"

    .line 6368
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    .line 6370
    const-class v0, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    .line 6371
    const-class v0, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 6372
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_98

    .line 6374
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    sput v1, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I
    :try_end_94
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3b .. :try_end_94} :catch_a0

    .line 6377
    .end local v0    # "scale":I
    nop

    .line 6381
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 6382
    return-void

    .line 6373
    .restart local v0    # "scale":I
    :cond_98
    :try_start_98
    new-instance v1, Ljava/lang/Error;

    const-string v2, "array index scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_98 .. :try_end_a0} :catch_a0

    .line 6375
    .end local v0    # "scale":I
    :catch_a0
    move-exception v0

    .line 6376
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 831
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 832
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 844
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 845
    if-ltz p1, :cond_19

    .line 847
    const/high16 v0, 0x20000000

    if-lt p1, v0, :cond_c

    .line 848
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_15

    .line 849
    :cond_c
    ushr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v0

    :goto_15
    nop

    .line 850
    .local v0, "cap":I
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 851
    return-void

    .line 846
    .end local v0    # "cap":I
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(IF)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 879
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 880
    return-void
.end method

.method public constructor whitelist test-api <init>(IFI)V
    .registers 8
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .line 901
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 902
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_29

    if-ltz p1, :cond_29

    if-lez p3, :cond_29

    .line 904
    if-ge p1, p3, :cond_f

    .line 905
    move p1, p3

    .line 906
    :cond_f
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-long v2, p1

    long-to-float v2, v2

    div-float/2addr v2, p2

    float-to-double v2, v2

    add-double/2addr v2, v0

    double-to-long v0, v2

    .line 907
    .local v0, "size":J
    const-wide/32 v2, 0x40000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_21

    .line 908
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_26

    :cond_21
    long-to-int v2, v0

    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v2

    .line 909
    .local v2, "cap":I
    :goto_26
    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 910
    return-void

    .line 903
    .end local v0    # "size":J
    .end local v2    # "cap":I
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

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

    .line 858
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 859
    const/16 v0, 0x10

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 860
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 861
    return-void
.end method

.method private final greylist-max-o addCount(JI)V
    .registers 27
    .param p1, "x"    # J
    .param p3, "check"    # I

    .line 2327
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v8, p0

    move-wide/from16 v9, p1

    move/from16 v11, p3

    iget-object v0, v8, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object v12, v0

    .local v12, "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v0, :cond_1d

    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    iget-wide v4, v8, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    move-wide v13, v4

    .local v13, "b":J
    add-long v6, v13, v9

    move-wide v15, v6

    .line 2328
    .local v15, "s":J
    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 2330
    .end local v13    # "b":J
    .end local v15    # "s":J
    :cond_1d
    const/4 v0, 0x1

    .line 2331
    .local v0, "uncontended":Z
    if-eqz v12, :cond_b5

    array-length v1, v12

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v3, v1

    .local v3, "m":I
    if-ltz v1, :cond_b5

    .line 2332
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v1

    and-int/2addr v1, v3

    aget-object v1, v12, v1

    move-object v4, v1

    .local v4, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v1, :cond_b5

    sget-object v13, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v15, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    iget-wide v5, v4, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    move-wide/from16 v21, v5

    .local v21, "v":J
    add-long v19, v21, v9

    .line 2334
    move-object v14, v4

    move-wide/from16 v17, v5

    invoke-virtual/range {v13 .. v20}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    move v0, v1

    if-nez v1, :cond_46

    goto/16 :goto_b5

    .line 2338
    :cond_46
    if-gt v11, v2, :cond_49

    .line 2339
    return-void

    .line 2340
    :cond_49
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v15

    .line 2342
    .end local v0    # "uncontended":Z
    .end local v3    # "m":I
    .end local v4    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v21    # "v":J
    .restart local v15    # "s":J
    :cond_4d
    if-ltz v11, :cond_b4

    .line 2344
    :goto_4f
    iget v0, v8, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v6, v0

    .local v6, "sc":I
    int-to-long v0, v0

    cmp-long v0, v15, v0

    if-ltz v0, :cond_b4

    iget-object v0, v8, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v0

    .local v7, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_b4

    array-length v0, v7

    move v13, v0

    .local v13, "n":I
    const/high16 v1, 0x40000000    # 2.0f

    if-ge v0, v1, :cond_b4

    .line 2346
    invoke-static {v13}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v14

    .line 2347
    .local v14, "rs":I
    if-gez v6, :cond_98

    .line 2348
    ushr-int/lit8 v0, v6, 0x10

    if-ne v0, v14, :cond_b4

    add-int/lit8 v0, v14, 0x1

    if-eq v6, v0, :cond_b4

    const v0, 0xffff

    add-int/2addr v0, v14

    if-eq v6, v0, :cond_b4

    iget-object v0, v8, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v5, v0

    .local v5, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_96

    iget v0, v8, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v0, :cond_80

    .line 2351
    goto :goto_b4

    .line 2352
    :cond_80
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v17, v6, 0x1

    move-object/from16 v1, p0

    move v4, v6

    move-object v11, v5

    .end local v5    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v11, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 2353
    invoke-direct {v8, v7, v11}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_ad

    .line 2348
    .end local v11    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_96
    move-object v11, v5

    .end local v5    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v11    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_b4

    .line 2355
    .end local v11    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_98
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    shl-int/lit8 v1, v14, 0x10

    add-int/lit8 v5, v1, 0x2

    move-object/from16 v1, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 2357
    const/4 v0, 0x0

    invoke-direct {v8, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2358
    :cond_ad
    :goto_ad
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v15

    .line 2359
    .end local v14    # "rs":I
    move/from16 v11, p3

    goto :goto_4f

    .line 2361
    .end local v6    # "sc":I
    .end local v7    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "n":I
    :cond_b4
    :goto_b4
    return-void

    .line 2335
    .end local v15    # "s":J
    .restart local v0    # "uncontended":Z
    :cond_b5
    :goto_b5
    invoke-direct {v8, v9, v10, v0}, Ljava/util/concurrent/ConcurrentHashMap;->fullAddCount(JZ)V

    .line 2336
    return-void
.end method

.method static final greylist-max-o casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z
    .registers 10
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;I",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 768
    .local p0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "c":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p3, "v":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget v3, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, v3

    sget v3, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v3, v3

    add-long v2, v1, v3

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 715
    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_40

    .line 717
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_e

    .line 718
    return-object v1

    .line 719
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v2, v0

    .local v2, "ts":[Ljava/lang/reflect/Type;
    if-eqz v0, :cond_40

    .line 720
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    array-length v3, v2

    if-ge v0, v3, :cond_40

    .line 721
    aget-object v3, v2, v0

    move-object v4, v3

    .local v4, "t":Ljava/lang/reflect/Type;
    instance-of v3, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_3d

    move-object v3, v4

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    move-object v5, v3

    .line 722
    .local v5, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-class v6, Ljava/lang/Comparable;

    if-ne v3, v6, :cond_3d

    .line 724
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

    .line 726
    return-object v1

    .line 720
    .end local v5    # "p":Ljava/lang/reflect/ParameterizedType;
    .end local v6    # "as":[Ljava/lang/reflect/Type;
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 730
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

    .line 739
    .local p0, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p0, :cond_9

    goto :goto_11

    .line 740
    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_12

    .line 739
    :cond_11
    :goto_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private final greylist-max-o fullAddCount(JZ)V
    .registers 30
    .param p1, "x"    # J
    .param p3, "wasUncontended"    # Z

    .line 2588
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v0

    move v1, v0

    .local v1, "h":I
    if-nez v0, :cond_14

    .line 2589
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->localInit()V

    .line 2590
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v1

    .line 2591
    const/4 v0, 0x1

    .end local p3    # "wasUncontended":Z
    .local v0, "wasUncontended":Z
    goto :goto_16

    .line 2588
    .end local v0    # "wasUncontended":Z
    .restart local p3    # "wasUncontended":Z
    :cond_14
    move/from16 v0, p3

    .line 2593
    .end local p3    # "wasUncontended":Z
    .restart local v0    # "wasUncontended":Z
    :goto_16
    const/4 v2, 0x0

    move v12, v0

    move v13, v1

    move v14, v2

    .line 2596
    .end local v0    # "wasUncontended":Z
    .end local v1    # "h":I
    .local v12, "wasUncontended":Z
    .local v13, "h":I
    .local v14, "collide":Z
    :cond_1a
    :goto_1a
    iget-object v0, v9, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object v15, v0

    .local v15, "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    const/4 v7, 0x0

    if-eqz v0, :cond_e7

    array-length v0, v15

    move v8, v0

    .local v8, "n":I
    if-lez v0, :cond_e7

    .line 2597
    add-int/lit8 v0, v8, -0x1

    and-int/2addr v0, v13

    aget-object v0, v15, v0

    move-object v6, v0

    .local v6, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v0, :cond_76

    .line 2598
    iget v0, v9, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_6f

    .line 2599
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    invoke-direct {v0, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    move-object/from16 v16, v0

    .line 2600
    .local v16, "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    iget v0, v9, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_6c

    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 2601
    move-object/from16 v2, p0

    move-object/from16 v24, v6

    .end local v6    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .local v24, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 2602
    const/4 v1, 0x0

    .line 2605
    .local v1, "created":Z
    :try_start_4d
    iget-object v0, v9, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object v2, v0

    .local v2, "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v0, :cond_61

    array-length v0, v2

    move v3, v0

    .local v3, "m":I
    if-lez v0, :cond_61

    add-int/lit8 v0, v3, -0x1

    and-int/2addr v0, v13

    move v4, v0

    .local v4, "j":I
    aget-object v0, v2, v0

    if-nez v0, :cond_61

    .line 2608
    aput-object v16, v2, v4
    :try_end_60
    .catchall {:try_start_4d .. :try_end_60} :catchall_68

    .line 2609
    const/4 v1, 0x1

    .line 2612
    .end local v2    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v3    # "m":I
    .end local v4    # "j":I
    :cond_61
    iput v7, v9, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2613
    nop

    .line 2614
    if-eqz v1, :cond_1a

    .line 2615
    goto/16 :goto_12f

    .line 2612
    :catchall_68
    move-exception v0

    iput v7, v9, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2613
    throw v0

    .line 2600
    .end local v1    # "created":Z
    .end local v24    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_6c
    move-object/from16 v24, v6

    .end local v6    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v24    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    goto :goto_71

    .line 2598
    .end local v16    # "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v24    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_6f
    move-object/from16 v24, v6

    .line 2619
    .end local v6    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v24    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_71
    :goto_71
    const/4 v14, 0x0

    move-object/from16 v16, v24

    goto/16 :goto_e1

    .line 2621
    .end local v24    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_76
    move-object/from16 v24, v6

    .end local v6    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v24    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v12, :cond_7f

    .line 2622
    const/4 v12, 0x1

    move-object/from16 v16, v24

    goto/16 :goto_e1

    .line 2623
    :cond_7f
    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v18, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    move-object/from16 v6, v24

    .end local v24    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    iget-wide v2, v6, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    move-wide/from16 v24, v2

    .local v24, "v":J
    add-long v22, v24, v10

    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-wide/from16 v20, v2

    invoke-virtual/range {v16 .. v23}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 2624
    goto/16 :goto_12f

    .line 2625
    :cond_99
    iget-object v0, v9, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v15, :cond_de

    sget v0, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    if-lt v8, v0, :cond_a4

    move-object/from16 v16, v6

    goto :goto_e0

    .line 2627
    :cond_a4
    if-nez v14, :cond_aa

    .line 2628
    const/4 v14, 0x1

    move-object/from16 v16, v6

    goto :goto_e1

    .line 2629
    :cond_aa
    iget v0, v9, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_db

    sget-wide v3, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 2630
    move-object/from16 v2, p0

    move-object/from16 v16, v6

    .end local v6    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .local v16, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 2632
    :try_start_bd
    iget-object v0, v9, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v15, :cond_d1

    .line 2633
    shl-int/lit8 v0, v8, 0x1

    new-array v0, v0, [Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    .line 2634
    .local v0, "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c6
    if-ge v1, v8, :cond_cf

    .line 2635
    aget-object v2, v15, v1

    aput-object v2, v0, v1

    .line 2634
    add-int/lit8 v1, v1, 0x1

    goto :goto_c6

    .line 2636
    .end local v1    # "i":I
    :cond_cf
    iput-object v0, v9, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_d1
    .catchall {:try_start_bd .. :try_end_d1} :catchall_d7

    .line 2639
    .end local v0    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_d1
    iput v7, v9, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2640
    nop

    .line 2641
    const/4 v14, 0x0

    .line 2642
    goto/16 :goto_1a

    .line 2639
    :catchall_d7
    move-exception v0

    iput v7, v9, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2640
    throw v0

    .line 2629
    .end local v16    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_db
    move-object/from16 v16, v6

    .end local v6    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v16    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    goto :goto_e1

    .line 2625
    .end local v16    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v6    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_de
    move-object/from16 v16, v6

    .line 2626
    .end local v6    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v16    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :goto_e0
    const/4 v14, 0x0

    .line 2644
    .end local v24    # "v":J
    :cond_e1
    :goto_e1
    invoke-static {v13}, Ljava/util/concurrent/ThreadLocalRandom;->advanceProbe(I)I

    move-result v0

    move v13, v0

    .end local v13    # "h":I
    .local v0, "h":I
    goto :goto_130

    .line 2646
    .end local v0    # "h":I
    .end local v8    # "n":I
    .end local v16    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v13    # "h":I
    :cond_e7
    iget v0, v9, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_11c

    iget-object v0, v9, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v15, :cond_11c

    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2647
    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 2648
    const/4 v1, 0x0

    .line 2650
    .local v1, "init":Z
    :try_start_fe
    iget-object v0, v9, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v15, :cond_111

    .line 2651
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    .line 2652
    .local v0, "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    and-int/lit8 v2, v13, 0x1

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    invoke-direct {v3, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    aput-object v3, v0, v2

    .line 2653
    iput-object v0, v9, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_110
    .catchall {:try_start_fe .. :try_end_110} :catchall_118

    .line 2654
    const/4 v1, 0x1

    .line 2657
    .end local v0    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_111
    iput v7, v9, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2658
    nop

    .line 2659
    if-eqz v1, :cond_117

    .line 2660
    goto :goto_12f

    .line 2661
    .end local v1    # "init":Z
    :cond_117
    goto :goto_130

    .line 2657
    .restart local v1    # "init":Z
    :catchall_118
    move-exception v0

    iput v7, v9, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2658
    throw v0

    .line 2662
    .end local v1    # "init":Z
    :cond_11c
    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    iget-wide v5, v9, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    move-wide/from16 v16, v5

    .local v16, "v":J
    add-long v7, v16, v10

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 2663
    nop

    .line 2665
    .end local v15    # "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v16    # "v":J
    :goto_12f
    return-void

    .line 2664
    :cond_130
    :goto_130
    goto/16 :goto_1a
.end method

.method private final greylist-max-o initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2294
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_8

    array-length v0, v1

    if-nez v0, :cond_39

    .line 2295
    :cond_8
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v8, v0

    .local v8, "sc":I
    if-gez v0, :cond_11

    .line 2296
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 2297
    :cond_11
    sget-object v2, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v7, -0x1

    move-object v3, p0

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2299
    :try_start_1e
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    if-eqz v0, :cond_26

    array-length v0, v1

    if-nez v0, :cond_35

    .line 2300
    :cond_26
    if-lez v8, :cond_2a

    move v0, v8

    goto :goto_2c

    :cond_2a
    const/16 v0, 0x10

    .line 2302
    .local v0, "n":I
    :goto_2c
    new-array v2, v0, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2303
    .local v2, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v1, v2

    iput-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_3a

    .line 2304
    ushr-int/lit8 v3, v0, 0x2

    sub-int v8, v0, v3

    .line 2307
    .end local v0    # "n":I
    .end local v2    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_35
    iput v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2308
    nop

    .line 2309
    nop

    .line 2312
    .end local v8    # "sc":I
    :cond_39
    return-object v1

    .line 2307
    .restart local v8    # "sc":I
    :catchall_3a
    move-exception v0

    iput v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2308
    throw v0

    .line 2297
    :cond_3e
    goto :goto_0
.end method

.method public static whitelist test-api newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<",
            "TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2189
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api newKeySet(I)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 4
    .param p0, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<",
            "TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2206
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 36
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1454
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v0, p0

    const/4 v1, -0x1

    iput v1, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 1455
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1456
    const-wide/16 v1, 0x0

    .line 1457
    .local v1, "size":J
    const/4 v3, 0x0

    .line 1460
    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1462
    .local v4, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 1463
    .local v5, "v":Ljava/lang/Object;, "TV;"
    const-wide/16 v6, 0x1

    if-eqz v4, :cond_29

    if-eqz v5, :cond_29

    .line 1464
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v9

    invoke-direct {v8, v9, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v3, v8

    .line 1465
    add-long/2addr v1, v6

    .line 1469
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_b

    .line 1470
    :cond_29
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_36

    .line 1471
    const/4 v4, 0x0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move-wide/from16 v18, v1

    goto/16 :goto_131

    .line 1474
    :cond_36
    const-wide/32 v4, 0x20000000

    cmp-long v4, v1, v4

    if-ltz v4, :cond_40

    .line 1475
    const/high16 v4, 0x40000000    # 2.0f

    .local v4, "n":I
    goto :goto_4b

    .line 1477
    .end local v4    # "n":I
    :cond_40
    long-to-int v4, v1

    .line 1478
    .local v4, "sz":I
    ushr-int/lit8 v5, v4, 0x1

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v5

    move v4, v5

    .line 1481
    .local v4, "n":I
    :goto_4b
    new-array v5, v4, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1482
    .local v5, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    add-int/lit8 v8, v4, -0x1

    .line 1483
    .local v8, "mask":I
    const-wide/16 v9, 0x0

    .line 1484
    .local v9, "added":J
    :goto_51
    if-eqz v3, :cond_123

    .line 1486
    iget-object v11, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1487
    .local v11, "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget v12, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v12, "h":I
    and-int v13, v12, v8

    .line 1488
    .local v13, "j":I
    invoke-static {v5, v13}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v14

    move-object v15, v14

    .local v15, "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v14, :cond_67

    .line 1489
    const/4 v14, 0x1

    move-wide/from16 v18, v1

    move/from16 v29, v8

    .local v14, "insertAtFront":Z
    goto/16 :goto_10e

    .line 1491
    .end local v14    # "insertAtFront":Z
    :cond_67
    iget-object v14, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1492
    .local v14, "k":Ljava/lang/Object;, "TK;"
    iget v6, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v6, :cond_84

    .line 1493
    move-object v6, v15

    check-cast v6, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1494
    .local v6, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v7, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v6, v12, v14, v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v7

    if-nez v7, :cond_7c

    .line 1495
    const-wide/16 v16, 0x1

    add-long v9, v9, v16

    .line 1496
    :cond_7c
    const/4 v6, 0x0

    .line 1497
    .local v6, "insertAtFront":Z
    move-wide/from16 v18, v1

    move v14, v6

    move/from16 v29, v8

    goto/16 :goto_10e

    .line 1499
    .end local v6    # "insertAtFront":Z
    :cond_84
    const/4 v6, 0x0

    .line 1500
    .local v6, "binCount":I
    const/4 v7, 0x1

    .line 1502
    .local v7, "insertAtFront":Z
    move-object/from16 v18, v15

    move-wide/from16 v32, v1

    move-object/from16 v1, v18

    move-wide/from16 v18, v32

    .local v1, "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v18, "size":J
    :goto_8e
    if-eqz v1, :cond_ae

    .line 1503
    iget v2, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v2, v12, :cond_a9

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v20, v2

    .local v20, "qk":Ljava/lang/Object;, "TK;"
    if-eq v2, v14, :cond_a5

    move-object/from16 v2, v20

    .end local v20    # "qk":Ljava/lang/Object;, "TK;"
    .local v2, "qk":Ljava/lang/Object;, "TK;"
    if-eqz v2, :cond_a9

    .line 1505
    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a9

    goto :goto_a7

    .line 1503
    .end local v2    # "qk":Ljava/lang/Object;, "TK;"
    .restart local v20    # "qk":Ljava/lang/Object;, "TK;"
    :cond_a5
    move-object/from16 v2, v20

    .line 1506
    .end local v20    # "qk":Ljava/lang/Object;, "TK;"
    .restart local v2    # "qk":Ljava/lang/Object;, "TK;"
    :goto_a7
    const/4 v7, 0x0

    .line 1507
    goto :goto_ae

    .line 1509
    .end local v2    # "qk":Ljava/lang/Object;, "TK;"
    :cond_a9
    add-int/lit8 v6, v6, 0x1

    .line 1502
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_8e

    .line 1511
    :cond_ae
    :goto_ae
    if-eqz v7, :cond_109

    const/16 v2, 0x8

    if-lt v6, v2, :cond_109

    .line 1512
    const/4 v2, 0x0

    .line 1513
    .end local v7    # "insertAtFront":Z
    .local v2, "insertAtFront":Z
    const-wide/16 v16, 0x1

    add-long v9, v9, v16

    .line 1514
    iput-object v15, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1515
    const/4 v7, 0x0

    .local v7, "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v20, 0x0

    .line 1516
    .local v20, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v1, v3

    move-object/from16 v32, v20

    move/from16 v20, v2

    move-object/from16 v2, v32

    .local v2, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v20, "insertAtFront":Z
    :goto_c5
    if-eqz v1, :cond_f8

    .line 1517
    new-instance v27, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move/from16 v28, v6

    .end local v6    # "binCount":I
    .local v28, "binCount":I
    iget v6, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v29, v8

    .end local v8    # "mask":I
    .local v29, "mask":I
    iget-object v8, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-wide/from16 v30, v9

    .end local v9    # "added":J
    .local v30, "added":J
    iget-object v9, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v27

    move/from16 v22, v6

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    invoke-direct/range {v21 .. v26}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v6, v27

    .line 1519
    .local v6, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v2, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_ec

    .line 1520
    move-object v7, v6

    goto :goto_ee

    .line 1522
    :cond_ec
    iput-object v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1523
    :goto_ee
    move-object v2, v6

    .line 1516
    .end local v6    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move/from16 v6, v28

    move/from16 v8, v29

    move-wide/from16 v9, v30

    goto :goto_c5

    .line 1525
    .end local v28    # "binCount":I
    .end local v29    # "mask":I
    .end local v30    # "added":J
    .local v6, "binCount":I
    .restart local v8    # "mask":I
    .restart local v9    # "added":J
    :cond_f8
    move/from16 v28, v6

    move/from16 v29, v8

    move-wide/from16 v30, v9

    .end local v6    # "binCount":I
    .end local v8    # "mask":I
    .end local v9    # "added":J
    .restart local v28    # "binCount":I
    .restart local v29    # "mask":I
    .restart local v30    # "added":J
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    invoke-static {v5, v13, v6}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    move/from16 v14, v20

    goto :goto_10e

    .line 1511
    .end local v2    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v20    # "insertAtFront":Z
    .end local v28    # "binCount":I
    .end local v29    # "mask":I
    .end local v30    # "added":J
    .restart local v6    # "binCount":I
    .local v7, "insertAtFront":Z
    .restart local v8    # "mask":I
    .restart local v9    # "added":J
    :cond_109
    move/from16 v28, v6

    move/from16 v29, v8

    .line 1529
    .end local v1    # "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "binCount":I
    .end local v8    # "mask":I
    .end local v14    # "k":Ljava/lang/Object;, "TK;"
    .restart local v29    # "mask":I
    move v14, v7

    .end local v7    # "insertAtFront":Z
    .local v14, "insertAtFront":Z
    :goto_10e
    if-eqz v14, :cond_119

    .line 1530
    const-wide/16 v1, 0x1

    add-long/2addr v9, v1

    .line 1531
    iput-object v15, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1532
    invoke-static {v5, v13, v3}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_11b

    .line 1529
    :cond_119
    const-wide/16 v1, 0x1

    .line 1534
    :goto_11b
    move-object v3, v11

    .line 1535
    .end local v11    # "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v12    # "h":I
    .end local v13    # "j":I
    .end local v14    # "insertAtFront":Z
    .end local v15    # "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-wide v6, v1

    move-wide/from16 v1, v18

    move/from16 v8, v29

    goto/16 :goto_51

    .line 1536
    .end local v18    # "size":J
    .end local v29    # "mask":I
    .local v1, "size":J
    .restart local v8    # "mask":I
    :cond_123
    move-wide/from16 v18, v1

    move/from16 v29, v8

    .end local v1    # "size":J
    .end local v8    # "mask":I
    .restart local v18    # "size":J
    .restart local v29    # "mask":I
    iput-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1537
    ushr-int/lit8 v1, v4, 0x2

    sub-int v1, v4, v1

    iput v1, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 1538
    iput-wide v9, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    .line 1540
    .end local v4    # "n":I
    .end local v5    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "added":J
    .end local v29    # "mask":I
    :goto_131
    return-void
.end method

.method static final greylist-max-o resizeStamp(I)I
    .registers 3
    .param p0, "n"    # I

    .line 2286
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    const v1, 0x8000

    or-int/2addr v0, v1

    return v0
.end method

.method static final greylist-max-o setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    .registers 8
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;I",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 772
    .local p0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "v":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget v3, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, v3

    sget v3, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 773
    return-void
.end method

.method static final greylist-max-o spread(I)I
    .registers 3
    .param p0, "h"    # I

    .line 693
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method static final greylist-max-o tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 7
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;I)",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 763
    .local p0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget v3, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, v3

    sget v3, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method

.method private static final greylist-max-o tableSizeFor(I)I
    .registers 3
    .param p0, "c"    # I

    .line 701
    add-int/lit8 v0, p0, -0x1

    .line 702
    .local v0, "n":I
    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 703
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 704
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 705
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 706
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 707
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

.method private final greylist-max-o transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2428
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    array-length v9, v8

    .line 2429
    .local v9, "n":I
    sget v0, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    const/4 v10, 0x1

    if-le v0, v10, :cond_e

    ushr-int/lit8 v1, v9, 0x3

    div-int/2addr v1, v0

    goto :goto_f

    :cond_e
    move v1, v9

    :goto_f
    move v0, v1

    .local v0, "stride":I
    const/16 v11, 0x10

    if-ge v1, v11, :cond_18

    .line 2430
    const/16 v0, 0x10

    move v12, v0

    goto :goto_19

    .line 2429
    :cond_18
    move v12, v0

    .line 2431
    .end local v0    # "stride":I
    .local v12, "stride":I
    :goto_19
    if-nez p2, :cond_30

    .line 2434
    shl-int/lit8 v0, v9, 0x1

    :try_start_1d
    new-array v0, v0, [Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_27

    .line 2435
    .local v0, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    nop

    .line 2439
    .end local p2    # "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    nop

    .line 2440
    iput-object v0, v7, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2441
    iput v9, v7, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    move-object v13, v0

    goto :goto_32

    .line 2436
    .end local v0    # "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local p2    # "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_27
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2437
    .local v0, "ex":Ljava/lang/Throwable;
    const v1, 0x7fffffff

    iput v1, v7, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2438
    return-void

    .line 2431
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_30
    move-object/from16 v13, p2

    .line 2443
    .end local p2    # "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v13, "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_32
    array-length v14, v13

    .line 2444
    .local v14, "nextn":I
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    invoke-direct {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v15, v0

    .line 2445
    .local v15, "fwd":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    const/4 v0, 0x1

    .line 2446
    .local v0, "advance":Z
    const/4 v1, 0x0

    .line 2447
    .local v1, "finishing":Z
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    move/from16 v16, v0

    move/from16 v17, v1

    move v6, v2

    move v5, v3

    .line 2449
    .end local v0    # "advance":Z
    .end local v1    # "finishing":Z
    .end local v2    # "i":I
    .local v5, "bound":I
    .local v6, "i":I
    .local v16, "advance":Z
    .local v17, "finishing":Z
    :goto_43
    if-eqz v16, :cond_8c

    .line 2451
    add-int/lit8 v0, v6, -0x1

    .end local v6    # "i":I
    .local v0, "i":I
    if-ge v0, v5, :cond_83

    if-eqz v17, :cond_4e

    move/from16 v20, v5

    goto :goto_85

    .line 2453
    :cond_4e
    iget v1, v7, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    move v6, v1

    .local v6, "nextIndex":I
    if-gtz v1, :cond_59

    .line 2454
    const/4 v0, -0x1

    .line 2455
    const/4 v1, 0x0

    move v6, v0

    move/from16 v16, v1

    .end local v16    # "advance":Z
    .local v1, "advance":Z
    goto :goto_8b

    .line 2457
    .end local v1    # "advance":Z
    .restart local v16    # "advance":Z
    :cond_59
    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    .line 2459
    if-le v6, v12, :cond_62

    .line 2460
    sub-int v2, v6, v12

    goto :goto_63

    :cond_62
    const/4 v2, 0x0

    :goto_63
    move/from16 v18, v2

    move/from16 v19, v18

    .line 2458
    .local v19, "nextBound":I
    move-object/from16 v2, p0

    move/from16 v20, v5

    .end local v5    # "bound":I
    .local v20, "bound":I
    move v5, v6

    move/from16 v21, v6

    .end local v6    # "nextIndex":I
    .local v21, "nextIndex":I
    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 2461
    move/from16 v1, v19

    .line 2462
    .end local v20    # "bound":I
    .local v1, "bound":I
    add-int/lit8 v6, v21, -0x1

    .line 2463
    .end local v0    # "i":I
    .local v6, "i":I
    const/4 v0, 0x0

    move/from16 v16, v0

    move v5, v1

    .end local v16    # "advance":Z
    .local v0, "advance":Z
    goto :goto_8b

    .line 2458
    .end local v1    # "bound":I
    .end local v6    # "i":I
    .local v0, "i":I
    .restart local v16    # "advance":Z
    .restart local v20    # "bound":I
    :cond_7f
    move v6, v0

    move/from16 v5, v20

    goto :goto_8b

    .line 2451
    .end local v19    # "nextBound":I
    .end local v20    # "bound":I
    .end local v21    # "nextIndex":I
    .restart local v5    # "bound":I
    :cond_83
    move/from16 v20, v5

    .line 2452
    .end local v5    # "bound":I
    .restart local v20    # "bound":I
    :goto_85
    const/4 v1, 0x0

    move v6, v0

    move/from16 v16, v1

    move/from16 v5, v20

    .line 2465
    .end local v0    # "i":I
    .end local v20    # "bound":I
    .restart local v5    # "bound":I
    .restart local v6    # "i":I
    :goto_8b
    goto :goto_43

    .line 2466
    :cond_8c
    move/from16 v20, v5

    .end local v5    # "bound":I
    .restart local v20    # "bound":I
    const/4 v0, 0x0

    if-ltz v6, :cond_208

    if-ge v6, v9, :cond_208

    add-int v1, v6, v9

    if-lt v1, v14, :cond_9d

    move/from16 v22, v12

    move/from16 v30, v14

    goto/16 :goto_20c

    .line 2481
    :cond_9d
    invoke-static {v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_b2

    .line 2482
    invoke-static {v8, v6, v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v0

    move/from16 v16, v0

    move v1, v10

    move v3, v11

    move/from16 v22, v12

    move/from16 v30, v14

    .end local v16    # "advance":Z
    .local v0, "advance":Z
    goto/16 :goto_249

    .line 2483
    .end local v0    # "advance":Z
    .restart local v16    # "advance":Z
    :cond_b2
    iget v0, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v1, v0

    .local v1, "fh":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_c3

    .line 2484
    const/4 v0, 0x1

    move/from16 v16, v0

    move v1, v10

    move v3, v11

    move/from16 v22, v12

    move/from16 v30, v14

    .end local v16    # "advance":Z
    .restart local v0    # "advance":Z
    goto/16 :goto_249

    .line 2486
    .end local v0    # "advance":Z
    .restart local v16    # "advance":Z
    :cond_c3
    monitor-enter v2

    .line 2487
    :try_start_c4
    invoke-static {v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0
    :try_end_c8
    .catchall {:try_start_c4 .. :try_end_c8} :catchall_1fd

    if-ne v0, v2, :cond_1f0

    .line 2489
    if-ltz v1, :cond_148

    .line 2490
    and-int v0, v1, v9

    .line 2491
    .local v0, "runBit":I
    move-object v3, v2

    .line 2492
    .local v3, "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_cf
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_d1
    .catchall {:try_start_cf .. :try_end_d1} :catchall_13f

    .local v4, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_d1
    if-eqz v4, :cond_e7

    .line 2493
    :try_start_d3
    iget v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    and-int/2addr v5, v9

    .line 2494
    .local v5, "b":I
    if-eq v5, v0, :cond_da

    .line 2495
    move v0, v5

    .line 2496
    move-object v3, v4

    .line 2492
    .end local v5    # "b":I
    :cond_da
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_dc
    .catchall {:try_start_d3 .. :try_end_dc} :catchall_de

    move-object v4, v5

    goto :goto_d1

    .line 2555
    .end local v0    # "runBit":I
    .end local v3    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_de
    move-exception v0

    move/from16 p2, v1

    move/from16 v22, v12

    move/from16 v30, v14

    goto/16 :goto_204

    .line 2499
    .restart local v0    # "runBit":I
    .restart local v3    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_e7
    if-nez v0, :cond_ec

    .line 2500
    move-object v4, v3

    .line 2501
    .local v4, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v5, 0x0

    .local v5, "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_ee

    .line 2504
    .end local v4    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_ec
    move-object v5, v3

    .line 2505
    .restart local v5    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v4, 0x0

    .line 2507
    .restart local v4    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_ee
    move-object/from16 v18, v2

    move-object/from16 v10, v18

    .local v10, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_f2
    if-eq v10, v3, :cond_11f

    .line 2508
    :try_start_f4
    iget v11, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v21, v0

    .end local v0    # "runBit":I
    .local v11, "ph":I
    .local v21, "runBit":I
    iget-object v0, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;
    :try_end_fa
    .catchall {:try_start_f4 .. :try_end_fa} :catchall_13f

    move/from16 p2, v1

    .end local v1    # "fh":I
    .local v0, "pk":Ljava/lang/Object;, "TK;"
    .local p2, "fh":I
    :try_start_fc
    iget-object v1, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 2509
    .local v1, "pv":Ljava/lang/Object;, "TV;"
    and-int v22, v11, v9

    if-nez v22, :cond_10b

    .line 2510
    move-object/from16 v22, v3

    .end local v3    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v22, "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v3, v11, v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v4, v3

    .end local v4    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v3, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_113

    .line 2512
    .end local v22    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v3, "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_10b
    move-object/from16 v22, v3

    .end local v3    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v22    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v3, v11, v0, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .end local v5    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v3, "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v5, v3

    .line 2507
    .end local v0    # "pk":Ljava/lang/Object;, "TK;"
    .end local v1    # "pv":Ljava/lang/Object;, "TV;"
    .end local v3    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "ph":I
    .restart local v5    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_113
    iget-object v0, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v10, v0

    move/from16 v1, p2

    move/from16 v0, v21

    move-object/from16 v3, v22

    const/16 v11, 0x10

    goto :goto_f2

    .end local v21    # "runBit":I
    .end local v22    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local p2    # "fh":I
    .local v0, "runBit":I
    .local v1, "fh":I
    .local v3, "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_11f
    move/from16 v21, v0

    move/from16 p2, v1

    move-object/from16 v22, v3

    .line 2514
    .end local v0    # "runBit":I
    .end local v1    # "fh":I
    .end local v3    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v21    # "runBit":I
    .restart local v22    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local p2    # "fh":I
    invoke-static {v13, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2515
    add-int v0, v6, v9

    invoke-static {v13, v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2516
    invoke-static {v8, v6, v15}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_130
    .catchall {:try_start_fc .. :try_end_130} :catchall_138

    .line 2517
    const/16 v16, 0x1

    .line 2518
    .end local v21    # "runBit":I
    .end local v22    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move/from16 v22, v12

    move/from16 v30, v14

    goto/16 :goto_1f6

    .line 2555
    .end local v4    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_138
    move-exception v0

    move/from16 v22, v12

    move/from16 v30, v14

    goto/16 :goto_204

    .end local p2    # "fh":I
    .restart local v1    # "fh":I
    :catchall_13f
    move-exception v0

    move/from16 p2, v1

    move/from16 v22, v12

    move/from16 v30, v14

    .end local v1    # "fh":I
    .restart local p2    # "fh":I
    goto/16 :goto_204

    .line 2519
    .end local p2    # "fh":I
    .restart local v1    # "fh":I
    :cond_148
    move/from16 p2, v1

    .end local v1    # "fh":I
    .restart local p2    # "fh":I
    :try_start_14a
    instance-of v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_1e5

    .line 2520
    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 2521
    .local v0, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/4 v1, 0x0

    .local v1, "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    .line 2522
    .local v3, "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v4, 0x0

    .local v4, "hi":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    .line 2523
    .local v5, "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v10, 0x0

    .local v10, "lc":I
    const/4 v11, 0x0

    .line 2524
    .local v11, "hc":I
    move-object/from16 v21, v1

    .end local v1    # "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v21, "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_15b
    .catchall {:try_start_14a .. :try_end_15b} :catchall_1ea

    move-object/from16 v31, v21

    move-object/from16 v21, v0

    move v0, v11

    move v11, v10

    move-object v10, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, v31

    .local v0, "hc":I
    .local v1, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v3, "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v4, "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v5, "hi":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v10, "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v11, "lc":I
    .local v21, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :goto_166
    if-eqz v1, :cond_1ae

    .line 2525
    move/from16 v22, v12

    .end local v12    # "stride":I
    .local v22, "stride":I
    :try_start_16a
    iget v12, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .line 2526
    .local v12, "h":I
    new-instance v29, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_16e
    .catchall {:try_start_16a .. :try_end_16e} :catchall_1aa

    move/from16 v30, v14

    .end local v14    # "nextn":I
    .local v30, "nextn":I
    :try_start_170
    iget-object v14, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v7, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v29

    move/from16 v24, v12

    move-object/from16 v25, v14

    move-object/from16 v26, v7

    invoke-direct/range {v23 .. v28}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v7, v29

    .line 2528
    .local v7, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    and-int v14, v12, v9

    if-nez v14, :cond_195

    .line 2529
    iput-object v4, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v4, :cond_18f

    .line 2530
    move-object v3, v7

    goto :goto_191

    .line 2532
    :cond_18f
    iput-object v7, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2533
    :goto_191
    move-object v4, v7

    .line 2534
    add-int/lit8 v11, v11, 0x1

    goto :goto_1a0

    .line 2537
    :cond_195
    iput-object v10, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v10, :cond_19b

    .line 2538
    move-object v5, v7

    goto :goto_19d

    .line 2540
    :cond_19b
    iput-object v7, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2541
    :goto_19d
    move-object v10, v7

    .line 2542
    add-int/lit8 v0, v0, 0x1

    .line 2524
    .end local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "h":I
    :goto_1a0
    iget-object v7, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v7

    move-object/from16 v7, p0

    move/from16 v12, v22

    move/from16 v14, v30

    goto :goto_166

    .line 2555
    .end local v0    # "hc":I
    .end local v1    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "hi":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v11    # "lc":I
    .end local v21    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v30    # "nextn":I
    .restart local v14    # "nextn":I
    :catchall_1aa
    move-exception v0

    move/from16 v30, v14

    .end local v14    # "nextn":I
    .restart local v30    # "nextn":I
    goto :goto_204

    .line 2524
    .end local v22    # "stride":I
    .end local v30    # "nextn":I
    .restart local v0    # "hc":I
    .restart local v1    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v3    # "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v4    # "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v5    # "hi":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v10    # "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v11    # "lc":I
    .local v12, "stride":I
    .restart local v14    # "nextn":I
    .restart local v21    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :cond_1ae
    move/from16 v22, v12

    move/from16 v30, v14

    .line 2545
    .end local v1    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v12    # "stride":I
    .end local v14    # "nextn":I
    .restart local v22    # "stride":I
    .restart local v30    # "nextn":I
    const/4 v1, 0x6

    if-gt v11, v1, :cond_1ba

    invoke-static {v3}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    goto :goto_1c4

    .line 2546
    :cond_1ba
    if-eqz v0, :cond_1c2

    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v7, v3}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    goto :goto_1c4

    :cond_1c2
    move-object/from16 v7, v21

    :goto_1c4
    nop

    .line 2547
    .local v7, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-gt v0, v1, :cond_1cc

    invoke-static {v5}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    goto :goto_1d6

    .line 2548
    :cond_1cc
    if-eqz v11, :cond_1d4

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    goto :goto_1d6

    :cond_1d4
    move-object/from16 v1, v21

    :goto_1d6
    nop

    .line 2549
    .local v1, "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    invoke-static {v13, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2550
    add-int v12, v6, v9

    invoke-static {v13, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2551
    invoke-static {v8, v6, v15}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2552
    const/16 v16, 0x1

    goto :goto_1f6

    .line 2519
    .end local v0    # "hc":I
    .end local v1    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "hi":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v11    # "lc":I
    .end local v21    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v22    # "stride":I
    .end local v30    # "nextn":I
    .restart local v12    # "stride":I
    .restart local v14    # "nextn":I
    :cond_1e5
    move/from16 v22, v12

    move/from16 v30, v14

    .end local v12    # "stride":I
    .end local v14    # "nextn":I
    .restart local v22    # "stride":I
    .restart local v30    # "nextn":I
    goto :goto_1f6

    .line 2555
    .end local v22    # "stride":I
    .end local v30    # "nextn":I
    .restart local v12    # "stride":I
    .restart local v14    # "nextn":I
    :catchall_1ea
    move-exception v0

    move/from16 v22, v12

    move/from16 v30, v14

    .end local v12    # "stride":I
    .end local v14    # "nextn":I
    .restart local v22    # "stride":I
    .restart local v30    # "nextn":I
    goto :goto_204

    .line 2487
    .end local v22    # "stride":I
    .end local v30    # "nextn":I
    .end local p2    # "fh":I
    .local v1, "fh":I
    .restart local v12    # "stride":I
    .restart local v14    # "nextn":I
    :cond_1f0
    move/from16 p2, v1

    move/from16 v22, v12

    move/from16 v30, v14

    .line 2555
    .end local v1    # "fh":I
    .end local v12    # "stride":I
    .end local v14    # "nextn":I
    .restart local v22    # "stride":I
    .restart local v30    # "nextn":I
    .restart local p2    # "fh":I
    :goto_1f6
    monitor-exit v2

    move-object/from16 v7, p0

    const/4 v1, 0x1

    const/16 v3, 0x10

    goto :goto_249

    .end local v22    # "stride":I
    .end local v30    # "nextn":I
    .end local p2    # "fh":I
    .restart local v1    # "fh":I
    .restart local v12    # "stride":I
    .restart local v14    # "nextn":I
    :catchall_1fd
    move-exception v0

    move/from16 p2, v1

    move/from16 v22, v12

    move/from16 v30, v14

    .end local v1    # "fh":I
    .end local v12    # "stride":I
    .end local v14    # "nextn":I
    .restart local v22    # "stride":I
    .restart local v30    # "nextn":I
    .restart local p2    # "fh":I
    :goto_204
    monitor-exit v2
    :try_end_205
    .catchall {:try_start_170 .. :try_end_205} :catchall_206

    throw v0

    :catchall_206
    move-exception v0

    goto :goto_204

    .line 2466
    .end local v2    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v22    # "stride":I
    .end local v30    # "nextn":I
    .end local p2    # "fh":I
    .restart local v12    # "stride":I
    .restart local v14    # "nextn":I
    :cond_208
    move/from16 v22, v12

    move/from16 v30, v14

    .line 2468
    .end local v12    # "stride":I
    .end local v14    # "nextn":I
    .restart local v22    # "stride":I
    .restart local v30    # "nextn":I
    :goto_20c
    if-eqz v17, :cond_21c

    .line 2469
    move-object/from16 v7, p0

    iput-object v0, v7, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2470
    iput-object v13, v7, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2471
    shl-int/lit8 v0, v9, 0x1

    ushr-int/lit8 v1, v9, 0x1

    sub-int/2addr v0, v1

    iput v0, v7, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2472
    return-void

    .line 2474
    :cond_21c
    move-object/from16 v7, p0

    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    iget v5, v7, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v0, v5

    .local v0, "sc":I
    add-int/lit8 v10, v0, -0x1

    move-object/from16 v2, p0

    move v11, v6

    .end local v6    # "i":I
    .local v11, "i":I
    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_244

    .line 2475
    add-int/lit8 v1, v0, -0x2

    invoke-static {v9}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v2

    const/16 v3, 0x10

    shl-int/2addr v2, v3

    if-eq v1, v2, :cond_23d

    .line 2476
    return-void

    .line 2477
    :cond_23d
    const/4 v1, 0x1

    move/from16 v16, v1

    move/from16 v17, v1

    .line 2478
    move v6, v9

    .end local v11    # "i":I
    .restart local v6    # "i":I
    goto :goto_248

    .line 2474
    .end local v6    # "i":I
    .restart local v11    # "i":I
    :cond_244
    const/4 v1, 0x1

    const/16 v3, 0x10

    move v6, v11

    .line 2480
    .end local v0    # "sc":I
    .end local v11    # "i":I
    .restart local v6    # "i":I
    :goto_248
    nop

    .line 2557
    :goto_249
    move v10, v1

    move v11, v3

    move/from16 v5, v20

    move/from16 v12, v22

    move/from16 v14, v30

    goto/16 :goto_43
.end method

.method private final greylist-max-o treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V
    .registers 15
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 2675
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_4e

    .line 2676
    array-length v0, p1

    move v1, v0

    .local v1, "n":I
    const/16 v2, 0x40

    if-ge v0, v2, :cond_e

    .line 2677
    shl-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    goto :goto_4e

    .line 2678
    :cond_e
    invoke-static {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v2, v0

    .local v2, "b":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_4e

    iget v0, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ltz v0, :cond_4e

    .line 2679
    monitor-enter v2

    .line 2680
    :try_start_1a
    invoke-static {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-ne v0, v2, :cond_49

    .line 2681
    const/4 v0, 0x0

    .local v0, "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    .line 2682
    .local v3, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v4, v2

    .local v4, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_23
    if-eqz v4, :cond_41

    .line 2683
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget v6, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v7, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v8, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object v5, v11

    .line 2686
    .local v5, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v3, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v3, :cond_3a

    .line 2687
    move-object v0, v5

    goto :goto_3c

    .line 2689
    :cond_3a
    iput-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2690
    :goto_3c
    move-object v3, v5

    .line 2682
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v4, v5

    goto :goto_23

    .line 2692
    .end local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_41
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    invoke-static {p1, p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2694
    .end local v0    # "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_49
    monitor-exit v2

    goto :goto_4e

    :catchall_4b
    move-exception v0

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_1a .. :try_end_4d} :catchall_4b

    throw v0

    .line 2697
    .end local v1    # "n":I
    .end local v2    # "b":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4e
    :goto_4e
    return-void
.end method

.method private final greylist-max-o tryPresize(I)V
    .registers 14
    .param p1, "size"    # I

    .line 2392
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x20000000

    if-lt p1, v1, :cond_8

    move v1, v0

    goto :goto_11

    .line 2393
    :cond_8
    ushr-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v1

    :goto_11
    nop

    .line 2395
    .local v1, "c":I
    :goto_12
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v9, v2

    .local v9, "sc":I
    if-ltz v2, :cond_6a

    .line 2396
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2397
    .local v2, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_42

    array-length v3, v2

    move v10, v3

    .local v10, "n":I
    if-nez v3, :cond_20

    goto :goto_42

    .line 2412
    :cond_20
    if-le v1, v9, :cond_6a

    if-lt v10, v0, :cond_25

    .line 2413
    goto :goto_6a

    .line 2414
    :cond_25
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v2, v3, :cond_69

    .line 2415
    invoke-static {v10}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v11

    .line 2416
    .local v11, "rs":I
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    shl-int/lit8 v4, v11, 0x10

    add-int/lit8 v8, v4, 0x2

    move-object v4, p0

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 2418
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_69

    .line 2398
    .end local v10    # "n":I
    .end local v11    # "rs":I
    :cond_42
    :goto_42
    if-le v9, v1, :cond_46

    move v3, v9

    goto :goto_47

    :cond_46
    move v3, v1

    :goto_47
    move v10, v3

    .line 2399
    .restart local v10    # "n":I
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v8, -0x1

    move-object v4, p0

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 2401
    :try_start_55
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v3, v2, :cond_62

    .line 2403
    new-array v3, v10, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2404
    .local v3, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_65

    .line 2405
    ushr-int/lit8 v4, v10, 0x2

    sub-int v4, v10, v4

    move v9, v4

    .line 2408
    .end local v3    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_62
    iput v9, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2409
    goto :goto_69

    .line 2408
    :catchall_65
    move-exception v0

    iput v9, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2409
    throw v0

    .line 2420
    .end local v2    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "n":I
    :cond_69
    :goto_69
    goto :goto_12

    .line 2421
    :cond_6a
    :goto_6a
    return-void
.end method

.method static greylist-max-o untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2703
    .local p0, "b":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "hd":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 2704
    .local v1, "tl":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v2, p0

    .local v2, "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_3
    if-eqz v2, :cond_1b

    .line 2705
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget v4, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v6, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2706
    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_15

    .line 2707
    move-object v0, v3

    goto :goto_17

    .line 2709
    :cond_15
    iput-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2710
    :goto_17
    move-object v1, v3

    .line 2704
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_3

    .line 2712
    .end local v2    # "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1b
    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 13
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1407
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1408
    .local v0, "sshift":I
    const/4 v1, 0x1

    .line 1409
    .local v1, "ssize":I
    :goto_2
    const/16 v2, 0x10

    if-ge v1, v2, :cond_b

    .line 1410
    add-int/lit8 v0, v0, 0x1

    .line 1411
    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1413
    :cond_b
    rsub-int/lit8 v3, v0, 0x20

    .line 1414
    .local v3, "segmentShift":I
    add-int/lit8 v4, v1, -0x1

    .line 1416
    .local v4, "segmentMask":I
    new-array v2, v2, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 1418
    .local v2, "segments":[Ljava/util/concurrent/ConcurrentHashMap$Segment;, "[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_12
    array-length v6, v2

    if-ge v5, v6, :cond_21

    .line 1419
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-direct {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap$Segment;-><init>(F)V

    aput-object v6, v2, v5

    .line 1418
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 1420
    .end local v5    # "i":I
    :cond_21
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v5

    .line 1421
    .local v5, "streamFields":Ljava/io/ObjectOutputStream$PutField;
    const-string v6, "segments"

    invoke-virtual {v5, v6, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1422
    const-string v6, "segmentShift"

    invoke-virtual {v5, v6, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1423
    const-string v6, "segmentMask"

    invoke-virtual {v5, v6, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1424
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1427
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v6

    .local v7, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_56

    .line 1428
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v8, v7

    const/4 v9, 0x0

    array-length v10, v7

    invoke-direct {v6, v7, v8, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1429
    .local v6, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_44
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v8

    move-object v9, v8

    .local v9, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v8, :cond_56

    .line 1430
    iget-object v8, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1431
    iget-object v8, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_44

    .line 1434
    .end local v6    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v9    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_56
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1435
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1436
    return-void
.end method


# virtual methods
.method final greylist-max-o batchFor(J)I
    .registers 11
    .param p1, "b"    # J

    .line 3700
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    move-wide v2, v0

    .local v2, "n":J
    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-lez v0, :cond_32

    cmp-long v0, v2, p1

    if-gez v0, :cond_19

    goto :goto_32

    .line 3702
    :cond_19
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 3703
    .local v0, "sp":I
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-lez v1, :cond_30

    div-long v4, v2, p1

    move-wide v2, v4

    int-to-long v6, v0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2e

    goto :goto_30

    :cond_2e
    long-to-int v1, v2

    goto :goto_31

    :cond_30
    :goto_30
    move v1, v0

    :goto_31
    return v1

    .line 3701
    .end local v0    # "sp":I
    .end local v2    # "n":J
    :cond_32
    :goto_32
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 11

    .line 1192
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 1193
    .local v0, "delta":J
    const/4 v2, 0x0

    .line 1194
    .local v2, "i":I
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1195
    .local v3, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_5
    const/4 v4, -0x1

    if-eqz v3, :cond_4f

    array-length v5, v3

    if-ge v2, v5, :cond_4f

    .line 1197
    invoke-static {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    .line 1198
    .local v5, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v5, :cond_14

    .line 1199
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 1200
    :cond_14
    iget v6, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v7, v6

    .local v7, "fh":I
    if-ne v6, v4, :cond_1f

    .line 1201
    invoke-virtual {p0, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    .line 1202
    const/4 v2, 0x0

    goto :goto_4b

    .line 1205
    :cond_1f
    monitor-enter v5

    .line 1206
    :try_start_20
    invoke-static {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    if-ne v4, v5, :cond_4a

    .line 1207
    const/4 v4, 0x0

    if-ltz v7, :cond_2b

    move-object v6, v5

    goto :goto_36

    .line 1208
    :cond_2b
    instance-of v6, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v6, :cond_35

    .line 1209
    move-object v6, v5

    check-cast v6, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_36

    :cond_35
    move-object v6, v4

    :goto_36
    nop

    .line 1210
    .local v6, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_37
    if-eqz v6, :cond_40

    .line 1211
    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    .line 1212
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_4c

    move-object v6, v8

    goto :goto_37

    .line 1214
    :cond_40
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "i":I
    .local v8, "i":I
    :try_start_42
    invoke-static {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_47

    move v2, v8

    goto :goto_4a

    .line 1216
    .end local v6    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_47
    move-exception v4

    move v2, v8

    goto :goto_4d

    .end local v8    # "i":I
    .restart local v2    # "i":I
    :cond_4a
    :goto_4a
    :try_start_4a
    monitor-exit v5

    .line 1218
    .end local v5    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "fh":I
    :goto_4b
    goto :goto_5

    .line 1216
    .restart local v5    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "fh":I
    :catchall_4c
    move-exception v4

    :goto_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4c

    throw v4

    .line 1219
    .end local v5    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "fh":I
    :cond_4f
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_58

    .line 1220
    invoke-direct {p0, v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1221
    :cond_58
    return-void
.end method

.method public whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1898
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_13e

    if-eqz v3, :cond_13e

    .line 1900
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v4

    .line 1901
    .local v4, "h":I
    const/4 v0, 0x0

    .line 1902
    .local v0, "val":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    .line 1903
    .local v5, "delta":I
    const/4 v6, 0x0

    .line 1904
    .local v6, "binCount":I
    iget-object v7, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v0

    .line 1906
    .end local v0    # "val":Ljava/lang/Object;, "TV;"
    .local v5, "val":Ljava/lang/Object;, "TV;"
    .local v6, "delta":I
    .local v7, "binCount":I
    .local v8, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1b
    if-eqz v8, :cond_135

    array-length v0, v8

    move v9, v0

    .local v9, "n":I
    if-nez v0, :cond_23

    goto/16 :goto_135

    .line 1908
    :cond_23
    add-int/lit8 v0, v9, -0x1

    and-int/2addr v0, v4

    move v10, v0

    .local v10, "i":I
    invoke-static {v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v11, v0

    .local v11, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v12, 0x0

    if-nez v0, :cond_60

    .line 1909
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    move-object v13, v0

    .line 1910
    .local v13, "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    monitor-enter v13

    .line 1911
    :try_start_36
    invoke-static {v8, v10, v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_5d

    if-eqz v0, :cond_56

    .line 1912
    const/4 v7, 0x1

    .line 1913
    const/4 v14, 0x0

    .line 1915
    .local v14, "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_3e
    invoke-interface {v3, v2, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    if-eqz v0, :cond_4c

    .line 1916
    const/4 v6, 0x1

    .line 1917
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v0, v4, v2, v5, v12}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_50

    move-object v14, v0

    .line 1920
    :cond_4c
    :try_start_4c
    invoke-static {v8, v10, v14}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1921
    goto :goto_56

    .line 1920
    :catchall_50
    move-exception v0

    invoke-static {v8, v10, v14}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1921
    nop

    .end local v4    # "h":I
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "delta":I
    .end local v7    # "binCount":I
    .end local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    throw v0

    .line 1923
    .end local v14    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "h":I
    .restart local v5    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "delta":I
    .restart local v7    # "binCount":I
    .restart local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "n":I
    .restart local v10    # "i":I
    .restart local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v13    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :cond_56
    :goto_56
    monitor-exit v13

    .line 1924
    if-eqz v7, :cond_5b

    .line 1925
    goto/16 :goto_12b

    .line 1926
    .end local v13    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5b
    goto/16 :goto_13a

    .line 1923
    .restart local v13    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_5d
    move-exception v0

    monitor-exit v13
    :try_end_5f
    .catchall {:try_start_4c .. :try_end_5f} :catchall_5d

    throw v0

    .line 1927
    .end local v13    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_60
    iget v0, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v13, v0

    .local v13, "fh":I
    const/4 v14, -0x1

    if-ne v0, v14, :cond_6d

    .line 1928
    invoke-virtual {v1, v8, v11}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v8, v0

    .end local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto/16 :goto_13a

    .line 1930
    .end local v0    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6d
    monitor-enter v11

    .line 1931
    :try_start_6e
    invoke-static {v8, v10}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_132

    if-ne v0, v11, :cond_121

    .line 1932
    if-ltz v13, :cond_d7

    .line 1933
    const/4 v0, 0x1

    .line 1934
    .end local v7    # "binCount":I
    .local v0, "binCount":I
    move-object v7, v11

    .local v7, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v14, 0x0

    move-object/from16 v17, v14

    move v14, v0

    move-object/from16 v0, v17

    .line 1936
    .local v0, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v14, "binCount":I
    :goto_7e
    :try_start_7e
    iget v15, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v15, v4, :cond_ad

    iget-object v15, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v16, v15

    .local v16, "ek":Ljava/lang/Object;, "TK;"
    if-eq v15, v2, :cond_93

    move-object/from16 v15, v16

    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .local v15, "ek":Ljava/lang/Object;, "TK;"
    if-eqz v15, :cond_ad

    .line 1938
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_ad

    goto :goto_95

    .line 1936
    .end local v15    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v16    # "ek":Ljava/lang/Object;, "TK;"
    :cond_93
    move-object/from16 v15, v16

    .line 1939
    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v15    # "ek":Ljava/lang/Object;, "TK;"
    :goto_95
    iget-object v12, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v3, v2, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v5, v12

    .line 1940
    if-eqz v5, :cond_a1

    .line 1941
    iput-object v5, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_cf

    .line 1943
    :cond_a1
    const/4 v6, -0x1

    .line 1944
    iget-object v12, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1945
    .local v12, "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_a9

    .line 1946
    iput-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_ac

    .line 1948
    :cond_a9
    invoke-static {v8, v10, v12}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1950
    .end local v12    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_ac
    goto :goto_cf

    .line 1952
    .end local v15    # "ek":Ljava/lang/Object;, "TK;"
    :cond_ad
    move-object v0, v7

    .line 1953
    iget-object v15, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v15

    if-nez v15, :cond_d1

    .line 1954
    invoke-interface {v3, v2, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v5, v15

    .line 1955
    if-eqz v5, :cond_cf

    .line 1956
    iget-object v15, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v15, :cond_c7

    .line 1958
    const/4 v6, 0x1

    .line 1959
    new-instance v15, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v15, v4, v2, v5, v12}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object v15, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_cf

    .line 1957
    :cond_c7
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v15, "Recursive update"

    invoke-direct {v12, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "h":I
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "delta":I
    .end local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "fh":I
    .end local v14    # "binCount":I
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    throw v12
    :try_end_cf
    .catchall {:try_start_7e .. :try_end_cf} :catchall_d4

    .line 1934
    .end local v0    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "h":I
    .restart local v5    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "delta":I
    .restart local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "n":I
    .restart local v10    # "i":I
    .restart local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v13    # "fh":I
    .restart local v14    # "binCount":I
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :cond_cf
    :goto_cf
    move v7, v14

    goto :goto_121

    .restart local v0    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_d1
    add-int/lit8 v14, v14, 0x1

    goto :goto_7e

    .line 1993
    .end local v0    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_d4
    move-exception v0

    move v7, v14

    goto :goto_133

    .line 1966
    .end local v14    # "binCount":I
    .local v7, "binCount":I
    :cond_d7
    :try_start_d7
    instance-of v0, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_114

    .line 1967
    const/4 v7, 0x1

    .line 1968
    move-object v0, v11

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1970
    .local v0, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v14, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v15, v14

    .local v15, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v14, :cond_e9

    .line 1971
    invoke-virtual {v15, v4, v2, v12}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v14

    .local v14, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_ea

    .line 1973
    .end local v14    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_e9
    const/4 v14, 0x0

    .line 1974
    .restart local v14    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_ea
    if-nez v14, :cond_ed

    goto :goto_ef

    :cond_ed
    iget-object v12, v14, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    .line 1975
    .local v12, "pv":Ljava/lang/Object;, "TV;"
    :goto_ef
    invoke-interface {v3, v2, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    .line 1976
    if-eqz v5, :cond_101

    .line 1977
    if-eqz v14, :cond_fc

    .line 1978
    iput-object v5, v14, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_113

    .line 1980
    :cond_fc
    const/4 v6, 0x1

    .line 1981
    invoke-virtual {v0, v4, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_113

    .line 1984
    :cond_101
    if-eqz v14, :cond_113

    .line 1985
    const/4 v6, -0x1

    .line 1986
    invoke-virtual {v0, v14}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v16

    if-eqz v16, :cond_113

    .line 1987
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    invoke-static {v8, v10, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1989
    .end local v0    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v12    # "pv":Ljava/lang/Object;, "TV;"
    .end local v14    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v15    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_113
    :goto_113
    goto :goto_121

    .line 1990
    :cond_114
    instance-of v0, v11, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v0, :cond_119

    goto :goto_121

    .line 1991
    :cond_119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Recursive update"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "h":I
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "delta":I
    .end local v7    # "binCount":I
    .end local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "fh":I
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    throw v0

    .line 1993
    .restart local v4    # "h":I
    .restart local v5    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "delta":I
    .restart local v7    # "binCount":I
    .restart local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "n":I
    .restart local v10    # "i":I
    .restart local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v13    # "fh":I
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :cond_121
    :goto_121
    monitor-exit v11
    :try_end_122
    .catchall {:try_start_d7 .. :try_end_122} :catchall_132

    .line 1994
    if-eqz v7, :cond_13a

    .line 1995
    const/16 v0, 0x8

    if-lt v7, v0, :cond_12b

    .line 1996
    invoke-direct {v1, v8, v10}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 2001
    .end local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "fh":I
    :cond_12b
    :goto_12b
    if-eqz v6, :cond_131

    .line 2002
    int-to-long v8, v6

    invoke-direct {v1, v8, v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 2003
    :cond_131
    return-object v5

    .line 1993
    .restart local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "n":I
    .restart local v10    # "i":I
    .restart local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v13    # "fh":I
    :catchall_132
    move-exception v0

    :goto_133
    :try_start_133
    monitor-exit v11
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    throw v0

    .line 1907
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "fh":I
    :cond_135
    :goto_135
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v8, v0

    .line 2000
    :cond_13a
    :goto_13a
    move-object/from16 v2, p1

    goto/16 :goto_1b

    .line 1899
    .end local v4    # "h":I
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "delta":I
    .end local v7    # "binCount":I
    .end local v8    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_13e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 1700
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    if-eqz p1, :cond_f5

    if-eqz p2, :cond_f5

    .line 1702
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    .line 1703
    .local v0, "h":I
    const/4 v1, 0x0

    .line 1704
    .local v1, "val":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 1705
    .local v2, "binCount":I
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1707
    .local v3, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_10
    if-eqz v3, :cond_ef

    array-length v4, v3

    move v5, v4

    .local v5, "n":I
    if-nez v4, :cond_18

    goto/16 :goto_ef

    .line 1709
    :cond_18
    add-int/lit8 v4, v5, -0x1

    and-int/2addr v4, v0

    move v6, v4

    .local v6, "i":I
    invoke-static {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    move-object v7, v4

    .local v7, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v8, 0x0

    if-nez v4, :cond_53

    .line 1710
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    .line 1711
    .local v4, "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    monitor-enter v4

    .line 1712
    :try_start_2a
    invoke-static {v3, v6, v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v9
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_50

    if-eqz v9, :cond_49

    .line 1713
    const/4 v2, 0x1

    .line 1714
    const/4 v9, 0x0

    .line 1716
    .local v9, "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_32
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    if-eqz v10, :cond_3f

    .line 1717
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v10, v0, p1, v1, v8}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_43

    move-object v9, v10

    .line 1719
    :cond_3f
    :try_start_3f
    invoke-static {v3, v6, v9}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1720
    goto :goto_49

    .line 1719
    :catchall_43
    move-exception v8

    invoke-static {v3, v6, v9}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1720
    nop

    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "binCount":I
    .end local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    throw v8

    .line 1722
    .end local v9    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v0    # "h":I
    .restart local v1    # "val":Ljava/lang/Object;, "TV;"
    .restart local v2    # "binCount":I
    .restart local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "n":I
    .restart local v6    # "i":I
    .restart local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    :cond_49
    :goto_49
    monitor-exit v4

    .line 1723
    if-eqz v2, :cond_4e

    .line 1724
    goto/16 :goto_e4

    .line 1725
    .end local v4    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4e
    goto/16 :goto_f3

    .line 1722
    .restart local v4    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_50
    move-exception v8

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_50

    throw v8

    .line 1726
    .end local v4    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_53
    iget v4, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v9, v4

    .local v9, "fh":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_5f

    .line 1727
    invoke-virtual {p0, v3, v7}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    goto/16 :goto_f3

    .line 1729
    :cond_5f
    const/4 v4, 0x0

    .line 1730
    .local v4, "added":Z
    monitor-enter v7

    .line 1731
    :try_start_61
    invoke-static {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v10

    if-ne v10, v7, :cond_d7

    .line 1732
    if-ltz v9, :cond_a6

    .line 1733
    const/4 v2, 0x1

    .line 1734
    move-object v10, v7

    .line 1736
    .local v10, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_6b
    iget v11, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v11, v0, :cond_80

    iget-object v11, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v12, v11

    .local v12, "ek":Ljava/lang/Object;, "TK;"
    if-eq v11, p1, :cond_7c

    if-eqz v12, :cond_80

    .line 1738
    invoke-virtual {p1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_80

    .line 1739
    :cond_7c
    iget-object v8, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v1, v8

    .line 1740
    goto :goto_a2

    .line 1742
    .end local v12    # "ek":Ljava/lang/Object;, "TK;"
    :cond_80
    move-object v11, v10

    .line 1743
    .local v11, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v12, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v10, v12

    if-nez v12, :cond_a3

    .line 1744
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v1, v12

    if-eqz v12, :cond_a2

    .line 1745
    iget-object v12, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v12, :cond_9a

    .line 1747
    const/4 v4, 0x1

    .line 1748
    new-instance v12, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v12, v0, p1, v1, v8}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object v12, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_a2

    .line 1746
    :cond_9a
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v12, "Recursive update"

    invoke-direct {v8, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "binCount":I
    .end local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "added":Z
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    throw v8

    .line 1734
    .end local v10    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v0    # "h":I
    .restart local v1    # "val":Ljava/lang/Object;, "TV;"
    .restart local v2    # "binCount":I
    .restart local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "added":Z
    .restart local v5    # "n":I
    .restart local v6    # "i":I
    .restart local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    :cond_a2
    :goto_a2
    goto :goto_d7

    .restart local v10    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_a3
    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    .line 1754
    .end local v10    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_a6
    instance-of v10, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v10, :cond_ca

    .line 1755
    const/4 v2, 0x2

    .line 1756
    move-object v10, v7

    check-cast v10, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1758
    .local v10, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v11, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v12, v11

    .local v12, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v11, :cond_be

    .line 1759
    invoke-virtual {v12, v0, p1, v8}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v8

    move-object v11, v8

    .local v11, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v8, :cond_be

    .line 1760
    iget-object v8, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    move-object v1, v8

    goto :goto_c9

    .line 1761
    .end local v11    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_be
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    if-eqz v8, :cond_c9

    .line 1762
    const/4 v4, 0x1

    .line 1763
    invoke-virtual {v10, v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 1765
    .end local v10    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v12    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_c9
    :goto_c9
    goto :goto_d7

    .line 1766
    :cond_ca
    instance-of v8, v7, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v8, :cond_cf

    goto :goto_d7

    .line 1767
    :cond_cf
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v10, "Recursive update"

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "binCount":I
    .end local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "added":Z
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    throw v8

    .line 1769
    .restart local v0    # "h":I
    .restart local v1    # "val":Ljava/lang/Object;, "TV;"
    .restart local v2    # "binCount":I
    .restart local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "added":Z
    .restart local v5    # "n":I
    .restart local v6    # "i":I
    .restart local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    :cond_d7
    :goto_d7
    monitor-exit v7
    :try_end_d8
    .catchall {:try_start_61 .. :try_end_d8} :catchall_ec

    .line 1770
    if-eqz v2, :cond_f3

    .line 1771
    const/16 v8, 0x8

    if-lt v2, v8, :cond_e1

    .line 1772
    invoke-direct {p0, v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 1773
    :cond_e1
    if-nez v4, :cond_e4

    .line 1774
    return-object v1

    .line 1779
    .end local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "added":Z
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    :cond_e4
    :goto_e4
    if-eqz v1, :cond_eb

    .line 1780
    const-wide/16 v3, 0x1

    invoke-direct {p0, v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1781
    :cond_eb
    return-object v1

    .line 1769
    .restart local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "added":Z
    .restart local v5    # "n":I
    .restart local v6    # "i":I
    .restart local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    :catchall_ec
    move-exception v8

    :try_start_ed
    monitor-exit v7
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ec

    throw v8

    .line 1708
    .end local v4    # "added":Z
    .end local v5    # "n":I
    .end local v6    # "i":I
    .end local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    :cond_ef
    :goto_ef
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    .line 1778
    :cond_f3
    :goto_f3
    goto/16 :goto_10

    .line 1701
    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "binCount":I
    .end local v3    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_f5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1805
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_c5

    if-eqz p2, :cond_c5

    .line 1807
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    .line 1808
    .local v0, "h":I
    const/4 v1, 0x0

    .line 1809
    .local v1, "val":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 1810
    .local v2, "delta":I
    const/4 v3, 0x0

    .line 1811
    .local v3, "binCount":I
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1813
    .local v4, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_11
    if-eqz v4, :cond_bf

    array-length v5, v4

    move v6, v5

    .local v6, "n":I
    if-nez v5, :cond_19

    goto/16 :goto_bf

    .line 1815
    :cond_19
    add-int/lit8 v5, v6, -0x1

    and-int/2addr v5, v0

    move v7, v5

    .local v7, "i":I
    invoke-static {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    move-object v8, v5

    .local v8, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v5, :cond_26

    .line 1816
    goto/16 :goto_b5

    .line 1817
    :cond_26
    iget v5, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v9, v5

    .local v9, "fh":I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_32

    .line 1818
    invoke-virtual {p0, v4, v8}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    goto/16 :goto_c3

    .line 1820
    :cond_32
    monitor-enter v8

    .line 1821
    :try_start_33
    invoke-static {v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    if-ne v5, v8, :cond_b1

    .line 1822
    if-ltz v9, :cond_72

    .line 1823
    const/4 v3, 0x1

    .line 1824
    move-object v5, v8

    .local v5, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v10, 0x0

    .line 1826
    .local v10, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_3e
    iget v11, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v11, v0, :cond_67

    iget-object v11, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v12, v11

    .local v12, "ek":Ljava/lang/Object;, "TK;"
    if-eq v11, p1, :cond_4f

    if-eqz v12, :cond_67

    .line 1828
    invoke-virtual {p1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_67

    .line 1829
    :cond_4f
    iget-object v11, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p2, p1, v11}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    .line 1830
    if-eqz v1, :cond_5b

    .line 1831
    iput-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_6e

    .line 1833
    :cond_5b
    const/4 v2, -0x1

    .line 1834
    iget-object v11, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1835
    .local v11, "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v10, :cond_63

    .line 1836
    iput-object v11, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_66

    .line 1838
    :cond_63
    invoke-static {v4, v7, v11}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1840
    .end local v11    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_66
    goto :goto_6e

    .line 1842
    .end local v12    # "ek":Ljava/lang/Object;, "TK;"
    :cond_67
    move-object v10, v5

    .line 1843
    iget-object v11, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v5, v11

    if-nez v11, :cond_6f

    .line 1844
    nop

    .line 1824
    .end local v5    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_6e
    goto :goto_b1

    .restart local v5    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 1847
    .end local v5    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_72
    instance-of v5, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v5, :cond_a4

    .line 1848
    const/4 v3, 0x2

    .line 1849
    move-object v5, v8

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1851
    .local v5, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v10, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v11, v10

    .local v11, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v10, :cond_a3

    const/4 v10, 0x0

    .line 1852
    invoke-virtual {v11, v0, p1, v10}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v10

    move-object v12, v10

    .local v12, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v10, :cond_a3

    .line 1853
    iget-object v10, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    invoke-interface {p2, p1, v10}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    .line 1854
    if-eqz v1, :cond_93

    .line 1855
    iput-object v1, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_a3

    .line 1857
    :cond_93
    const/4 v2, -0x1

    .line 1858
    invoke-virtual {v5, v12}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v10

    if-eqz v10, :cond_a3

    .line 1859
    iget-object v10, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v10}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v10

    invoke-static {v4, v7, v10}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1862
    .end local v5    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v11    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_a3
    :goto_a3
    goto :goto_b1

    .line 1863
    :cond_a4
    instance-of v5, v8, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v5, :cond_a9

    goto :goto_b1

    .line 1864
    :cond_a9
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v10, "Recursive update"

    invoke-direct {v5, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "delta":I
    .end local v3    # "binCount":I
    .end local v4    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "n":I
    .end local v7    # "i":I
    .end local v8    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    throw v5

    .line 1866
    .restart local v0    # "h":I
    .restart local v1    # "val":Ljava/lang/Object;, "TV;"
    .restart local v2    # "delta":I
    .restart local v3    # "binCount":I
    .restart local v4    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v6    # "n":I
    .restart local v7    # "i":I
    .restart local v8    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    :cond_b1
    :goto_b1
    monitor-exit v8
    :try_end_b2
    .catchall {:try_start_33 .. :try_end_b2} :catchall_bc

    .line 1867
    if-eqz v3, :cond_c3

    .line 1868
    nop

    .line 1871
    .end local v4    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "n":I
    .end local v7    # "i":I
    .end local v8    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    :goto_b5
    if-eqz v2, :cond_bb

    .line 1872
    int-to-long v4, v2

    invoke-direct {p0, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1873
    :cond_bb
    return-object v1

    .line 1866
    .restart local v4    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v6    # "n":I
    .restart local v7    # "i":I
    .restart local v8    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "fh":I
    :catchall_bc
    move-exception v5

    :try_start_bd
    monitor-exit v8
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw v5

    .line 1814
    .end local v6    # "n":I
    .end local v7    # "i":I
    .end local v8    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "fh":I
    :cond_bf
    :goto_bf
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    .line 1870
    :cond_c3
    :goto_c3
    goto/16 :goto_11

    .line 1806
    .end local v0    # "h":I
    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    .end local v2    # "delta":I
    .end local v3    # "binCount":I
    .end local v4    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_c5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 2136
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 972
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;

    .line 986
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-eqz p1, :cond_28

    .line 989
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_27

    .line 990
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v1

    array-length v4, v1

    invoke-direct {v0, v1, v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 991
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_27

    .line 993
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v5, v3

    .local v5, "v":Ljava/lang/Object;, "TV;"
    if-eq v3, p1, :cond_25

    if-eqz v5, :cond_24

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_25

    .line 995
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_24
    goto :goto_f

    .line 994
    .restart local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_25
    :goto_25
    const/4 v2, 0x1

    return v2

    .line 997
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_27
    return v2

    .line 987
    .end local v1    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api elements()Ljava/util/Enumeration;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TV;>;"
        }
    .end annotation

    .line 2159
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v0

    .local v7, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_8

    :cond_7
    array-length v0, v7

    :goto_8
    move v3, v0

    .line 2160
    .local v3, "f":I
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, v7

    move v5, v3

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
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

    .line 1293
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    move-object v1, v0

    .local v1, "es":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_e

    :cond_7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    :goto_e
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 13
    .param p1, "o"    # Ljava/lang/Object;

    .line 1358
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-eq p1, p0, :cond_68

    .line 1359
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1360
    return v1

    .line 1361
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 1363
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v3, v2

    .local v3, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v2, :cond_12

    move v2, v1

    goto :goto_13

    :cond_12
    array-length v2, v3

    .line 1364
    .local v2, "f":I
    :goto_13
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    invoke-direct {v4, v3, v2, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1365
    .local v4, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_18
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    move-object v6, v5

    .local v6, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v5, :cond_34

    .line 1366
    iget-object v5, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1367
    .local v5, "val":Ljava/lang/Object;, "TV;"
    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1368
    .local v7, "v":Ljava/lang/Object;
    if-eqz v7, :cond_33

    if-eq v7, v5, :cond_32

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_32

    goto :goto_33

    .line 1370
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v7    # "v":Ljava/lang/Object;
    :cond_32
    goto :goto_18

    .line 1369
    .restart local v5    # "val":Ljava/lang/Object;, "TV;"
    .restart local v7    # "v":Ljava/lang/Object;
    :cond_33
    :goto_33
    return v1

    .line 1371
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    .end local v6    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "v":Ljava/lang/Object;
    :cond_34
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1373
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    .local v8, "mk":Ljava/lang/Object;
    if-eqz v7, :cond_67

    .line 1374
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    .local v9, "mv":Ljava/lang/Object;
    if-eqz v7, :cond_67

    .line 1375
    invoke-virtual {p0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    .local v10, "v":Ljava/lang/Object;
    if-eqz v7, :cond_67

    if-eq v9, v10, :cond_66

    .line 1376
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_66

    goto :goto_67

    .line 1378
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v8    # "mk":Ljava/lang/Object;
    .end local v9    # "mv":Ljava/lang/Object;
    .end local v10    # "v":Ljava/lang/Object;
    :cond_66
    goto :goto_3c

    .line 1377
    .restart local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v8    # "mk":Ljava/lang/Object;
    :cond_67
    :goto_67
    return v1

    .line 1380
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v2    # "f":I
    .end local v3    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v8    # "mk":Ljava/lang/Object;
    :cond_68
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api forEach(JLjava/util/function/BiConsumer;)V
    .registers 12
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 3716
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-eqz p3, :cond_16

    .line 3717
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;

    const/4 v1, 0x0

    .line 3718
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v0, v7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiConsumer;)V

    .line 3719
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->invoke()Ljava/lang/Object;

    .line 3720
    return-void

    .line 3716
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEach(JLjava/util/function/BiFunction;Ljava/util/function/Consumer;)V
    .registers 14
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TU;>;",
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 3738
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz p3, :cond_19

    if-eqz p4, :cond_19

    .line 3740
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;

    const/4 v1, 0x0

    .line 3741
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v0, v8

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/function/Consumer;)V

    .line 3742
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->invoke()Ljava/lang/Object;

    .line 3743
    return-void

    .line 3739
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1609
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-eqz p1, :cond_1f

    .line 1611
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1e

    .line 1612
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1613
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v3, v2

    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_1e

    .line 1614
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v2, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    .line 1617
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1e
    return-void

    .line 1609
    .end local v1    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEachEntry(JLjava/util/function/Consumer;)V
    .registers 12
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 4255
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_16

    .line 4256
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v0, v7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    .line 4257
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->invoke()Ljava/lang/Object;

    .line 4258
    return-void

    .line 4255
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEachEntry(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .registers 14
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;",
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 4276
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz p3, :cond_19

    if-eqz p4, :cond_19

    .line 4278
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;

    const/4 v1, 0x0

    .line 4279
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v0, v8

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    .line 4280
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->invoke()Ljava/lang/Object;

    .line 4281
    return-void

    .line 4277
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEachKey(JLjava/util/function/Consumer;)V
    .registers 12
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 3883
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p3, :cond_16

    .line 3884
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;

    const/4 v1, 0x0

    .line 3885
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v0, v7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    .line 3886
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->invoke()Ljava/lang/Object;

    .line 3887
    return-void

    .line 3883
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEachKey(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .registers 14
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TK;+TU;>;",
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 3905
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz p3, :cond_19

    if-eqz p4, :cond_19

    .line 3907
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;

    const/4 v1, 0x0

    .line 3908
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v0, v8

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    .line 3909
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->invoke()Ljava/lang/Object;

    .line 3910
    return-void

    .line 3906
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEachValue(JLjava/util/function/Consumer;)V
    .registers 12
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 4069
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p3, :cond_16

    .line 4071
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;

    const/4 v1, 0x0

    .line 4072
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v0, v7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    .line 4073
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->invoke()Ljava/lang/Object;

    .line 4074
    return-void

    .line 4070
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEachValue(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .registers 14
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TV;+TU;>;",
            "Ljava/util/function/Consumer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 4092
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    if-eqz p3, :cond_19

    if-eqz p4, :cond_19

    .line 4094
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;

    const/4 v1, 0x0

    .line 4095
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v0, v8

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    .line 4096
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->invoke()Ljava/lang/Object;

    .line 4097
    return-void

    .line 4093
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 944
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    .line 945
    .local v0, "h":I
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    if-eqz v1, :cond_56

    array-length v1, v2

    move v4, v1

    .local v4, "n":I
    if-lez v1, :cond_56

    add-int/lit8 v1, v4, -0x1

    and-int/2addr v1, v0

    .line 946
    invoke-static {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v5, v1

    .local v5, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_56

    .line 947
    iget v1, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v6, v1

    .local v6, "eh":I
    if-ne v1, v0, :cond_31

    .line 948
    iget-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v7, v1

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_2e

    if-eqz v7, :cond_3d

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 949
    :cond_2e
    iget-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object v1

    .line 951
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    :cond_31
    if-gez v6, :cond_3d

    .line 952
    invoke-virtual {v5, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap$Node;->find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v7, v1

    .local v7, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_3c

    iget-object v3, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    :cond_3c
    return-object v3

    .line 953
    .end local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3d
    iget-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v5, v1

    if-eqz v1, :cond_56

    .line 954
    iget v1, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v1, v0, :cond_3d

    iget-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v7, v1

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_53

    if-eqz v7, :cond_3d

    .line 955
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 956
    :cond_53
    iget-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object v1

    .line 959
    .end local v4    # "n":I
    .end local v5    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "eh":I
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    :cond_56
    return-object v3
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

    .line 1605
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_9

    move-object v0, p2

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 1304
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1306
    .local v0, "h":I
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_24

    .line 1307
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1308
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_e
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_24

    .line 1309
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v3, v5

    add-int/2addr v0, v3

    goto :goto_e

    .line 1311
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_24
    return v0
.end method

.method final greylist-max-o helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;)[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2368
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_45

    instance-of v0, p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v0, :cond_45

    move-object v0, p2

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_45

    .line 2370
    array-length v0, p1

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v0

    .line 2371
    .local v0, "rs":I
    :cond_13
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v1, v2, :cond_44

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v2, p1, :cond_44

    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v9, v2

    .local v9, "sc":I
    if-gez v2, :cond_44

    .line 2373
    ushr-int/lit8 v2, v9, 0x10

    if-ne v2, v0, :cond_44

    add-int/lit8 v2, v0, 0x1

    if-eq v9, v2, :cond_44

    const v2, 0xffff

    add-int/2addr v2, v0

    if-eq v9, v2, :cond_44

    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v2, :cond_33

    .line 2375
    goto :goto_44

    .line 2376
    :cond_33
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v8, v9, 0x1

    move-object v4, p0

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2377
    invoke-direct {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2381
    .end local v9    # "sc":I
    :cond_44
    :goto_44
    return-object v1

    .line 2383
    .end local v0    # "rs":I
    .end local v1    # "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_45
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 5

    .line 928
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
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

    .line 1248
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-object v1, v0

    .local v1, "ks":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_f

    :cond_7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    :goto_f
    return-object v0
.end method

.method public bridge synthetic whitelist test-api keySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    return-object v0
.end method

.method public whitelist test-api keySet(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2222
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "mappedValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_8

    .line 2224
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0

    .line 2223
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api keys()Ljava/util/Enumeration;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TK;>;"
        }
    .end annotation

    .line 2147
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v0

    .local v7, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_8

    :cond_7
    array-length v0, v7

    :goto_8
    move v3, v0

    .line 2148
    .local v3, "f":I
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, v7

    move v5, v3

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public whitelist test-api mappingCount()J
    .registers 6

    .line 2176
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    .line 2177
    .local v0, "n":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_b

    goto :goto_c

    :cond_b
    move-wide v2, v0

    :goto_c
    return-wide v2
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

    .line 2027
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    if-eqz v2, :cond_15f

    if-eqz v3, :cond_15f

    if-eqz v4, :cond_15f

    .line 2029
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v5

    .line 2030
    .local v5, "h":I
    const/4 v0, 0x0

    .line 2031
    .local v0, "val":Ljava/lang/Object;, "TV;"
    const/4 v6, 0x0

    .line 2032
    .local v6, "delta":I
    const/4 v7, 0x0

    .line 2033
    .local v7, "binCount":I
    iget-object v8, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v9, v8

    move v8, v7

    move v7, v6

    move-object v6, v0

    .line 2035
    .end local v0    # "val":Ljava/lang/Object;, "TV;"
    .local v6, "val":Ljava/lang/Object;, "TV;"
    .local v7, "delta":I
    .local v8, "binCount":I
    .local v9, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1f
    if-eqz v9, :cond_152

    array-length v0, v9

    move v10, v0

    .local v10, "n":I
    if-nez v0, :cond_29

    move-object/from16 v17, v6

    goto/16 :goto_154

    .line 2037
    :cond_29
    add-int/lit8 v0, v10, -0x1

    and-int/2addr v0, v5

    move v11, v0

    .local v11, "i":I
    invoke-static {v9, v0}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v12, v0

    .local v12, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v13, 0x0

    if-nez v0, :cond_45

    .line 2038
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v0, v5, v2, v3, v13}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    invoke-static {v9, v11, v13, v0}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 2039
    const/4 v0, 0x1

    .line 2040
    .end local v7    # "delta":I
    .local v0, "delta":I
    move-object/from16 v6, p2

    .line 2041
    goto/16 :goto_144

    .line 2044
    .end local v0    # "delta":I
    .restart local v7    # "delta":I
    :cond_45
    iget v0, v12, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v14, v0

    .local v14, "fh":I
    const/4 v15, -0x1

    if-ne v0, v15, :cond_52

    .line 2045
    invoke-virtual {v1, v9, v12}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto/16 :goto_15b

    .line 2047
    .end local v0    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_52
    monitor-enter v12

    .line 2048
    :try_start_53
    invoke-static {v9, v11}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_14b

    if-ne v0, v12, :cond_135

    .line 2049
    if-ltz v14, :cond_df

    .line 2050
    const/4 v0, 0x1

    .line 2051
    .end local v8    # "binCount":I
    .local v0, "binCount":I
    move-object v8, v12

    .local v8, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v15, 0x0

    move-object/from16 v19, v15

    move v15, v0

    move-object/from16 v0, v19

    .line 2053
    .local v0, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v15, "binCount":I
    :goto_63
    :try_start_63
    iget v13, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v13, v5, :cond_a7

    iget-object v13, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_d9

    move-object/from16 v17, v13

    .local v17, "ek":Ljava/lang/Object;, "TK;"
    if-eq v13, v2, :cond_82

    move-object/from16 v13, v17

    .end local v17    # "ek":Ljava/lang/Object;, "TK;"
    .local v13, "ek":Ljava/lang/Object;, "TK;"
    if-eqz v13, :cond_7f

    .line 2055
    :try_start_71
    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_7b

    if-eqz v17, :cond_78

    goto :goto_84

    :cond_78
    move-object/from16 v17, v6

    goto :goto_a9

    .line 2104
    .end local v0    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "ek":Ljava/lang/Object;, "TK;"
    :catchall_7b
    move-exception v0

    move v8, v15

    goto/16 :goto_14e

    .line 2053
    .restart local v0    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v8    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v13    # "ek":Ljava/lang/Object;, "TK;"
    :cond_7f
    move-object/from16 v17, v6

    goto :goto_a9

    .end local v13    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v17    # "ek":Ljava/lang/Object;, "TK;"
    :cond_82
    move-object/from16 v13, v17

    .line 2056
    .end local v17    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v13    # "ek":Ljava/lang/Object;, "TK;"
    :goto_84
    move-object/from16 v17, v6

    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .local v17, "val":Ljava/lang/Object;, "TV;"
    :try_start_86
    iget-object v6, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v4, v6, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_d3

    .line 2057
    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_91

    .line 2058
    :try_start_8e
    iput-object v6, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_90
    .catchall {:try_start_8e .. :try_end_90} :catchall_7b

    goto :goto_be

    .line 2060
    :cond_91
    const/4 v7, -0x1

    .line 2061
    move-object/from16 v16, v6

    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .local v16, "val":Ljava/lang/Object;, "TV;"
    :try_start_94
    iget-object v6, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2062
    .local v6, "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_9b

    .line 2063
    iput-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_9e

    .line 2065
    :cond_9b
    invoke-static {v9, v11, v6}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_9e
    .catchall {:try_start_94 .. :try_end_9e} :catchall_a1

    .line 2067
    .end local v6    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_9e
    move-object/from16 v6, v16

    goto :goto_be

    .line 2104
    .end local v0    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v13    # "ek":Ljava/lang/Object;, "TK;"
    :catchall_a1
    move-exception v0

    move v8, v15

    move-object/from16 v6, v16

    goto/16 :goto_14e

    .line 2053
    .end local v16    # "val":Ljava/lang/Object;, "TV;"
    .restart local v0    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v6, "val":Ljava/lang/Object;, "TV;"
    .restart local v8    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_a7
    move-object/from16 v17, v6

    .line 2069
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v17    # "val":Ljava/lang/Object;, "TV;"
    :goto_a9
    move-object v0, v8

    .line 2070
    :try_start_aa
    iget-object v6, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_ac
    .catchall {:try_start_aa .. :try_end_ac} :catchall_d3

    move-object v8, v6

    if-nez v6, :cond_cd

    .line 2071
    const/4 v7, 0x1

    .line 2072
    move-object/from16 v6, p2

    .line 2073
    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    :try_start_b2
    new-instance v13, Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_b4
    .catchall {:try_start_b2 .. :try_end_b4} :catchall_c7

    move/from16 v18, v7

    const/4 v7, 0x0

    .end local v7    # "delta":I
    .local v18, "delta":I
    :try_start_b7
    invoke-direct {v13, v5, v2, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_bc
    .catchall {:try_start_b7 .. :try_end_bc} :catchall_c1

    .line 2075
    move/from16 v7, v18

    .line 2051
    .end local v0    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v18    # "delta":I
    .restart local v7    # "delta":I
    :goto_be
    move v8, v15

    goto/16 :goto_139

    .line 2104
    .end local v7    # "delta":I
    .restart local v18    # "delta":I
    :catchall_c1
    move-exception v0

    move v8, v15

    move/from16 v7, v18

    goto/16 :goto_14e

    .end local v18    # "delta":I
    .restart local v7    # "delta":I
    :catchall_c7
    move-exception v0

    move/from16 v18, v7

    move v8, v15

    .end local v7    # "delta":I
    .restart local v18    # "delta":I
    goto/16 :goto_14e

    .line 2051
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .end local v18    # "delta":I
    .restart local v0    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "delta":I
    .restart local v8    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v17    # "val":Ljava/lang/Object;, "TV;"
    :cond_cd
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v17

    const/4 v13, 0x0

    goto :goto_63

    .line 2104
    .end local v0    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_d3
    move-exception v0

    move v8, v15

    move-object/from16 v6, v17

    goto/16 :goto_14e

    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    :catchall_d9
    move-exception v0

    move-object/from16 v17, v6

    move v8, v15

    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v17    # "val":Ljava/lang/Object;, "TV;"
    goto/16 :goto_14e

    .line 2079
    .end local v15    # "binCount":I
    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    .local v8, "binCount":I
    :cond_df
    move-object/from16 v17, v6

    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v17    # "val":Ljava/lang/Object;, "TV;"
    :try_start_e1
    instance-of v0, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_124

    .line 2080
    const/4 v8, 0x2

    .line 2081
    move-object v0, v12

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 2082
    .local v0, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2083
    .local v6, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v6, :cond_ef

    const/4 v13, 0x0

    goto :goto_f4

    .line 2084
    :cond_ef
    const/4 v13, 0x0

    invoke-virtual {v6, v5, v2, v13}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v13

    :goto_f4
    nop

    .line 2085
    .local v13, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v13, :cond_f9

    move-object v15, v3

    goto :goto_ff

    .line 2086
    :cond_f9
    iget-object v15, v13, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    invoke-interface {v4, v15, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15
    :try_end_ff
    .catchall {:try_start_e1 .. :try_end_ff} :catchall_131

    :goto_ff
    nop

    .line 2087
    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .local v15, "val":Ljava/lang/Object;, "TV;"
    if-eqz v15, :cond_10c

    .line 2088
    if-eqz v13, :cond_107

    .line 2089
    :try_start_104
    iput-object v15, v13, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_122

    .line 2091
    :cond_107
    const/4 v7, 0x1

    .line 2092
    invoke-virtual {v0, v5, v2, v15}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_122

    .line 2095
    :cond_10c
    if-eqz v13, :cond_122

    .line 2096
    const/4 v7, -0x1

    .line 2097
    invoke-virtual {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v16

    if-eqz v16, :cond_122

    .line 2098
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    invoke-static {v9, v11, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_11e
    .catchall {:try_start_104 .. :try_end_11e} :catchall_11f

    goto :goto_122

    .line 2104
    .end local v0    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v6    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v13    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :catchall_11f
    move-exception v0

    move-object v6, v15

    goto :goto_14e

    .line 2100
    :cond_122
    :goto_122
    move-object v6, v15

    goto :goto_139

    .line 2101
    .end local v15    # "val":Ljava/lang/Object;, "TV;"
    .restart local v17    # "val":Ljava/lang/Object;, "TV;"
    :cond_124
    :try_start_124
    instance-of v0, v12, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v0, :cond_129

    goto :goto_137

    .line 2102
    :cond_129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Recursive update"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "h":I
    .end local v7    # "delta":I
    .end local v8    # "binCount":I
    .end local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "n":I
    .end local v11    # "i":I
    .end local v12    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "fh":I
    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    throw v0
    :try_end_131
    .catchall {:try_start_124 .. :try_end_131} :catchall_131

    .line 2104
    .restart local v5    # "h":I
    .restart local v7    # "delta":I
    .restart local v8    # "binCount":I
    .restart local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "n":I
    .restart local v11    # "i":I
    .restart local v12    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v14    # "fh":I
    .restart local v17    # "val":Ljava/lang/Object;, "TV;"
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    .restart local p3    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    :catchall_131
    move-exception v0

    move-object/from16 v6, v17

    goto :goto_14e

    .line 2048
    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .local v6, "val":Ljava/lang/Object;, "TV;"
    :cond_135
    move-object/from16 v17, v6

    .line 2104
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v17    # "val":Ljava/lang/Object;, "TV;"
    :goto_137
    move-object/from16 v6, v17

    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    :goto_139
    :try_start_139
    monitor-exit v12
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_150

    .line 2105
    if-eqz v8, :cond_15b

    .line 2106
    const/16 v0, 0x8

    if-lt v8, v0, :cond_143

    .line 2107
    invoke-direct {v1, v9, v11}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 2112
    .end local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "n":I
    .end local v11    # "i":I
    .end local v12    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "fh":I
    :cond_143
    move v0, v7

    .end local v7    # "delta":I
    .local v0, "delta":I
    :goto_144
    if-eqz v0, :cond_14a

    .line 2113
    int-to-long v9, v0

    invoke-direct {v1, v9, v10, v8}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 2114
    :cond_14a
    return-object v6

    .line 2104
    .end local v0    # "delta":I
    .restart local v7    # "delta":I
    .restart local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "n":I
    .restart local v11    # "i":I
    .restart local v12    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v14    # "fh":I
    :catchall_14b
    move-exception v0

    move-object/from16 v17, v6

    :goto_14e
    :try_start_14e
    monitor-exit v12
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_150

    throw v0

    :catchall_150
    move-exception v0

    goto :goto_14e

    .line 2035
    .end local v10    # "n":I
    .end local v11    # "i":I
    .end local v12    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "fh":I
    :cond_152
    move-object/from16 v17, v6

    .line 2036
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .restart local v17    # "val":Ljava/lang/Object;, "TV;"
    :goto_154
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v9, v0

    move-object/from16 v6, v17

    .line 2111
    .end local v17    # "val":Ljava/lang/Object;, "TV;"
    .restart local v6    # "val":Ljava/lang/Object;, "TV;"
    :cond_15b
    :goto_15b
    move-object/from16 v2, p1

    goto/16 :goto_1f

    .line 2028
    .end local v5    # "h":I
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    .end local v7    # "delta":I
    .end local v8    # "binCount":I
    .end local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_15f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1014
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 1092
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    .line 1093
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1094
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_f

    .line 1095
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_28
    return-void
.end method

.method public whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1552
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 16
    .param p3, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .line 1019
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_b3

    if-eqz p2, :cond_b3

    .line 1020
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    .line 1021
    .local v0, "hash":I
    const/4 v1, 0x0

    .line 1022
    .local v1, "binCount":I
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1024
    .local v2, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_f
    if-eqz v2, :cond_ad

    array-length v3, v2

    move v4, v3

    .local v4, "n":I
    if-nez v3, :cond_17

    goto/16 :goto_ad

    .line 1026
    :cond_17
    add-int/lit8 v3, v4, -0x1

    and-int/2addr v3, v0

    move v5, v3

    .local v5, "i":I
    invoke-static {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v6, v3

    .local v6, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v7, 0x0

    if-nez v3, :cond_30

    .line 1027
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v3, v0, p1, p2, v7}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    invoke-static {v2, v5, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 1029
    goto/16 :goto_a4

    .line 1031
    :cond_30
    iget v3, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v8, v3

    .local v8, "fh":I
    const/4 v9, -0x1

    if-ne v3, v9, :cond_3c

    .line 1032
    invoke-virtual {p0, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    goto/16 :goto_b1

    .line 1034
    :cond_3c
    const/4 v3, 0x0

    .line 1035
    .local v3, "oldVal":Ljava/lang/Object;, "TV;"
    monitor-enter v6

    .line 1036
    :try_start_3e
    invoke-static {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    if-ne v9, v6, :cond_97

    .line 1037
    if-ltz v8, :cond_73

    .line 1038
    const/4 v1, 0x1

    .line 1039
    move-object v9, v6

    .line 1041
    .local v9, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_48
    iget v10, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v10, v0, :cond_61

    iget-object v10, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v11, v10

    .local v11, "ek":Ljava/lang/Object;, "TK;"
    if-eq v10, p1, :cond_59

    if-eqz v11, :cond_61

    .line 1043
    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_61

    .line 1044
    :cond_59
    iget-object v10, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v3, v10

    .line 1045
    if-nez p3, :cond_6f

    .line 1046
    iput-object p2, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_6f

    .line 1049
    .end local v11    # "ek":Ljava/lang/Object;, "TK;"
    :cond_61
    move-object v10, v9

    .line 1050
    .local v10, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v11, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v9, v11

    if-nez v11, :cond_70

    .line 1051
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v11, v0, p1, p2, v7}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object v11, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1053
    nop

    .line 1039
    .end local v9    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6f
    :goto_6f
    goto :goto_97

    .restart local v9    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 1057
    .end local v9    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_73
    instance-of v9, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v9, :cond_8a

    .line 1059
    const/4 v1, 0x2

    .line 1060
    move-object v9, v6

    check-cast v9, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-virtual {v9, v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v9

    move-object v10, v9

    .local v10, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v9, :cond_89

    .line 1062
    iget-object v9, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v3, v9

    .line 1063
    if-nez p3, :cond_89

    .line 1064
    iput-object p2, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1066
    .end local v10    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_89
    goto :goto_97

    .line 1067
    :cond_8a
    instance-of v9, v6, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v9, :cond_8f

    goto :goto_97

    .line 1068
    :cond_8f
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v9, "Recursive update"

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "hash":I
    .end local v1    # "binCount":I
    .end local v2    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v4    # "n":I
    .end local v5    # "i":I
    .end local v6    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "fh":I
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "onlyIfAbsent":Z
    throw v7

    .line 1070
    .restart local v0    # "hash":I
    .restart local v1    # "binCount":I
    .restart local v2    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v4    # "n":I
    .restart local v5    # "i":I
    .restart local v6    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v8    # "fh":I
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    .restart local p3    # "onlyIfAbsent":Z
    :cond_97
    :goto_97
    monitor-exit v6
    :try_end_98
    .catchall {:try_start_3e .. :try_end_98} :catchall_aa

    .line 1071
    if-eqz v1, :cond_b1

    .line 1072
    const/16 v9, 0x8

    if-lt v1, v9, :cond_a1

    .line 1073
    invoke-direct {p0, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 1074
    :cond_a1
    if-eqz v3, :cond_a4

    .line 1075
    return-object v3

    .line 1080
    .end local v2    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v4    # "n":I
    .end local v5    # "i":I
    .end local v6    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "fh":I
    :cond_a4
    :goto_a4
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1081
    return-object v7

    .line 1070
    .restart local v2    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v4    # "n":I
    .restart local v5    # "i":I
    .restart local v6    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v8    # "fh":I
    :catchall_aa
    move-exception v7

    :try_start_ab
    monitor-exit v6
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v7

    .line 1025
    .end local v3    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v4    # "n":I
    .end local v5    # "i":I
    .end local v6    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "fh":I
    :cond_ad
    :goto_ad
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    .line 1079
    :cond_b1
    :goto_b1
    goto/16 :goto_f

    .line 1019
    .end local v0    # "hash":I
    .end local v1    # "binCount":I
    .end local v2    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_b3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduce(JLjava/util/function/BiFunction;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 15
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .line 3788
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz p3, :cond_1b

    if-eqz p4, :cond_1b

    .line 3790
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    const/4 v1, 0x0

    .line 3791
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v9

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V

    .line 3792
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 3790
    return-object v0

    .line 3789
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceEntries(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 15
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .line 4344
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz p3, :cond_1b

    if-eqz p4, :cond_1b

    .line 4346
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    const/4 v1, 0x0

    .line 4347
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v9

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    .line 4348
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4346
    return-object v0

    .line 4345
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceEntries(JLjava/util/function/BiFunction;)Ljava/util/Map$Entry;
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4319
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_1a

    .line 4320
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    const/4 v1, 0x0

    .line 4321
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V

    .line 4322
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4320
    return-object v0

    .line 4319
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceEntriesToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .registers 20
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    .line 4370
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_26

    if-eqz p6, :cond_26

    .line 4372
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    const/4 v1, 0x0

    .line 4373
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v12, p0

    iget-object v5, v12, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    .line 4374
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 4372
    return-wide v0

    .line 4370
    :cond_26
    move-object v12, p0

    .line 4371
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceEntriesToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .line 4422
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_25

    if-eqz p5, :cond_25

    .line 4424
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    const/4 v1, 0x0

    .line 4425
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v11, p0

    iget-object v5, v11, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v10

    move-object v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    .line 4426
    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4424
    return v0

    .line 4422
    :cond_25
    move-object v11, p0

    .line 4423
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceEntriesToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .registers 20
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .line 4396
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_26

    if-eqz p6, :cond_26

    .line 4398
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    const/4 v1, 0x0

    .line 4399
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v12, p0

    iget-object v5, v12, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    .line 4400
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4398
    return-wide v0

    .line 4396
    :cond_26
    move-object v12, p0

    .line 4397
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceKeys(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction<",
            "-TK;-TK;+TK;>;)TK;"
        }
    .end annotation

    .line 3949
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    if-eqz p3, :cond_18

    .line 3950
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    const/4 v1, 0x0

    .line 3951
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V

    .line 3952
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 3950
    return-object v0

    .line 3949
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceKeys(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 15
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TK;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .line 3974
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz p3, :cond_1b

    if-eqz p4, :cond_1b

    .line 3976
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;

    const/4 v1, 0x0

    .line 3977
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v9

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    .line 3978
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 3976
    return-object v0

    .line 3975
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceKeysToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .registers 20
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction<",
            "-TK;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    .line 4000
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TK;>;"
    if-eqz p3, :cond_26

    if-eqz p6, :cond_26

    .line 4002
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    const/4 v1, 0x0

    .line 4003
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v12, p0

    iget-object v5, v12, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    .line 4004
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 4002
    return-wide v0

    .line 4000
    :cond_26
    move-object v12, p0

    .line 4001
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceKeysToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction<",
            "-TK;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .line 4052
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TK;>;"
    if-eqz p3, :cond_25

    if-eqz p5, :cond_25

    .line 4054
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    const/4 v1, 0x0

    .line 4055
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v11, p0

    iget-object v5, v11, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v10

    move-object v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    .line 4056
    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4054
    return v0

    .line 4052
    :cond_25
    move-object v11, p0

    .line 4053
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceKeysToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .registers 20
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction<",
            "-TK;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .line 4026
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TK;>;"
    if-eqz p3, :cond_26

    if-eqz p6, :cond_26

    .line 4028
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    const/4 v1, 0x0

    .line 4029
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v12, p0

    iget-object v5, v12, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    .line 4030
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4028
    return-wide v0

    .line 4026
    :cond_26
    move-object v12, p0

    .line 4027
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceToDouble(JLjava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .registers 20
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleBiFunction<",
            "-TK;-TV;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    .line 3814
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    if-eqz p3, :cond_26

    if-eqz p6, :cond_26

    .line 3816
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    const/4 v1, 0x0

    .line 3817
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v12, p0

    iget-object v5, v12, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;Ljava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)V

    .line 3818
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 3816
    return-wide v0

    .line 3814
    :cond_26
    move-object v12, p0

    .line 3815
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceToInt(JLjava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)I
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntBiFunction<",
            "-TK;-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .line 3866
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
    if-eqz p3, :cond_25

    if-eqz p5, :cond_25

    .line 3868
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    const/4 v1, 0x0

    .line 3869
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v11, p0

    iget-object v5, v11, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v10

    move-object v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;Ljava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)V

    .line 3870
    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3868
    return v0

    .line 3866
    :cond_25
    move-object v11, p0

    .line 3867
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceToLong(JLjava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)J
    .registers 20
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongBiFunction<",
            "-TK;-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .line 3840
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    if-eqz p3, :cond_26

    if-eqz p6, :cond_26

    .line 3842
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    const/4 v1, 0x0

    .line 3843
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v12, p0

    iget-object v5, v12, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;Ljava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)V

    .line 3844
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3842
    return-wide v0

    .line 3840
    :cond_26
    move-object v12, p0

    .line 3841
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceValues(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 4135
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    if-eqz p3, :cond_18

    .line 4136
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    const/4 v1, 0x0

    .line 4137
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V

    .line 4138
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4136
    return-object v0

    .line 4135
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceValues(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 15
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TV;+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .line 4160
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz p3, :cond_1b

    if-eqz p4, :cond_1b

    .line 4162
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    const/4 v1, 0x0

    .line 4163
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v9

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    .line 4164
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4162
    return-object v0

    .line 4161
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceValuesToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .registers 20
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction<",
            "-TV;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    .line 4186
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TV;>;"
    if-eqz p3, :cond_26

    if-eqz p6, :cond_26

    .line 4188
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;

    const/4 v1, 0x0

    .line 4189
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v12, p0

    iget-object v5, v12, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    .line 4190
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 4188
    return-wide v0

    .line 4186
    :cond_26
    move-object v12, p0

    .line 4187
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceValuesToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction<",
            "-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .line 4238
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TV;>;"
    if-eqz p3, :cond_25

    if-eqz p5, :cond_25

    .line 4240
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    const/4 v1, 0x0

    .line 4241
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v11, p0

    iget-object v5, v11, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v10

    move-object v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    .line 4242
    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4240
    return v0

    .line 4238
    :cond_25
    move-object v11, p0

    .line 4239
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reduceValuesToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .registers 20
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction<",
            "-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .line 4212
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TV;>;"
    if-eqz p3, :cond_26

    if-eqz p6, :cond_26

    .line 4214
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    const/4 v1, 0x0

    .line 4215
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v12, p0

    iget-object v5, v12, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    .line 4216
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4214
    return-wide v0

    .line 4212
    :cond_26
    move-object v12, p0

    .line 4213
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1107
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1561
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-eqz p1, :cond_f

    .line 1563
    if-eqz p2, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    .line 1562
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method greylist-max-o removeEntryIf(Ljava/util/function/Predicate;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 1642
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_30

    .line 1644
    const/4 v0, 0x0

    .line 1645
    .local v0, "removed":Z
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_2f

    .line 1646
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1647
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_10
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_2f

    .line 1648
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1649
    .local v3, "k":Ljava/lang/Object;, "TK;"
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1650
    .local v5, "v":Ljava/lang/Object;, "TV;"
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v3, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1651
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2e

    .line 1652
    const/4 v0, 0x1

    .line 1653
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2e
    goto :goto_10

    .line 1655
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2f
    return v0

    .line 1642
    .end local v0    # "removed":Z
    .end local v2    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method greylist-max-o removeValueIf(Ljava/util/function/Predicate;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 1662
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TV;>;"
    if-eqz p1, :cond_2b

    .line 1664
    const/4 v0, 0x0

    .line 1665
    .local v0, "removed":Z
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_2a

    .line 1666
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1667
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_10
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_2a

    .line 1668
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1669
    .local v3, "k":Ljava/lang/Object;, "TK;"
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1670
    .local v5, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_29

    .line 1671
    const/4 v0, 0x1

    .line 1672
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_29
    goto :goto_10

    .line 1674
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2a
    return v0

    .line 1662
    .end local v0    # "removed":Z
    .end local v2    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1585
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 1587
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1586
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1572
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    .line 1574
    invoke-virtual {p0, p1, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 1573
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
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

    .line 1620
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_37

    .line 1622
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_36

    .line 1623
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1624
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v3, v2

    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_36

    .line 1625
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1626
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1627
    .local v4, "key":Ljava/lang/Object;, "TK;"
    :goto_1a
    invoke-interface {p1, v4, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1628
    .local v5, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_30

    .line 1630
    invoke-virtual {p0, v4, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2f

    .line 1631
    invoke-virtual {p0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    if-nez v6, :cond_2e

    .line 1632
    goto :goto_2f

    .line 1633
    .end local v5    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_2e
    goto :goto_1a

    .line 1634
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_2f
    :goto_2f
    goto :goto_f

    .line 1629
    .restart local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    .restart local v4    # "key":Ljava/lang/Object;, "TK;"
    .restart local v5    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_30
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1636
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_36
    return-void

    .line 1620
    .end local v1    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_37
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method final greylist-max-o replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22
    .param p1, "key"    # Ljava/lang/Object;
    .param p3, "cv"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1116
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v5

    .line 1117
    .local v5, "hash":I
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v6, v0

    .line 1119
    .local v6, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_13
    if-eqz v6, :cond_e2

    array-length v7, v6

    move v8, v7

    .local v8, "n":I
    if-eqz v7, :cond_e2

    add-int/lit8 v7, v8, -0x1

    and-int/2addr v7, v5

    move v9, v7

    .line 1120
    .local v9, "i":I
    invoke-static {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    move-object v10, v7

    .local v10, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v7, :cond_26

    .line 1121
    goto/16 :goto_e2

    .line 1122
    :cond_26
    iget v7, v10, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v11, v7

    .local v11, "fh":I
    const/4 v12, -0x1

    if-ne v7, v12, :cond_33

    .line 1123
    invoke-virtual {v1, v6, v10}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v6, v0

    .end local v6    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto/16 :goto_db

    .line 1125
    .end local v0    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v6    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_33
    const/4 v7, 0x0

    .line 1126
    .local v7, "oldVal":Ljava/lang/Object;, "TV;"
    const/4 v13, 0x0

    .line 1127
    .local v13, "validated":Z
    monitor-enter v10

    .line 1128
    :try_start_36
    invoke-static {v6, v9}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v14

    if-ne v14, v10, :cond_cd

    .line 1129
    if-ltz v11, :cond_87

    .line 1130
    const/4 v13, 0x1

    .line 1131
    move-object v14, v10

    .local v14, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v15, 0x0

    .line 1133
    .local v15, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_41
    iget v12, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v12, v5, :cond_7d

    iget-object v12, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v16, v12

    .local v16, "ek":Ljava/lang/Object;, "TK;"
    if-eq v12, v2, :cond_56

    move-object/from16 v12, v16

    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .local v12, "ek":Ljava/lang/Object;, "TK;"
    if-eqz v12, :cond_7d

    .line 1135
    invoke-virtual {v2, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7d

    goto :goto_58

    .line 1133
    .end local v12    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v16    # "ek":Ljava/lang/Object;, "TK;"
    :cond_56
    move-object/from16 v12, v16

    .line 1136
    .end local v16    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v12    # "ek":Ljava/lang/Object;, "TK;"
    :goto_58
    iget-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1137
    .local v0, "ev":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_66

    if-eq v4, v0, :cond_66

    if-eqz v0, :cond_84

    .line 1138
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_84

    .line 1139
    :cond_66
    move-object v7, v0

    .line 1140
    if-eqz v3, :cond_6c

    .line 1141
    iput-object v3, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_84

    .line 1142
    :cond_6c
    if-eqz v15, :cond_75

    .line 1143
    move-object/from16 v17, v0

    .end local v0    # "ev":Ljava/lang/Object;, "TV;"
    .local v17, "ev":Ljava/lang/Object;, "TV;"
    iget-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    iput-object v0, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_84

    .line 1145
    .end local v17    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v0    # "ev":Ljava/lang/Object;, "TV;"
    :cond_75
    move-object/from16 v17, v0

    .end local v0    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v17    # "ev":Ljava/lang/Object;, "TV;"
    iget-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-static {v6, v9, v0}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_84

    .line 1149
    .end local v12    # "ek":Ljava/lang/Object;, "TK;"
    .end local v17    # "ev":Ljava/lang/Object;, "TV;"
    :cond_7d
    move-object v15, v14

    .line 1150
    iget-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v14, v0

    if-nez v0, :cond_85

    .line 1151
    nop

    .end local v14    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v15    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_84
    :goto_84
    goto :goto_cd

    .line 1150
    .restart local v14    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v15    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_85
    const/4 v12, -0x1

    goto :goto_41

    .line 1154
    .end local v14    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v15    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_87
    instance-of v0, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_c0

    .line 1155
    const/4 v13, 0x1

    .line 1156
    move-object v0, v10

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1158
    .local v0, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    iget-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v14, v12

    .local v14, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v12, :cond_bf

    .line 1159
    const/4 v12, 0x0

    invoke-virtual {v14, v5, v2, v12}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v15

    move-object v12, v15

    .local v12, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v15, :cond_bf

    .line 1160
    iget-object v15, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    .line 1161
    .local v15, "pv":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_aa

    if-eq v4, v15, :cond_aa

    if-eqz v15, :cond_bf

    .line 1162
    invoke-virtual {v4, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_bf

    .line 1163
    :cond_aa
    move-object v7, v15

    .line 1164
    if-eqz v3, :cond_b0

    .line 1165
    iput-object v3, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_bf

    .line 1166
    :cond_b0
    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v17

    if-eqz v17, :cond_bf

    .line 1167
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    invoke-static {v6, v9, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1170
    .end local v0    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v12    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v14    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v15    # "pv":Ljava/lang/Object;, "TV;"
    :cond_bf
    :goto_bf
    goto :goto_cd

    .line 1171
    :cond_c0
    instance-of v0, v10, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v0, :cond_c5

    goto :goto_cd

    .line 1172
    :cond_c5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Recursive update"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "hash":I
    .end local v6    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v8    # "n":I
    .end local v9    # "i":I
    .end local v10    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "fh":I
    .end local v13    # "validated":Z
    .end local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .end local p3    # "cv":Ljava/lang/Object;
    throw v0

    .line 1174
    .restart local v5    # "hash":I
    .restart local v6    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v8    # "n":I
    .restart local v9    # "i":I
    .restart local v10    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v11    # "fh":I
    .restart local v13    # "validated":Z
    .restart local p0    # "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    .restart local p3    # "cv":Ljava/lang/Object;
    :cond_cd
    :goto_cd
    monitor-exit v10
    :try_end_ce
    .catchall {:try_start_36 .. :try_end_ce} :catchall_df

    .line 1175
    if-eqz v13, :cond_db

    .line 1176
    if-eqz v7, :cond_e2

    .line 1177
    if-nez v3, :cond_da

    .line 1178
    const-wide/16 v14, -0x1

    const/4 v0, -0x1

    invoke-direct {v1, v14, v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1179
    :cond_da
    return-object v7

    .line 1184
    .end local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v8    # "n":I
    .end local v9    # "i":I
    .end local v10    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "fh":I
    .end local v13    # "validated":Z
    :cond_db
    :goto_db
    move-object/from16 v2, p1

    goto/16 :goto_13

    .line 1174
    .restart local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v8    # "n":I
    .restart local v9    # "i":I
    .restart local v10    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v11    # "fh":I
    .restart local v13    # "validated":Z
    :catchall_df
    move-exception v0

    :try_start_e0
    monitor-exit v10
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v0

    .line 1185
    .end local v6    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v8    # "n":I
    .end local v9    # "i":I
    .end local v10    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v11    # "fh":I
    .end local v13    # "validated":Z
    :cond_e2
    :goto_e2
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api search(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TU;>;)TU;"
        }
    .end annotation

    .line 3763
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    if-eqz p3, :cond_1c

    .line 3764
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;

    const/4 v1, 0x0

    .line 3765
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v0, v8

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 3766
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 3764
    return-object v0

    .line 3763
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api searchEntries(JLjava/util/function/Function;)Ljava/lang/Object;
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;+TU;>;)TU;"
        }
    .end annotation

    .line 4301
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    if-eqz p3, :cond_1c

    .line 4302
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;

    const/4 v1, 0x0

    .line 4303
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v0, v8

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 4304
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4302
    return-object v0

    .line 4301
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api searchKeys(JLjava/util/function/Function;)Ljava/lang/Object;
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TK;+TU;>;)TU;"
        }
    .end annotation

    .line 3930
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    if-eqz p3, :cond_1c

    .line 3931
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;

    const/4 v1, 0x0

    .line 3932
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v0, v8

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 3933
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 3931
    return-object v0

    .line 3930
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api searchValues(JLjava/util/function/Function;)Ljava/lang/Object;
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function<",
            "-TV;+TU;>;)TU;"
        }
    .end annotation

    .line 4117
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    if-eqz p3, :cond_1c

    .line 4118
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;

    const/4 v1, 0x0

    .line 4119
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v0, v8

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 4120
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4118
    return-object v0

    .line 4117
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api size()I
    .registers 5

    .line 918
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    .line 919
    .local v0, "n":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_18

    .line 920
    :cond_c
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_17

    const v2, 0x7fffffff

    goto :goto_18

    .line 921
    :cond_17
    long-to-int v2, v0

    .line 919
    :goto_18
    return v2
.end method

.method final greylist-max-o sumCount()J
    .registers 9

    .line 2574
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    .line 2575
    .local v0, "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    iget-wide v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    .line 2576
    .local v1, "sum":J
    if-eqz v0, :cond_15

    .line 2577
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    array-length v4, v0

    if-ge v3, v4, :cond_15

    .line 2578
    aget-object v4, v0, v3

    move-object v5, v4

    .local v5, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v4, :cond_12

    .line 2579
    iget-wide v6, v5, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    add-long/2addr v1, v6

    .line 2577
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2582
    .end local v3    # "i":I
    .end local v5    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_15
    return-wide v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 1327
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    array-length v0, v1

    .line 1328
    .local v0, "f":I
    :goto_9
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    invoke-direct {v3, v1, v0, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    move-object v2, v3

    .line 1329
    .local v2, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1330
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1332
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    move-object v5, v4

    .local v5, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v4, :cond_4d

    .line 1334
    :goto_20
    iget-object v4, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1335
    .local v4, "k":Ljava/lang/Object;, "TK;"
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1336
    .local v6, "v":Ljava/lang/Object;, "TV;"
    const-string v7, "(this Map)"

    if-ne v4, p0, :cond_2a

    move-object v8, v7

    goto :goto_2b

    :cond_2a
    move-object v8, v4

    :goto_2b
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1337
    const/16 v8, 0x3d

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1338
    if-ne v6, p0, :cond_36

    goto :goto_37

    :cond_36
    move-object v7, v6

    :goto_37
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1339
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    move-object v5, v7

    if-nez v7, :cond_42

    .line 1340
    goto :goto_4d

    .line 1341
    :cond_42
    const/16 v7, 0x2c

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1342
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_20

    .line 1344
    :cond_4d
    :goto_4d
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
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

    .line 1271
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    move-object v1, v0

    .local v1, "vs":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_e

    :cond_7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    :goto_e
    return-object v0
.end method
