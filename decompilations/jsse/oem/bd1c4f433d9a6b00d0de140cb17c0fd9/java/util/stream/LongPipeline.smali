.class public abstract Ljava/util/stream/LongPipeline;
.super Ljava/util/stream/AbstractPipeline;
.source "LongPipeline.java"

# interfaces
.implements Ljava/util/stream/LongStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/LongPipeline$Head;,
        Ljava/util/stream/LongPipeline$StatefulOp;,
        Ljava/util/stream/LongPipeline$StatelessOp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractPipeline",
        "<TE_IN;",
        "Ljava/lang/Long;",
        "Ljava/util/stream/LongStream;",
        ">;",
        "Ljava/util/stream/LongStream;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_LongPipeline-mthref-0(Ljava/util/stream/Sink;J)V
    .registers 4

    .prologue
    .line 106
    invoke-interface {p0, p1, p2}, Ljava/util/stream/Sink;->accept(J)V

    return-void
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-1(J)Ljava/lang/Long;
    .registers 4

    .prologue
    .line 202
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-2(JJ)J
    .registers 6

    .prologue
    .line 397
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->sum(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-3(JJ)J
    .registers 6

    .prologue
    .line 402
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-4(JJ)J
    .registers 6

    .prologue
    .line 407
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-5()Ljava/util/LongSummaryStatistics;
    .registers 1

    .prologue
    .line 433
    new-instance v0, Ljava/util/LongSummaryStatistics;

    invoke-direct {v0}, Ljava/util/LongSummaryStatistics;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-6(Ljava/util/LongSummaryStatistics;J)V
    .registers 4

    .prologue
    .line 433
    invoke-virtual {p0, p1, p2}, Ljava/util/LongSummaryStatistics;->accept(J)V

    return-void
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-7(Ljava/util/LongSummaryStatistics;Ljava/util/LongSummaryStatistics;)V
    .registers 2

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Ljava/util/LongSummaryStatistics;->combine(Ljava/util/LongSummaryStatistics;)V

    return-void
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-8(I)[Ljava/lang/Long;
    .registers 2

    .prologue
    .line 485
    new-array v0, p0, [Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;
    .registers 2
    .param p0, "s"    # Ljava/util/Spliterator;

    .prologue
    invoke-static {p0}, Ljava/util/stream/LongPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Ljava/util/Spliterator;IZ)V
    .registers 4
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Long;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/Spliterator;IZ)V

    .line 83
    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .registers 4
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Long;",
            ">;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Long;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 70
    return-void
.end method

.method constructor <init>(Ljava/util/stream/AbstractPipeline;I)V
    .registers 3
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TE_IN;*>;I)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    .line 93
    return-void
.end method

.method private static adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Spliterator$OfLong;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    instance-of v0, p0, Ljava/util/Spliterator$OfLong;

    if-eqz v0, :cond_7

    .line 119
    check-cast p0, Ljava/util/Spliterator$OfLong;

    .end local p0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    return-object p0

    .line 121
    .restart local p0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    :cond_7
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_13

    .line 122
    const-class v0, Ljava/util/stream/AbstractPipeline;

    .line 123
    const-string/jumbo v1, "using LongStream.adapt(Spliterator<Long> s)"

    .line 122
    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 124
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static adapt(Ljava/util/stream/Sink;)Ljava/util/function/LongConsumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/function/LongConsumer;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    instance-of v0, p0, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_7

    .line 101
    check-cast p0, Ljava/util/function/LongConsumer;

    .end local p0    # "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    return-object p0

    .line 103
    .restart local p0    # "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    :cond_7
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_13

    .line 104
    const-class v0, Ljava/util/stream/AbstractPipeline;

    .line 105
    const-string/jumbo v1, "using LongStream.adapt(Sink<Long> s)"

    .line 104
    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 106
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk$1;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_LongPipeline_13909(Ljava/lang/Long;)J
    .registers 3
    .param p0, "i"    # Ljava/lang/Long;

    .prologue
    .line 379
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$-java_util_stream_LongPipeline_14653()[J
    .registers 1

    .prologue
    .line 412
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_LongPipeline_14701([JJ)V
    .registers 10
    .param p0, "ll"    # [J
    .param p1, "i"    # J

    .prologue
    .line 414
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, p0, v0

    .line 415
    const/4 v0, 0x1

    aget-wide v2, p0, v0

    add-long/2addr v2, p1

    aput-wide v2, p0, v0

    return-void
.end method

.method static synthetic lambda$-java_util_stream_LongPipeline_14862([J[J)V
    .registers 8
    .param p0, "ll"    # [J
    .param p1, "rr"    # [J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 418
    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    add-long/2addr v0, v2

    aput-wide v0, p0, v4

    .line 419
    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    add-long/2addr v0, v2

    aput-wide v0, p0, v5

    return-void
.end method

.method static synthetic lambda$-java_util_stream_LongPipeline_15207(J)J
    .registers 4
    .param p0, "e"    # J

    .prologue
    .line 428
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method static synthetic lambda$-java_util_stream_LongPipeline_15958(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 452
    .local p0, "combiner":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    .local p1, "left":Ljava/lang/Object;, "TR;"
    .local p2, "right":Ljava/lang/Object;, "TR;"
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 453
    return-object p1
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/LongPredicate;)Z
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .prologue
    .line 465
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Ljava/util/function/LongPredicate;)Z
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .prologue
    .line 460
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final asDoubleStream()Ljava/util/stream/DoubleStream;
    .registers 5

    .prologue
    .line 186
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$1;

    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    .line 187
    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v3, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v2, v3

    .line 186
    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/LongPipeline$1;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final average()Ljava/util/OptionalDouble;
    .registers 8

    .prologue
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v6, 0x0

    sget-object v1, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$29:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    sget-object v2, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;->$INST$0:Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;

    sget-object v3, Ljava/util/stream/-$Lambda$Y1nWb7oHyESmWtTUR-RlHqf5IfU;->$INST$13:Ljava/util/stream/-$Lambda$Y1nWb7oHyESmWtTUR-RlHqf5IfU;

    .line 412
    invoke-virtual {p0, v1, v2, v3}, Ljava/util/stream/LongPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 421
    .local v0, "avg":[J
    aget-wide v2, v0, v6

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_22

    .line 422
    const/4 v1, 0x1

    aget-wide v2, v0, v1

    long-to-double v2, v2

    aget-wide v4, v0, v6

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object v1

    .line 421
    :goto_21
    return-object v1

    .line 423
    :cond_22
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v1

    goto :goto_21
.end method

.method public final boxed()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;->$INST$0:Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;

    .line 202
    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TR;>;",
            "Ljava/util/function/ObjLongConsumer",
            "<TR;>;",
            "Ljava/util/function/BiConsumer",
            "<TR;TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava/util/function/ObjLongConsumer;, "Ljava/util/function/ObjLongConsumer<TR;>;"
    .local p3, "combiner":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    new-instance v0, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p3}, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;-><init>(BLjava/lang/Object;)V

    .line 455
    .local v0, "operator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p1, p2, v0}, Ljava/util/stream/ReduceOps;->makeLong(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final count()J
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$1;->$INST$0:Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$1;

    .line 428
    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljava/util/stream/LongStream;
    .registers 3

    .prologue
    .line 379
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;->$INST$0:Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final evaluateToNode(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 6
    .param p3, "flattenTree"    # Z
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
            "<TP_IN;>;Z",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Node",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Long;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/Nodes;->collectLong(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
    .registers 8
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .prologue
    .line 312
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v0, Ljava/util/stream/LongPipeline$8;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    .line 314
    sget v4, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 313
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$8;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongPredicate;)V

    return-object v0
.end method

.method public final findAny()Ljava/util/OptionalLong;
    .registers 2

    .prologue
    .line 480
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeLong(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalLong;

    return-object v0
.end method

.method public final findFirst()Ljava/util/OptionalLong;
    .registers 2

    .prologue
    .line 475
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeLong(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalLong;

    return-object v0
.end method

.method public final flatMap(Ljava/util/function/LongFunction;)Ljava/util/stream/LongStream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/LongFunction",
            "<+",
            "Ljava/util/stream/LongStream;",
            ">;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<+Ljava/util/stream/LongStream;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$6;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    .line 276
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 275
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$6;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongFunction;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/LongConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 386
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeLong(Ljava/util/function/LongConsumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 387
    return-void
.end method

.method public forEachOrdered(Ljava/util/function/LongConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 391
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeLong(Ljava/util/function/LongConsumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 392
    return-void
.end method

.method public final forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    invoke-static {p1}, Ljava/util/stream/LongPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;

    move-result-object v1

    .line 160
    .local v1, "spl":Ljava/util/Spliterator$OfLong;
    invoke-static {p2}, Ljava/util/stream/LongPipeline;->adapt(Ljava/util/stream/Sink;)Ljava/util/function/LongConsumer;

    move-result-object v0

    .line 161
    .local v0, "adaptedSink":Ljava/util/function/LongConsumer;
    :cond_8
    invoke-interface {p2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-interface {v1, v0}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 162
    :cond_14
    return-void
.end method

.method public final getOutputShape()Ljava/util/stream/StreamShape;
    .registers 2

    .prologue
    .line 133
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 170
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->iterator()Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/PrimitiveIterator$OfLong;
    .registers 2

    .prologue
    .line 174
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfLong;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/util/Spliterator$OfLong;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Long;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;

    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;
    .registers 3

    .prologue
    .line 151
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/LongPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final limit(J)Ljava/util/stream/LongStream;
    .registers 8
    .param p1, "maxSize"    # J

    .prologue
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const-wide/16 v2, 0x0

    .line 355
    cmp-long v0, p1, v2

    if-gez v0, :cond_10

    .line 356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_10
    invoke-static {p0, v2, v3, p1, p2}, Ljava/util/stream/SliceOps;->makeLong(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;
    .registers 5
    .param p1, "exactSizeIfKnown"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Node$Builder",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/util/stream/Nodes;->longBuilder(J)Ljava/util/stream/Node$Builder$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
    .registers 8
    .param p1, "mapper"    # Ljava/util/function/LongUnaryOperator;

    .prologue
    .line 207
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v0, Ljava/util/stream/LongPipeline$2;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    .line 209
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 208
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$2;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongUnaryOperator;)V

    return-object v0
.end method

.method public final mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .registers 8
    .param p1, "mapper"    # Ljava/util/function/LongToDoubleFunction;

    .prologue
    .line 258
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v0, Ljava/util/stream/LongPipeline$5;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    .line 260
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 259
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$5;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongToDoubleFunction;)V

    return-object v0
.end method

.method public final mapToInt(Ljava/util/function/LongToIntFunction;)Ljava/util/stream/IntStream;
    .registers 8
    .param p1, "mapper"    # Ljava/util/function/LongToIntFunction;

    .prologue
    .line 241
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v0, Ljava/util/stream/LongPipeline$4;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    .line 243
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 242
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$4;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongToIntFunction;)V

    return-object v0
.end method

.method public final mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/LongFunction",
            "<+TU;>;)",
            "Ljava/util/stream/Stream",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<+TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v0, Ljava/util/stream/LongPipeline$3;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    .line 226
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 225
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$3;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongFunction;)V

    return-object v0
.end method

.method public final max()Ljava/util/OptionalLong;
    .registers 2

    .prologue
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;->$INST$0:Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;

    .line 407
    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final min()Ljava/util/OptionalLong;
    .registers 2

    .prologue
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;->$INST$1:Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;

    .line 402
    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/LongPredicate;)Z
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .prologue
    .line 470
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parallel()Ljava/util/stream/LongStream;
    .registers 2

    .prologue
    .line 309
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/LongStream;

    return-object v0
.end method

.method public final peek(Ljava/util/function/LongConsumer;)Ljava/util/stream/LongStream;
    .registers 8
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 335
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v0, Ljava/util/stream/LongPipeline$9;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    .line 337
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 336
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$9;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongConsumer;)V

    return-object v0
.end method

.method public final reduce(JLjava/util/function/LongBinaryOperator;)J
    .registers 7
    .param p1, "identity"    # J
    .param p3, "op"    # Ljava/util/function/LongBinaryOperator;

    .prologue
    .line 439
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/ReduceOps;->makeLong(JLjava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;
    .registers 3
    .param p1, "op"    # Ljava/util/function/LongBinaryOperator;

    .prologue
    .line 444
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/stream/ReduceOps;->makeLong(Ljava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalLong;

    return-object v0
.end method

.method public bridge synthetic sequential()Ljava/util/stream/LongStream;
    .registers 2

    .prologue
    .line 300
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/LongStream;

    return-object v0
.end method

.method public final skip(J)Ljava/util/stream/LongStream;
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const-wide/16 v2, 0x0

    .line 362
    cmp-long v0, p1, v2

    if-gez v0, :cond_10

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_10
    cmp-long v0, p1, v2

    if-nez v0, :cond_15

    .line 365
    return-object p0

    .line 367
    :cond_15
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Ljava/util/stream/SliceOps;->makeLong(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final sorted()Ljava/util/stream/LongStream;
    .registers 2

    .prologue
    .line 372
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p0}, Ljava/util/stream/SortedOps;->makeLong(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Ljava/util/Spliterator$OfLong;
    .registers 2

    .prologue
    .line 179
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/LongPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 177
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final sum()J
    .registers 4

    .prologue
    .line 397
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;->$INST$2:Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/LongPipeline;->reduce(JLjava/util/function/LongBinaryOperator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final summaryStatistics()Ljava/util/LongSummaryStatistics;
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$30:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    sget-object v1, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;->$INST$1:Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;

    sget-object v2, Ljava/util/stream/-$Lambda$Y1nWb7oHyESmWtTUR-RlHqf5IfU;->$INST$14:Ljava/util/stream/-$Lambda$Y1nWb7oHyESmWtTUR-RlHqf5IfU;

    .line 433
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/LongPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LongSummaryStatistics;

    return-object v0
.end method

.method public final toArray()[J
    .registers 2

    .prologue
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/-$Lambda$Lw2Alu2LEcypd4PXrfG0QIAAKKo;->$INST$5:Ljava/util/stream/-$Lambda$Lw2Alu2LEcypd4PXrfG0QIAAKKo;

    .line 485
    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node$OfLong;

    invoke-static {v0}, Ljava/util/stream/Nodes;->flattenLong(Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Node$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public bridge synthetic unordered()Ljava/util/stream/BaseStream;
    .registers 2

    .prologue
    .line 298
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->unordered()Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public unordered()Ljava/util/stream/LongStream;
    .registers 4

    .prologue
    .line 300
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_7

    .line 301
    return-object p0

    .line 302
    :cond_7
    new-instance v0, Ljava/util/stream/LongPipeline$7;

    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/LongPipeline$7;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final wrap(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljava/util/Spliterator;
    .registers 5
    .param p3, "isParallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;Z)",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
