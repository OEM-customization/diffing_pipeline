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
.field static final synthetic -assertionsDisabled:Z

.field private static final synthetic -java-util-stream-StreamShapeSwitchesValues:[I


# direct methods
.method private static synthetic -getjava-util-stream-StreamShapeSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/util/stream/SliceOps;->-java-util-stream-StreamShapeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/util/stream/SliceOps;->-java-util-stream-StreamShapeSwitchesValues:[I

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
    sput-object v0, Ljava/util/stream/SliceOps;->-java-util-stream-StreamShapeSwitchesValues:[I

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

.method static synthetic -wrap0(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;
    .registers 8
    .param p0, "shape"    # Ljava/util/stream/StreamShape;
    .param p1, "s"    # Ljava/util/Spliterator;
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    .prologue
    invoke-static/range {p0 .. p5}, Ljava/util/stream/SliceOps;->sliceSpliterator(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Ljava/util/function/IntFunction;
    .registers 1

    invoke-static {}, Ljava/util/stream/SliceOps;->castingArray()Ljava/util/function/IntFunction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(JJJ)J
    .registers 8
    .param p0, "size"    # J
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    .prologue
    invoke-static/range {p0 .. p5}, Ljava/util/stream/SliceOps;->calcSize(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap3(JJ)J
    .registers 6
    .param p0, "skip"    # J
    .param p2, "limit"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Ljava/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/stream/SliceOps;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/stream/SliceOps;->-assertionsDisabled:Z

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcSize(JJJ)J
    .registers 10
    .param p0, "size"    # J
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    .prologue
    const-wide/16 v0, -0x1

    .line 53
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-ltz v2, :cond_12

    sub-long v2, p0, p2

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_12
    return-wide v0
.end method

.method private static calcSliceFence(JJ)J
    .registers 10
    .param p0, "skip"    # J
    .param p2, "limit"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 65
    cmp-long v2, p2, v4

    if-ltz v2, :cond_d

    add-long v0, p0, p2

    .line 67
    .local v0, "sliceFence":J
    :goto_8
    cmp-long v2, v0, v4

    if-ltz v2, :cond_13

    .end local v0    # "sliceFence":J
    :goto_c
    return-wide v0

    .line 65
    :cond_d
    const-wide v0, 0x7fffffffffffffffL

    .restart local v0    # "sliceFence":J
    goto :goto_8

    .line 67
    :cond_13
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_c
.end method

.method private static castingArray()Ljava/util/function/IntFunction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/IntFunction",
            "<[TT;>;"
        }
    .end annotation

    .prologue
    sget-object v0, Ljava/util/stream/-$Lambda$Lw2Alu2LEcypd4PXrfG0QIAAKKo;->$INST$10:Ljava/util/stream/-$Lambda$Lw2Alu2LEcypd4PXrfG0QIAAKKo;

    .line 101
    return-object v0
.end method

.method private static flags(J)I
    .registers 6
    .param p0, "limit"    # J

    .prologue
    .line 549
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    const-wide/16 v2, -0x1

    cmp-long v0, p0, v2

    if-eqz v0, :cond_c

    sget v0, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    :goto_a
    or-int/2addr v0, v1

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic lambda$-java_util_stream_SliceOps_4285(I)[Ljava/lang/Object;
    .registers 2
    .param p0, "size"    # I

    .prologue
    .line 101
    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static makeDouble(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/DoubleStream;
    .registers 14
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*",
            "Ljava/lang/Double;",
            "*>;JJ)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_20

    .line 451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_20
    new-instance v0, Ljava/util/stream/SliceOps$4;

    sget-object v2, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    .line 454
    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    move-result v3

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 453
    invoke-direct/range {v0 .. v7}, Ljava/util/stream/SliceOps$4;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V

    return-object v0
.end method

.method public static makeInt(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/IntStream;
    .registers 14
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*",
            "Ljava/lang/Integer;",
            "*>;JJ)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_20

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_20
    new-instance v0, Ljava/util/stream/SliceOps$2;

    sget-object v2, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    .line 236
    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    move-result v3

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 235
    invoke-direct/range {v0 .. v7}, Ljava/util/stream/SliceOps$2;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V

    return-object v0
.end method

.method public static makeLong(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/LongStream;
    .registers 14
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*",
            "Ljava/lang/Long;",
            "*>;JJ)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_20

    .line 342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_20
    new-instance v0, Ljava/util/stream/SliceOps$3;

    sget-object v2, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    .line 345
    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    move-result v3

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 344
    invoke-direct/range {v0 .. v7}, Ljava/util/stream/SliceOps$3;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V

    return-object v0
.end method

.method public static makeRef(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/Stream;
    .registers 14
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TT;*>;JJ)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_20

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_20
    new-instance v0, Ljava/util/stream/SliceOps$1;

    sget-object v2, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 120
    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    move-result v3

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 119
    invoke-direct/range {v0 .. v7}, Ljava/util/stream/SliceOps$1;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V

    return-object v0
.end method

.method private static sliceSpliterator(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;
    .registers 12
    .param p0, "shape"    # Ljava/util/stream/StreamShape;
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/StreamShape;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;JJ)",
            "Ljava/util/Spliterator",
            "<TP_IN;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    sget-boolean v0, Ljava/util/stream/SliceOps;->-assertionsDisabled:Z

    if-nez v0, :cond_12

    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 80
    :cond_12
    invoke-static {p2, p3, p4, p5}, Ljava/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide v4

    .line 81
    .local v4, "sliceFence":J
    invoke-static {}, Ljava/util/stream/SliceOps;->-getjava-util-stream-StreamShapeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/stream/StreamShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_64

    .line 95
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

    .line 83
    :pswitch_3d
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJ)V

    return-object v0

    .line 86
    :pswitch_45
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;

    move-object v1, p1

    .line 87
    check-cast v1, Ljava/util/Spliterator$OfInt;

    move-wide v2, p2

    .line 86
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;JJ)V

    return-object v0

    .line 89
    :pswitch_4f
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    move-object v1, p1

    .line 90
    check-cast v1, Ljava/util/Spliterator$OfLong;

    move-wide v2, p2

    .line 89
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;JJ)V

    return-object v0

    .line 92
    :pswitch_59
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    move-object v1, p1

    .line 93
    check-cast v1, Ljava/util/Spliterator$OfDouble;

    move-wide v2, p2

    .line 92
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;JJ)V

    return-object v0

    .line 81
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_59
        :pswitch_45
        :pswitch_4f
        :pswitch_3d
    .end packed-switch
.end method