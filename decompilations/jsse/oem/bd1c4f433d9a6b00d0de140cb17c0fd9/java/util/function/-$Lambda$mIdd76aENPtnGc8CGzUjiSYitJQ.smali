.class final synthetic Ljava/util/function/-$Lambda$mIdd76aENPtnGc8CGzUjiSYitJQ;
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
    iget-object v0, p0, Ljava/util/function/-$Lambda$mIdd76aENPtnGc8CGzUjiSYitJQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Ljava/util/function/BinaryOperator;->lambda$-java_util_function_BinaryOperator_3246(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$mIdd76aENPtnGc8CGzUjiSYitJQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Ljava/util/function/BinaryOperator;->lambda$-java_util_function_BinaryOperator_2544(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/function/-$Lambda$mIdd76aENPtnGc8CGzUjiSYitJQ;->$id:B

    iput-object p2, p0, Ljava/util/function/-$Lambda$mIdd76aENPtnGc8CGzUjiSYitJQ;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    iget-byte v0, p0, Ljava/util/function/-$Lambda$mIdd76aENPtnGc8CGzUjiSYitJQ;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$mIdd76aENPtnGc8CGzUjiSYitJQ;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$mIdd76aENPtnGc8CGzUjiSYitJQ;->$m$1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
