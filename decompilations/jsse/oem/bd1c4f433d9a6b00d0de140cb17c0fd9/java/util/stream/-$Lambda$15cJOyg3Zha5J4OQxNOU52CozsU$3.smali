.class final synthetic Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ObjDoubleConsumer;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;

.field public static final synthetic $INST$1:Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;

.field public static final synthetic $INST$2:Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;D)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # D

    .prologue
    check-cast p1, [D

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1, p2, p3}, Ljava/util/stream/DoublePipeline;->lambda$-java_util_stream_DoublePipeline_15880([DD)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;D)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # D

    .prologue
    check-cast p1, [D

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1, p2, p3}, Ljava/util/stream/DoublePipeline;->lambda$-java_util_stream_DoublePipeline_14331([DD)V

    return-void
.end method

.method private final synthetic $m$2(Ljava/lang/Object;D)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # D

    .prologue
    check-cast p1, Ljava/util/DoubleSummaryStatistics;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1, p2, p3}, Ljava/util/stream/DoublePipeline;->-java_util_stream_DoublePipeline-mthref-5(Ljava/util/DoubleSummaryStatistics;D)V

    return-void
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;->$INST$0:Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;

    new-instance v0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;->$INST$1:Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;

    new-instance v0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;->$INST$2:Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;->$id:B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;D)V
    .registers 6

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;->$id:B

    packed-switch v0, :pswitch_data_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;->$m$0(Ljava/lang/Object;D)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;->$m$1(Ljava/lang/Object;D)V

    return-void

    :pswitch_13
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$3;->$m$2(Ljava/lang/Object;D)V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method
