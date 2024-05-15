.class public interface abstract Ljava/util/function/Function;
.super Ljava/lang/Object;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static identity()Ljava/util/function/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Function",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    sget-object v0, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4;->$INST$0:Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4;

    .line 98
    return-object v0
.end method

.method public static synthetic lambda$-java_util_function_Function_3851(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    .prologue
    .line 98
    .local p0, "t":Ljava/lang/Object;, "TT;"
    return-object p0
.end method


# virtual methods
.method public andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TR;+TV;>;)",
            "Ljava/util/function/Function",
            "<TT;TV;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TR;>;"
    .local p1, "after":Ljava/util/function/Function;, "Ljava/util/function/Function<-TR;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation
.end method

.method public compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TV;+TT;>;)",
            "Ljava/util/function/Function",
            "<TV;TR;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TR;>;"
    .local p1, "before":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_Function_2660(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 68
    .local p0, "this":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TR;>;"
    .local p1, "before":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TT;>;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_Function_3525(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 88
    .local p0, "this":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TR;>;"
    .local p1, "after":Ljava/util/function/Function;, "Ljava/util/function/Function<-TR;+TV;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
