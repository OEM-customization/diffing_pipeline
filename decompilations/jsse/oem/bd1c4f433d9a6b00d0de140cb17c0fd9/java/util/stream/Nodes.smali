.class final Ljava/util/stream/Nodes;
.super Ljava/lang/Object;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$AbstractConcNode;,
        Ljava/util/stream/Nodes$ArrayNode;,
        Ljava/util/stream/Nodes$CollectionNode;,
        Ljava/util/stream/Nodes$CollectorTask;,
        Ljava/util/stream/Nodes$ConcNode;,
        Ljava/util/stream/Nodes$DoubleArrayNode;,
        Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;,
        Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;,
        Ljava/util/stream/Nodes$EmptyNode;,
        Ljava/util/stream/Nodes$FixedNodeBuilder;,
        Ljava/util/stream/Nodes$IntArrayNode;,
        Ljava/util/stream/Nodes$IntFixedNodeBuilder;,
        Ljava/util/stream/Nodes$IntSpinedNodeBuilder;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator;,
        Ljava/util/stream/Nodes$LongArrayNode;,
        Ljava/util/stream/Nodes$LongFixedNodeBuilder;,
        Ljava/util/stream/Nodes$LongSpinedNodeBuilder;,
        Ljava/util/stream/Nodes$SizedCollectorTask;,
        Ljava/util/stream/Nodes$SpinedNodeBuilder;,
        Ljava/util/stream/Nodes$ToArrayTask;
    }
.end annotation


# static fields
.field private static final synthetic -java-util-stream-StreamShapeSwitchesValues:[I = null

.field static final BAD_SIZE:Ljava/lang/String; = "Stream size exceeds max array size"

.field private static final EMPTY_DOUBLE_ARRAY:[D

.field private static final EMPTY_DOUBLE_NODE:Ljava/util/stream/Node$OfDouble;

.field private static final EMPTY_INT_ARRAY:[I

.field private static final EMPTY_INT_NODE:Ljava/util/stream/Node$OfInt;

.field private static final EMPTY_LONG_ARRAY:[J

.field private static final EMPTY_LONG_NODE:Ljava/util/stream/Node$OfLong;

.field private static final EMPTY_NODE:Ljava/util/stream/Node;

.field static final MAX_ARRAY_SIZE:J = 0x7ffffff7L


# direct methods
.method static synthetic -get0()[D
    .registers 1

    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0
.end method

.method static synthetic -get1()[I
    .registers 1

    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_ARRAY:[I

    return-object v0
.end method

.method static synthetic -get2()[J
    .registers 1

    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_ARRAY:[J

    return-object v0
.end method

.method private static synthetic -getjava-util-stream-StreamShapeSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/util/stream/Nodes;->-java-util-stream-StreamShapeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/util/stream/Nodes;->-java-util-stream-StreamShapeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ljava/util/stream/StreamShape;->values()[Ljava/util/stream/StreamShape;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    invoke-virtual {v1}, Ljava/util/stream/StreamShape;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    invoke-virtual {v1}, Ljava/util/stream/StreamShape;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    invoke-virtual {v1}, Ljava/util/stream/StreamShape;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    invoke-virtual {v1}, Ljava/util/stream/StreamShape;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Ljava/util/stream/Nodes;->-java-util-stream-StreamShapeSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/stream/Nodes$EmptyNode$OfRef;-><init>(Ljava/util/stream/Nodes$EmptyNode$OfRef;)V

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_NODE:Ljava/util/stream/Node;

    .line 68
    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfInt;

    invoke-direct {v0}, Ljava/util/stream/Nodes$EmptyNode$OfInt;-><init>()V

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_NODE:Ljava/util/stream/Node$OfInt;

    .line 69
    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfLong;

    invoke-direct {v0}, Ljava/util/stream/Nodes$EmptyNode$OfLong;-><init>()V

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_NODE:Ljava/util/stream/Node$OfLong;

    .line 70
    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfDouble;

    invoke-direct {v0}, Ljava/util/stream/Nodes$EmptyNode$OfDouble;-><init>()V

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_NODE:Ljava/util/stream/Node$OfDouble;

    .line 1308
    new-array v0, v2, [I

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_ARRAY:[I

    .line 1309
    new-array v0, v2, [J

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_ARRAY:[J

    .line 1310
    new-array v0, v2, [D

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_ARRAY:[D

    .line 52
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static builder()Ljava/util/stream/Node$Builder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Node$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;

    invoke-direct {v0}, Ljava/util/stream/Nodes$SpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static builder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;
    .registers 5
    .param p0, "exactSizeIfKnown"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)",
            "Ljava/util/stream/Node$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p2, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_13

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_13

    .line 168
    new-instance v0, Ljava/util/stream/Nodes$FixedNodeBuilder;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/Nodes$FixedNodeBuilder;-><init>(JLjava/util/function/IntFunction;)V

    .line 167
    :goto_12
    return-object v0

    .line 169
    :cond_13
    invoke-static {}, Ljava/util/stream/Nodes;->builder()Ljava/util/stream/Node$Builder;

    move-result-object v0

    goto :goto_12
.end method

.method public static collect(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 10
    .param p2, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z",
            "Ljava/util/function/IntFunction",
            "<[TP_OUT;>;)",
            "Ljava/util/stream/Node",
            "<TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v2

    .line 321
    .local v2, "size":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_36

    const/16 v4, 0x4000

    invoke-interface {p1, v4}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 322
    const-wide/32 v4, 0x7ffffff7

    cmp-long v4, v2, v4

    if-ltz v4, :cond_22

    .line 323
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Stream size exceeds max array size"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 324
    :cond_22
    long-to-int v4, v2

    invoke-interface {p3, v4}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 325
    .local v0, "array":[Ljava/lang/Object;, "[TP_OUT;"
    new-instance v4, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;

    invoke-direct {v4, p1, p0, v0}, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->invoke()Ljava/lang/Object;

    .line 326
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([Ljava/lang/Object;)Ljava/util/stream/Node;

    move-result-object v4

    return-object v4

    .line 328
    .end local v0    # "array":[Ljava/lang/Object;, "[TP_OUT;"
    :cond_36
    new-instance v4, Ljava/util/stream/Nodes$CollectorTask$OfRef;

    invoke-direct {v4, p0, p3, p1}, Ljava/util/stream/Nodes$CollectorTask$OfRef;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/IntFunction;Ljava/util/Spliterator;)V

    invoke-virtual {v4}, Ljava/util/stream/Nodes$CollectorTask$OfRef;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node;

    .line 329
    .local v1, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    if-eqz p2, :cond_47

    invoke-static {v1, p3}, Ljava/util/stream/Nodes;->flatten(Ljava/util/stream/Node;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    .end local v1    # "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_47
    return-object v1
.end method

.method public static collectDouble(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfDouble;
    .registers 9
    .param p2, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z)",
            "Ljava/util/stream/Node$OfDouble;"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v2

    .line 434
    .local v2, "size":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_32

    const/16 v4, 0x4000

    invoke-interface {p1, v4}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 435
    const-wide/32 v4, 0x7ffffff7

    cmp-long v4, v2, v4

    if-ltz v4, :cond_22

    .line 436
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Stream size exceeds max array size"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 437
    :cond_22
    long-to-int v4, v2

    new-array v0, v4, [D

    .line 438
    .local v0, "array":[D
    new-instance v4, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;

    invoke-direct {v4, p1, p0, v0}, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[D)V

    invoke-virtual {v4}, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->invoke()Ljava/lang/Object;

    .line 439
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([D)Ljava/util/stream/Node$OfDouble;

    move-result-object v4

    return-object v4

    .line 442
    .end local v0    # "array":[D
    :cond_32
    new-instance v4, Ljava/util/stream/Nodes$CollectorTask$OfDouble;

    invoke-direct {v4, p0, p1}, Ljava/util/stream/Nodes$CollectorTask$OfDouble;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v4}, Ljava/util/stream/Nodes$CollectorTask$OfDouble;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node$OfDouble;

    .line 443
    .local v1, "node":Ljava/util/stream/Node$OfDouble;
    if-eqz p2, :cond_43

    invoke-static {v1}, Ljava/util/stream/Nodes;->flattenDouble(Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;

    move-result-object v1

    .end local v1    # "node":Ljava/util/stream/Node$OfDouble;
    :cond_43
    return-object v1
.end method

.method public static collectInt(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfInt;
    .registers 9
    .param p2, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z)",
            "Ljava/util/stream/Node$OfInt;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v2

    .line 358
    .local v2, "size":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_32

    const/16 v4, 0x4000

    invoke-interface {p1, v4}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 359
    const-wide/32 v4, 0x7ffffff7

    cmp-long v4, v2, v4

    if-ltz v4, :cond_22

    .line 360
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Stream size exceeds max array size"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 361
    :cond_22
    long-to-int v4, v2

    new-array v0, v4, [I

    .line 362
    .local v0, "array":[I
    new-instance v4, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;

    invoke-direct {v4, p1, p0, v0}, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[I)V

    invoke-virtual {v4}, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;->invoke()Ljava/lang/Object;

    .line 363
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([I)Ljava/util/stream/Node$OfInt;

    move-result-object v4

    return-object v4

    .line 366
    .end local v0    # "array":[I
    :cond_32
    new-instance v4, Ljava/util/stream/Nodes$CollectorTask$OfInt;

    invoke-direct {v4, p0, p1}, Ljava/util/stream/Nodes$CollectorTask$OfInt;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v4}, Ljava/util/stream/Nodes$CollectorTask$OfInt;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node$OfInt;

    .line 367
    .local v1, "node":Ljava/util/stream/Node$OfInt;
    if-eqz p2, :cond_43

    invoke-static {v1}, Ljava/util/stream/Nodes;->flattenInt(Ljava/util/stream/Node$OfInt;)Ljava/util/stream/Node$OfInt;

    move-result-object v1

    .end local v1    # "node":Ljava/util/stream/Node$OfInt;
    :cond_43
    return-object v1
.end method

.method public static collectLong(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfLong;
    .registers 9
    .param p2, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z)",
            "Ljava/util/stream/Node$OfLong;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v2

    .line 396
    .local v2, "size":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_32

    const/16 v4, 0x4000

    invoke-interface {p1, v4}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 397
    const-wide/32 v4, 0x7ffffff7

    cmp-long v4, v2, v4

    if-ltz v4, :cond_22

    .line 398
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Stream size exceeds max array size"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 399
    :cond_22
    long-to-int v4, v2

    new-array v0, v4, [J

    .line 400
    .local v0, "array":[J
    new-instance v4, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;

    invoke-direct {v4, p1, p0, v0}, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[J)V

    invoke-virtual {v4}, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;->invoke()Ljava/lang/Object;

    .line 401
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([J)Ljava/util/stream/Node$OfLong;

    move-result-object v4

    return-object v4

    .line 404
    .end local v0    # "array":[J
    :cond_32
    new-instance v4, Ljava/util/stream/Nodes$CollectorTask$OfLong;

    invoke-direct {v4, p0, p1}, Ljava/util/stream/Nodes$CollectorTask$OfLong;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v4}, Ljava/util/stream/Nodes$CollectorTask$OfLong;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node$OfLong;

    .line 405
    .local v1, "node":Ljava/util/stream/Node$OfLong;
    if-eqz p2, :cond_43

    invoke-static {v1}, Ljava/util/stream/Nodes;->flattenLong(Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;

    move-result-object v1

    .end local v1    # "node":Ljava/util/stream/Node$OfLong;
    :cond_43
    return-object v1
.end method

.method static conc(Ljava/util/stream/StreamShape;Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;
    .registers 6
    .param p0, "shape"    # Ljava/util/stream/StreamShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/StreamShape;",
            "Ljava/util/stream/Node",
            "<TT;>;",
            "Ljava/util/stream/Node",
            "<TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p2, "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-static {}, Ljava/util/stream/Nodes;->-getjava-util-stream-StreamShapeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/stream/StreamShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown shape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :pswitch_27
    new-instance v0, Ljava/util/stream/Nodes$ConcNode;

    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode;-><init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V

    return-object v0

    .line 118
    :pswitch_2d
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfInt;

    check-cast p1, Ljava/util/stream/Node$OfInt;

    .end local p1    # "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    check-cast p2, Ljava/util/stream/Node$OfInt;

    .end local p2    # "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode$OfInt;-><init>(Ljava/util/stream/Node$OfInt;Ljava/util/stream/Node$OfInt;)V

    return-object v0

    .line 120
    .restart local p1    # "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .restart local p2    # "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    :pswitch_37
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfLong;

    check-cast p1, Ljava/util/stream/Node$OfLong;

    .end local p1    # "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    check-cast p2, Ljava/util/stream/Node$OfLong;

    .end local p2    # "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode$OfLong;-><init>(Ljava/util/stream/Node$OfLong;Ljava/util/stream/Node$OfLong;)V

    return-object v0

    .line 122
    .restart local p1    # "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .restart local p2    # "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    :pswitch_41
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfDouble;

    check-cast p1, Ljava/util/stream/Node$OfDouble;

    .end local p1    # "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    check-cast p2, Ljava/util/stream/Node$OfDouble;

    .end local p2    # "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode$OfDouble;-><init>(Ljava/util/stream/Node$OfDouble;Ljava/util/stream/Node$OfDouble;)V

    return-object v0

    .line 114
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_41
        :pswitch_2d
        :pswitch_37
        :pswitch_27
    .end packed-switch
.end method

.method static doubleBuilder()Ljava/util/stream/Node$Builder$OfDouble;
    .registers 1

    .prologue
    .line 290
    new-instance v0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;

    invoke-direct {v0}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static doubleBuilder(J)Ljava/util/stream/Node$Builder$OfDouble;
    .registers 4
    .param p0, "exactSizeIfKnown"    # J

    .prologue
    .line 279
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_13

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_13

    .line 280
    new-instance v0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;-><init>(J)V

    .line 279
    :goto_12
    return-object v0

    .line 281
    :cond_13
    invoke-static {}, Ljava/util/stream/Nodes;->doubleBuilder()Ljava/util/stream/Node$Builder$OfDouble;

    move-result-object v0

    goto :goto_12
.end method

.method static emptyNode(Ljava/util/stream/StreamShape;)Ljava/util/stream/Node;
    .registers 4
    .param p0, "shape"    # Ljava/util/stream/StreamShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/StreamShape;",
            ")",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Ljava/util/stream/Nodes;->-getjava-util-stream-StreamShapeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/stream/StreamShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown shape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :pswitch_27
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_NODE:Ljava/util/stream/Node;

    return-object v0

    .line 85
    :pswitch_2a
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_NODE:Ljava/util/stream/Node$OfInt;

    return-object v0

    .line 86
    :pswitch_2d
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_NODE:Ljava/util/stream/Node$OfLong;

    return-object v0

    .line 87
    :pswitch_30
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_NODE:Ljava/util/stream/Node$OfDouble;

    return-object v0

    .line 83
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2a
        :pswitch_2d
        :pswitch_27
    .end packed-switch
.end method

.method public static flatten(Ljava/util/stream/Node;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Node",
            "<TT;>;",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const/4 v6, 0x0

    .line 465
    invoke-interface {p0}, Ljava/util/stream/Node;->getChildCount()I

    move-result v1

    if-lez v1, :cond_30

    .line 466
    invoke-interface {p0}, Ljava/util/stream/Node;->count()J

    move-result-wide v2

    .line 467
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1b

    .line 468
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Stream size exceeds max array size"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 469
    :cond_1b
    long-to-int v1, v2

    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 470
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v1, Ljava/util/stream/Nodes$ToArrayTask$OfRef;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v0, v6, v4}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljava/util/stream/Node;[Ljava/lang/Object;ILjava/util/stream/Nodes$ToArrayTask$OfRef;)V

    invoke-virtual {v1}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->invoke()Ljava/lang/Object;

    .line 471
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([Ljava/lang/Object;)Ljava/util/stream/Node;

    move-result-object v1

    return-object v1

    .line 473
    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    .end local v2    # "size":J
    :cond_30
    return-object p0
.end method

.method public static flattenDouble(Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;
    .registers 8
    .param p0, "node"    # Ljava/util/stream/Node$OfDouble;

    .prologue
    const/4 v6, 0x0

    .line 543
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2c

    .line 544
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->count()J

    move-result-wide v2

    .line 545
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1b

    .line 546
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Stream size exceeds max array size"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    :cond_1b
    long-to-int v1, v2

    new-array v0, v1, [D

    .line 548
    .local v0, "array":[D
    new-instance v1, Ljava/util/stream/Nodes$ToArrayTask$OfDouble;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v0, v6, v4}, Ljava/util/stream/Nodes$ToArrayTask$OfDouble;-><init>(Ljava/util/stream/Node$OfDouble;[DILjava/util/stream/Nodes$ToArrayTask$OfDouble;)V

    invoke-virtual {v1}, Ljava/util/stream/Nodes$ToArrayTask$OfDouble;->invoke()Ljava/lang/Object;

    .line 549
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([D)Ljava/util/stream/Node$OfDouble;

    move-result-object v1

    return-object v1

    .line 551
    .end local v0    # "array":[D
    .end local v2    # "size":J
    :cond_2c
    return-object p0
.end method

.method public static flattenInt(Ljava/util/stream/Node$OfInt;)Ljava/util/stream/Node$OfInt;
    .registers 8
    .param p0, "node"    # Ljava/util/stream/Node$OfInt;

    .prologue
    const/4 v6, 0x0

    .line 491
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2c

    .line 492
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->count()J

    move-result-wide v2

    .line 493
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1b

    .line 494
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Stream size exceeds max array size"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_1b
    long-to-int v1, v2

    new-array v0, v1, [I

    .line 496
    .local v0, "array":[I
    new-instance v1, Ljava/util/stream/Nodes$ToArrayTask$OfInt;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v0, v6, v4}, Ljava/util/stream/Nodes$ToArrayTask$OfInt;-><init>(Ljava/util/stream/Node$OfInt;[IILjava/util/stream/Nodes$ToArrayTask$OfInt;)V

    invoke-virtual {v1}, Ljava/util/stream/Nodes$ToArrayTask$OfInt;->invoke()Ljava/lang/Object;

    .line 497
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([I)Ljava/util/stream/Node$OfInt;

    move-result-object v1

    return-object v1

    .line 499
    .end local v0    # "array":[I
    .end local v2    # "size":J
    :cond_2c
    return-object p0
.end method

.method public static flattenLong(Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;
    .registers 8
    .param p0, "node"    # Ljava/util/stream/Node$OfLong;

    .prologue
    const/4 v6, 0x0

    .line 517
    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2c

    .line 518
    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->count()J

    move-result-wide v2

    .line 519
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1b

    .line 520
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Stream size exceeds max array size"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    :cond_1b
    long-to-int v1, v2

    new-array v0, v1, [J

    .line 522
    .local v0, "array":[J
    new-instance v1, Ljava/util/stream/Nodes$ToArrayTask$OfLong;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v0, v6, v4}, Ljava/util/stream/Nodes$ToArrayTask$OfLong;-><init>(Ljava/util/stream/Node$OfLong;[JILjava/util/stream/Nodes$ToArrayTask$OfLong;)V

    invoke-virtual {v1}, Ljava/util/stream/Nodes$ToArrayTask$OfLong;->invoke()Ljava/lang/Object;

    .line 523
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([J)Ljava/util/stream/Node$OfLong;

    move-result-object v1

    return-object v1

    .line 525
    .end local v0    # "array":[J
    .end local v2    # "size":J
    :cond_2c
    return-object p0
.end method

.method static intBuilder()Ljava/util/stream/Node$Builder$OfInt;
    .registers 1

    .prologue
    .line 216
    new-instance v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;

    invoke-direct {v0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static intBuilder(J)Ljava/util/stream/Node$Builder$OfInt;
    .registers 4
    .param p0, "exactSizeIfKnown"    # J

    .prologue
    .line 205
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_13

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_13

    .line 206
    new-instance v0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$IntFixedNodeBuilder;-><init>(J)V

    .line 205
    :goto_12
    return-object v0

    .line 207
    :cond_13
    invoke-static {}, Ljava/util/stream/Nodes;->intBuilder()Ljava/util/stream/Node$Builder$OfInt;

    move-result-object v0

    goto :goto_12
.end method

.method static longBuilder()Ljava/util/stream/Node$Builder$OfLong;
    .registers 1

    .prologue
    .line 253
    new-instance v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;

    invoke-direct {v0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static longBuilder(J)Ljava/util/stream/Node$Builder$OfLong;
    .registers 4
    .param p0, "exactSizeIfKnown"    # J

    .prologue
    .line 242
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_13

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_13

    .line 243
    new-instance v0, Ljava/util/stream/Nodes$LongFixedNodeBuilder;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$LongFixedNodeBuilder;-><init>(J)V

    .line 242
    :goto_12
    return-object v0

    .line 244
    :cond_13
    invoke-static {}, Ljava/util/stream/Nodes;->longBuilder()Ljava/util/stream/Node$Builder$OfLong;

    move-result-object v0

    goto :goto_12
.end method

.method static node([D)Ljava/util/stream/Node$OfDouble;
    .registers 2
    .param p0, "array"    # [D

    .prologue
    .line 267
    new-instance v0, Ljava/util/stream/Nodes$DoubleArrayNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$DoubleArrayNode;-><init>([D)V

    return-object v0
.end method

.method static node([I)Ljava/util/stream/Node$OfInt;
    .registers 2
    .param p0, "array"    # [I

    .prologue
    .line 193
    new-instance v0, Ljava/util/stream/Nodes$IntArrayNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$IntArrayNode;-><init>([I)V

    return-object v0
.end method

.method static node([J)Ljava/util/stream/Node$OfLong;
    .registers 2
    .param p0, "array"    # [J

    .prologue
    .line 230
    new-instance v0, Ljava/util/stream/Nodes$LongArrayNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$LongArrayNode;-><init>([J)V

    return-object v0
.end method

.method static node(Ljava/util/Collection;)Ljava/util/stream/Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/stream/Nodes$CollectionNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$CollectionNode;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static node([Ljava/lang/Object;)Ljava/util/stream/Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/stream/Nodes$ArrayNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$ArrayNode;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
