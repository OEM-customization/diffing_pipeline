.class final synthetic Ljava/util/-$Lambda$AdCi8d-cQd1TrFsbt1AeYkjxVJo$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)V
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$AdCi8d-cQd1TrFsbt1AeYkjxVJo$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0, p1}, Ljava/util/PrimitiveIterator$OfInt;->-java_util_PrimitiveIterator$OfInt-mthref-0(Ljava/util/function/Consumer;I)V

    return-void
.end method

.method private final synthetic $m$1(I)V
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$AdCi8d-cQd1TrFsbt1AeYkjxVJo$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0, p1}, Ljava/util/Spliterator$OfInt;->-java_util_Spliterator$OfInt-mthref-1(Ljava/util/function/Consumer;I)V

    return-void
.end method

.method private final synthetic $m$2(I)V
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$AdCi8d-cQd1TrFsbt1AeYkjxVJo$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0, p1}, Ljava/util/Spliterator$OfInt;->-java_util_Spliterator$OfInt-mthref-0(Ljava/util/function/Consumer;I)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/-$Lambda$AdCi8d-cQd1TrFsbt1AeYkjxVJo$1;->$id:B

    iput-object p2, p0, Ljava/util/-$Lambda$AdCi8d-cQd1TrFsbt1AeYkjxVJo$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 3

    .prologue
    iget-byte v0, p0, Ljava/util/-$Lambda$AdCi8d-cQd1TrFsbt1AeYkjxVJo$1;->$id:B

    packed-switch v0, :pswitch_data_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Ljava/util/-$Lambda$AdCi8d-cQd1TrFsbt1AeYkjxVJo$1;->$m$0(I)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1}, Ljava/util/-$Lambda$AdCi8d-cQd1TrFsbt1AeYkjxVJo$1;->$m$1(I)V

    return-void

    :pswitch_13
    invoke-direct {p0, p1}, Ljava/util/-$Lambda$AdCi8d-cQd1TrFsbt1AeYkjxVJo$1;->$m$2(I)V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method
