.class public interface abstract Ljava/util/function/LongUnaryOperator;
.super Ljava/lang/Object;
.source "LongUnaryOperator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static identity()Ljava/util/function/LongUnaryOperator;
    .registers 1

    .prologue
    sget-object v0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw;->$INST$0:Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw;

    .line 93
    return-object v0
.end method

.method public static synthetic lambda$-java_util_function_LongUnaryOperator_3638(J)J
    .registers 2
    .param p0, "t"    # J

    .prologue
    .line 93
    return-wide p0
.end method


# virtual methods
.method public andThen(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .registers 4
    .param p1, "after"    # Ljava/util/function/LongUnaryOperator;

    .prologue
    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract applyAsLong(J)J
.end method

.method public compose(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .registers 4
    .param p1, "before"    # Ljava/util/function/LongUnaryOperator;

    .prologue
    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_LongUnaryOperator_2602(Ljava/util/function/LongUnaryOperator;J)J
    .registers 6
    .param p1, "before"    # Ljava/util/function/LongUnaryOperator;
    .param p2, "v"    # J

    .prologue
    .line 66
    invoke-interface {p1, p2, p3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic lambda$-java_util_function_LongUnaryOperator_3361(Ljava/util/function/LongUnaryOperator;J)J
    .registers 6
    .param p1, "after"    # Ljava/util/function/LongUnaryOperator;
    .param p2, "t"    # J

    .prologue
    .line 84
    invoke-interface {p0, p2, p3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method
