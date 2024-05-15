.class public interface abstract Ljava/util/function/DoublePredicate;
.super Ljava/lang/Object;
.source "DoublePredicate.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist lambda$and$0(Ljava/util/function/DoublePredicate;Ljava/util/function/DoublePredicate;D)Z
    .registers 5
    .param p0, "_this"    # Ljava/util/function/DoublePredicate;
    .param p1, "other"    # Ljava/util/function/DoublePredicate;
    .param p2, "value"    # D

    .line 70
    invoke-interface {p0, p2, p3}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1, p2, p3}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static synthetic blacklist lambda$negate$1(Ljava/util/function/DoublePredicate;D)Z
    .registers 4
    .param p0, "_this"    # Ljava/util/function/DoublePredicate;
    .param p1, "value"    # D

    .line 81
    invoke-interface {p0, p1, p2}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic blacklist lambda$or$2(Ljava/util/function/DoublePredicate;Ljava/util/function/DoublePredicate;D)Z
    .registers 5
    .param p0, "_this"    # Ljava/util/function/DoublePredicate;
    .param p1, "other"    # Ljava/util/function/DoublePredicate;
    .param p2, "value"    # D

    .line 102
    invoke-interface {p0, p2, p3}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p1, p2, p3}, Ljava/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api and(Ljava/util/function/DoublePredicate;)Ljava/util/function/DoublePredicate;
    .registers 3
    .param p1, "other"    # Ljava/util/function/DoublePredicate;

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/util/function/-$$Lambda$DoublePredicate$M8n9M3rXNLuHyZ2e0F7hUxAtVx0;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$$Lambda$DoublePredicate$M8n9M3rXNLuHyZ2e0F7hUxAtVx0;-><init>(Ljava/util/function/DoublePredicate;Ljava/util/function/DoublePredicate;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api negate()Ljava/util/function/DoublePredicate;
    .registers 2

    .line 81
    new-instance v0, Ljava/util/function/-$$Lambda$DoublePredicate$01E7YsTWsjaQSI72YV852C1Uqco;

    invoke-direct {v0, p0}, Ljava/util/function/-$$Lambda$DoublePredicate$01E7YsTWsjaQSI72YV852C1Uqco;-><init>(Ljava/util/function/DoublePredicate;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api or(Ljava/util/function/DoublePredicate;)Ljava/util/function/DoublePredicate;
    .registers 3
    .param p1, "other"    # Ljava/util/function/DoublePredicate;

    .line 101
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/util/function/-$$Lambda$DoublePredicate$9YmJG7lS-NUbb1veFxbs9aIWObk;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$$Lambda$DoublePredicate$9YmJG7lS-NUbb1veFxbs9aIWObk;-><init>(Ljava/util/function/DoublePredicate;Ljava/util/function/DoublePredicate;)V

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api test(D)Z
.end method
