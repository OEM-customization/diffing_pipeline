.class final synthetic Ljava/util/stream/-$Lambda$zwpF4y4y1FQ3Bs1BvYfnaXR_rdE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(D)V
    .registers 4
    .param p1, "arg0"    # D

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$zwpF4y4y1FQ3Bs1BvYfnaXR_rdE;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/DoublePipeline$5$1;

    invoke-virtual {v0, p1, p2}, Ljava/util/stream/DoublePipeline$5$1;->lambda$-java_util_stream_DoublePipeline$5$1_10563(D)V

    return-void
.end method

.method private final synthetic $m$1(D)V
    .registers 4
    .param p1, "arg0"    # D

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$zwpF4y4y1FQ3Bs1BvYfnaXR_rdE;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/Sink;

    invoke-static {v0, p1, p2}, Ljava/util/stream/DoublePipeline;->-java_util_stream_DoublePipeline-mthref-0(Ljava/util/stream/Sink;D)V

    return-void
.end method

.method private final synthetic $m$2(D)V
    .registers 4
    .param p1, "arg0"    # D

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$zwpF4y4y1FQ3Bs1BvYfnaXR_rdE;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/Sink;

    invoke-static {v0, p1, p2}, Ljava/util/stream/ReferencePipeline$9$1;->-java_util_stream_ReferencePipeline$9$1-mthref-0(Ljava/util/stream/Sink;D)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$zwpF4y4y1FQ3Bs1BvYfnaXR_rdE;->$id:B

    iput-object p2, p0, Ljava/util/stream/-$Lambda$zwpF4y4y1FQ3Bs1BvYfnaXR_rdE;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .registers 4

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$zwpF4y4y1FQ3Bs1BvYfnaXR_rdE;->$id:B

    packed-switch v0, :pswitch_data_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$zwpF4y4y1FQ3Bs1BvYfnaXR_rdE;->$m$0(D)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$zwpF4y4y1FQ3Bs1BvYfnaXR_rdE;->$m$1(D)V

    return-void

    :pswitch_13
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$zwpF4y4y1FQ3Bs1BvYfnaXR_rdE;->$m$2(D)V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method
