.class public abstract Ljava/util/stream/DoublePipeline;
.super Ljava/util/stream/AbstractPipeline;
.source "DoublePipeline.java"

# interfaces
.implements Ljava/util/stream/DoubleStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/DoublePipeline$StatefulOp;,
        Ljava/util/stream/DoublePipeline$StatelessOp;,
        Ljava/util/stream/DoublePipeline$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractPipeline<",
        "TE_IN;",
        "Ljava/lang/Double;",
        "Ljava/util/stream/DoubleStream;",
        ">;",
        "Ljava/util/stream/DoubleStream;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Spliterator;IZ)V
    .registers 4
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;IZ)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/Spliterator;IZ)V

    .line 82
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/function/Supplier;IZ)V
    .registers 4
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Double;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 70
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/stream/AbstractPipeline;I)V
    .registers 3
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*TE_IN;*>;I)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    .line 93
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;
    .registers 2
    .param p0, "x0"    # Ljava/util/Spliterator;

    .line 56
    invoke-static {p0}, Ljava/util/stream/DoublePipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/Spliterator$OfDouble;"
        }
    .end annotation

    .line 118
    .local p0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    instance-of v0, p0, Ljava/util/Spliterator$OfDouble;

    if-eqz v0, :cond_8

    .line 119
    move-object v0, p0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    return-object v0

    .line 121
    :cond_8
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_13

    .line 122
    const-class v0, Ljava/util/stream/AbstractPipeline;

    const-string v1, "using DoubleStream.adapt(Spliterator<Double> s)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 124
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DoubleStream.adapt(Spliterator<Double> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o adapt(Ljava/util/stream/Sink;)Ljava/util/function/DoubleConsumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/function/DoubleConsumer;"
        }
    .end annotation

    .line 100
    .local p0, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    instance-of v0, p0, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_8

    .line 101
    move-object v0, p0

    check-cast v0, Ljava/util/function/DoubleConsumer;

    return-object v0

    .line 103
    :cond_8
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_13

    .line 104
    const-class v0, Ljava/util/stream/AbstractPipeline;

    const-string v1, "using DoubleStream.adapt(Sink<Double> s)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 106
    :cond_13
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/-$$Lambda$G0LLxk8pWitjFgsOx2bYtRO-rGg;

    invoke-direct {v0, p0}, Ljava/util/stream/-$$Lambda$G0LLxk8pWitjFgsOx2bYtRO-rGg;-><init>(Ljava/util/stream/Sink;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$average$4()[D
    .registers 1

    .line 446
    const/4 v0, 0x4

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic blacklist lambda$average$5([DD)V
    .registers 8
    .param p0, "ll"    # [D
    .param p1, "d"    # D

    .line 448
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 449
    invoke-static {p0, p1, p2}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 450
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    add-double/2addr v1, p1

    aput-wide v1, p0, v0

    .line 451
    return-void
.end method

.method static synthetic blacklist lambda$average$6([D[D)V
    .registers 7
    .param p0, "ll"    # [D
    .param p1, "rr"    # [D

    .line 453
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 454
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 455
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 456
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 457
    return-void
.end method

.method static synthetic blacklist lambda$collect$8(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "combiner"    # Ljava/util/function/BiConsumer;
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .line 489
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 490
    return-object p1
.end method

.method static synthetic blacklist lambda$count$7(D)J
    .registers 4
    .param p0, "e"    # D

    .line 465
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method static synthetic blacklist lambda$distinct$0(Ljava/lang/Double;)D
    .registers 3
    .param p0, "i"    # Ljava/lang/Double;

    .line 379
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$sum$1()[D
    .registers 1

    .line 404
    const/4 v0, 0x3

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic blacklist lambda$sum$2([DD)V
    .registers 6
    .param p0, "ll"    # [D
    .param p1, "d"    # D

    .line 406
    invoke-static {p0, p1, p2}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 407
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    add-double/2addr v1, p1

    aput-wide v1, p0, v0

    .line 408
    return-void
.end method

.method static synthetic blacklist lambda$sum$3([D[D)V
    .registers 7
    .param p0, "ll"    # [D
    .param p1, "rr"    # [D

    .line 410
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 411
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 412
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 413
    return-void
.end method

.method static synthetic blacklist lambda$toArray$9(I)[Ljava/lang/Double;
    .registers 2
    .param p0, "x$0"    # I

    .line 522
    new-array v0, p0, [Ljava/lang/Double;

    return-object v0
.end method


# virtual methods
.method public final whitelist core-platform-api test-api allMatch(Ljava/util/function/DoublePredicate;)Z
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 502
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeDouble(Ljava/util/function/DoublePredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api anyMatch(Ljava/util/function/DoublePredicate;)Z
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 497
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeDouble(Ljava/util/function/DoublePredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api average()Ljava/util/OptionalDouble;
    .registers 7

    .line 446
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/-$$Lambda$DoublePipeline$O7F4ENrC3oYj9E0vblCKW9Dec60;->INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$O7F4ENrC3oYj9E0vblCKW9Dec60;

    sget-object v1, Ljava/util/stream/-$$Lambda$DoublePipeline$lWQTyY6EPN0Xvhyjp5Lr5ZKBDCA;->INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$lWQTyY6EPN0Xvhyjp5Lr5ZKBDCA;

    sget-object v2, Ljava/util/stream/-$$Lambda$DoublePipeline$8lpXAdS4oGMq6Yo_dNhNdoP-gg0;->INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$8lpXAdS4oGMq6Yo_dNhNdoP-gg0;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/DoublePipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 458
    .local v0, "avg":[D
    const/4 v1, 0x2

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_21

    .line 459
    invoke-static {v0}, Ljava/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v2

    aget-wide v4, v0, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object v1

    goto :goto_25

    .line 460
    :cond_21
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v1

    .line 458
    :goto_25
    return-object v1
.end method

.method public final whitelist core-platform-api test-api boxed()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 192
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/-$$Lambda$0HimmAYr5h1pFdNckEhxJ9y9Zqk;->INSTANCE:Ljava/util/stream/-$$Lambda$0HimmAYr5h1pFdNckEhxJ9y9Zqk;

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->mapToObj(Ljava/util/function/DoubleFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/ObjDoubleConsumer<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .line 488
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava/util/function/ObjDoubleConsumer;, "Ljava/util/function/ObjDoubleConsumer<TR;>;"
    .local p3, "combiner":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    new-instance v0, Ljava/util/stream/-$$Lambda$DoublePipeline$IBZGhEgRy1ddKsqLtAJ-JIbQPE8;

    .local v0, "operator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-direct {v0, p3}, Ljava/util/stream/-$$Lambda$DoublePipeline$IBZGhEgRy1ddKsqLtAJ-JIbQPE8;-><init>(Ljava/util/function/BiConsumer;)V

    .line 492
    invoke-static {p1, p2, v0}, Ljava/util/stream/ReduceOps;->makeDouble(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist core-platform-api test-api count()J
    .registers 3

    .line 465
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/-$$Lambda$DoublePipeline$V2mM4_kocaa0EZ7g04Qc6_Yd13E;->INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$V2mM4_kocaa0EZ7g04Qc6_Yd13E;

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist core-platform-api test-api distinct()Ljava/util/stream/DoubleStream;
    .registers 3

    .line 379
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Ljava/util/stream/-$$Lambda$DoublePipeline$gq0fD9NZ938fl5Zgm1Lwm9G2tpI;->INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$gq0fD9NZ938fl5Zgm1Lwm9G2tpI;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o evaluateToNode(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 6
    .param p3, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Node<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 143
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Double;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/Nodes;->collectDouble(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api filter(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
    .registers 9
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 308
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-instance v6, Ljava/util/stream/DoublePipeline$7;

    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v4, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$7;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoublePredicate;)V

    return-object v6
.end method

.method public final whitelist core-platform-api test-api findAny()Ljava/util/OptionalDouble;
    .registers 2

    .line 517
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeDouble(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalDouble;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api findFirst()Ljava/util/OptionalDouble;
    .registers 2

    .line 512
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeDouble(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalDouble;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api flatMap(Ljava/util/function/DoubleFunction;)Ljava/util/stream/DoubleStream;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/DoubleFunction<",
            "+",
            "Ljava/util/stream/DoubleStream;",
            ">;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .line 269
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<+Ljava/util/stream/DoubleStream;>;"
    new-instance v6, Ljava/util/stream/DoublePipeline$5;

    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$5;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleFunction;)V

    return-object v6
.end method

.method public whitelist core-platform-api test-api forEach(Ljava/util/function/DoubleConsumer;)V
    .registers 3
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 386
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeDouble(Ljava/util/function/DoubleConsumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 387
    return-void
.end method

.method public whitelist core-platform-api test-api forEachOrdered(Ljava/util/function/DoubleConsumer;)V
    .registers 3
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 391
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeDouble(Ljava/util/function/DoubleConsumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 392
    return-void
.end method

.method public final greylist-max-o forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    invoke-static {p1}, Ljava/util/stream/DoublePipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    .line 165
    .local v0, "spl":Ljava/util/Spliterator$OfDouble;
    invoke-static {p2}, Ljava/util/stream/DoublePipeline;->adapt(Ljava/util/stream/Sink;)Ljava/util/function/DoubleConsumer;

    move-result-object v1

    .line 166
    .local v1, "adaptedSink":Ljava/util/function/DoubleConsumer;
    :cond_8
    invoke-interface {p2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-interface {v0, v1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 167
    :cond_14
    return-void
.end method

.method public final greylist-max-o getOutputShape()Ljava/util/stream/StreamShape;
    .registers 2

    .line 134
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 56
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->iterator()Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api iterator()Ljava/util/PrimitiveIterator$OfDouble;
    .registers 2

    .line 180
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfDouble;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;>;)",
            "Ljava/util/Spliterator$OfDouble;"
        }
    .end annotation

    .line 158
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Double;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;

    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public bridge synthetic blacklist lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;
    .registers 2

    .line 56
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/DoublePipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist core-platform-api test-api limit(J)Ljava/util/stream/DoubleStream;
    .registers 6
    .param p1, "maxSize"    # J

    .line 353
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_b

    .line 355
    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/stream/SliceOps;->makeDouble(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    .line 354
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist-max-o makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;
    .registers 5
    .param p1, "exactSizeIfKnown"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Node$Builder<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 172
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Double;>;"
    invoke-static {p1, p2}, Ljava/util/stream/Nodes;->doubleBuilder(J)Ljava/util/stream/Node$Builder$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api map(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
    .registers 9
    .param p1, "mapper"    # Ljava/util/function/DoubleUnaryOperator;

    .line 197
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v6, Ljava/util/stream/DoublePipeline$1;

    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$1;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleUnaryOperator;)V

    return-object v6
.end method

.method public final whitelist core-platform-api test-api mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljava/util/stream/IntStream;
    .registers 9
    .param p1, "mapper"    # Ljava/util/function/DoubleToIntFunction;

    .line 233
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v6, Ljava/util/stream/DoublePipeline$3;

    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$3;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleToIntFunction;)V

    return-object v6
.end method

.method public final whitelist core-platform-api test-api mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljava/util/stream/LongStream;
    .registers 9
    .param p1, "mapper"    # Ljava/util/function/DoubleToLongFunction;

    .line 251
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v6, Ljava/util/stream/DoublePipeline$4;

    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$4;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleToLongFunction;)V

    return-object v6
.end method

.method public final whitelist core-platform-api test-api mapToObj(Ljava/util/function/DoubleFunction;)Ljava/util/stream/Stream;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/DoubleFunction<",
            "+TU;>;)",
            "Ljava/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 215
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<+TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v6, Ljava/util/stream/DoublePipeline$2;

    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$2;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleFunction;)V

    return-object v6
.end method

.method public final whitelist core-platform-api test-api max()Ljava/util/OptionalDouble;
    .registers 2

    .line 425
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/-$$Lambda$xi7ZBZfKmkbt5CSsaL8qlNeHupc;->INSTANCE:Ljava/util/stream/-$$Lambda$xi7ZBZfKmkbt5CSsaL8qlNeHupc;

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api min()Ljava/util/OptionalDouble;
    .registers 2

    .line 420
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/-$$Lambda$Xsl4nKeYydTETtdRjTtEXmjJItE;->INSTANCE:Ljava/util/stream/-$$Lambda$Xsl4nKeYydTETtdRjTtEXmjJItE;

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api noneMatch(Ljava/util/function/DoublePredicate;)Z
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 507
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeDouble(Ljava/util/function/DoublePredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api parallel()Ljava/util/stream/DoubleStream;
    .registers 2

    .line 56
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/DoubleStream;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api peek(Ljava/util/function/DoubleConsumer;)Ljava/util/stream/DoubleStream;
    .registers 9
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 332
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    new-instance v6, Ljava/util/stream/DoublePipeline$8;

    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$8;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleConsumer;)V

    return-object v6
.end method

.method public final whitelist core-platform-api test-api reduce(DLjava/util/function/DoubleBinaryOperator;)D
    .registers 6
    .param p1, "identity"    # D
    .param p3, "op"    # Ljava/util/function/DoubleBinaryOperator;

    .line 476
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/ReduceOps;->makeDouble(DLjava/util/function/DoubleBinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist core-platform-api test-api reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;
    .registers 3
    .param p1, "op"    # Ljava/util/function/DoubleBinaryOperator;

    .line 481
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/stream/ReduceOps;->makeDouble(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalDouble;

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api sequential()Ljava/util/stream/DoubleStream;
    .registers 2

    .line 56
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/DoubleStream;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api skip(J)Ljava/util/stream/DoubleStream;
    .registers 6
    .param p1, "n"    # J

    .line 360
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_12

    .line 362
    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    .line 363
    return-object p0

    .line 365
    :cond_b
    const-wide/16 v0, -0x1

    .line 366
    .local v0, "limit":J
    invoke-static {p0, p1, p2, v0, v1}, Ljava/util/stream/SliceOps;->makeDouble(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/DoubleStream;

    move-result-object v2

    return-object v2

    .line 361
    .end local v0    # "limit":J
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api sorted()Ljava/util/stream/DoubleStream;
    .registers 2

    .line 372
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p0}, Ljava/util/stream/SortedOps;->makeDouble(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api spliterator()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .line 185
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/DoublePipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 56
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api sum()D
    .registers 4

    .line 404
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/-$$Lambda$DoublePipeline$jsM76ecD5K_oP4TaArM1RdmdjOw;->INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$jsM76ecD5K_oP4TaArM1RdmdjOw;

    sget-object v1, Ljava/util/stream/-$$Lambda$DoublePipeline$btJQIF5a5bk658mbj9AIl0UV19Q;->INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$btJQIF5a5bk658mbj9AIl0UV19Q;

    sget-object v2, Ljava/util/stream/-$$Lambda$DoublePipeline$KYIKJiRuFnKlAv02sN6Y0G5US7E;->INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$KYIKJiRuFnKlAv02sN6Y0G5US7E;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/DoublePipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 415
    .local v0, "summation":[D
    invoke-static {v0}, Ljava/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v1

    return-wide v1
.end method

.method public final whitelist core-platform-api test-api summaryStatistics()Ljava/util/DoubleSummaryStatistics;
    .registers 4

    .line 470
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/-$$Lambda$745FUy7cYwYu7KrMQTYh2DNqh1I;->INSTANCE:Ljava/util/stream/-$$Lambda$745FUy7cYwYu7KrMQTYh2DNqh1I;

    sget-object v1, Ljava/util/stream/-$$Lambda$9-clh6DyAY2rGfAxuH1sO9aEBuU;->INSTANCE:Ljava/util/stream/-$$Lambda$9-clh6DyAY2rGfAxuH1sO9aEBuU;

    sget-object v2, Ljava/util/stream/-$$Lambda$BZcmU4lh1MU8ke57orLk6ELdvT4;->INSTANCE:Ljava/util/stream/-$$Lambda$BZcmU4lh1MU8ke57orLk6ELdvT4;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/DoublePipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/DoubleSummaryStatistics;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api toArray()[D
    .registers 2

    .line 522
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/-$$Lambda$DoublePipeline$VwL6T93St4bY9lzEXgl24N_DcA4;->INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$VwL6T93St4bY9lzEXgl24N_DcA4;

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node$OfDouble;

    invoke-static {v0}, Ljava/util/stream/Nodes;->flattenDouble(Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;

    move-result-object v0

    .line 523
    invoke-interface {v0}, Ljava/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 522
    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api unordered()Ljava/util/stream/BaseStream;
    .registers 2

    .line 56
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->unordered()Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist unordered()Ljava/util/stream/DoubleStream;
    .registers 4

    .line 295
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_7

    .line 296
    return-object p0

    .line 297
    :cond_7
    new-instance v0, Ljava/util/stream/DoublePipeline$6;

    sget-object v1, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/DoublePipeline$6;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final greylist-max-o wrap(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljava/util/Spliterator;
    .registers 5
    .param p3, "isParallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 151
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
