.class final Ljava/util/stream/SliceOps;
.super Ljava/lang/Object;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SliceOps$SliceTask;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 37
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000(JJ)J
    .registers 6
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 37
    invoke-static {p0, p1, p2, p3}, Ljava/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist access$100()Ljava/util/function/IntFunction;
    .registers 1

    .line 37
    invoke-static {}, Ljava/util/stream/SliceOps;->castingArray()Ljava/util/function/IntFunction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;
    .registers 7
    .param p0, "x0"    # Ljava/util/stream/StreamShape;
    .param p1, "x1"    # Ljava/util/Spliterator;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .line 37
    invoke-static/range {p0 .. p5}, Ljava/util/stream/SliceOps;->sliceSpliterator(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$300(JJJ)J
    .registers 8
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # J

    .line 37
    invoke-static/range {p0 .. p5}, Ljava/util/stream/SliceOps;->calcSize(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist calcSize(JJJ)J
    .registers 11
    .param p0, "size"    # J
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    .line 53
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/16 v1, -0x1

    if-ltz v0, :cond_12

    sub-long v3, p0, p2

    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_12
    return-wide v1
.end method

.method private static blacklist calcSliceFence(JJ)J
    .registers 11
    .param p0, "skip"    # J
    .param p2, "limit"    # J

    .line 65
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const-wide v3, 0x7fffffffffffffffL

    if-ltz v2, :cond_e

    add-long v5, p0, p2

    goto :goto_f

    :cond_e
    move-wide v5, v3

    .line 67
    .local v5, "sliceFence":J
    :goto_f
    cmp-long v0, v5, v0

    if-ltz v0, :cond_14

    move-wide v3, v5

    :cond_14
    return-wide v3
.end method

.method private static blacklist castingArray()Ljava/util/function/IntFunction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/IntFunction<",
            "[TT;>;"
        }
    .end annotation

    .line 101
    sget-object v0, Ljava/util/stream/-$$Lambda$SliceOps$T0eS2B9nWeCpmA7G2QlMnW3G2UA;->INSTANCE:Ljava/util/stream/-$$Lambda$SliceOps$T0eS2B9nWeCpmA7G2QlMnW3G2UA;

    return-object v0
.end method

.method private static blacklist flags(J)I
    .registers 5
    .param p0, "limit"    # J

    .line 561
    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    const-wide/16 v1, -0x1

    cmp-long v1, p0, v1

    if-eqz v1, :cond_b

    sget v1, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    or-int/2addr v0, v1

    return v0
.end method

.method static synthetic blacklist lambda$castingArray$0(I)[Ljava/lang/Object;
    .registers 2
    .param p0, "size"    # I

    .line 101
    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static blacklist makeDouble(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/DoubleStream;
    .registers 14
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Double;",
            "*>;JJ)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .line 459
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_16

    .line 462
    new-instance v0, Ljava/util/stream/SliceOps$4;

    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    .line 463
    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    move-result v4

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Ljava/util/stream/SliceOps$4;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V

    .line 462
    return-object v0

    .line 460
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makeInt(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/IntStream;
    .registers 14
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Integer;",
            "*>;JJ)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .line 235
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_16

    .line 238
    new-instance v0, Ljava/util/stream/SliceOps$2;

    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    .line 239
    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    move-result v4

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Ljava/util/stream/SliceOps$2;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V

    .line 238
    return-object v0

    .line 236
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makeLong(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/LongStream;
    .registers 14
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Long;",
            "*>;JJ)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .line 347
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_16

    .line 350
    new-instance v0, Ljava/util/stream/SliceOps$3;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    .line 351
    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    move-result v4

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Ljava/util/stream/SliceOps$3;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V

    .line 350
    return-object v0

    .line 348
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makeRef(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/Stream;
    .registers 14
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline<",
            "*TT;*>;JJ)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 116
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_16

    .line 119
    new-instance v0, Ljava/util/stream/SliceOps$1;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 120
    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    move-result v4

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Ljava/util/stream/SliceOps$1;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V

    .line 119
    return-object v0

    .line 117
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist sliceSpliterator(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;
    .registers 15
    .param p0, "shape"    # Ljava/util/stream/StreamShape;
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/StreamShape;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;JJ)",
            "Ljava/util/Spliterator<",
            "TP_IN;>;"
        }
    .end annotation

    .line 79
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    nop

    .line 80
    invoke-static {p2, p3, p4, p5}, Ljava/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide v6

    .line 81
    .local v6, "sliceFence":J
    sget-object v0, Ljava/util/stream/SliceOps$5;->$SwitchMap$java$util$stream$StreamShape:[I

    invoke-virtual {p0}, Ljava/util/stream/StreamShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_54

    const/4 v1, 0x2

    if-eq v0, v1, :cond_48

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    .line 92
    new-instance v8, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    move-object v1, p1

    check-cast v1, Ljava/util/Spliterator$OfDouble;

    move-object v0, v8

    move-wide v2, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;JJ)V

    return-object v8

    .line 95
    :cond_25
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

    .line 89
    :cond_3c
    new-instance v8, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    move-object v1, p1

    check-cast v1, Ljava/util/Spliterator$OfLong;

    move-object v0, v8

    move-wide v2, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;JJ)V

    return-object v8

    .line 86
    :cond_48
    new-instance v8, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;

    move-object v1, p1

    check-cast v1, Ljava/util/Spliterator$OfInt;

    move-object v0, v8

    move-wide v2, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;JJ)V

    return-object v8

    .line 83
    :cond_54
    new-instance v8, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    move-object v0, v8

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJ)V

    return-object v8
.end method
