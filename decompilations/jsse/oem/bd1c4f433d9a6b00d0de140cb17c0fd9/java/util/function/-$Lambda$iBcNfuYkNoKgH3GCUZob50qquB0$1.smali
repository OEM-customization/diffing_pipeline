.class final synthetic Ljava/util/function/-$Lambda$iBcNfuYkNoKgH3GCUZob50qquB0$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongPredicate;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(J)Z
    .registers 6
    .param p1, "arg0"    # J

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$iBcNfuYkNoKgH3GCUZob50qquB0$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/LongPredicate;

    iget-object v1, p0, Ljava/util/function/-$Lambda$iBcNfuYkNoKgH3GCUZob50qquB0$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/LongPredicate;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/LongPredicate;->lambda$-java_util_function_LongPredicate_2838(Ljava/util/function/LongPredicate;J)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(J)Z
    .registers 6
    .param p1, "arg0"    # J

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$iBcNfuYkNoKgH3GCUZob50qquB0$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/LongPredicate;

    iget-object v1, p0, Ljava/util/function/-$Lambda$iBcNfuYkNoKgH3GCUZob50qquB0$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/LongPredicate;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/LongPredicate;->lambda$-java_util_function_LongPredicate_4082(Ljava/util/function/LongPredicate;J)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/function/-$Lambda$iBcNfuYkNoKgH3GCUZob50qquB0$1;->$id:B

    iput-object p2, p0, Ljava/util/function/-$Lambda$iBcNfuYkNoKgH3GCUZob50qquB0$1;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Ljava/util/function/-$Lambda$iBcNfuYkNoKgH3GCUZob50qquB0$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(J)Z
    .registers 4

    .prologue
    iget-byte v0, p0, Ljava/util/function/-$Lambda$iBcNfuYkNoKgH3GCUZob50qquB0$1;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$iBcNfuYkNoKgH3GCUZob50qquB0$1;->$m$0(J)Z

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$iBcNfuYkNoKgH3GCUZob50qquB0$1;->$m$1(J)Z

    move-result v0

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
