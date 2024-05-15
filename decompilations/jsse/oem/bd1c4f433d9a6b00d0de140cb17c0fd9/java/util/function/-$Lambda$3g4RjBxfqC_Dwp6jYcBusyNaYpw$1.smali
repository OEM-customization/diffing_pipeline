.class final synthetic Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongUnaryOperator;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(J)J
    .registers 6
    .param p1, "arg0"    # J

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/LongUnaryOperator;

    iget-object v1, p0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/LongUnaryOperator;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/LongUnaryOperator;->lambda$-java_util_function_LongUnaryOperator_3361(Ljava/util/function/LongUnaryOperator;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final synthetic $m$1(J)J
    .registers 6
    .param p1, "arg0"    # J

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/LongUnaryOperator;

    iget-object v1, p0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/LongUnaryOperator;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/LongUnaryOperator;->lambda$-java_util_function_LongUnaryOperator_2602(Ljava/util/function/LongUnaryOperator;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;->$id:B

    iput-object p2, p0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final applyAsLong(J)J
    .registers 6

    .prologue
    iget-byte v0, p0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;->$m$0(J)J

    move-result-wide v0

    return-wide v0

    :pswitch_10
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;->$m$1(J)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
