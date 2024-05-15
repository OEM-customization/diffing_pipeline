.class final synthetic Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$4;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)D
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/stream/DoublePipeline;->lambda$-java_util_stream_DoublePipeline_13468(Ljava/lang/Double;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$4;

    invoke-direct {v0}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$4;-><init>()V

    sput-object v0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$4;->$INST$0:Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .registers 4

    .prologue
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$4;->$m$0(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method
