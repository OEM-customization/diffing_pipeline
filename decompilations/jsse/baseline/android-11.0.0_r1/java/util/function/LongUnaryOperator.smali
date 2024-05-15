.class public interface abstract Ljava/util/function/LongUnaryOperator;
.super Ljava/lang/Object;
.source "LongUnaryOperator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static whitelist core-platform-api test-api identity()Ljava/util/function/LongUnaryOperator;
    .registers 1

    .line 93
    sget-object v0, Ljava/util/function/-$$Lambda$LongUnaryOperator$kI3lBaNH3h6ldTmGeiEUd61CYJI;->INSTANCE:Ljava/util/function/-$$Lambda$LongUnaryOperator$kI3lBaNH3h6ldTmGeiEUd61CYJI;

    return-object v0
.end method

.method public static synthetic blacklist lambda$andThen$1(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;J)J
    .registers 6
    .param p0, "_this"    # Ljava/util/function/LongUnaryOperator;
    .param p1, "after"    # Ljava/util/function/LongUnaryOperator;
    .param p2, "t"    # J

    .line 84
    invoke-interface {p0, p2, p3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic blacklist lambda$compose$0(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;J)J
    .registers 6
    .param p0, "_this"    # Ljava/util/function/LongUnaryOperator;
    .param p1, "before"    # Ljava/util/function/LongUnaryOperator;
    .param p2, "v"    # J

    .line 66
    invoke-interface {p1, p2, p3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic blacklist lambda$identity$2(J)J
    .registers 2
    .param p0, "t"    # J

    .line 93
    return-wide p0
.end method


# virtual methods
.method public whitelist core-platform-api test-api andThen(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .registers 3
    .param p1, "after"    # Ljava/util/function/LongUnaryOperator;

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/function/-$$Lambda$LongUnaryOperator$MxQtG8PPTeFzxiwgpkR3tXC-HLU;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$$Lambda$LongUnaryOperator$MxQtG8PPTeFzxiwgpkR3tXC-HLU;-><init>(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;)V

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api applyAsLong(J)J
.end method

.method public whitelist core-platform-api test-api compose(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .registers 3
    .param p1, "before"    # Ljava/util/function/LongUnaryOperator;

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/function/-$$Lambda$LongUnaryOperator$e52YMvir03pwSw7KvpRuqEbSDRg;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$$Lambda$LongUnaryOperator$e52YMvir03pwSw7KvpRuqEbSDRg;-><init>(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;)V

    return-object v0
.end method
