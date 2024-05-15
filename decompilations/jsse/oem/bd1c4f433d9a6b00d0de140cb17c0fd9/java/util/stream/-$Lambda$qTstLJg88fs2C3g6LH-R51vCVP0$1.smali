.class final synthetic Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToDoubleFunction;

    check-cast p1, [D

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_27066(Ljava/util/function/ToDoubleFunction;[DLjava/lang/Object;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToIntFunction;

    check-cast p1, [J

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_24417(Ljava/util/function/ToIntFunction;[JLjava/lang/Object;)V

    return-void
.end method

.method private final synthetic $m$2(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToLongFunction;

    check-cast p1, [J

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_25213(Ljava/util/function/ToLongFunction;[JLjava/lang/Object;)V

    return-void
.end method

.method private final synthetic $m$3(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BinaryOperator;

    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_28557(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final synthetic $m$4(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToDoubleFunction;

    check-cast p1, Ljava/util/DoubleSummaryStatistics;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_73255(Ljava/util/function/ToDoubleFunction;Ljava/util/DoubleSummaryStatistics;Ljava/lang/Object;)V

    return-void
.end method

.method private final synthetic $m$5(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToIntFunction;

    check-cast p1, Ljava/util/IntSummaryStatistics;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_71492(Ljava/util/function/ToIntFunction;Ljava/util/IntSummaryStatistics;Ljava/lang/Object;)V

    return-void
.end method

.method private final synthetic $m$6(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToLongFunction;

    check-cast p1, Ljava/util/LongSummaryStatistics;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_72369(Ljava/util/function/ToLongFunction;Ljava/util/LongSummaryStatistics;Ljava/lang/Object;)V

    return-void
.end method

.method private final synthetic $m$7(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToDoubleFunction;

    check-cast p1, [D

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_22066(Ljava/util/function/ToDoubleFunction;[DLjava/lang/Object;)V

    return-void
.end method

.method private final synthetic $m$8(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToIntFunction;

    check-cast p1, [I

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_19802(Ljava/util/function/ToIntFunction;[ILjava/lang/Object;)V

    return-void
.end method

.method private final synthetic $m$9(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToLongFunction;

    check-cast p1, [J

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_20523(Ljava/util/function/ToLongFunction;[JLjava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->$id:B

    iput-object p2, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->$id:B

    packed-switch v0, :pswitch_data_34

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->$m$1(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_13
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->$m$2(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_17
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->$m$3(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_1b
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->$m$4(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_1f
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->$m$5(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_23
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->$m$6(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_27
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->$m$7(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2b
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->$m$8(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2f
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;->$m$9(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
    .end packed-switch
.end method
