.class final synthetic Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Z
    .registers 2

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    invoke-virtual {v0}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->lambda$-java_util_stream_StreamSpliterators$DoubleWrappingSpliterator_16351()Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1()Z
    .registers 2

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;

    invoke-virtual {v0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->lambda$-java_util_stream_StreamSpliterators$IntWrappingSpliterator_12402()Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$2()Z
    .registers 2

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;

    invoke-virtual {v0}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->lambda$-java_util_stream_StreamSpliterators$LongWrappingSpliterator_14357()Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$3()Z
    .registers 2

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;

    invoke-virtual {v0}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->lambda$-java_util_stream_StreamSpliterators$WrappingSpliterator_10555()Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc;->$id:B

    iput-object p2, p0, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .registers 2

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc;->$id:B

    packed-switch v0, :pswitch_data_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc;->$m$0()Z

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0}, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc;->$m$1()Z

    move-result v0

    return v0

    :pswitch_15
    invoke-direct {p0}, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc;->$m$2()Z

    move-result v0

    return v0

    :pswitch_1a
    invoke-direct {p0}, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc;->$m$3()Z

    move-result v0

    return v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
        :pswitch_1a
    .end packed-switch
.end method
