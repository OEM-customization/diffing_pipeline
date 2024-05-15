.class final synthetic Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleFunction;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$1;


# direct methods
.method private final synthetic $m$0(D)Ljava/lang/Object;
    .registers 4
    .param p1, "arg0"    # D

    .prologue
    invoke-static {p1, p2}, Ljava/util/stream/DoublePipeline;->-java_util_stream_DoublePipeline-mthref-1(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$1;

    invoke-direct {v0}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$1;-><init>()V

    sput-object v0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$1;->$INST$0:Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(D)Ljava/lang/Object;
    .registers 4

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$1;->$m$0(D)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
