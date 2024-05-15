.class public interface abstract Ljava/util/function/DoubleUnaryOperator;
.super Ljava/lang/Object;
.source "DoubleUnaryOperator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static whitelist core-platform-api test-api identity()Ljava/util/function/DoubleUnaryOperator;
    .registers 1

    .line 93
    sget-object v0, Ljava/util/function/-$$Lambda$DoubleUnaryOperator$i7wtM_8Ous-CB32HCfZ4usZ4zaQ;->INSTANCE:Ljava/util/function/-$$Lambda$DoubleUnaryOperator$i7wtM_8Ous-CB32HCfZ4usZ4zaQ;

    return-object v0
.end method

.method public static synthetic blacklist lambda$andThen$1(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;D)D
    .registers 6
    .param p0, "_this"    # Ljava/util/function/DoubleUnaryOperator;
    .param p1, "after"    # Ljava/util/function/DoubleUnaryOperator;
    .param p2, "t"    # D

    .line 84
    invoke-interface {p0, p2, p3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic blacklist lambda$compose$0(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;D)D
    .registers 6
    .param p0, "_this"    # Ljava/util/function/DoubleUnaryOperator;
    .param p1, "before"    # Ljava/util/function/DoubleUnaryOperator;
    .param p2, "v"    # D

    .line 66
    invoke-interface {p1, p2, p3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic blacklist lambda$identity$2(D)D
    .registers 2
    .param p0, "t"    # D

    .line 93
    return-wide p0
.end method


# virtual methods
.method public whitelist core-platform-api test-api andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;
    .registers 3
    .param p1, "after"    # Ljava/util/function/DoubleUnaryOperator;

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/function/-$$Lambda$DoubleUnaryOperator$EzzlhUGRoL66wVBCG-_euZgC-CA;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$$Lambda$DoubleUnaryOperator$EzzlhUGRoL66wVBCG-_euZgC-CA;-><init>(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api applyAsDouble(D)D
.end method

.method public whitelist core-platform-api test-api compose(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;
    .registers 3
    .param p1, "before"    # Ljava/util/function/DoubleUnaryOperator;

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/function/-$$Lambda$DoubleUnaryOperator$TV17Df571GWp0dWUym3y8OK6ZbM;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$$Lambda$DoubleUnaryOperator$TV17Df571GWp0dWUym3y8OK6ZbM;-><init>(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method
