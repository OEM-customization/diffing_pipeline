.class final synthetic Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleBinaryOperator;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU;

.field public static final synthetic $INST$1:Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(DD)D
    .registers 8
    .param p1, "arg0"    # D
    .param p3, "arg1"    # D

    .prologue
    invoke-static {p1, p2, p3, p4}, Ljava/util/stream/DoublePipeline;->-java_util_stream_DoublePipeline-mthref-3(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private final synthetic $m$1(DD)D
    .registers 8
    .param p1, "arg0"    # D
    .param p3, "arg1"    # D

    .prologue
    invoke-static {p1, p2, p3, p4}, Ljava/util/stream/DoublePipeline;->-java_util_stream_DoublePipeline-mthref-2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU;->$INST$0:Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU;

    new-instance v0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU;->$INST$1:Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU;->$id:B

    return-void
.end method


# virtual methods
.method public final applyAsDouble(DD)D
    .registers 8

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU;->$m$0(DD)D

    move-result-wide v0

    return-wide v0

    :pswitch_10
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU;->$m$1(DD)D

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
