.class final synthetic Ljava/util/stream/-$Lambda$mQqUMfzvvH-Pb34PmbAP692jlD4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$mQqUMfzvvH-Pb34PmbAP692jlD4;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Ljava/util/stream/-$Lambda$mQqUMfzvvH-Pb34PmbAP692jlD4;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1, p1}, Ljava/util/stream/DistinctOps$1;->lambda$-java_util_stream_DistinctOps$1_3835(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$mQqUMfzvvH-Pb34PmbAP692jlD4;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiConsumer;

    iget-object v1, p0, Ljava/util/stream/-$Lambda$mQqUMfzvvH-Pb34PmbAP692jlD4;->-$f1:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Ljava/util/stream/ReferencePipeline;->lambda$-java_util_stream_ReferencePipeline_19478(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$mQqUMfzvvH-Pb34PmbAP692jlD4;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;

    iget-object v1, p0, Ljava/util/stream/-$Lambda$mQqUMfzvvH-Pb34PmbAP692jlD4;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, p1}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->lambda$-java_util_stream_StreamSpliterators$DistinctSpliterator_46149(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$mQqUMfzvvH-Pb34PmbAP692jlD4;->$id:B

    iput-object p2, p0, Ljava/util/stream/-$Lambda$mQqUMfzvvH-Pb34PmbAP692jlD4;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Ljava/util/stream/-$Lambda$mQqUMfzvvH-Pb34PmbAP692jlD4;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$mQqUMfzvvH-Pb34PmbAP692jlD4;->$id:B

    packed-switch v0, :pswitch_data_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$mQqUMfzvvH-Pb34PmbAP692jlD4;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$mQqUMfzvvH-Pb34PmbAP692jlD4;->$m$1(Ljava/lang/Object;)V

    return-void

    :pswitch_13
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$mQqUMfzvvH-Pb34PmbAP692jlD4;->$m$2(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method
