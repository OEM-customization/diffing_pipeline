.class public interface abstract Ljava/util/function/Consumer;
.super Ljava/lang/Object;
.source "Consumer.java"


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


# virtual methods
.method public abstract accept(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/function/Consumer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    .local p1, "after":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/function/-$Lambda$1p5Vyyh8oouwyHrSoM2AUzgQc18;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$Lambda$1p5Vyyh8oouwyHrSoM2AUzgQc18;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic lambda$-java_util_function_Consumer_2620(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 65
    .local p0, "this":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    .local p1, "after":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
