.class final synthetic Ljava/util/stream/-$Lambda$aRB2Ve9yTNaLYumrLKKo_GKLlhc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongFunction;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(J)Ljava/lang/Object;
    .registers 4
    .param p1, "arg0"    # J

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$aRB2Ve9yTNaLYumrLKKo_GKLlhc;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntFunction;

    invoke-static {v0, p1, p2}, Ljava/util/stream/Nodes$CollectorTask$OfRef;->lambda$-java_util_stream_Nodes$CollectorTask$OfRef_78250(Ljava/util/function/IntFunction;J)Ljava/util/stream/Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$aRB2Ve9yTNaLYumrLKKo_GKLlhc;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(J)Ljava/lang/Object;
    .registers 4

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$aRB2Ve9yTNaLYumrLKKo_GKLlhc;->$m$0(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
