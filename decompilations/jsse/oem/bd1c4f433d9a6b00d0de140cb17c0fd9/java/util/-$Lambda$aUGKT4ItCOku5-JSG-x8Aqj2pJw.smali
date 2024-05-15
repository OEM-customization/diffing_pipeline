.class final synthetic Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)V
    .registers 4
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;->-$f0:Ljava/lang/Object;

    check-cast v0, [D

    iget-object v1, p0, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/IntToDoubleFunction;

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->lambda$-java_util_Arrays_214803([DLjava/util/function/IntToDoubleFunction;I)V

    return-void
.end method

.method private final synthetic $m$1(I)V
    .registers 4
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;->-$f0:Ljava/lang/Object;

    check-cast v0, [I

    iget-object v1, p0, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/IntUnaryOperator;

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->lambda$-java_util_Arrays_211644([ILjava/util/function/IntUnaryOperator;I)V

    return-void
.end method

.method private final synthetic $m$2(I)V
    .registers 4
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;->-$f0:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p0, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/IntToLongFunction;

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->lambda$-java_util_Arrays_213218([JLjava/util/function/IntToLongFunction;I)V

    return-void
.end method

.method private final synthetic $m$3(I)V
    .registers 4
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;->-$f0:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/IntFunction;

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->lambda$-java_util_Arrays_210087([Ljava/lang/Object;Ljava/util/function/IntFunction;I)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;->$id:B

    iput-object p2, p0, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 3

    .prologue
    iget-byte v0, p0, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;->$id:B

    packed-switch v0, :pswitch_data_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;->$m$0(I)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1}, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;->$m$1(I)V

    return-void

    :pswitch_13
    invoke-direct {p0, p1}, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;->$m$2(I)V

    return-void

    :pswitch_17
    invoke-direct {p0, p1}, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;->$m$3(I)V

    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method
