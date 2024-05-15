.class public interface abstract Ljava/util/function/LongConsumer;
.super Ljava/lang/Object;
.source "LongConsumer.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract accept(J)V
.end method

.method public andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .registers 3
    .param p1, "after"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/function/-$Lambda$53LHM5ipFEm8sLT6IDMWnoxlVfg;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$53LHM5ipFEm8sLT6IDMWnoxlVfg;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_LongConsumer_2696(Ljava/util/function/LongConsumer;J)V
    .registers 4
    .param p1, "after"    # Ljava/util/function/LongConsumer;
    .param p2, "t"    # J

    .prologue
    .line 65
    invoke-interface {p0, p2, p3}, Ljava/util/function/LongConsumer;->accept(J)V

    invoke-interface {p1, p2, p3}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method
