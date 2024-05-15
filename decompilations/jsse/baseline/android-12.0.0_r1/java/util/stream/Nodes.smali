.class final Ljava/util/stream/Nodes;
.super Ljava/lang/Object;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$CollectorTask;,
        Ljava/util/stream/Nodes$ToArrayTask;,
        Ljava/util/stream/Nodes$SizedCollectorTask;,
        Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;,
        Ljava/util/stream/Nodes$LongSpinedNodeBuilder;,
        Ljava/util/stream/Nodes$IntSpinedNodeBuilder;,
        Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;,
        Ljava/util/stream/Nodes$LongFixedNodeBuilder;,
        Ljava/util/stream/Nodes$IntFixedNodeBuilder;,
        Ljava/util/stream/Nodes$DoubleArrayNode;,
        Ljava/util/stream/Nodes$LongArrayNode;,
        Ljava/util/stream/Nodes$IntArrayNode;,
        Ljava/util/stream/Nodes$SpinedNodeBuilder;,
        Ljava/util/stream/Nodes$FixedNodeBuilder;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator;,
        Ljava/util/stream/Nodes$ConcNode;,
        Ljava/util/stream/Nodes$AbstractConcNode;,
        Ljava/util/stream/Nodes$CollectionNode;,
        Ljava/util/stream/Nodes$ArrayNode;,
        Ljava/util/stream/Nodes$EmptyNode;
    }
.end annotation


# static fields
.field static final blacklist BAD_SIZE:Ljava/lang/String; = "Stream size exceeds max array size"

.field private static final blacklist EMPTY_DOUBLE_ARRAY:[D

.field private static final blacklist EMPTY_DOUBLE_NODE:Ljava/util/stream/Node$OfDouble;

.field private static final blacklist EMPTY_INT_ARRAY:[I

.field private static final blacklist EMPTY_INT_NODE:Ljava/util/stream/Node$OfInt;

.field private static final blacklist EMPTY_LONG_ARRAY:[J

.field private static final blacklist EMPTY_LONG_NODE:Ljava/util/stream/Node$OfLong;

.field private static final blacklist EMPTY_NODE:Ljava/util/stream/Node;

.field static final blacklist MAX_ARRAY_SIZE:J = 0x7ffffff7L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 67
    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/stream/Nodes$EmptyNode$OfRef;-><init>(Ljava/util/stream/Nodes$1;)V

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
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Ljava/util/stream/Nodes;->EMPTY_INT_ARRAY:[I

    .line 1309
    new-array v1, v0, [J

    sput-object v1, Ljava/util/stream/Nodes;->EMPTY_LONG_ARRAY:[J

    .line 1310
    new-array v0, v0, [D

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_ARRAY:[D

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Error;

    const-string v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist access$500()[I
    .registers 1

    .line 52
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_ARRAY:[I

    return-object v0
.end method

.method static synthetic blacklist access$600()[J
    .registers 1

    .line 52
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_ARRAY:[J

    return-object v0
.end method

.method static synthetic blacklist access$700()[D
    .registers 1

    .line 52
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0
.end method

.method static blacklist builder()Ljava/util/stream/Node$Builder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Node$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;

    invoke-direct {v0}, Ljava/util/stream/Nodes$SpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static blacklist builder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;
    .registers 5
    .param p0, "exactSizeIfKnown"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava/util/stream/Node$Builder<",
            "TT;>;"
        }
    .end annotation

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

    goto :goto_17

    .line 169
    :cond_13
    invoke-static {}, Ljava/util/stream/Nodes;->builder()Ljava/util/stream/Node$Builder;

    move-result-object v0

    .line 167
    :goto_17
    return-object v0
.end method

.method public static blacklist collect(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 8
    .param p2, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;)",
            "Ljava/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 320
    .local p0, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v0

    .line 321
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_35

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 322
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_2d

    .line 324
    long-to-int v2, v0

    invoke-interface {p3, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 325
    .local v2, "array":[Ljava/lang/Object;, "[TP_OUT;"
    new-instance v3, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;

    invoke-direct {v3, p1, p0, v2}, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->invoke()Ljava/lang/Object;

    .line 326
    invoke-static {v2}, Ljava/util/stream/Nodes;->node([Ljava/lang/Object;)Ljava/util/stream/Node;

    move-result-object v3

    return-object v3

    .line 323
    .end local v2    # "array":[Ljava/lang/Object;, "[TP_OUT;"
    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    :cond_35
    new-instance v2, Ljava/util/stream/Nodes$CollectorTask$OfRef;

    invoke-direct {v2, p0, p3, p1}, Ljava/util/stream/Nodes$CollectorTask$OfRef;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/IntFunction;Ljava/util/Spliterator;)V

    invoke-virtual {v2}, Ljava/util/stream/Nodes$CollectorTask$OfRef;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Node;

    .line 329
    .local v2, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    if-eqz p2, :cond_47

    invoke-static {v2, p3}, Ljava/util/stream/Nodes;->flatten(Ljava/util/stream/Node;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v3

    goto :goto_48

    :cond_47
    move-object v3, v2

    :goto_48
    return-object v3
.end method

.method public static blacklist collectDouble(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfDouble;
    .registers 7
    .param p2, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z)",
            "Ljava/util/stream/Node$OfDouble;"
        }
    .end annotation

    .line 433
    .local p0, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v0

    .line 434
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_31

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 435
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_29

    .line 437
    long-to-int v2, v0

    new-array v2, v2, [D

    .line 438
    .local v2, "array":[D
    new-instance v3, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;

    invoke-direct {v3, p1, p0, v2}, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[D)V

    invoke-virtual {v3}, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->invoke()Ljava/lang/Object;

    .line 439
    invoke-static {v2}, Ljava/util/stream/Nodes;->node([D)Ljava/util/stream/Node$OfDouble;

    move-result-object v3

    return-object v3

    .line 436
    .end local v2    # "array":[D
    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 442
    :cond_31
    new-instance v2, Ljava/util/stream/Nodes$CollectorTask$OfDouble;

    invoke-direct {v2, p0, p1}, Ljava/util/stream/Nodes$CollectorTask$OfDouble;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v2}, Ljava/util/stream/Nodes$CollectorTask$OfDouble;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Node$OfDouble;

    .line 443
    .local v2, "node":Ljava/util/stream/Node$OfDouble;
    if-eqz p2, :cond_43

    invoke-static {v2}, Ljava/util/stream/Nodes;->flattenDouble(Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;

    move-result-object v3

    goto :goto_44

    :cond_43
    move-object v3, v2

    :goto_44
    return-object v3
.end method

.method public static blacklist collectInt(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfInt;
    .registers 7
    .param p2, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z)",
            "Ljava/util/stream/Node$OfInt;"
        }
    .end annotation

    .line 357
    .local p0, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v0

    .line 358
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_31

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 359
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_29

    .line 361
    long-to-int v2, v0

    new-array v2, v2, [I

    .line 362
    .local v2, "array":[I
    new-instance v3, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;

    invoke-direct {v3, p1, p0, v2}, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[I)V

    invoke-virtual {v3}, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;->invoke()Ljava/lang/Object;

    .line 363
    invoke-static {v2}, Ljava/util/stream/Nodes;->node([I)Ljava/util/stream/Node$OfInt;

    move-result-object v3

    return-object v3

    .line 360
    .end local v2    # "array":[I
    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    :cond_31
    new-instance v2, Ljava/util/stream/Nodes$CollectorTask$OfInt;

    invoke-direct {v2, p0, p1}, Ljava/util/stream/Nodes$CollectorTask$OfInt;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v2}, Ljava/util/stream/Nodes$CollectorTask$OfInt;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Node$OfInt;

    .line 367
    .local v2, "node":Ljava/util/stream/Node$OfInt;
    if-eqz p2, :cond_43

    invoke-static {v2}, Ljava/util/stream/Nodes;->flattenInt(Ljava/util/stream/Node$OfInt;)Ljava/util/stream/Node$OfInt;

    move-result-object v3

    goto :goto_44

    :cond_43
    move-object v3, v2

    :goto_44
    return-object v3
.end method

.method public static blacklist collectLong(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfLong;
    .registers 7
    .param p2, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z)",
            "Ljava/util/stream/Node$OfLong;"
        }
    .end annotation

    .line 395
    .local p0, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v0

    .line 396
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_31

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 397
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_29

    .line 399
    long-to-int v2, v0

    new-array v2, v2, [J

    .line 400
    .local v2, "array":[J
    new-instance v3, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;

    invoke-direct {v3, p1, p0, v2}, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[J)V

    invoke-virtual {v3}, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;->invoke()Ljava/lang/Object;

    .line 401
    invoke-static {v2}, Ljava/util/stream/Nodes;->node([J)Ljava/util/stream/Node$OfLong;

    move-result-object v3

    return-object v3

    .line 398
    .end local v2    # "array":[J
    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :cond_31
    new-instance v2, Ljava/util/stream/Nodes$CollectorTask$OfLong;

    invoke-direct {v2, p0, p1}, Ljava/util/stream/Nodes$CollectorTask$OfLong;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v2}, Ljava/util/stream/Nodes$CollectorTask$OfLong;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Node$OfLong;

    .line 405
    .local v2, "node":Ljava/util/stream/Node$OfLong;
    if-eqz p2, :cond_43

    invoke-static {v2}, Ljava/util/stream/Nodes;->flattenLong(Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;

    move-result-object v3

    goto :goto_44

    :cond_43
    move-object v3, v2

    :goto_44
    return-object v3
.end method

.method static blacklist conc(Ljava/util/stream/StreamShape;Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;
    .registers 6
    .param p0, "shape"    # Ljava/util/stream/StreamShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/StreamShape;",
            "Ljava/util/stream/Node<",
            "TT;>;",
            "Ljava/util/stream/Node<",
            "TT;>;)",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 114
    .local p1, "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p2, "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    sget-object v0, Ljava/util/stream/Nodes$1;->$SwitchMap$java$util$stream$StreamShape:[I

    invoke-virtual {p0}, Ljava/util/stream/StreamShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :pswitch_22
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfDouble;

    move-object v1, p1

    check-cast v1, Ljava/util/stream/Node$OfDouble;

    move-object v2, p2

    check-cast v2, Ljava/util/stream/Node$OfDouble;

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Nodes$ConcNode$OfDouble;-><init>(Ljava/util/stream/Node$OfDouble;Ljava/util/stream/Node$OfDouble;)V

    return-object v0

    .line 120
    :pswitch_2e
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfLong;

    move-object v1, p1

    check-cast v1, Ljava/util/stream/Node$OfLong;

    move-object v2, p2

    check-cast v2, Ljava/util/stream/Node$OfLong;

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Nodes$ConcNode$OfLong;-><init>(Ljava/util/stream/Node$OfLong;Ljava/util/stream/Node$OfLong;)V

    return-object v0

    .line 118
    :pswitch_3a
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfInt;

    move-object v1, p1

    check-cast v1, Ljava/util/stream/Node$OfInt;

    move-object v2, p2

    check-cast v2, Ljava/util/stream/Node$OfInt;

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Nodes$ConcNode$OfInt;-><init>(Ljava/util/stream/Node$OfInt;Ljava/util/stream/Node$OfInt;)V

    return-object v0

    .line 116
    :pswitch_46
    new-instance v0, Ljava/util/stream/Nodes$ConcNode;

    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode;-><init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V

    return-object v0

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_46
        :pswitch_3a
        :pswitch_2e
        :pswitch_22
    .end packed-switch
.end method

.method static blacklist doubleBuilder()Ljava/util/stream/Node$Builder$OfDouble;
    .registers 1

    .line 290
    new-instance v0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;

    invoke-direct {v0}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static blacklist doubleBuilder(J)Ljava/util/stream/Node$Builder$OfDouble;
    .registers 4
    .param p0, "exactSizeIfKnown"    # J

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

    goto :goto_17

    .line 281
    :cond_13
    invoke-static {}, Ljava/util/stream/Nodes;->doubleBuilder()Ljava/util/stream/Node$Builder$OfDouble;

    move-result-object v0

    .line 279
    :goto_17
    return-object v0
.end method

.method static blacklist emptyNode(Ljava/util/stream/StreamShape;)Ljava/util/stream/Node;
    .registers 4
    .param p0, "shape"    # Ljava/util/stream/StreamShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/StreamShape;",
            ")",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 83
    sget-object v0, Ljava/util/stream/Nodes$1;->$SwitchMap$java$util$stream$StreamShape:[I

    invoke-virtual {p0}, Ljava/util/stream/StreamShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :pswitch_22
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_NODE:Ljava/util/stream/Node$OfDouble;

    return-object v0

    .line 86
    :pswitch_25
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_NODE:Ljava/util/stream/Node$OfLong;

    return-object v0

    .line 85
    :pswitch_28
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_NODE:Ljava/util/stream/Node$OfInt;

    return-object v0

    .line 84
    :pswitch_2b
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_NODE:Ljava/util/stream/Node;

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method public static blacklist flatten(Ljava/util/stream/Node;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Node<",
            "TT;>;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 465
    .local p0, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    invoke-interface {p0}, Ljava/util/stream/Node;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2f

    .line 466
    invoke-interface {p0}, Ljava/util/stream/Node;->count()J

    move-result-wide v0

    .line 467
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_27

    .line 469
    long-to-int v2, v0

    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 470
    .local v2, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v3, Ljava/util/stream/Nodes$ToArrayTask$OfRef;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v4, v5}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljava/util/stream/Node;[Ljava/lang/Object;ILjava/util/stream/Nodes$1;)V

    invoke-virtual {v3}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->invoke()Ljava/lang/Object;

    .line 471
    invoke-static {v2}, Ljava/util/stream/Nodes;->node([Ljava/lang/Object;)Ljava/util/stream/Node;

    move-result-object v3

    return-object v3

    .line 468
    .end local v2    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 473
    .end local v0    # "size":J
    :cond_2f
    return-object p0
.end method

.method public static blacklist flattenDouble(Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;
    .registers 7
    .param p0, "node"    # Ljava/util/stream/Node$OfDouble;

    .line 543
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2b

    .line 544
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->count()J

    move-result-wide v0

    .line 545
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_23

    .line 547
    long-to-int v2, v0

    new-array v2, v2, [D

    .line 548
    .local v2, "array":[D
    new-instance v3, Ljava/util/stream/Nodes$ToArrayTask$OfDouble;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v4, v5}, Ljava/util/stream/Nodes$ToArrayTask$OfDouble;-><init>(Ljava/util/stream/Node$OfDouble;[DILjava/util/stream/Nodes$1;)V

    invoke-virtual {v3}, Ljava/util/stream/Nodes$ToArrayTask$OfDouble;->invoke()Ljava/lang/Object;

    .line 549
    invoke-static {v2}, Ljava/util/stream/Nodes;->node([D)Ljava/util/stream/Node$OfDouble;

    move-result-object v3

    return-object v3

    .line 546
    .end local v2    # "array":[D
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 551
    .end local v0    # "size":J
    :cond_2b
    return-object p0
.end method

.method public static blacklist flattenInt(Ljava/util/stream/Node$OfInt;)Ljava/util/stream/Node$OfInt;
    .registers 7
    .param p0, "node"    # Ljava/util/stream/Node$OfInt;

    .line 491
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2b

    .line 492
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->count()J

    move-result-wide v0

    .line 493
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_23

    .line 495
    long-to-int v2, v0

    new-array v2, v2, [I

    .line 496
    .local v2, "array":[I
    new-instance v3, Ljava/util/stream/Nodes$ToArrayTask$OfInt;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v4, v5}, Ljava/util/stream/Nodes$ToArrayTask$OfInt;-><init>(Ljava/util/stream/Node$OfInt;[IILjava/util/stream/Nodes$1;)V

    invoke-virtual {v3}, Ljava/util/stream/Nodes$ToArrayTask$OfInt;->invoke()Ljava/lang/Object;

    .line 497
    invoke-static {v2}, Ljava/util/stream/Nodes;->node([I)Ljava/util/stream/Node$OfInt;

    move-result-object v3

    return-object v3

    .line 494
    .end local v2    # "array":[I
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 499
    .end local v0    # "size":J
    :cond_2b
    return-object p0
.end method

.method public static blacklist flattenLong(Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;
    .registers 7
    .param p0, "node"    # Ljava/util/stream/Node$OfLong;

    .line 517
    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2b

    .line 518
    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->count()J

    move-result-wide v0

    .line 519
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_23

    .line 521
    long-to-int v2, v0

    new-array v2, v2, [J

    .line 522
    .local v2, "array":[J
    new-instance v3, Ljava/util/stream/Nodes$ToArrayTask$OfLong;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v4, v5}, Ljava/util/stream/Nodes$ToArrayTask$OfLong;-><init>(Ljava/util/stream/Node$OfLong;[JILjava/util/stream/Nodes$1;)V

    invoke-virtual {v3}, Ljava/util/stream/Nodes$ToArrayTask$OfLong;->invoke()Ljava/lang/Object;

    .line 523
    invoke-static {v2}, Ljava/util/stream/Nodes;->node([J)Ljava/util/stream/Node$OfLong;

    move-result-object v3

    return-object v3

    .line 520
    .end local v2    # "array":[J
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 525
    .end local v0    # "size":J
    :cond_2b
    return-object p0
.end method

.method static blacklist intBuilder()Ljava/util/stream/Node$Builder$OfInt;
    .registers 1

    .line 216
    new-instance v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;

    invoke-direct {v0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static blacklist intBuilder(J)Ljava/util/stream/Node$Builder$OfInt;
    .registers 4
    .param p0, "exactSizeIfKnown"    # J

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

    goto :goto_17

    .line 207
    :cond_13
    invoke-static {}, Ljava/util/stream/Nodes;->intBuilder()Ljava/util/stream/Node$Builder$OfInt;

    move-result-object v0

    .line 205
    :goto_17
    return-object v0
.end method

.method static blacklist longBuilder()Ljava/util/stream/Node$Builder$OfLong;
    .registers 1

    .line 253
    new-instance v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;

    invoke-direct {v0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static blacklist longBuilder(J)Ljava/util/stream/Node$Builder$OfLong;
    .registers 4
    .param p0, "exactSizeIfKnown"    # J

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

    goto :goto_17

    .line 244
    :cond_13
    invoke-static {}, Ljava/util/stream/Nodes;->longBuilder()Ljava/util/stream/Node$Builder$OfLong;

    move-result-object v0

    .line 242
    :goto_17
    return-object v0
.end method

.method static blacklist node([D)Ljava/util/stream/Node$OfDouble;
    .registers 2
    .param p0, "array"    # [D

    .line 267
    new-instance v0, Ljava/util/stream/Nodes$DoubleArrayNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$DoubleArrayNode;-><init>([D)V

    return-object v0
.end method

.method static blacklist node([I)Ljava/util/stream/Node$OfInt;
    .registers 2
    .param p0, "array"    # [I

    .line 193
    new-instance v0, Ljava/util/stream/Nodes$IntArrayNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$IntArrayNode;-><init>([I)V

    return-object v0
.end method

.method static blacklist node([J)Ljava/util/stream/Node$OfLong;
    .registers 2
    .param p0, "array"    # [J

    .line 230
    new-instance v0, Ljava/util/stream/Nodes$LongArrayNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$LongArrayNode;-><init>([J)V

    return-object v0
.end method

.method static blacklist node(Ljava/util/Collection;)Ljava/util/stream/Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 153
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/stream/Nodes$CollectionNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$CollectionNode;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static blacklist node([Ljava/lang/Object;)Ljava/util/stream/Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 140
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/stream/Nodes$ArrayNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$ArrayNode;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
