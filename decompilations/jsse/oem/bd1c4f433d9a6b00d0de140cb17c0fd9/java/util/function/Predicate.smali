.class public interface abstract Ljava/util/function/Predicate;
.super Ljava/lang/Object;
.source "Predicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic -java_util_function_Predicate-mthref-0(Ljava/lang/Object;)Z
    .registers 2

    .prologue
    .line 116
    invoke-static {p0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEqual(Ljava/lang/Object;)Ljava/util/function/Predicate;
    .registers 3
    .param p0, "targetRef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/function/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    if-nez p0, :cond_5

    sget-object v0, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE;->$INST$0:Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE;

    :goto_4
    return-object v0

    .line 117
    :cond_5
    new-instance v0, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$1;-><init>(BLjava/lang/Object;)V

    goto :goto_4
.end method

.method public static synthetic lambda$-java_util_function_Predicate_4628(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "targetRef"    # Ljava/lang/Object;

    .prologue
    .line 117
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TT;>;)",
            "Ljava/util/function/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .local p1, "other":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$2;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_Predicate_2759(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 69
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .local p1, "other":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public synthetic lambda$-java_util_function_Predicate_3052(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 80
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$-java_util_function_Predicate_3988(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 101
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .local p1, "other":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public negate()Ljava/util/function/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    new-instance v0, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$1;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method

.method public or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TT;>;)",
            "Ljava/util/function/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .local p1, "other":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$2;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$2;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
