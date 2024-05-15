.class final synthetic Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleToLongFunction;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$2;


# direct methods
.method private final synthetic $m$0(D)J
    .registers 6
    .param p1, "arg0"    # D

    .prologue
    invoke-static {p1, p2}, Ljava/util/stream/DoublePipeline;->lambda$-java_util_stream_DoublePipeline_16646(D)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$2;

    invoke-direct {v0}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$2;-><init>()V

    sput-object v0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$2;->$INST$0:Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(D)J
    .registers 6

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$2;->$m$0(D)J

    move-result-wide v0

    return-wide v0
.end method
