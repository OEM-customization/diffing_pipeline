.class final Ljava/util/concurrent/CompletableFuture$OrApply;
.super Ljava/util/concurrent/CompletableFuture$BiCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OrApply"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:TT;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$BiCompletion",
        "<TT;TU;TV;>;"
    }
.end annotation


# instance fields
.field fn:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;",
            "Ljava/util/function/Function",
            "<-TT;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1378
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$OrApply;, "Ljava/util/concurrent/CompletableFuture$OrApply<TT;TU;TV;>;"
    .local p2, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .local p3, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .local p5, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/CompletableFuture$BiCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    iput-object p5, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->fn:Ljava/util/function/Function;

    .line 1379
    return-void
.end method


# virtual methods
.method final tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .registers 8
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$OrApply;, "Ljava/util/concurrent/CompletableFuture$OrApply<TT;TU;TV;>;"
    const/4 v4, 0x0

    .line 1384
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->dep:Ljava/util/concurrent/CompletableFuture;

    .local v2, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-eqz v2, :cond_16

    .line 1385
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->src:Ljava/util/concurrent/CompletableFuture;

    .local v0, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->snd:Ljava/util/concurrent/CompletableFuture;

    .local v1, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    iget-object v5, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->fn:Ljava/util/function/Function;

    if-lez p1, :cond_17

    move-object v3, v4

    :goto_e
    invoke-virtual {v2, v0, v1, v5, v3}, Ljava/util/concurrent/CompletableFuture;->orApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$OrApply;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 1384
    if-eqz v3, :cond_19

    .line 1386
    .end local v0    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .end local v1    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_16
    return-object v4

    .restart local v0    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .restart local v1    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_17
    move-object v3, p0

    .line 1385
    goto :goto_e

    .line 1387
    :cond_19
    iput-object v4, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v4, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v4, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->snd:Ljava/util/concurrent/CompletableFuture;

    iput-object v4, p0, Ljava/util/concurrent/CompletableFuture$OrApply;->fn:Ljava/util/function/Function;

    .line 1388
    invoke-virtual {v2, v0, v1, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    return-object v3
.end method