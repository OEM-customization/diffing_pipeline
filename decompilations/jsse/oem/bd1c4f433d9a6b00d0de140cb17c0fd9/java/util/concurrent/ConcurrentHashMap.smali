.class public Ljava/util/concurrent/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$BulkTask;,
        Ljava/util/concurrent/ConcurrentHashMap$CollectionView;,
        Ljava/util/concurrent/ConcurrentHashMap$CounterCell;,
        Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;,
        Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;,
        Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$KeySetView;,
        Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;,
        Ljava/util/concurrent/ConcurrentHashMap$MapEntry;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;,
        Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;,
        Ljava/util/concurrent/ConcurrentHashMap$Node;,
        Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;,
        Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;,
        Ljava/util/concurrent/ConcurrentHashMap$Segment;,
        Ljava/util/concurrent/ConcurrentHashMap$TableStack;,
        Ljava/util/concurrent/ConcurrentHashMap$Traverser;,
        Ljava/util/concurrent/ConcurrentHashMap$TreeBin;,
        Ljava/util/concurrent/ConcurrentHashMap$TreeNode;,
        Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;,
        Ljava/util/concurrent/ConcurrentHashMap$ValuesView;
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
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field private static final BASECOUNT:J

.field private static final CELLSBUSY:J

.field private static final CELLVALUE:J

.field private static final DEFAULT_CAPACITY:I = 0x10

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final HASH_BITS:I = 0x7fffffff

.field private static final LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final MAX_RESIZERS:I = 0xffff

.field private static final MIN_TRANSFER_STRIDE:I = 0x10

.field static final MIN_TREEIFY_CAPACITY:I = 0x40

.field static final MOVED:I = -0x1

.field static final NCPU:I

.field static final RESERVED:I = -0x3

.field private static final RESIZE_STAMP_BITS:I = 0x10

.field private static final RESIZE_STAMP_SHIFT:I = 0x10

.field private static final SIZECTL:J

.field private static final TRANSFERINDEX:J

.field static final TREEBIN:I = -0x2

.field static final TREEIFY_THRESHOLD:I = 0x8

.field private static final U:Lsun/misc/Unsafe;

.field static final UNTREEIFY_THRESHOLD:I = 0x6

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field private volatile transient baseCount:J

.field private volatile transient cellsBusy:I

.field private volatile transient counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

.field private transient entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient sizeCtl:I

.field volatile transient table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient transferIndex:I

.field private transient values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ValuesView",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    .line 597
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    sput v3, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    .line 609
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/io/ObjectStreamField;

    .line 610
    new-instance v4, Ljava/io/ObjectStreamField;

    const-string/jumbo v5, "segments"

    const-class v6, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    invoke-direct {v4, v5, v6}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v4, v3, v7

    .line 611
    new-instance v4, Ljava/io/ObjectStreamField;

    const-string/jumbo v5, "segmentMask"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v4, v5, v6}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 612
    new-instance v4, Ljava/io/ObjectStreamField;

    const-string/jumbo v5, "segmentShift"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v4, v5, v6}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 609
    sput-object v3, Ljava/util/concurrent/ConcurrentHashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 6345
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v3

    sput-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    .line 6356
    :try_start_3c
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    .line 6357
    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v5, "sizeCtl"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 6356
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    .line 6358
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    .line 6359
    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v5, "transferIndex"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 6358
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    .line 6360
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    .line 6361
    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v5, "baseCount"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 6360
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    .line 6362
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    .line 6363
    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v5, "cellsBusy"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 6362
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    .line 6365
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    .line 6366
    const-class v4, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 6365
    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    .line 6368
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-class v4, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    sput v3, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    .line 6369
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-class v4, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    .line 6370
    .local v2, "scale":I
    add-int/lit8 v3, v2, -0x1

    and-int/2addr v3, v2

    if-eqz v3, :cond_b8

    .line 6371
    new-instance v3, Ljava/lang/Error;

    const-string/jumbo v4, "array index scale not a power of two"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_b1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3c .. :try_end_b1} :catch_b1

    .line 6373
    :catch_b1
    move-exception v0

    .line 6374
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 6372
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_b8
    :try_start_b8
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1f

    sput v3, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I
    :try_end_c0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_b8 .. :try_end_c0} :catch_b1

    .line 6379
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    .line 264
    .local v1, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 831
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 832
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .prologue
    .line 844
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 845
    if-gez p1, :cond_b

    .line 846
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 847
    :cond_b
    const/high16 v1, 0x20000000

    if-lt p1, v1, :cond_14

    .line 848
    const/high16 v0, 0x40000000    # 2.0f

    .line 850
    .local v0, "cap":I
    :goto_11
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 851
    return-void

    .line 849
    .end local v0    # "cap":I
    :cond_14
    ushr-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v0

    .restart local v0    # "cap":I
    goto :goto_11
.end method

.method public constructor <init>(IF)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 879
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 880
    return-void
.end method

.method public constructor <init>(IFI)V
    .registers 12
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 900
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 902
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-lez v4, :cond_a

    const/4 v1, 0x1

    :cond_a
    if-eqz v1, :cond_e

    if-gez p1, :cond_14

    .line 903
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 902
    :cond_14
    if-lez p3, :cond_e

    .line 904
    if-ge p1, p3, :cond_19

    .line 905
    move p1, p3

    .line 906
    :cond_19
    int-to-long v4, p1

    long-to-float v1, v4

    div-float/2addr v1, p2

    float-to-double v4, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-long v2, v4

    .line 907
    .local v2, "size":J
    const-wide/32 v4, 0x40000000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2d

    .line 908
    const/high16 v0, 0x40000000    # 2.0f

    .line 909
    .local v0, "cap":I
    :goto_2a
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 910
    return-void

    .line 908
    .end local v0    # "cap":I
    :cond_2d
    long-to-int v1, v2

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v0

    .restart local v0    # "cap":I
    goto :goto_2a
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

.method private final addCount(JI)V
    .registers 35
    .param p1, "x"    # J
    .param p3, "check"    # I

    .prologue
    .line 2326
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v24, v0

    .local v24, "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v24, :cond_1c

    .line 2327
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    .local v8, "b":J
    add-long v10, v8, p1

    .local v10, "s":J
    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 2326
    if-eqz v4, :cond_57

    .line 2329
    .end local v8    # "b":J
    .end local v10    # "s":J
    :cond_1c
    const/16 v30, 0x1

    .line 2330
    .local v30, "uncontended":Z
    if-eqz v24, :cond_27

    move-object/from16 v0, v24

    array-length v4, v0

    add-int/lit8 v25, v4, -0x1

    .local v25, "m":I
    if-gez v25, :cond_31

    .line 2334
    .end local v25    # "m":I
    .end local v30    # "uncontended":Z
    :cond_27
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->fullAddCount(JZ)V

    .line 2335
    return-void

    .line 2331
    .restart local v25    # "m":I
    .restart local v30    # "uncontended":Z
    :cond_31
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v4

    and-int v4, v4, v25

    aget-object v13, v24, v4

    .local v13, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v13, :cond_27

    .line 2333
    sget-object v12, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v14, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    iget-wide v0, v13, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    move-wide/from16 v16, v0

    .local v16, "v":J
    add-long v18, v16, p1

    invoke-virtual/range {v12 .. v19}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v30

    .line 2332
    .local v30, "uncontended":Z
    xor-int/lit8 v4, v30, 0x1

    .line 2330
    if-nez v4, :cond_27

    .line 2337
    const/4 v4, 0x1

    move/from16 v0, p3

    if-gt v0, v4, :cond_53

    .line 2338
    return-void

    .line 2339
    :cond_53
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v10

    .line 2341
    .end local v13    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v16    # "v":J
    .end local v25    # "m":I
    .end local v30    # "uncontended":Z
    .restart local v10    # "s":J
    :cond_57
    if-ltz p3, :cond_8b

    .line 2343
    :goto_59
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move/from16 v22, v0

    .local v22, "sc":I
    move/from16 v0, v22

    int-to-long v4, v0

    cmp-long v4, v10, v4

    if-ltz v4, :cond_8b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v29, v0

    .local v29, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v29, :cond_8b

    .line 2344
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v26, v0

    .local v26, "n":I
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v26

    if-ge v0, v4, :cond_8b

    .line 2345
    invoke-static/range {v26 .. v26}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v28

    .line 2346
    .local v28, "rs":I
    if-gez v22, :cond_bf

    .line 2347
    ushr-int/lit8 v4, v22, 0x10

    move/from16 v0, v28

    if-ne v4, v0, :cond_8b

    add-int/lit8 v4, v28, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_8c

    .line 2360
    .end local v22    # "sc":I
    .end local v26    # "n":I
    .end local v28    # "rs":I
    .end local v29    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_8b
    return-void

    .line 2348
    .restart local v22    # "sc":I
    .restart local v26    # "n":I
    .restart local v28    # "rs":I
    .restart local v29    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_8c
    const v4, 0xffff

    add-int v4, v4, v28

    move/from16 v0, v22

    if-eq v0, v4, :cond_8b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v27, v0

    .local v27, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v27, :cond_8b

    .line 2349
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-lez v4, :cond_8b

    .line 2351
    sget-object v18, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v20, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v23, v22, 0x1

    move-object/from16 v19, p0

    invoke-virtual/range {v18 .. v23}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 2352
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2357
    .end local v27    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_ba
    :goto_ba
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v10

    goto :goto_59

    .line 2354
    :cond_bf
    sget-object v18, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v20, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    .line 2355
    shl-int/lit8 v4, v28, 0x10

    add-int/lit8 v23, v4, 0x2

    move-object/from16 v19, p0

    .line 2354
    invoke-virtual/range {v18 .. v23}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 2356
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_ba
.end method

.method static final casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z
    .registers 10
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;I",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 768
    .local p0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "c":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p3, "v":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v2, p1

    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v2, v1

    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 715
    instance-of v6, p0, Ljava/lang/Comparable;

    if-eqz v6, :cond_3c

    .line 717
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/String;

    if-ne v1, v6, :cond_e

    .line 718
    return-object v1

    .line 719
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v5

    .local v5, "ts":[Ljava/lang/reflect/Type;
    if-eqz v5, :cond_3c

    .line 720
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v6, v5

    if-ge v2, v6, :cond_3c

    .line 721
    aget-object v4, v5, v2

    .local v4, "t":Ljava/lang/reflect/Type;
    instance-of v6, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_39

    move-object v3, v4

    .line 722
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .local v3, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 723
    const-class v7, Ljava/lang/Comparable;

    .line 722
    if-ne v6, v7, :cond_39

    .line 724
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "as":[Ljava/lang/reflect/Type;
    if-eqz v0, :cond_39

    .line 725
    array-length v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_39

    const/4 v6, 0x0

    aget-object v6, v0, v6

    if-ne v6, v1, :cond_39

    .line 726
    return-object v1

    .line 720
    .end local v0    # "as":[Ljava/lang/reflect/Type;
    .end local v3    # "p":Ljava/lang/reflect/ParameterizedType;
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 730
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
    .line 739
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

    .line 740
    .restart local p1    # "k":Ljava/lang/Object;
    :cond_a
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "k":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_9
.end method

.method private final fullAddCount(JZ)V
    .registers 33
    .param p1, "x"    # J
    .param p3, "wasUncontended"    # Z

    .prologue
    .line 2586
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v21

    .local v21, "h":I
    if-nez v21, :cond_f

    .line 2587
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->localInit()V

    .line 2588
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v21

    .line 2589
    const/16 p3, 0x1

    .line 2591
    .end local p3    # "wasUncontended":Z
    :cond_f
    const/16 v19, 0x0

    .line 2594
    .local v19, "collide":Z
    :cond_11
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v18, v0

    .local v18, "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v18, :cond_ee

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    .local v26, "n":I
    if-lez v26, :cond_ee

    .line 2595
    add-int/lit8 v4, v26, -0x1

    and-int v4, v4, v21

    aget-object v5, v18, v4

    .local v5, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v5, :cond_7e

    .line 2596
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v4, :cond_77

    .line 2597
    new-instance v27, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v0, v27

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    .line 2598
    .local v27, "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v4, :cond_77

    .line 2599
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    .end local v5    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    move-result v4

    .line 2598
    if-eqz v4, :cond_77

    .line 2600
    const/16 v20, 0x0

    .line 2603
    .local v20, "created":Z
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v28, v0

    .local v28, "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v28, :cond_68

    .line 2604
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v25, v0

    .local v25, "m":I
    if-lez v25, :cond_68

    .line 2605
    add-int/lit8 v4, v25, -0x1

    and-int v24, v4, v21

    .local v24, "j":I
    aget-object v4, v28, v24

    if-nez v4, :cond_68

    .line 2606
    aput-object v27, v28, v24
    :try_end_66
    .catchall {:try_start_4d .. :try_end_66} :catchall_70

    .line 2607
    const/16 v20, 0x1

    .line 2610
    .end local v24    # "j":I
    .end local v25    # "m":I
    :cond_68
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2612
    if-eqz v20, :cond_11

    .line 2663
    .end local v20    # "created":Z
    .end local v26    # "n":I
    .end local v27    # "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_6f
    :goto_6f
    return-void

    .line 2609
    .restart local v20    # "created":Z
    .restart local v26    # "n":I
    .restart local v27    # "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :catchall_70
    move-exception v4

    .line 2610
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2609
    throw v4

    .line 2617
    .end local v20    # "created":Z
    .end local v27    # "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_77
    const/16 v19, 0x0

    .line 2642
    :cond_79
    :goto_79
    invoke-static/range {v21 .. v21}, Ljava/util/concurrent/ThreadLocalRandom;->advanceProbe(I)I

    move-result v21

    goto :goto_11

    .line 2619
    .restart local v5    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_7e
    if-nez p3, :cond_83

    .line 2620
    const/16 p3, 0x1

    .local p3, "wasUncontended":Z
    goto :goto_79

    .line 2621
    .end local p3    # "wasUncontended":Z
    :cond_83
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    iget-wide v8, v5, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    .local v8, "v":J
    add-long v10, v8, p1

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 2623
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_9f

    sget v4, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    move/from16 v0, v26

    if-lt v0, v4, :cond_a2

    .line 2624
    :cond_9f
    const/16 v19, 0x0

    goto :goto_79

    .line 2625
    :cond_a2
    if-nez v19, :cond_a7

    .line 2626
    const/16 v19, 0x1

    goto :goto_79

    .line 2627
    :cond_a7
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v4, :cond_79

    .line 2628
    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    .line 2627
    if-eqz v4, :cond_79

    .line 2630
    :try_start_bb
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_de

    .line 2631
    shl-int/lit8 v4, v26, 0x1

    new-array v0, v4, [Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v28, v0

    .line 2632
    .restart local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_cb
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_d8

    .line 2633
    aget-object v4, v18, v22

    aput-object v4, v28, v22

    .line 2632
    add-int/lit8 v22, v22, 0x1

    goto :goto_cb

    .line 2634
    :cond_d8
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_de
    .catchall {:try_start_bb .. :try_end_de} :catchall_e7

    .line 2637
    .end local v22    # "i":I
    .end local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_de
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2639
    const/16 v19, 0x0

    goto/16 :goto_11

    .line 2636
    :catchall_e7
    move-exception v4

    .line 2637
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2636
    throw v4

    .line 2644
    .end local v5    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v8    # "v":J
    .end local v26    # "n":I
    :cond_ee
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v4, :cond_13c

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_13c

    .line 2645
    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    .line 2644
    if-eqz v4, :cond_13c

    .line 2646
    const/16 v23, 0x0

    .line 2648
    .local v23, "init":Z
    :try_start_10c
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_12c

    .line 2649
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v28, v0

    .line 2650
    .restart local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    and-int/lit8 v4, v21, 0x1

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-wide/from16 v0, p1

    invoke-direct {v6, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    aput-object v6, v28, v4

    .line 2651
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_12a
    .catchall {:try_start_10c .. :try_end_12a} :catchall_135

    .line 2652
    const/16 v23, 0x1

    .line 2655
    .end local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_12c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2657
    if-eqz v23, :cond_11

    goto/16 :goto_6f

    .line 2654
    :catchall_135
    move-exception v4

    .line 2655
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 2654
    throw v4

    .line 2660
    .end local v23    # "init":Z
    :cond_13c
    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    .restart local v8    # "v":J
    add-long v16, v8, p1

    move-object/from16 v11, p0

    move-wide v14, v8

    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_6f
.end method

.method private final initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2293
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    :cond_0
    :goto_0
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v8, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v8, :cond_7

    array-length v0, v8

    if-nez v0, :cond_30

    .line 2294
    :cond_7
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .local v4, "sc":I
    if-gez v4, :cond_f

    .line 2295
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 2296
    :cond_f
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v5, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2298
    :try_start_1b
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v8, :cond_22

    array-length v0, v8

    if-nez v0, :cond_2e

    .line 2299
    :cond_22
    if-lez v4, :cond_31

    move v6, v4

    .line 2301
    .local v6, "n":I
    :goto_25
    new-array v7, v6, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2302
    .local v7, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v8, v7

    iput-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_34

    .line 2303
    ushr-int/lit8 v0, v6, 0x2

    sub-int v4, v6, v0

    .line 2306
    .end local v6    # "n":I
    .end local v7    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2e
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2311
    .end local v4    # "sc":I
    :cond_30
    return-object v8

    .line 2299
    .restart local v4    # "sc":I
    :cond_31
    const/16 v6, 0x10

    .restart local v6    # "n":I
    goto :goto_25

    .line 2305
    .end local v6    # "n":I
    :catchall_34
    move-exception v0

    .line 2306
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2305
    throw v0
.end method

.method public static newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView",
            "<TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2188
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 2189
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2188
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newKeySet(I)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 4
    .param p0, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView",
            "<TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2205
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 2206
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2205
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 35
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1453
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 1454
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1455
    const-wide/16 v26, 0x0

    .line 1456
    .local v26, "size":J
    const/16 v22, 0x0

    .line 1459
    :goto_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v18

    .line 1461
    .local v18, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v32

    .line 1462
    .local v32, "v":Ljava/lang/Object;, "TV;"
    if-eqz v18, :cond_34

    if-eqz v32, :cond_34

    .line 1463
    new-instance v23, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v5

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v32

    move-object/from16 v3, v22

    invoke-direct {v0, v5, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1464
    .local v23, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const-wide/16 v6, 0x1

    add-long v26, v26, v6

    move-object/from16 v22, v23

    .end local v23    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v22, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_c

    .line 1469
    .end local v22    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_34
    const-wide/16 v6, 0x0

    cmp-long v5, v26, v6

    if-nez v5, :cond_40

    .line 1470
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 1539
    :goto_3f
    return-void

    .line 1473
    :cond_40
    const-wide/32 v6, 0x20000000

    cmp-long v5, v26, v6

    if-ltz v5, :cond_82

    .line 1474
    const/high16 v20, 0x40000000    # 2.0f

    .line 1480
    .local v20, "n":I
    :goto_49
    move/from16 v0, v20

    new-array v0, v0, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v30, v0

    .line 1481
    .local v30, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    add-int/lit8 v19, v20, -0x1

    .line 1482
    .local v19, "mask":I
    const-wide/16 v10, 0x0

    .line 1483
    .local v10, "added":J
    :goto_53
    if-eqz v22, :cond_130

    .line 1485
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v21, v0

    .line 1486
    .local v21, "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v0, v22

    iget v14, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v14, "h":I
    and-int v17, v14, v19

    .line 1487
    .local v17, "j":I
    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v13

    .local v13, "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v13, :cond_92

    .line 1488
    const/16 v16, 0x1

    .line 1528
    .local v16, "insertAtFront":Z
    :cond_6d
    :goto_6d
    if-eqz v16, :cond_7f

    .line 1529
    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    .line 1530
    move-object/from16 v0, v22

    iput-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1531
    move-object/from16 v0, v30

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1533
    :cond_7f
    move-object/from16 v22, v21

    .restart local v22    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_53

    .line 1476
    .end local v10    # "added":J
    .end local v13    # "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "h":I
    .end local v16    # "insertAtFront":Z
    .end local v17    # "j":I
    .end local v19    # "mask":I
    .end local v20    # "n":I
    .end local v21    # "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v22    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v30    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_82
    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v28, v0

    .line 1477
    .local v28, "sz":I
    ushr-int/lit8 v5, v28, 0x1

    add-int v5, v5, v28

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v20

    .restart local v20    # "n":I
    goto :goto_49

    .line 1490
    .end local v28    # "sz":I
    .restart local v10    # "added":J
    .restart local v13    # "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v14    # "h":I
    .restart local v17    # "j":I
    .restart local v19    # "mask":I
    .restart local v21    # "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v30    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_92
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 1491
    iget v5, v13, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v5, :cond_b4

    move-object/from16 v29, v13

    .line 1492
    check-cast v29, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1493
    .local v29, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    move-object/from16 v0, v22

    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v5

    if-nez v5, :cond_b1

    .line 1494
    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    .line 1495
    :cond_b1
    const/16 v16, 0x0

    .restart local v16    # "insertAtFront":Z
    goto :goto_6d

    .line 1498
    .end local v16    # "insertAtFront":Z
    .end local v29    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :cond_b4
    const/4 v12, 0x0

    .line 1499
    .local v12, "binCount":I
    const/16 v16, 0x1

    .line 1501
    .restart local v16    # "insertAtFront":Z
    move-object/from16 v24, v13

    .local v24, "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_b9
    if-eqz v24, :cond_db

    .line 1502
    move-object/from16 v0, v24

    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v5, v14, :cond_114

    .line 1503
    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v25, v0

    .local v25, "qk":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_d9

    .line 1504
    if-eqz v25, :cond_114

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1502
    if-eqz v5, :cond_114

    .line 1505
    :cond_d9
    const/16 v16, 0x0

    .line 1510
    .end local v25    # "qk":Ljava/lang/Object;, "TK;"
    :cond_db
    if-eqz v16, :cond_6d

    const/16 v5, 0x8

    if-lt v12, v5, :cond_6d

    .line 1511
    const/16 v16, 0x0

    .line 1512
    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    .line 1513
    move-object/from16 v0, v22

    iput-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1514
    const/4 v15, 0x0

    .local v15, "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v31, 0x0

    .line 1515
    .local v31, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object/from16 v24, v22

    .end local v15    # "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v31    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_ef
    if-eqz v24, :cond_122

    .line 1516
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 1517
    move-object/from16 v0, v24

    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move-object/from16 v0, v24

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, v24

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1516
    invoke-direct/range {v4 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    .line 1518
    .local v4, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, v31

    iput-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v31, :cond_11d

    .line 1519
    move-object v15, v4

    .line 1522
    :goto_10b
    move-object/from16 v31, v4

    .line 1515
    .local v31, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v24, v0

    goto :goto_ef

    .line 1508
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v31    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_114
    add-int/lit8 v12, v12, 0x1

    .line 1501
    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v24, v0

    goto :goto_b9

    .line 1521
    .restart local v4    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_11d
    move-object/from16 v0, v31

    iput-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_10b

    .line 1524
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_122
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v5, v15}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-static {v0, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto/16 :goto_6d

    .line 1535
    .end local v12    # "binCount":I
    .end local v13    # "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "h":I
    .end local v16    # "insertAtFront":Z
    .end local v17    # "j":I
    .end local v21    # "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v24    # "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_130
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1536
    ushr-int/lit8 v5, v20, 0x2

    sub-int v5, v20, v5

    move-object/from16 v0, p0

    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 1537
    move-object/from16 v0, p0

    iput-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    goto/16 :goto_3f
.end method

.method static final resizeStamp(I)I
    .registers 3
    .param p0, "n"    # I

    .prologue
    .line 2285
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    const v1, 0x8000

    or-int/2addr v0, v1

    return v0
.end method

.method static final setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    .registers 9
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;I",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 772
    .local p0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "v":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v2, p1

    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v2, v1

    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 773
    return-void
.end method

.method static final spread(I)I
    .registers 3
    .param p0, "h"    # I

    .prologue
    .line 693
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method static final tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 8
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;I)",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 763
    .local p0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v2, p1

    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v2, v1

    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method

.method private static final tableSizeFor(I)I
    .registers 4
    .param p0, "c"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 701
    add-int/lit8 v0, p0, -0x1

    .line 702
    .local v0, "n":I
    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v0, v2

    .line 703
    ushr-int/lit8 v2, v0, 0x2

    or-int/2addr v0, v2

    .line 704
    ushr-int/lit8 v2, v0, 0x4

    or-int/2addr v0, v2

    .line 705
    ushr-int/lit8 v2, v0, 0x8

    or-int/2addr v0, v2

    .line 706
    ushr-int/lit8 v2, v0, 0x10

    or-int/2addr v0, v2

    .line 707
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

.method private final transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    .registers 57
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2427
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v44, v0

    .line 2428
    .local v44, "n":I
    sget v6, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_53

    ushr-int/lit8 v6, v44, 0x3

    sget v7, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    div-int v52, v6, v7

    .local v52, "stride":I
    :goto_10
    const/16 v6, 0x10

    move/from16 v0, v52

    if-ge v0, v6, :cond_18

    .line 2429
    const/16 v52, 0x10

    .line 2430
    :cond_18
    if-nez p2, :cond_2e

    .line 2433
    shl-int/lit8 v6, v44, 0x1

    :try_start_1c
    new-array v0, v6, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v46, v0
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_20} :catch_56

    .line 2434
    .local v46, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 p2, v46

    .line 2439
    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2440
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    .line 2442
    .end local v46    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2e
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v45, v0

    .line 2443
    .local v45, "nextn":I
    new-instance v31, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2444
    .local v31, "fwd":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    const/16 v23, 0x1

    .line 2445
    .local v23, "advance":Z
    const/16 v30, 0x0

    .line 2446
    .local v30, "finishing":Z
    const/16 v37, 0x0

    .local v37, "i":I
    const/16 v25, 0x0

    .line 2448
    .end local v23    # "advance":Z
    .local v25, "bound":I
    :cond_44
    :goto_44
    if-eqz v23, :cond_85

    .line 2450
    add-int/lit8 v37, v37, -0x1

    move/from16 v0, v37

    move/from16 v1, v25

    if-ge v0, v1, :cond_50

    if-eqz v30, :cond_5f

    .line 2451
    :cond_50
    const/16 v23, 0x0

    .restart local v23    # "advance":Z
    goto :goto_44

    .end local v23    # "advance":Z
    .end local v25    # "bound":I
    .end local v30    # "finishing":Z
    .end local v31    # "fwd":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    .end local v37    # "i":I
    .end local v45    # "nextn":I
    .end local v52    # "stride":I
    :cond_53
    move/from16 v52, v44

    .line 2428
    goto :goto_10

    .line 2435
    .restart local v52    # "stride":I
    :catch_56
    move-exception v27

    .line 2436
    .local v27, "ex":Ljava/lang/Throwable;
    const v6, 0x7fffffff

    move-object/from16 v0, p0

    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2437
    return-void

    .line 2452
    .end local v27    # "ex":Ljava/lang/Throwable;
    .restart local v25    # "bound":I
    .restart local v30    # "finishing":Z
    .restart local v31    # "fwd":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    .restart local v37    # "i":I
    .restart local v45    # "nextn":I
    :cond_5f
    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    .local v10, "nextIndex":I
    if-gtz v10, :cond_6a

    .line 2453
    const/16 v37, -0x1

    .line 2454
    const/16 v23, 0x0

    .restart local v23    # "advance":Z
    goto :goto_44

    .line 2456
    .end local v23    # "advance":Z
    :cond_6a
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    .line 2457
    sget-wide v8, Ljava/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    .line 2458
    move/from16 v0, v52

    if-le v10, v0, :cond_83

    .line 2459
    sub-int v11, v10, v52

    .local v11, "nextBound":I
    :goto_74
    move-object/from16 v7, p0

    .line 2456
    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 2460
    move/from16 v25, v11

    .line 2461
    add-int/lit8 v37, v10, -0x1

    .line 2462
    const/16 v23, 0x0

    .restart local v23    # "advance":Z
    goto :goto_44

    .line 2459
    .end local v11    # "nextBound":I
    .end local v23    # "advance":Z
    :cond_83
    const/4 v11, 0x0

    goto :goto_74

    .line 2465
    .end local v10    # "nextIndex":I
    :cond_85
    if-ltz v37, :cond_8d

    move/from16 v0, v37

    move/from16 v1, v44

    if-lt v0, v1, :cond_a4

    .line 2467
    :cond_8d
    if-eqz v30, :cond_c0

    .line 2468
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2469
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2470
    shl-int/lit8 v6, v44, 0x1

    ushr-int/lit8 v7, v44, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2471
    return-void

    .line 2465
    :cond_a4
    add-int v6, v37, v44

    move/from16 v0, v45

    if-ge v6, v0, :cond_8d

    .line 2480
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v28

    .local v28, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v28, :cond_e7

    .line 2481
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v37

    move-object/from16 v2, v31

    invoke-static {v0, v1, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v23

    .local v23, "advance":Z
    goto :goto_44

    .line 2473
    .end local v23    # "advance":Z
    .end local v28    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_c0
    sget-object v12, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v14, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move/from16 v16, v0

    .local v16, "sc":I
    add-int/lit8 v17, v16, -0x1

    move-object/from16 v13, p0

    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 2474
    add-int/lit8 v6, v16, -0x2

    invoke-static/range {v44 .. v44}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    if-eq v6, v7, :cond_df

    .line 2475
    return-void

    .line 2476
    :cond_df
    const/16 v23, 0x1

    .local v23, "advance":Z
    const/16 v30, 0x1

    .line 2477
    move/from16 v37, v44

    goto/16 :goto_44

    .line 2482
    .end local v16    # "sc":I
    .end local v23    # "advance":Z
    .restart local v28    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_e7
    move-object/from16 v0, v28

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v29, v0

    .local v29, "fh":I
    const/4 v6, -0x1

    move/from16 v0, v29

    if-ne v0, v6, :cond_f6

    .line 2483
    const/16 v23, 0x1

    .restart local v23    # "advance":Z
    goto/16 :goto_44

    .line 2485
    .end local v23    # "advance":Z
    :cond_f6
    monitor-enter v28

    .line 2486
    :try_start_f7
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v6

    move-object/from16 v0, v28

    if-ne v6, v0, :cond_1a0

    .line 2488
    if-ltz v29, :cond_1a3

    .line 2489
    and-int v51, v29, v44

    .line 2490
    .local v51, "runBit":I
    move-object/from16 v38, v28

    .line 2491
    .local v38, "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v0, v28

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v47, v0

    .local v47, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_10f
    if-eqz v47, :cond_128

    .line 2492
    move-object/from16 v0, v47

    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    and-int v24, v6, v44

    .line 2493
    .local v24, "b":I
    move/from16 v0, v24

    move/from16 v1, v51

    if-eq v0, v1, :cond_121

    .line 2494
    move/from16 v51, v24

    .line 2495
    move-object/from16 v38, v47

    .line 2491
    :cond_121
    move-object/from16 v0, v47

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v47, v0

    goto :goto_10f

    .line 2498
    .end local v24    # "b":I
    :cond_128
    if-nez v51, :cond_16c

    .line 2499
    move-object/from16 v40, v38

    .line 2500
    .local v40, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/16 v35, 0x0

    .line 2506
    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_12e
    move-object/from16 v47, v28

    move-object/from16 v36, v35

    .local v36, "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v41, v40

    .local v41, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_134
    move-object/from16 v0, v47

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_183

    .line 2507
    move-object/from16 v0, v47

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v48, v0

    .local v48, "ph":I
    move-object/from16 v0, v47

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v49, v0

    .local v49, "pk":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, v47

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v50, v0

    .line 2508
    .local v50, "pv":Ljava/lang/Object;, "TV;"
    and-int v6, v48, v44

    if-nez v6, :cond_171

    .line 2509
    new-instance v40, Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v0, v40

    move/from16 v1, v48

    move-object/from16 v2, v49

    move-object/from16 v3, v50

    move-object/from16 v4, v41

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v35, v36

    .line 2506
    .end local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v35, "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_161
    move-object/from16 v0, v47

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v47, v0

    move-object/from16 v36, v35

    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v41, v40

    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_134

    .line 2503
    .end local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v48    # "ph":I
    .end local v49    # "pk":Ljava/lang/Object;, "TK;"
    .end local v50    # "pv":Ljava/lang/Object;, "TV;"
    :cond_16c
    move-object/from16 v35, v38

    .line 2504
    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/16 v40, 0x0

    .local v40, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_12e

    .line 2511
    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v48    # "ph":I
    .restart local v49    # "pk":Ljava/lang/Object;, "TK;"
    .restart local v50    # "pv":Ljava/lang/Object;, "TV;"
    :cond_171
    new-instance v35, Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v0, v35

    move/from16 v1, v48

    move-object/from16 v2, v49

    move-object/from16 v3, v50

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .end local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v40, v41

    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v40, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_161

    .line 2513
    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v48    # "ph":I
    .end local v49    # "pk":Ljava/lang/Object;, "TK;"
    .end local v50    # "pv":Ljava/lang/Object;, "TV;"
    .restart local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_183
    move-object/from16 v0, p2

    move/from16 v1, v37

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2514
    add-int v6, v37, v44

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-static {v0, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2515
    move-object/from16 v0, p1

    move/from16 v1, v37

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_19e
    .catchall {:try_start_f7 .. :try_end_19e} :catchall_1fe

    .line 2516
    const/16 v23, 0x1

    .end local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v38    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v47    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v51    # "runBit":I
    :cond_1a0
    :goto_1a0
    monitor-exit v28

    goto/16 :goto_44

    .line 2518
    :cond_1a3
    :try_start_1a3
    move-object/from16 v0, v28

    instance-of v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v6, :cond_1a0

    .line 2519
    move-object/from16 v0, v28

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v53, v0

    .line 2520
    .local v53, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/16 v42, 0x0

    .local v42, "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v43, 0x0

    .line 2521
    .local v43, "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v33, 0x0

    .local v33, "hi":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v34, 0x0

    .line 2522
    .local v34, "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v39, 0x0

    .local v39, "lc":I
    const/16 v32, 0x0

    .line 2523
    .local v32, "hc":I
    move-object/from16 v0, v53

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v26, v0

    .end local v33    # "hi":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v34    # "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v42    # "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v43    # "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v26, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1c1
    if-eqz v26, :cond_217

    .line 2524
    move-object/from16 v0, v26

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v18, v0

    .line 2525
    .local v18, "h":I
    new-instance v17, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2526
    move-object/from16 v0, v26

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 2525
    invoke-direct/range {v17 .. v22}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    .line 2527
    .local v17, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    and-int v6, v18, v44

    if-nez v6, :cond_201

    .line 2528
    move-object/from16 v0, v43

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v43, :cond_1f7

    .line 2529
    move-object/from16 v42, v17

    .line 2532
    :goto_1ec
    move-object/from16 v43, v17

    .line 2533
    .local v43, "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    add-int/lit8 v39, v39, 0x1

    .line 2523
    .end local v43    # "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_1f0
    move-object/from16 v0, v26

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v26, v0

    goto :goto_1c1

    .line 2531
    :cond_1f7
    move-object/from16 v0, v17

    move-object/from16 v1, v43

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_1fd
    .catchall {:try_start_1a3 .. :try_end_1fd} :catchall_1fe

    goto :goto_1ec

    .line 2485
    .end local v17    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v18    # "h":I
    .end local v26    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v32    # "hc":I
    .end local v39    # "lc":I
    .end local v53    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :catchall_1fe
    move-exception v6

    monitor-exit v28

    throw v6

    .line 2536
    .restart local v17    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v18    # "h":I
    .restart local v26    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v32    # "hc":I
    .restart local v39    # "lc":I
    .restart local v53    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :cond_201
    :try_start_201
    move-object/from16 v0, v34

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v34, :cond_210

    .line 2537
    move-object/from16 v33, v17

    .line 2540
    :goto_20b
    move-object/from16 v34, v17

    .line 2541
    .local v34, "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    add-int/lit8 v32, v32, 0x1

    goto :goto_1f0

    .line 2539
    .end local v34    # "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_210
    move-object/from16 v0, v17

    move-object/from16 v1, v34

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_20b

    .line 2544
    .end local v17    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v18    # "h":I
    :cond_217
    const/4 v6, 0x6

    move/from16 v0, v39

    if-gt v0, v6, :cond_248

    invoke-static/range {v42 .. v42}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v40

    .line 2546
    .restart local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_220
    const/4 v6, 0x6

    move/from16 v0, v32

    if-gt v0, v6, :cond_257

    invoke-static/range {v33 .. v33}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v35

    .line 2548
    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_229
    move-object/from16 v0, p2

    move/from16 v1, v37

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2549
    add-int v6, v37, v44

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-static {v0, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2550
    move-object/from16 v0, p1

    move/from16 v1, v37

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2551
    const/16 v23, 0x1

    .restart local v23    # "advance":Z
    goto/16 :goto_1a0

    .line 2545
    .end local v23    # "advance":Z
    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_248
    if-eqz v32, :cond_254

    new-instance v40, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    .restart local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_220

    .end local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_254
    move-object/from16 v40, v53

    .restart local v40    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_220

    .line 2547
    :cond_257
    if-eqz v39, :cond_263

    new-instance v35, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V
    :try_end_262
    .catchall {:try_start_201 .. :try_end_262} :catchall_1fe

    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_229

    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_263
    move-object/from16 v35, v53

    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_229
.end method

.method private final treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V
    .registers 14
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 2673
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_c

    .line 2674
    array-length v9, p1

    .local v9, "n":I
    const/16 v1, 0x40

    if-ge v9, v1, :cond_d

    .line 2675
    shl-int/lit8 v1, v9, 0x1

    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    .line 2695
    .end local v9    # "n":I
    :cond_c
    :goto_c
    return-void

    .line 2676
    .restart local v9    # "n":I
    :cond_d
    invoke-static {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v6

    .local v6, "b":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_c

    iget v1, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ltz v1, :cond_c

    .line 2677
    monitor-enter v6

    .line 2678
    :try_start_18
    invoke-static {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    if-ne v1, v6, :cond_47

    .line 2679
    const/4 v8, 0x0

    .local v8, "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v10, 0x0

    .line 2680
    .local v10, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v7, v6

    .end local v8    # "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v7, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_21
    if-eqz v7, :cond_3f

    .line 2682
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget v1, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v2, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 2683
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2682
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    .line 2684
    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v10, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v10, :cond_39

    .line 2685
    move-object v8, v0

    .line 2688
    :goto_35
    move-object v10, v0

    .line 2680
    .local v10, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v7, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_21

    .line 2687
    .end local v10    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_39
    iput-object v0, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_3b
    .catchall {:try_start_18 .. :try_end_3b} :catchall_3c

    goto :goto_35

    .line 2677
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_3c
    move-exception v1

    monitor-exit v6

    throw v1

    .line 2690
    .restart local v7    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3f
    :try_start_3f
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v1, v8}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    invoke-static {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_3c

    .end local v7    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_47
    monitor-exit v6

    goto :goto_c
.end method

.method private final tryPresize(I)V
    .registers 14
    .param p1, "size"    # I

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v11, 0x0

    .line 2391
    const/high16 v0, 0x20000000

    if-lt p1, v0, :cond_30

    const/high16 v6, 0x40000000    # 2.0f

    .line 2394
    .local v6, "c":I
    :cond_7
    :goto_7
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .local v4, "sc":I
    if-ltz v4, :cond_46

    .line 2395
    iget-object v10, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2396
    .local v10, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v10, :cond_12

    array-length v7, v10

    .local v7, "n":I
    if-nez v7, :cond_40

    .line 2397
    .end local v7    # "n":I
    :cond_12
    if-le v4, v6, :cond_3a

    move v7, v4

    .line 2398
    .restart local v7    # "n":I
    :goto_15
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v5, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2400
    :try_start_21
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v0, v10, :cond_2d

    .line 2402
    new-array v8, v7, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2403
    .local v8, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iput-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_3c

    .line 2404
    ushr-int/lit8 v0, v7, 0x2

    sub-int v4, v7, v0

    .line 2407
    .end local v8    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2d
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    goto :goto_7

    .line 2392
    .end local v4    # "sc":I
    .end local v6    # "c":I
    .end local v7    # "n":I
    .end local v10    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_30
    ushr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v6

    .restart local v6    # "c":I
    goto :goto_7

    .line 2397
    .restart local v4    # "sc":I
    .restart local v10    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3a
    move v7, v6

    .restart local v7    # "n":I
    goto :goto_15

    .line 2406
    :catchall_3c
    move-exception v0

    .line 2407
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 2406
    throw v0

    .line 2411
    :cond_40
    if-le v6, v4, :cond_46

    const/high16 v0, 0x40000000    # 2.0f

    if-lt v7, v0, :cond_47

    .line 2420
    .end local v7    # "n":I
    .end local v10    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_46
    return-void

    .line 2413
    .restart local v7    # "n":I
    .restart local v10    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_47
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v10, v0, :cond_7

    .line 2414
    invoke-static {v7}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v9

    .line 2415
    .local v9, "rs":I
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    .line 2416
    shl-int/lit8 v1, v9, 0x10

    add-int/lit8 v5, v1, 0x2

    move-object v1, p0

    .line 2415
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2417
    invoke-direct {p0, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_7
.end method

.method static untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "b":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v7, 0x0

    .line 2701
    const/4 v0, 0x0

    .local v0, "hd":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    .line 2702
    .local v3, "tl":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v2, p0

    .end local v0    # "hd":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "tl":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v2, "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_4
    if-eqz v2, :cond_1b

    .line 2703
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget v4, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v6, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-direct {v1, v4, v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2704
    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v3, :cond_18

    .line 2705
    move-object v0, v1

    .line 2708
    :goto_14
    move-object v3, v1

    .line 2702
    .local v3, "tl":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_4

    .line 2707
    .end local v3    # "tl":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_18
    iput-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_14

    .line 2710
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1b
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 16
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/16 v10, 0x10

    const/4 v13, 0x0

    .line 1406
    const/4 v6, 0x0

    .line 1407
    .local v6, "sshift":I
    const/4 v7, 0x1

    .line 1408
    .local v7, "ssize":I
    :goto_5
    if-ge v7, v10, :cond_c

    .line 1409
    add-int/lit8 v6, v6, 0x1

    .line 1410
    shl-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1412
    :cond_c
    rsub-int/lit8 v4, v6, 0x20

    .line 1413
    .local v4, "segmentShift":I
    add-int/lit8 v3, v7, -0x1

    .line 1416
    .local v3, "segmentMask":I
    new-array v5, v10, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 1417
    .local v5, "segments":[Ljava/util/concurrent/ConcurrentHashMap$Segment;, "[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    array-length v10, v5

    if-ge v0, v10, :cond_22

    .line 1418
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    const/high16 v11, 0x3f400000    # 0.75f

    invoke-direct {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap$Segment;-><init>(F)V

    aput-object v10, v5, v0

    .line 1417
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1419
    :cond_22
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v8

    .line 1420
    .local v8, "streamFields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v10, "segments"

    invoke-virtual {v8, v10, v5}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1421
    const-string/jumbo v10, "segmentShift"

    invoke-virtual {v8, v10, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1422
    const-string/jumbo v10, "segmentMask"

    invoke-virtual {v8, v10, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1423
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1426
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v9, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v9, :cond_58

    .line 1427
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v10, v9

    array-length v11, v9

    const/4 v12, 0x0

    invoke-direct {v1, v9, v10, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1428
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_47
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    .local v2, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_58

    .line 1429
    iget-object v10, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v10}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1430
    iget-object v10, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {p1, v10}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_47

    .line 1433
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_58
    invoke-virtual {p1, v13}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1434
    invoke-virtual {p1, v13}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1435
    return-void
.end method


# virtual methods
.method final batchFor(J)I
    .registers 10
    .param p1, "b"    # J

    .prologue
    .line 3698
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, p1, v4

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    .local v0, "n":J
    const-wide/16 v4, 0x1

    cmp-long v3, v0, v4

    if-gtz v3, :cond_15

    .line 3699
    .end local v0    # "n":J
    :cond_13
    const/4 v3, 0x0

    return v3

    .line 3698
    .restart local v0    # "n":J
    :cond_15
    cmp-long v3, v0, p1

    if-ltz v3, :cond_13

    .line 3700
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    shl-int/lit8 v2, v3, 0x2

    .line 3701
    .local v2, "sp":I
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_2b

    div-long/2addr v0, p1

    int-to-long v4, v2

    cmp-long v3, v0, v4

    if-ltz v3, :cond_2c

    .end local v2    # "sp":I
    :cond_2b
    :goto_2b
    return v2

    .restart local v2    # "sp":I
    :cond_2c
    long-to-int v2, v0

    goto :goto_2b
.end method

.method public clear()V
    .registers 14

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v12, -0x1

    .line 1192
    const-wide/16 v2, 0x0

    .line 1193
    .local v2, "delta":J
    const/4 v6, 0x0

    .line 1194
    .local v6, "i":I
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v9, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move v7, v6

    .line 1195
    .end local v6    # "i":I
    .local v7, "i":I
    :goto_7
    if-eqz v9, :cond_4b

    array-length v10, v9

    if-ge v7, v10, :cond_4b

    .line 1197
    invoke-static {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    .line 1198
    .local v4, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v4, :cond_16

    .line 1199
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    :goto_14
    move v7, v6

    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_7

    .line 1200
    :cond_16
    iget v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v5, "fh":I
    if-ne v5, v12, :cond_20

    .line 1201
    invoke-virtual {p0, v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    .line 1202
    const/4 v6, 0x0

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_14

    .line 1205
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_20
    monitor-enter v4

    .line 1206
    :try_start_21
    invoke-static {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v10

    if-ne v10, v4, :cond_57

    .line 1207
    if-ltz v5, :cond_32

    move-object v8, v4

    .line 1210
    :goto_2a
    if-eqz v8, :cond_3f

    .line 1211
    const-wide/16 v10, 0x1

    sub-long/2addr v2, v10

    .line 1212
    iget-object v8, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_2a

    .line 1208
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_32
    instance-of v10, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v10, :cond_3d

    .line 1209
    move-object v0, v4

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object v10, v0

    iget-object v8, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_3c
    .catchall {:try_start_21 .. :try_end_3c} :catchall_47

    .restart local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_2a

    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3d
    const/4 v8, 0x0

    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_2a

    .line 1214
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3f
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    const/4 v10, 0x0

    :try_start_42
    invoke-static {v9, v7, v10}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_55

    :goto_45
    monitor-exit v4

    goto :goto_14

    .line 1205
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :catchall_47
    move-exception v10

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    :goto_49
    monitor-exit v4

    throw v10

    .line 1219
    .end local v4    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "fh":I
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_4b
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_54

    .line 1220
    invoke-direct {p0, v2, v3, v12}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1221
    :cond_54
    return-void

    .line 1205
    .end local v7    # "i":I
    .restart local v4    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "fh":I
    .restart local v6    # "i":I
    :catchall_55
    move-exception v10

    goto :goto_49

    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_57
    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_45
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 1897
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 1898
    :cond_4
    new-instance v24, Ljava/lang/NullPointerException;

    invoke-direct/range {v24 .. v24}, Ljava/lang/NullPointerException;-><init>()V

    throw v24

    .line 1899
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v11

    .line 1900
    .local v11, "h":I
    const/16 v23, 0x0

    .line 1901
    .local v23, "val":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    .line 1902
    .local v5, "delta":I
    const/4 v4, 0x0

    .line 1903
    .local v4, "binCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v22, v0

    .line 1905
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    .local v22, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1c
    :goto_1c
    if-eqz v22, :cond_23

    move-object/from16 v0, v22

    array-length v13, v0

    .local v13, "n":I
    if-nez v13, :cond_28

    .line 1906
    .end local v13    # "n":I
    :cond_23
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v22

    goto :goto_1c

    .line 1907
    .restart local v13    # "n":I
    :cond_28
    add-int/lit8 v24, v13, -0x1

    and-int v12, v24, v11

    .local v12, "i":I
    move-object/from16 v0, v22

    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    .local v9, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v9, :cond_86

    .line 1908
    new-instance v19, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    .line 1909
    .local v19, "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    monitor-enter v19

    .line 1910
    const/16 v24, 0x0

    :try_start_3c
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-static {v0, v12, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_83

    move-result v24

    if-eqz v24, :cond_6c

    .line 1911
    const/4 v4, 0x1

    .line 1912
    const/4 v14, 0x0

    .line 1914
    .local v14, "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/16 v24, 0x0

    :try_start_4c
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v23, :cond_67

    .line 1915
    const/4 v5, 0x1

    .line 1916
    new-instance v15, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v15, v11, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_7c

    .local v15, "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v14, v15

    .line 1919
    .end local v14    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v15    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_67
    :try_start_67
    move-object/from16 v0, v22

    invoke-static {v0, v12, v14}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_83

    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_6c
    monitor-exit v19

    .line 1923
    if-eqz v4, :cond_1c

    .line 2000
    .end local v19    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6f
    :goto_6f
    if-eqz v5, :cond_7b

    .line 2001
    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 2002
    :cond_7b
    return-object v23

    .line 1918
    .restart local v14    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v19    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_7c
    move-exception v24

    .line 1919
    :try_start_7d
    move-object/from16 v0, v22

    invoke-static {v0, v12, v14}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1918
    throw v24
    :try_end_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_83

    .line 1909
    .end local v14    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_83
    move-exception v24

    monitor-exit v19

    throw v24

    .line 1926
    .end local v19    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_86
    iget v10, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v10, "fh":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v10, v0, :cond_97

    .line 1927
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v22

    goto :goto_1c

    .line 1929
    :cond_97
    monitor-enter v9

    .line 1930
    :try_start_98
    move-object/from16 v0, v22

    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v24

    move-object/from16 v0, v24

    if-ne v0, v9, :cond_d4

    .line 1931
    if-ltz v10, :cond_138

    .line 1932
    const/4 v4, 0x1

    .line 1933
    move-object v6, v9

    .local v6, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/16 v17, 0x0

    .line 1935
    :goto_a8
    iget v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v11, :cond_f8

    .line 1936
    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v7, v0, :cond_c0

    .line 1937
    if-eqz v7, :cond_f8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 1935
    if-eqz v24, :cond_f8

    .line 1938
    :cond_c0
    iget-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 1939
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v23, :cond_e5

    .line 1940
    move-object/from16 v0, v23

    iput-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_d4
    .catchall {:try_start_98 .. :try_end_d4} :catchall_ef

    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_d4
    :goto_d4
    monitor-exit v9

    .line 1993
    if-eqz v4, :cond_1c

    .line 1994
    const/16 v24, 0x8

    move/from16 v0, v24

    if-lt v4, v0, :cond_6f

    .line 1995
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    goto :goto_6f

    .line 1942
    .restart local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_e5
    const/4 v5, -0x1

    .line 1943
    :try_start_e6
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1944
    .local v8, "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v17, :cond_f2

    .line 1945
    move-object/from16 v0, v17

    iput-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_ee
    .catchall {:try_start_e6 .. :try_end_ee} :catchall_ef

    goto :goto_d4

    .line 1929
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :catchall_ef
    move-exception v24

    monitor-exit v9

    throw v24

    .line 1947
    .restart local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_f2
    :try_start_f2
    move-object/from16 v0, v22

    invoke-static {v0, v12, v8}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_d4

    .line 1951
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_f8
    move-object/from16 v17, v6

    .line 1952
    .local v17, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v6, :cond_134

    .line 1953
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 1954
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v23, :cond_d4

    .line 1955
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v24, v0

    if-eqz v24, :cond_11d

    .line 1956
    new-instance v24, Ljava/lang/IllegalStateException;

    const-string/jumbo v25, "Recursive update"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1957
    :cond_11d
    const/4 v5, 0x1

    .line 1959
    new-instance v24, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    invoke-direct {v0, v11, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1958
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_d4

    .line 1933
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_134
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a8

    .line 1965
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v17    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_138
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move/from16 v24, v0

    if-eqz v24, :cond_1a8

    .line 1966
    const/4 v4, 0x1

    .line 1967
    move-object v0, v9

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v21, v0

    .line 1969
    .local v21, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    move-object/from16 v0, v21

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v20, v0

    .local v20, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v20, :cond_172

    .line 1970
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v16

    .line 1973
    :goto_158
    if-nez v16, :cond_175

    const/16 v18, 0x0

    .line 1974
    :goto_15c
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 1975
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v23, :cond_188

    .line 1976
    if-eqz v16, :cond_17c

    .line 1977
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto/16 :goto_d4

    .line 1972
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_172
    const/16 v16, 0x0

    .local v16, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_158

    .line 1973
    .end local v16    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_175
    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v18, v0

    .local v18, "pv":Ljava/lang/Object;, "TV;"
    goto :goto_15c

    .line 1979
    .end local v18    # "pv":Ljava/lang/Object;, "TV;"
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_17c
    const/4 v5, 0x1

    .line 1980
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto/16 :goto_d4

    .line 1983
    :cond_188
    if-eqz v16, :cond_d4

    .line 1984
    const/4 v5, -0x1

    .line 1985
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v24

    if-eqz v24, :cond_d4

    .line 1986
    move-object/from16 v0, v21

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto/16 :goto_d4

    .line 1989
    .end local v20    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v21    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_1a8
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    move/from16 v24, v0

    if-eqz v24, :cond_d4

    .line 1990
    new-instance v24, Ljava/lang/IllegalStateException;

    const-string/jumbo v25, "Recursive update"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_1b7
    .catchall {:try_start_f2 .. :try_end_1b7} :catchall_ef
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 1699
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 1700
    :cond_4
    new-instance v22, Ljava/lang/NullPointerException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/NullPointerException;-><init>()V

    throw v22

    .line 1701
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v10

    .line 1702
    .local v10, "h":I
    const/16 v21, 0x0

    .line 1703
    .local v21, "val":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    .line 1704
    .local v5, "binCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v20, v0

    .line 1706
    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    .local v20, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1b
    :goto_1b
    if-eqz v20, :cond_22

    move-object/from16 v0, v20

    array-length v12, v0

    .local v12, "n":I
    if-nez v12, :cond_27

    .line 1707
    .end local v12    # "n":I
    :cond_22
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    goto :goto_1b

    .line 1708
    .restart local v12    # "n":I
    :cond_27
    add-int/lit8 v22, v12, -0x1

    and-int v11, v22, v10

    .local v11, "i":I
    move-object/from16 v0, v20

    invoke-static {v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v8

    .local v8, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v8, :cond_7f

    .line 1709
    new-instance v17, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    .line 1710
    .local v17, "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    monitor-enter v17

    .line 1711
    const/16 v22, 0x0

    :try_start_3b
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-static {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_7c

    move-result v22

    if-eqz v22, :cond_66

    .line 1712
    const/4 v5, 0x1

    .line 1713
    const/4 v13, 0x0

    .line 1715
    .local v13, "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_49
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v21, :cond_61

    .line 1716
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v14, v10, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_60
    .catchall {:try_start_49 .. :try_end_60} :catchall_75

    .local v14, "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v13, v14

    .line 1718
    .end local v13    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_61
    :try_start_61
    move-object/from16 v0, v20

    invoke-static {v0, v11, v13}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_7c

    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    :cond_66
    monitor-exit v17

    .line 1722
    if-eqz v5, :cond_1b

    .line 1778
    .end local v17    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_69
    if-eqz v21, :cond_74

    .line 1779
    const-wide/16 v22, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1780
    :cond_74
    return-object v21

    .line 1717
    .restart local v13    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v17    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_75
    move-exception v22

    .line 1718
    :try_start_76
    move-object/from16 v0, v20

    invoke-static {v0, v11, v13}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1717
    throw v22
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_7c

    .line 1710
    .end local v13    # "node":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_7c
    move-exception v22

    monitor-exit v17

    throw v22

    .line 1725
    .end local v17    # "r":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7f
    iget v9, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v9, "fh":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_90

    .line 1726
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    goto :goto_1b

    .line 1728
    :cond_90
    const/4 v4, 0x0

    .line 1729
    .local v4, "added":Z
    monitor-enter v8

    .line 1730
    :try_start_92
    move-object/from16 v0, v20

    invoke-static {v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v22

    move-object/from16 v0, v22

    if-ne v0, v8, :cond_bc

    .line 1731
    if-ltz v9, :cond_10d

    .line 1732
    const/4 v5, 0x1

    .line 1733
    move-object v6, v8

    .line 1735
    .local v6, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_a0
    iget v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v10, :cond_cf

    .line 1736
    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v7, v0, :cond_b8

    .line 1737
    if-eqz v7, :cond_cf

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 1735
    if-eqz v22, :cond_cf

    .line 1738
    :cond_b8
    iget-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v21, v0
    :try_end_bc
    .catchall {:try_start_92 .. :try_end_bc} :catchall_f0

    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    :cond_bc
    :goto_bc
    monitor-exit v8

    .line 1769
    if-eqz v5, :cond_1b

    .line 1770
    const/16 v22, 0x8

    move/from16 v0, v22

    if-lt v5, v0, :cond_cc

    .line 1771
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 1772
    :cond_cc
    if-nez v4, :cond_69

    .line 1773
    return-object v21

    .line 1741
    .restart local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_cf
    move-object/from16 v16, v6

    .line 1742
    .local v16, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_d1
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v6, :cond_10a

    .line 1743
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v21, :cond_bc

    .line 1744
    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f3

    .line 1745
    new-instance v22, Ljava/lang/IllegalStateException;

    const-string/jumbo v23, "Recursive update"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_f0
    .catchall {:try_start_d1 .. :try_end_f0} :catchall_f0

    .line 1729
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v16    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    :catchall_f0
    move-exception v22

    monitor-exit v8

    throw v22

    .line 1746
    .restart local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v16    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v21    # "val":Ljava/lang/Object;, "TV;"
    :cond_f3
    const/4 v4, 0x1

    .line 1747
    :try_start_f4
    new-instance v22, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    invoke-direct {v0, v10, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_bc

    .line 1733
    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    :cond_10a
    add-int/lit8 v5, v5, 0x1

    goto :goto_a0

    .line 1753
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v16    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_10d
    instance-of v0, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move/from16 v22, v0

    if-eqz v22, :cond_14a

    .line 1754
    const/4 v5, 0x2

    .line 1755
    move-object v0, v8

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v19, v0

    .line 1757
    .local v19, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    move-object/from16 v0, v19

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v18, v0

    .local v18, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v18, :cond_134

    .line 1758
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v10, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v15

    .local v15, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v15, :cond_134

    .line 1759
    iget-object v0, v15, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v21, v0

    .restart local v21    # "val":Ljava/lang/Object;, "TV;"
    goto :goto_bc

    .line 1760
    .end local v15    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    :cond_134
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v21, :cond_bc

    .line 1761
    const/4 v4, 0x1

    .line 1762
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v10, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto/16 :goto_bc

    .line 1765
    .end local v18    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v19    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    :cond_14a
    instance-of v0, v8, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    move/from16 v22, v0

    if-eqz v22, :cond_bc

    .line 1766
    new-instance v22, Ljava/lang/IllegalStateException;

    const-string/jumbo v23, "Recursive update"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_159
    .catchall {:try_start_f4 .. :try_end_159} :catchall_f0
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 1804
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 1805
    :cond_4
    new-instance v20, Ljava/lang/NullPointerException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/NullPointerException;-><init>()V

    throw v20

    .line 1806
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v11

    .line 1807
    .local v11, "h":I
    const/16 v19, 0x0

    .line 1808
    .local v19, "val":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    .line 1809
    .local v5, "delta":I
    const/4 v4, 0x0

    .line 1810
    .local v4, "binCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v18, v0

    .line 1812
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    .local v18, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1c
    :goto_1c
    if-eqz v18, :cond_23

    move-object/from16 v0, v18

    array-length v13, v0

    .local v13, "n":I
    if-nez v13, :cond_28

    .line 1813
    .end local v13    # "n":I
    :cond_23
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v18

    goto :goto_1c

    .line 1814
    .restart local v13    # "n":I
    :cond_28
    add-int/lit8 v20, v13, -0x1

    and-int v12, v20, v11

    .local v12, "i":I
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    .local v9, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v9, :cond_41

    .line 1870
    :goto_34
    if-eqz v5, :cond_40

    .line 1871
    int-to-long v0, v5

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1872
    :cond_40
    return-object v19

    .line 1816
    :cond_41
    iget v10, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v10, "fh":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_52

    .line 1817
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v18

    goto :goto_1c

    .line 1819
    :cond_52
    monitor-enter v9

    .line 1820
    :try_start_53
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v9, :cond_8e

    .line 1821
    if-ltz v10, :cond_ab

    .line 1822
    const/4 v4, 0x1

    .line 1823
    move-object v6, v9

    .local v6, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v15, 0x0

    .line 1825
    :goto_62
    iget v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v11, :cond_a3

    .line 1826
    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v7, v0, :cond_7a

    .line 1827
    if-eqz v7, :cond_a3

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 1825
    if-eqz v20, :cond_a3

    .line 1828
    :cond_7a
    iget-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 1829
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v19, :cond_92

    .line 1830
    move-object/from16 v0, v19

    iput-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_8e
    .catchall {:try_start_53 .. :try_end_8e} :catchall_9a

    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_8e
    :goto_8e
    monitor-exit v9

    .line 1866
    if-eqz v4, :cond_1c

    goto :goto_34

    .line 1832
    .restart local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_92
    const/4 v5, -0x1

    .line 1833
    :try_start_93
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1834
    .local v8, "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v15, :cond_9d

    .line 1835
    iput-object v8, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_99
    .catchall {:try_start_93 .. :try_end_99} :catchall_9a

    goto :goto_8e

    .line 1819
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :catchall_9a
    move-exception v20

    monitor-exit v9

    throw v20

    .line 1837
    .restart local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_9d
    :try_start_9d
    move-object/from16 v0, v18

    invoke-static {v0, v12, v8}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_8e

    .line 1841
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_a3
    move-object v15, v6

    .line 1842
    .local v15, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v6, :cond_8e

    .line 1823
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 1846
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v15    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_ab
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move/from16 v20, v0

    if-eqz v20, :cond_fd

    .line 1847
    const/4 v4, 0x2

    .line 1848
    move-object v0, v9

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v17, v0

    .line 1850
    .local v17, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v16, v0

    .local v16, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v16, :cond_8e

    .line 1851
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v14

    .local v14, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v14, :cond_8e

    .line 1852
    iget-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 1853
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v19, :cond_e2

    .line 1854
    move-object/from16 v0, v19

    iput-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_8e

    .line 1856
    :cond_e2
    const/4 v5, -0x1

    .line 1857
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v20

    if-eqz v20, :cond_8e

    .line 1858
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_8e

    .line 1862
    .end local v14    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v16    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v17    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_fd
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    move/from16 v20, v0

    if-eqz v20, :cond_8e

    .line 1863
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string/jumbo v21, "Recursive update"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_10c
    .catchall {:try_start_9d .. :try_end_10c} :catchall_9a
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 2135
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 972
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v6, 0x0

    .line 986
    if-nez p1, :cond_9

    .line 987
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 989
    :cond_9
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_28

    .line 990
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v4, v2

    array-length v5, v2

    invoke-direct {v0, v2, v4, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 991
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :cond_14
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_28

    .line 993
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eq v3, p1, :cond_26

    if-eqz v3, :cond_14

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 994
    :cond_26
    const/4 v4, 0x1

    return v4

    .line 997
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_28
    return v6
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2158
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_e

    const/4 v2, 0x0

    .line 2159
    .local v2, "f":I
    :goto_5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;

    const/4 v3, 0x0

    move v4, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    return-object v0

    .line 2158
    .end local v2    # "f":I
    :cond_e
    array-length v2, v1

    .restart local v2    # "f":I
    goto :goto_5
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
    .line 1292
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    .local v0, "es":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    if-eqz v0, :cond_5

    .end local v0    # "es":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    :goto_4
    return-object v0

    .restart local v0    # "es":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    :cond_5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    .end local v0    # "es":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 15
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v12, 0x0

    .line 1357
    if-eq p1, p0, :cond_64

    .line 1358
    instance-of v11, p1, Ljava/util/Map;

    if-nez v11, :cond_8

    .line 1359
    return v12

    :cond_8
    move-object v4, p1

    .line 1360
    check-cast v4, Ljava/util/Map;

    .line 1362
    .local v4, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v8, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v8, :cond_30

    const/4 v2, 0x0

    .line 1363
    .local v2, "f":I
    :goto_10
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    invoke-direct {v3, v8, v2, v12, v2}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1364
    .local v3, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :cond_15
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    .local v7, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v7, :cond_32

    .line 1365
    iget-object v10, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1366
    .local v10, "val":Ljava/lang/Object;, "TV;"
    iget-object v11, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1367
    .local v9, "v":Ljava/lang/Object;
    if-eqz v9, :cond_2f

    if-eq v9, v10, :cond_15

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_15

    .line 1368
    :cond_2f
    return v12

    .line 1362
    .end local v2    # "f":I
    .end local v3    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "v":Ljava/lang/Object;
    .end local v10    # "val":Ljava/lang/Object;, "TV;"
    :cond_30
    array-length v2, v8

    .restart local v2    # "f":I
    goto :goto_10

    .line 1370
    .restart local v3    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .restart local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_32
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1372
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .local v5, "mk":Ljava/lang/Object;
    if-eqz v5, :cond_52

    .line 1373
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "mv":Ljava/lang/Object;
    if-nez v6, :cond_53

    .line 1376
    .end local v6    # "mv":Ljava/lang/Object;
    :cond_52
    :goto_52
    return v12

    .line 1374
    .restart local v6    # "mv":Ljava/lang/Object;
    :cond_53
    invoke-virtual {p0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9    # "v":Ljava/lang/Object;
    if-eqz v9, :cond_52

    .line 1375
    if-eq v6, v9, :cond_3a

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    .line 1372
    if-eqz v11, :cond_3a

    goto :goto_52

    .line 1379
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "f":I
    .end local v3    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v5    # "mk":Ljava/lang/Object;
    .end local v6    # "mv":Ljava/lang/Object;
    .end local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "v":Ljava/lang/Object;
    :cond_64
    const/4 v11, 0x1

    return v11
.end method

.method public forEach(JLjava/util/function/BiConsumer;)V
    .registers 11
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3714
    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3715
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;

    .line 3716
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, p3

    .line 3715
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->invoke()Ljava/lang/Object;

    .line 3718
    return-void
.end method

.method public forEach(JLjava/util/function/BiFunction;Ljava/util/function/Consumer;)V
    .registers 14
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TU;>;",
            "Ljava/util/function/Consumer",
            "<-TU;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 3736
    if-eqz p3, :cond_6

    if-nez p4, :cond_c

    .line 3737
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3738
    :cond_c
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;

    .line 3739
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, p3

    move-object v7, p4

    .line 3738
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->invoke()Ljava/lang/Object;

    .line 3741
    return-void
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
    .line 1608
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-nez p1, :cond_8

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1610
    :cond_8
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_22

    .line 1611
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    array-length v4, v2

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1612
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_14
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_22

    .line 1613
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v3, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    .line 1616
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_22
    return-void
.end method

.method public forEachEntry(JLjava/util/function/Consumer;)V
    .registers 11
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 4253
    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4254
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->invoke()Ljava/lang/Object;

    .line 4256
    return-void
.end method

.method public forEachEntry(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .registers 14
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;",
            "Ljava/util/function/Consumer",
            "<-TU;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 4274
    if-eqz p3, :cond_6

    if-nez p4, :cond_c

    .line 4275
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4276
    :cond_c
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;

    .line 4277
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, p3

    move-object v7, p4

    .line 4276
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->invoke()Ljava/lang/Object;

    .line 4279
    return-void
.end method

.method public forEachKey(JLjava/util/function/Consumer;)V
    .registers 11
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3881
    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3882
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;

    .line 3883
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, p3

    .line 3882
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->invoke()Ljava/lang/Object;

    .line 3885
    return-void
.end method

.method public forEachKey(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .registers 14
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TK;+TU;>;",
            "Ljava/util/function/Consumer",
            "<-TU;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 3903
    if-eqz p3, :cond_6

    if-nez p4, :cond_c

    .line 3904
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3905
    :cond_c
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;

    .line 3906
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, p3

    move-object v7, p4

    .line 3905
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->invoke()Ljava/lang/Object;

    .line 3908
    return-void
.end method

.method public forEachValue(JLjava/util/function/Consumer;)V
    .registers 11
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 4067
    if-nez p3, :cond_a

    .line 4068
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4069
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;

    .line 4070
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, p3

    .line 4069
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachValueTask;->invoke()Ljava/lang/Object;

    .line 4072
    return-void
.end method

.method public forEachValue(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .registers 14
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TV;+TU;>;",
            "Ljava/util/function/Consumer",
            "<-TU;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local p4, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TU;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 4090
    if-eqz p3, :cond_6

    if-nez p4, :cond_c

    .line 4091
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4092
    :cond_c
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;

    .line 4093
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, p3

    move-object v7, p4

    .line 4092
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->invoke()Ljava/lang/Object;

    .line 4095
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v7, 0x0

    .line 944
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v3

    .line 945
    .local v3, "h":I
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v6, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_4e

    array-length v4, v6

    .local v4, "n":I
    if-lez v4, :cond_4e

    .line 946
    add-int/lit8 v8, v4, -0x1

    and-int/2addr v8, v3

    invoke-static {v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_4e

    .line 947
    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v1, "eh":I
    if-ne v1, v3, :cond_2c

    .line 948
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .local v2, "ek":Ljava/lang/Object;, "TK;"
    if-eq v2, p1, :cond_29

    if-eqz v2, :cond_37

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 949
    :cond_29
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object v7

    .line 951
    .end local v2    # "ek":Ljava/lang/Object;, "TK;"
    :cond_2c
    if-gez v1, :cond_37

    .line 952
    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap$Node;->find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    .local v5, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v5, :cond_36

    iget-object v7, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    :cond_36
    return-object v7

    .line 953
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_37
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_4e

    .line 954
    iget v8, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v8, v3, :cond_37

    .line 955
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .restart local v2    # "ek":Ljava/lang/Object;, "TK;"
    if-eq v2, p1, :cond_4b

    if-eqz v2, :cond_37

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 954
    if-eqz v8, :cond_37

    .line 956
    :cond_4b
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object v7

    .line 959
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v1    # "eh":I
    .end local v2    # "ek":Ljava/lang/Object;, "TK;"
    .end local v4    # "n":I
    :cond_4e
    return-object v7
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1604
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_7

    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :goto_6
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_7
    move-object p2, v0

    goto :goto_6
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 1303
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1305
    .local v0, "h":I
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v3, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_22

    .line 1306
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v4, v3

    array-length v5, v3

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1307
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_d
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    .local v2, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_22

    .line 1308
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v4, v5

    add-int/2addr v0, v4

    goto :goto_d

    .line 1310
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_22
    return v0
.end method

.method final helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2367
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_41

    instance-of v0, p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v0, :cond_41

    .line 2368
    check-cast p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    .end local p2    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v6, p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v6, "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_41

    .line 2369
    array-length v0, p1

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v7

    .line 2370
    .local v7, "rs":I
    :cond_11
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v6, v0, :cond_25

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v0, p1, :cond_25

    .line 2371
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .local v4, "sc":I
    if-gez v4, :cond_25

    .line 2372
    ushr-int/lit8 v0, v4, 0x10

    if-ne v0, v7, :cond_25

    add-int/lit8 v0, v7, 0x1

    if-ne v4, v0, :cond_26

    .line 2380
    .end local v4    # "sc":I
    :cond_25
    :goto_25
    return-object v6

    .line 2373
    .restart local v4    # "sc":I
    :cond_26
    const v0, 0xffff

    add-int/2addr v0, v7

    if-eq v4, v0, :cond_25

    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-lez v0, :cond_25

    .line 2375
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v5, v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2376
    invoke-direct {p0, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_25

    .line 2382
    .end local v4    # "sc":I
    .end local v6    # "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "rs":I
    :cond_41
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 5

    .prologue
    .line 928
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 1247
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .local v0, "ks":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    if-eqz v0, :cond_6

    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    :goto_5
    return-object v0

    .restart local v0    # "ks":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    :cond_6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    goto :goto_5
.end method

.method public keySet(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2221
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "mappedValue":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_8

    .line 2222
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2223
    :cond_8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2146
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_e

    const/4 v2, 0x0

    .line 2147
    .local v2, "f":I
    :goto_5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;

    const/4 v3, 0x0

    move v4, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    return-object v0

    .line 2146
    .end local v2    # "f":I
    :cond_e
    array-length v2, v1

    .restart local v2    # "f":I
    goto :goto_5
.end method

.method public mappingCount()J
    .registers 6

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const-wide/16 v2, 0x0

    .line 2175
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    .line 2176
    .local v0, "n":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_b

    move-wide v0, v2

    .end local v0    # "n":J
    :cond_b
    return-wide v0
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2026
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 2027
    :cond_4
    new-instance v20, Ljava/lang/NullPointerException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/NullPointerException;-><init>()V

    throw v20

    .line 2026
    :cond_a
    if-eqz p3, :cond_4

    .line 2028
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v11

    .line 2029
    .local v11, "h":I
    const/16 v19, 0x0

    .line 2030
    .local v19, "val":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    .line 2031
    .local v5, "delta":I
    const/4 v4, 0x0

    .line 2032
    .local v4, "binCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v18, v0

    .line 2034
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    .local v18, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1e
    :goto_1e
    if-eqz v18, :cond_25

    move-object/from16 v0, v18

    array-length v13, v0

    .local v13, "n":I
    if-nez v13, :cond_2a

    .line 2035
    .end local v13    # "n":I
    :cond_25
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v18

    goto :goto_1e

    .line 2036
    .restart local v13    # "n":I
    :cond_2a
    add-int/lit8 v20, v13, -0x1

    and-int v12, v20, v11

    .local v12, "i":I
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    .local v9, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v9, :cond_63

    .line 2037
    new-instance v20, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-direct {v0, v11, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v12, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 2038
    const/4 v5, 0x1

    .line 2039
    move-object/from16 v19, p2

    .line 2111
    :cond_56
    :goto_56
    if-eqz v5, :cond_62

    .line 2112
    int-to-long v0, v5

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 2113
    :cond_62
    return-object v19

    .line 2043
    :cond_63
    iget v10, v9, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v10, "fh":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_74

    .line 2044
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v18

    goto :goto_1e

    .line 2046
    :cond_74
    monitor-enter v9

    .line 2047
    :try_start_75
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v9, :cond_b0

    .line 2048
    if-ltz v10, :cond_f1

    .line 2049
    const/4 v4, 0x1

    .line 2050
    move-object v6, v9

    .local v6, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v15, 0x0

    .line 2052
    :goto_84
    iget v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v11, :cond_d2

    .line 2053
    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v7, v0, :cond_9c

    .line 2054
    if-eqz v7, :cond_d2

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 2052
    if-eqz v20, :cond_d2

    .line 2055
    :cond_9c
    iget-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 2056
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v19, :cond_c1

    .line 2057
    move-object/from16 v0, v19

    iput-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_b0
    .catchall {:try_start_75 .. :try_end_b0} :catchall_c9

    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_b0
    :goto_b0
    monitor-exit v9

    .line 2104
    if-eqz v4, :cond_1e

    .line 2105
    const/16 v20, 0x8

    move/from16 v0, v20

    if-lt v4, v0, :cond_56

    .line 2106
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    goto :goto_56

    .line 2059
    .restart local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_c1
    const/4 v5, -0x1

    .line 2060
    :try_start_c2
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 2061
    .local v8, "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v15, :cond_cc

    .line 2062
    iput-object v8, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_c8
    .catchall {:try_start_c2 .. :try_end_c8} :catchall_c9

    goto :goto_b0

    .line 2046
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :catchall_c9
    move-exception v20

    monitor-exit v9

    throw v20

    .line 2064
    .restart local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_cc
    :try_start_cc
    move-object/from16 v0, v18

    invoke-static {v0, v12, v8}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_b0

    .line 2068
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_d2
    move-object v15, v6

    .line 2069
    .local v15, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v6, :cond_ee

    .line 2070
    const/4 v5, 0x1

    .line 2071
    move-object/from16 v19, p2

    .line 2073
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    new-instance v20, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-direct {v0, v11, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2072
    move-object/from16 v0, v20

    iput-object v0, v15, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_b0

    .line 2050
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_ee
    add-int/lit8 v4, v4, 0x1

    goto :goto_84

    .line 2078
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v15    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_f1
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move/from16 v20, v0

    if-eqz v20, :cond_159

    .line 2079
    const/4 v4, 0x2

    .line 2080
    move-object v0, v9

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v17, v0

    .line 2081
    .local v17, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v16, v0

    .line 2082
    .local v16, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v16, :cond_113

    const/4 v14, 0x0

    .line 2084
    :goto_106
    if-nez v14, :cond_120

    move-object/from16 v19, p2

    .line 2086
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :goto_10a
    if-eqz v19, :cond_13b

    .line 2087
    if-eqz v14, :cond_12f

    .line 2088
    move-object/from16 v0, v19

    iput-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_b0

    .line 2083
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_113
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v14

    .local v14, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_106

    .line 2085
    .end local v14    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_120
    iget-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    goto :goto_10a

    .line 2090
    :cond_12f
    const/4 v5, 0x1

    .line 2091
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto/16 :goto_b0

    .line 2094
    :cond_13b
    if-eqz v14, :cond_b0

    .line 2095
    const/4 v5, -0x1

    .line 2096
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v20

    if-eqz v20, :cond_b0

    .line 2097
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto/16 :goto_b0

    .line 2100
    .end local v16    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v17    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_159
    instance-of v0, v9, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    move/from16 v20, v0

    if-eqz v20, :cond_b0

    .line 2101
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string/jumbo v21, "Recursive update"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_168
    .catchall {:try_start_cc .. :try_end_168} :catchall_c9
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1014
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1092
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    .line 1093
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1094
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_f

    .line 1095
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_28
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1551
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 20
    .param p3, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 1019
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    :cond_4
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 1020
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v7

    .line 1021
    .local v7, "hash":I
    const/4 v2, 0x0

    .line 1022
    .local v2, "binCount":I
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1024
    .local v13, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_17
    :goto_17
    if-eqz v13, :cond_1c

    array-length v9, v13

    .local v9, "n":I
    if-nez v9, :cond_21

    .line 1025
    .end local v9    # "n":I
    :cond_1c
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v13

    goto :goto_17

    .line 1026
    .restart local v9    # "n":I
    :cond_21
    add-int/lit8 v14, v9, -0x1

    and-int v8, v14, v7

    .local v8, "i":I
    invoke-static {v13, v8}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    .local v5, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v5, :cond_45

    .line 1028
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v14, v7, v0, v1, v15}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1027
    const/4 v15, 0x0

    invoke-static {v13, v8, v15, v14}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 1080
    :cond_3c
    const-wide/16 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v2}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1081
    const/4 v14, 0x0

    return-object v14

    .line 1031
    :cond_45
    iget v6, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v6, "fh":I
    const/4 v14, -0x1

    if-ne v6, v14, :cond_51

    .line 1032
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v13

    goto :goto_17

    .line 1034
    :cond_51
    const/4 v10, 0x0

    .line 1035
    .local v10, "oldVal":Ljava/lang/Object;, "TV;"
    monitor-enter v5

    .line 1036
    :try_start_53
    invoke-static {v13, v8}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v14

    if-ne v14, v5, :cond_79

    .line 1037
    if-ltz v6, :cond_a0

    .line 1038
    const/4 v2, 0x1

    .line 1039
    move-object v3, v5

    .line 1041
    .local v3, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_5d
    iget v14, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v14, v7, :cond_88

    .line 1042
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .local v4, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v4, v0, :cond_71

    .line 1043
    if-eqz v4, :cond_88

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 1041
    if-eqz v14, :cond_88

    .line 1044
    :cond_71
    iget-object v10, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1045
    if-nez p3, :cond_79

    .line 1046
    move-object/from16 v0, p2

    iput-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_79
    .catchall {:try_start_53 .. :try_end_79} :catchall_9a

    .end local v3    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "ek":Ljava/lang/Object;, "TK;"
    .end local v10    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_79
    :goto_79
    monitor-exit v5

    .line 1071
    if-eqz v2, :cond_17

    .line 1072
    const/16 v14, 0x8

    if-lt v2, v14, :cond_85

    .line 1073
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 1074
    :cond_85
    if-eqz v10, :cond_3c

    .line 1075
    return-object v10

    .line 1049
    .restart local v3    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_88
    move-object v12, v3

    .line 1050
    .local v12, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_89
    iget-object v3, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v3, :cond_9d

    .line 1051
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1052
    const/4 v15, 0x0

    .line 1051
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v14, v7, v0, v1, v15}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object v14, v12, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_99
    .catchall {:try_start_89 .. :try_end_99} :catchall_9a

    goto :goto_79

    .line 1035
    .end local v3    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v12    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_9a
    move-exception v14

    monitor-exit v5

    throw v14

    .line 1039
    .restart local v3    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v12    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 1057
    .end local v3    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v12    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_a0
    :try_start_a0
    instance-of v14, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v14, :cond_bc

    .line 1059
    const/4 v2, 0x2

    .line 1060
    move-object v0, v5

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object v14, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v7, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v11

    .local v11, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v11, :cond_79

    .line 1062
    iget-object v10, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1063
    if-nez p3, :cond_79

    .line 1064
    move-object/from16 v0, p2

    iput-object v0, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_79

    .line 1067
    .end local v11    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_bc
    instance-of v14, v5, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-eqz v14, :cond_79

    .line 1068
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v15, "Recursive update"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_c9
    .catchall {:try_start_a0 .. :try_end_c9} :catchall_9a
.end method

.method public reduce(JLjava/util/function/BiFunction;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 14
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 3786
    if-eqz p3, :cond_6

    if-nez p4, :cond_c

    .line 3787
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3788
    :cond_c
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    .line 3789
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move-object v8, p4

    .line 3788
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceEntries(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 14
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 4342
    if-eqz p3, :cond_6

    if-nez p4, :cond_c

    .line 4343
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4344
    :cond_c
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .line 4345
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move-object v8, p4

    .line 4344
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceEntries(JLjava/util/function/BiFunction;)Ljava/util/Map$Entry;
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 4317
    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4318
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    .line 4319
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    .line 4318
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public reduceEntriesToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    .prologue
    .line 4368
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_4

    if-nez p6, :cond_a

    .line 4369
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4370
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    .line 4371
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4372
    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    .line 4370
    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public reduceEntriesToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .registers 17
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 4420
    if-eqz p3, :cond_6

    if-nez p5, :cond_c

    .line 4421
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4422
    :cond_c
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    .line 4423
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    .line 4422
    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public reduceEntriesToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .prologue
    .line 4394
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_4

    if-nez p6, :cond_a

    .line 4395
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4396
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    .line 4397
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4398
    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    .line 4396
    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public reduceKeys(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction",
            "<-TK;-TK;+TK;>;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TK;+TK;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 3947
    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3948
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    .line 3949
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    .line 3948
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceKeys(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 14
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TK;+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 3972
    if-eqz p3, :cond_6

    if-nez p4, :cond_c

    .line 3973
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3974
    :cond_c
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;

    .line 3975
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move-object v8, p4

    .line 3974
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceKeysToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction",
            "<-TK;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    .prologue
    .line 3998
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TK;>;"
    if-eqz p3, :cond_4

    if-nez p6, :cond_a

    .line 3999
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4000
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    .line 4001
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4002
    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    .line 4000
    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public reduceKeysToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .registers 17
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction",
            "<-TK;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TK;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 4050
    if-eqz p3, :cond_6

    if-nez p5, :cond_c

    .line 4051
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4052
    :cond_c
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    .line 4053
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    .line 4052
    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public reduceKeysToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction",
            "<-TK;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .prologue
    .line 4024
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TK;>;"
    if-eqz p3, :cond_4

    if-nez p6, :cond_a

    .line 4025
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4026
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    .line 4027
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4028
    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    .line 4026
    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public reduceToDouble(JLjava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleBiFunction",
            "<-TK;-TV;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    .prologue
    .line 3812
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleBiFunction;, "Ljava/util/function/ToDoubleBiFunction<-TK;-TV;>;"
    if-eqz p3, :cond_4

    if-nez p6, :cond_a

    .line 3813
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3814
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    .line 3815
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3816
    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    .line 3814
    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;Ljava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public reduceToInt(JLjava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)I
    .registers 17
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntBiFunction",
            "<-TK;-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntBiFunction;, "Ljava/util/function/ToIntBiFunction<-TK;-TV;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 3864
    if-eqz p3, :cond_6

    if-nez p5, :cond_c

    .line 3865
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3866
    :cond_c
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    .line 3867
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    .line 3866
    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;Ljava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public reduceToLong(JLjava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)J
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongBiFunction",
            "<-TK;-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .prologue
    .line 3838
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongBiFunction;, "Ljava/util/function/ToLongBiFunction<-TK;-TV;>;"
    if-eqz p3, :cond_4

    if-nez p6, :cond_a

    .line 3839
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3840
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    .line 3841
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3842
    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    .line 3840
    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;Ljava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public reduceValues(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 4133
    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4134
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    .line 4135
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    .line 4134
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceValues(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 14
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TV;+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    .local p4, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 4158
    if-eqz p3, :cond_6

    if-nez p4, :cond_c

    .line 4159
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4160
    :cond_c
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    .line 4161
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move-object v8, p4

    .line 4160
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceValuesToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Ljava/util/function/DoubleBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToDoubleFunction",
            "<-TV;>;D",
            "Ljava/util/function/DoubleBinaryOperator;",
            ")D"
        }
    .end annotation

    .prologue
    .line 4184
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TV;>;"
    if-eqz p3, :cond_4

    if-nez p6, :cond_a

    .line 4185
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4186
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;

    .line 4187
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4188
    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    .line 4186
    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public reduceValuesToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .registers 17
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToIntFunction",
            "<-TV;>;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TV;>;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 4236
    if-eqz p3, :cond_6

    if-nez p5, :cond_c

    .line 4237
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4238
    :cond_c
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    .line 4239
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    .line 4238
    invoke-direct/range {v0 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public reduceValuesToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .registers 18
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/ToLongFunction",
            "<-TV;>;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .prologue
    .line 4210
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "transformer":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TV;>;"
    if-eqz p3, :cond_4

    if-nez p6, :cond_a

    .line 4211
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4212
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    .line 4213
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4214
    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    .line 4212
    invoke-direct/range {v0 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1107
    invoke-virtual {p0, p1, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1560
    if-nez p1, :cond_a

    .line 1561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1562
    :cond_a
    if-eqz p2, :cond_13

    invoke-virtual {p0, p1, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method removeEntryIf(Ljava/util/function/Predicate;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v10, 0x0

    .line 1641
    if-nez p1, :cond_9

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 1643
    :cond_9
    const/4 v4, 0x0

    .line 1644
    .local v4, "removed":Z
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v5, :cond_33

    .line 1645
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v7, v5

    array-length v8, v5

    const/4 v9, 0x0

    invoke-direct {v1, v5, v7, v9, v8}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1646
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :cond_16
    :goto_16
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_33

    .line 1647
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1648
    .local v2, "k":Ljava/lang/Object;, "TK;"
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1649
    .local v6, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, v2, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1650
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {p0, v2, v10, v6}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 1651
    const/4 v4, 0x1

    goto :goto_16

    .line 1654
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_33
    return v4
.end method

.method removeValueIf(Ljava/util/function/Predicate;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TV;>;"
    const/4 v9, 0x0

    .line 1661
    if-nez p1, :cond_9

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1663
    :cond_9
    const/4 v3, 0x0

    .line 1664
    .local v3, "removed":Z
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v4, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v4, :cond_2e

    .line 1665
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v6, v4

    array-length v7, v4

    const/4 v8, 0x0

    invoke-direct {v0, v4, v6, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1666
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :cond_16
    :goto_16
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    .local v2, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_2e

    .line 1667
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1668
    .local v1, "k":Ljava/lang/Object;, "TK;"
    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1669
    .local v5, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {p0, v1, v9, v5}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 1670
    const/4 v3, 0x1

    goto :goto_16

    .line 1673
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_2e
    return v3
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 1584
    if-eqz p1, :cond_5

    if-nez p2, :cond_b

    .line 1585
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1586
    :cond_b
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1571
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 1572
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1571
    :cond_a
    if-eqz p3, :cond_4

    .line 1573
    invoke-virtual {p0, p1, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1619
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-nez p1, :cond_8

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1621
    :cond_8
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v5, :cond_37

    .line 1622
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v6, v5

    array-length v7, v5

    const/4 v8, 0x0

    invoke-direct {v0, v5, v6, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1623
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :cond_14
    :goto_14
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    .local v4, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v4, :cond_37

    .line 1624
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1625
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1626
    .local v1, "key":Ljava/lang/Object;, "TK;"
    :cond_1e
    invoke-interface {p1, v1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1627
    .local v2, "newValue":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_2a

    .line 1628
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1629
    :cond_2a
    invoke-virtual {p0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_14

    .line 1630
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1e

    goto :goto_14

    .line 1635
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "newValue":Ljava/lang/Object;, "TV;"
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_37
    return-void
.end method

.method final replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 27
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

    .prologue
    .line 1116
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v9

    .line 1117
    .local v9, "hash":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v18, v0

    .line 1119
    .local v18, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_e
    :goto_e
    if-eqz v18, :cond_15

    move-object/from16 v0, v18

    array-length v11, v0

    .local v11, "n":I
    if-nez v11, :cond_18

    .line 1185
    .end local v11    # "n":I
    :cond_15
    const/16 v20, 0x0

    return-object v20

    .line 1120
    .restart local v11    # "n":I
    :cond_18
    add-int/lit8 v20, v11, -0x1

    and-int v10, v20, v9

    .local v10, "i":I
    move-object/from16 v0, v18

    invoke-static {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    .local v7, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v7, :cond_15

    .line 1122
    iget v8, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v8, "fh":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_35

    .line 1123
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v18

    goto :goto_e

    .line 1125
    :cond_35
    const/4 v12, 0x0

    .line 1126
    .local v12, "oldVal":Ljava/lang/Object;, "TV;"
    const/16 v19, 0x0

    .line 1127
    .local v19, "validated":Z
    monitor-enter v7

    .line 1128
    :try_start_39
    move-object/from16 v0, v18

    invoke-static {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_70

    .line 1129
    if-ltz v8, :cond_b0

    .line 1130
    const/16 v19, 0x1

    .line 1131
    move-object v4, v7

    .local v4, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v14, 0x0

    .line 1133
    :cond_49
    iget v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v9, :cond_aa

    .line 1134
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .local v5, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v5, v0, :cond_61

    .line 1135
    if-eqz v5, :cond_aa

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 1133
    if-eqz v20, :cond_aa

    .line 1136
    :cond_61
    iget-object v6, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1137
    .local v6, "ev":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_69

    move-object/from16 v0, p3

    if-ne v0, v6, :cond_85

    .line 1139
    :cond_69
    :goto_69
    move-object v12, v6

    .line 1140
    if-eqz p2, :cond_90

    .line 1141
    move-object/from16 v0, p2

    iput-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_70
    .catchall {:try_start_39 .. :try_end_70} :catchall_9b

    .end local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "ek":Ljava/lang/Object;, "TK;"
    .end local v6    # "ev":Ljava/lang/Object;, "TV;"
    .end local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_70
    :goto_70
    monitor-exit v7

    .line 1175
    if-eqz v19, :cond_e

    .line 1176
    if-eqz v12, :cond_15

    .line 1177
    if-nez p2, :cond_84

    .line 1178
    const-wide/16 v20, -0x1

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1179
    :cond_84
    return-object v12

    .line 1138
    .restart local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v6    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_85
    if-eqz v6, :cond_70

    :try_start_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 1137
    if-eqz v20, :cond_70

    goto :goto_69

    .line 1142
    :cond_90
    if-eqz v14, :cond_9e

    .line 1143
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_9a
    .catchall {:try_start_87 .. :try_end_9a} :catchall_9b

    goto :goto_70

    .line 1127
    .end local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "ek":Ljava/lang/Object;, "TK;"
    .end local v6    # "ev":Ljava/lang/Object;, "TV;"
    .end local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :catchall_9b
    move-exception v20

    monitor-exit v7

    throw v20

    .line 1145
    .restart local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v6    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_9e
    :try_start_9e
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_70

    .line 1149
    .end local v5    # "ek":Ljava/lang/Object;, "TK;"
    .end local v6    # "ev":Ljava/lang/Object;, "TV;"
    :cond_aa
    move-object v14, v4

    .line 1150
    .local v14, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v4, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v4, :cond_49

    goto :goto_70

    .line 1154
    .end local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_b0
    instance-of v0, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move/from16 v20, v0

    if-eqz v20, :cond_109

    .line 1155
    const/16 v19, 0x1

    .line 1156
    move-object v0, v7

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v17, v0

    .line 1158
    .local v17, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v16, v0

    .local v16, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v16, :cond_70

    .line 1159
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v13

    .local v13, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v13, :cond_70

    .line 1160
    iget-object v15, v13, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    .line 1161
    .local v15, "pv":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_db

    move-object/from16 v0, p3

    if-ne v0, v15, :cond_e3

    .line 1163
    :cond_db
    :goto_db
    move-object v12, v15

    .line 1164
    if-eqz p2, :cond_ee

    .line 1165
    move-object/from16 v0, p2

    iput-object v0, v13, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_70

    .line 1162
    :cond_e3
    if-eqz v15, :cond_70

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 1161
    if-eqz v20, :cond_70

    goto :goto_db

    .line 1166
    :cond_ee
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v20

    if-eqz v20, :cond_70

    .line 1167
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto/16 :goto_70

    .line 1171
    .end local v13    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v15    # "pv":Ljava/lang/Object;, "TV;"
    .end local v16    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v17    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :cond_109
    instance-of v0, v7, Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;

    move/from16 v20, v0

    if-eqz v20, :cond_70

    .line 1172
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string/jumbo v21, "Recursive update"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_118
    .catchall {:try_start_9e .. :try_end_118} :catchall_9b
.end method

.method public search(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TU;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TU;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3761
    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3762
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;

    .line 3763
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3764
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move v4, v3

    move-object v6, p3

    .line 3762
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public searchEntries(JLjava/util/function/Function;)Ljava/lang/Object;
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 4299
    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4300
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;

    .line 4301
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 4302
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move v4, v3

    move-object v6, p3

    .line 4300
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public searchKeys(JLjava/util/function/Function;)Ljava/lang/Object;
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TK;+TU;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TU;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3928
    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3929
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;

    .line 3930
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3931
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move v4, v3

    move-object v6, p3

    .line 3929
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchKeysTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public searchValues(JLjava/util/function/Function;)Ljava/lang/Object;
    .registers 13
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/Function",
            "<-TV;+TU;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p3, "searchFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TU;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 4115
    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4116
    :cond_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;

    .line 4117
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 4118
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move v4, v3

    move-object v6, p3

    .line 4116
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$SearchValuesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 5

    .prologue
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

    :goto_b
    return v2

    .line 920
    :cond_c
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_17

    const v2, 0x7fffffff

    goto :goto_b

    .line 921
    :cond_17
    long-to-int v2, v0

    goto :goto_b
.end method

.method final sumCount()J
    .registers 9

    .prologue
    .line 2572
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    .line 2573
    .local v1, "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    iget-wide v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    .line 2574
    .local v4, "sum":J
    if-eqz v1, :cond_14

    .line 2575
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, v1

    if-ge v2, v3, :cond_14

    .line 2576
    aget-object v0, v1, v2

    .local v0, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v0, :cond_11

    .line 2577
    iget-wide v6, v0, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    add-long/2addr v4, v6

    .line 2575
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2580
    .end local v0    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v2    # "i":I
    :cond_14
    return-wide v4
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    .line 1326
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v5, :cond_45

    const/4 v0, 0x0

    .line 1327
    .local v0, "f":I
    :goto_5
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    const/4 v7, 0x0

    invoke-direct {v1, v5, v0, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1328
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1329
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/16 v7, 0x7b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1331
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_3a

    .line 1333
    :goto_1b
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1334
    .local v2, "k":Ljava/lang/Object;, "TK;"
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1335
    .local v6, "v":Ljava/lang/Object;, "TV;"
    if-ne v2, p0, :cond_24

    const-string/jumbo v2, "(this Map)"

    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    :cond_24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1336
    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1337
    if-ne v6, p0, :cond_31

    const-string/jumbo v6, "(this Map)"

    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_31
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1338
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    if-nez v3, :cond_47

    .line 1343
    :cond_3a
    const/16 v7, 0x7d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1326
    .end local v0    # "f":I
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_45
    array-length v0, v5

    .restart local v0    # "f":I
    goto :goto_5

    .line 1340
    .restart local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .restart local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_47
    const/16 v7, 0x2c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b
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
    .line 1270
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    .local v0, "vs":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    if-eqz v0, :cond_5

    .end local v0    # "vs":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    :goto_4
    return-object v0

    .restart local v0    # "vs":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    :cond_5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    .end local v0    # "vs":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    goto :goto_4
.end method
