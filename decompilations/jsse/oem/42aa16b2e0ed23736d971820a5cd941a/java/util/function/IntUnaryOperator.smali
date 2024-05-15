.class public interface abstract Ljava/util/function/IntUnaryOperator;
.super Ljava/lang/Object;
.source "IntUnaryOperator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static whitelist core-platform-api test-api identity()Ljava/util/function/IntUnaryOperator;
    .registers 1

    .line 93
    sget-object v0, Ljava/util/function/-$$Lambda$IntUnaryOperator$DKxG0-oyUAYjk17nXTQ5x-EXFgU;->INSTANCE:Ljava/util/function/-$$Lambda$IntUnaryOperator$DKxG0-oyUAYjk17nXTQ5x-EXFgU;

    return-object v0
.end method

.method public static synthetic blacklist lambda$andThen$1(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;I)I
    .registers 4
    .param p0, "_this"    # Ljava/util/function/IntUnaryOperator;
    .param p1, "after"    # Ljava/util/function/IntUnaryOperator;
    .param p2, "t"    # I

    .line 84
    invoke-interface {p0, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    return v0
.end method

.method public static synthetic blacklist lambda$compose$0(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;I)I
    .registers 4
    .param p0, "_this"    # Ljava/util/function/IntUnaryOperator;
    .param p1, "before"    # Ljava/util/function/IntUnaryOperator;
    .param p2, "v"    # I

    .line 66
    invoke-interface {p1, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    return v0
.end method

.method public static synthetic blacklist lambda$identity$2(I)I
    .registers 1
    .param p0, "t"    # I

    .line 93
    return p0
.end method


# virtual methods
.method public whitelist core-platform-api test-api andThen(Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .registers 3
    .param p1, "after"    # Ljava/util/function/IntUnaryOperator;

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/function/-$$Lambda$IntUnaryOperator$F5l8VUrgGacAzg6VKzynJCfDBx4;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$$Lambda$IntUnaryOperator$F5l8VUrgGacAzg6VKzynJCfDBx4;-><init>(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)V

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api applyAsInt(I)I
.end method

.method public whitelist core-platform-api test-api compose(Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .registers 3
    .param p1, "before"    # Ljava/util/function/IntUnaryOperator;

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/function/-$$Lambda$IntUnaryOperator$HBwqtJWwVkNFC818pCzqJ5KBLm0;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$$Lambda$IntUnaryOperator$HBwqtJWwVkNFC818pCzqJ5KBLm0;-><init>(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)V

    return-object v0
.end method
