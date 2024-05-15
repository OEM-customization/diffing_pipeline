.class final synthetic Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BinaryOperator;

    check-cast p1, Ljava/util/Map;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_13304(Ljava/util/function/BinaryOperator;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BinaryOperator;

    check-cast p1, Ljava/util/stream/Collectors$Partition;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/util/stream/Collectors$Partition;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_52471(Ljava/util/function/BinaryOperator;Ljava/util/stream/Collectors$Partition;Ljava/util/stream/Collectors$Partition;)Ljava/util/stream/Collectors$Partition;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BinaryOperator;

    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_28614(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$3(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BinaryOperator;

    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_32951(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$4(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiConsumer;

    invoke-static {v0, p1, p2}, Ljava/util/stream/DoublePipeline;->lambda$-java_util_stream_DoublePipeline_17421(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$5(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiConsumer;

    invoke-static {v0, p1, p2}, Ljava/util/stream/IntPipeline;->lambda$-java_util_stream_IntPipeline_16667(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiConsumer;

    invoke-static {v0, p1, p2}, Ljava/util/stream/LongPipeline;->lambda$-java_util_stream_LongPipeline_15958(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->$id:B

    iput-object p2, p0, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->$id:B

    packed-switch v0, :pswitch_data_2e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->$m$1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_15
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->$m$2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1a
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->$m$3(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1f
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->$m$4(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_24
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->$m$5(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_29
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;->$m$6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
        :pswitch_1a
        :pswitch_1f
        :pswitch_24
        :pswitch_29
    .end packed-switch
.end method
