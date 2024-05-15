.class public interface abstract Ljava/util/function/DoubleUnaryOperator;
.super Ljava/lang/Object;
.source "DoubleUnaryOperator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static identity()Ljava/util/function/DoubleUnaryOperator;
    .registers 1

    .prologue
    sget-object v0, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk;->$INST$0:Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk;

    .line 93
    return-object v0
.end method

.method public static synthetic lambda$-java_util_function_DoubleUnaryOperator_3682(D)D
    .registers 2
    .param p0, "t"    # D

    .prologue
    .line 93
    return-wide p0
.end method


# virtual methods
.method public andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;
    .registers 4
    .param p1, "after"    # Ljava/util/function/DoubleUnaryOperator;

    .prologue
    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract applyAsDouble(D)D
.end method

.method public compose(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;
    .registers 4
    .param p1, "before"    # Ljava/util/function/DoubleUnaryOperator;

    .prologue
    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_DoubleUnaryOperator_2626(Ljava/util/function/DoubleUnaryOperator;D)D
    .registers 6
    .param p1, "before"    # Ljava/util/function/DoubleUnaryOperator;
    .param p2, "v"    # D

    .prologue
    .line 66
    invoke-interface {p1, p2, p3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic lambda$-java_util_function_DoubleUnaryOperator_3397(Ljava/util/function/DoubleUnaryOperator;D)D
    .registers 6
    .param p1, "after"    # Ljava/util/function/DoubleUnaryOperator;
    .param p2, "t"    # D

    .prologue
    .line 84
    invoke-interface {p0, p2, p3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method
