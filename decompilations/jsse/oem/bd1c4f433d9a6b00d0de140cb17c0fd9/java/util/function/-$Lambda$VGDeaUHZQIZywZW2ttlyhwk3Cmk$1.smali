.class final synthetic Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(D)D
    .registers 6
    .param p1, "arg0"    # D

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/DoubleUnaryOperator;

    iget-object v1, p0, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/DoubleUnaryOperator;->lambda$-java_util_function_DoubleUnaryOperator_3397(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide v0

    return-wide v0
.end method

.method private final synthetic $m$1(D)D
    .registers 6
    .param p1, "arg0"    # D

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/DoubleUnaryOperator;

    iget-object v1, p0, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/DoubleUnaryOperator;->lambda$-java_util_function_DoubleUnaryOperator_2626(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;->$id:B

    iput-object p2, p0, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .registers 6

    .prologue
    iget-byte v0, p0, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;->$m$0(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_10
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;->$m$1(D)D

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
