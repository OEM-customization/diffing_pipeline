.class final synthetic Ljava/util/concurrent/-$Lambda$xR9BLpu6SifNikvFgr4lEiECBsk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/concurrent/-$Lambda$xR9BLpu6SifNikvFgr4lEiECBsk;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Ljava/util/concurrent/-$Lambda$xR9BLpu6SifNikvFgr4lEiECBsk;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiFunction;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->lambda$-java_util_concurrent_ConcurrentMap_11766(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/-$Lambda$xR9BLpu6SifNikvFgr4lEiECBsk;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/concurrent/-$Lambda$xR9BLpu6SifNikvFgr4lEiECBsk;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/-$Lambda$xR9BLpu6SifNikvFgr4lEiECBsk;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
