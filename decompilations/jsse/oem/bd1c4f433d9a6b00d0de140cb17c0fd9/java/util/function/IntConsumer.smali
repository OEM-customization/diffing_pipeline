.class public interface abstract Ljava/util/function/IntConsumer;
.super Ljava/lang/Object;
.source "IntConsumer.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract accept(I)V
.end method

.method public andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .registers 3
    .param p1, "after"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/function/-$Lambda$FmHaHrzLqKsEWotEYE8x1Clp-KE;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$FmHaHrzLqKsEWotEYE8x1Clp-KE;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_IntConsumer_2686(Ljava/util/function/IntConsumer;I)V
    .registers 3
    .param p1, "after"    # Ljava/util/function/IntConsumer;
    .param p2, "t"    # I

    .prologue
    .line 65
    invoke-interface {p0, p2}, Ljava/util/function/IntConsumer;->accept(I)V

    invoke-interface {p1, p2}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method
