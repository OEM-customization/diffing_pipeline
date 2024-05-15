.class final synthetic Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(J)V
    .registers 4
    .param p1, "arg0"    # J

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/LongPipeline$6$1;

    invoke-virtual {v0, p1, p2}, Ljava/util/stream/LongPipeline$6$1;->lambda$-java_util_stream_LongPipeline$6$1_11125(J)V

    return-void
.end method

.method private final synthetic $m$1(J)V
    .registers 4
    .param p1, "arg0"    # J

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/Sink;

    invoke-static {v0, p1, p2}, Ljava/util/stream/LongPipeline;->-java_util_stream_LongPipeline-mthref-0(Ljava/util/stream/Sink;J)V

    return-void
.end method

.method private final synthetic $m$2(J)V
    .registers 4
    .param p1, "arg0"    # J

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/Sink;

    invoke-static {v0, p1, p2}, Ljava/util/stream/ReferencePipeline$10$1;->-java_util_stream_ReferencePipeline$10$1-mthref-0(Ljava/util/stream/Sink;J)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk$1;->$id:B

    iput-object p2, p0, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .registers 4

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk$1;->$id:B

    packed-switch v0, :pswitch_data_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk$1;->$m$0(J)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk$1;->$m$1(J)V

    return-void

    :pswitch_13
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk$1;->$m$2(J)V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method
