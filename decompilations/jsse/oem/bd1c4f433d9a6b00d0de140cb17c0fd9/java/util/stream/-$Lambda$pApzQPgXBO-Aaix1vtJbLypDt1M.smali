.class final synthetic Ljava/util/stream/-$Lambda$pApzQPgXBO-Aaix1vtJbLypDt1M;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .registers 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$pApzQPgXBO-Aaix1vtJbLypDt1M;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/Sink;

    invoke-static {v0, p1}, Ljava/util/stream/SortedOps$RefSortingSink;->-java_util_stream_SortedOps$RefSortingSink-mthref-0(Ljava/util/stream/Sink;Ljava/lang/Object;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .registers 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$pApzQPgXBO-Aaix1vtJbLypDt1M;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/stream/SpinedBuffer;->-java_util_stream_SpinedBuffer-mthref-0(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$pApzQPgXBO-Aaix1vtJbLypDt1M;->$id:B

    iput-object p2, p0, Ljava/util/stream/-$Lambda$pApzQPgXBO-Aaix1vtJbLypDt1M;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$pApzQPgXBO-Aaix1vtJbLypDt1M;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$pApzQPgXBO-Aaix1vtJbLypDt1M;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$pApzQPgXBO-Aaix1vtJbLypDt1M;->$m$1(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method