.class final synthetic Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/lang/Object;
    .registers 2

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava/util/stream/AbstractPipeline;->lambda$-java_util_stream_AbstractPipeline_14339()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1()Ljava/lang/Object;
    .registers 2

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Spliterator;

    invoke-static {v0}, Ljava/util/stream/AbstractPipeline;->lambda$-java_util_stream_AbstractPipeline_20439(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$2()Ljava/lang/Object;
    .registers 2

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;->-$f0:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_28841(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$3()Ljava/lang/Object;
    .registers 2

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/Collector;

    invoke-static {v0}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_52675(Ljava/util/stream/Collector;)Ljava/util/stream/Collectors$Partition;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$4()Ljava/lang/Object;
    .registers 2

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BinaryOperator;

    invoke-static {v0}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors-mthref-12(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collectors$1OptionalBox;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;->$id:B

    iput-object p2, p0, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;->$id:B

    packed-switch v0, :pswitch_data_24

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;->$m$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-direct {p0}, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;->$m$1()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_15
    invoke-direct {p0}, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;->$m$2()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1a
    invoke-direct {p0}, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;->$m$3()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1f
    invoke-direct {p0}, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;->$m$4()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
        :pswitch_1a
        :pswitch_1f
    .end packed-switch
.end method
