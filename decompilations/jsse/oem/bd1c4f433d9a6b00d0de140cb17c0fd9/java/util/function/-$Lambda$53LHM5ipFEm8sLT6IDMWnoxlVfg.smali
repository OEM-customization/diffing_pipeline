.class final synthetic Ljava/util/function/-$Lambda$53LHM5ipFEm8sLT6IDMWnoxlVfg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(J)V
    .registers 6
    .param p1, "arg0"    # J

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$53LHM5ipFEm8sLT6IDMWnoxlVfg;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/LongConsumer;

    iget-object v1, p0, Ljava/util/function/-$Lambda$53LHM5ipFEm8sLT6IDMWnoxlVfg;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/LongConsumer;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/LongConsumer;->lambda$-java_util_function_LongConsumer_2696(Ljava/util/function/LongConsumer;J)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$Lambda$53LHM5ipFEm8sLT6IDMWnoxlVfg;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/function/-$Lambda$53LHM5ipFEm8sLT6IDMWnoxlVfg;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .registers 4

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$53LHM5ipFEm8sLT6IDMWnoxlVfg;->$m$0(J)V

    return-void
.end method
