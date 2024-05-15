.class public interface abstract Ljava/util/function/BiPredicate;
.super Ljava/lang/Object;
.source "BiPredicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public and(Ljava/util/function/BiPredicate;)Ljava/util/function/BiPredicate;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate",
            "<-TT;-TU;>;)",
            "Ljava/util/function/BiPredicate",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<TT;TU;>;"
    .local p1, "other":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<-TT;-TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/util/function/-$Lambda$XT6V3FCwc0LyV9_0ISNecLl_A-U$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ljava/util/function/-$Lambda$XT6V3FCwc0LyV9_0ISNecLl_A-U$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_BiPredicate_2994(Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .prologue
    .line 73
    .local p0, "this":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<TT;TU;>;"
    .local p1, "other":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<-TT;-TU;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    .local p3, "u":Ljava/lang/Object;, "TU;"
    invoke-interface {p0, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public synthetic lambda$-java_util_function_BiPredicate_3305(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 84
    .local p0, "this":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "u":Ljava/lang/Object;, "TU;"
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$-java_util_function_BiPredicate_4269(Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .prologue
    .line 105
    .local p0, "this":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<TT;TU;>;"
    .local p1, "other":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<-TT;-TU;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    .local p3, "u":Ljava/lang/Object;, "TU;"
    invoke-interface {p0, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public negate()Ljava/util/function/BiPredicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiPredicate",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<TT;TU;>;"
    new-instance v0, Ljava/util/function/-$Lambda$XT6V3FCwc0LyV9_0ISNecLl_A-U;

    invoke-direct {v0, p0}, Ljava/util/function/-$Lambda$XT6V3FCwc0LyV9_0ISNecLl_A-U;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public or(Ljava/util/function/BiPredicate;)Ljava/util/function/BiPredicate;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate",
            "<-TT;-TU;>;)",
            "Ljava/util/function/BiPredicate",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<TT;TU;>;"
    .local p1, "other":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<-TT;-TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/util/function/-$Lambda$XT6V3FCwc0LyV9_0ISNecLl_A-U$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Ljava/util/function/-$Lambda$XT6V3FCwc0LyV9_0ISNecLl_A-U$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)Z"
        }
    .end annotation
.end method
