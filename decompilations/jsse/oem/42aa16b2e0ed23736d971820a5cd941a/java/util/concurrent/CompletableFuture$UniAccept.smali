.class final Ljava/util/concurrent/CompletableFuture$UniAccept;
.super Ljava/util/concurrent/CompletableFuture$UniCompletion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UniAccept"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$UniCompletion<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field greylist-max-o fn:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 637
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniAccept;, "Ljava/util/concurrent/CompletableFuture$UniAccept<TT;>;"
    .local p2, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .local p3, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p4, "fn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$UniCompletion;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    iput-object p4, p0, Ljava/util/concurrent/CompletableFuture$UniAccept;->fn:Ljava/util/function/Consumer;

    .line 638
    return-void
.end method


# virtual methods
.method final greylist-max-o tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .registers 8
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 641
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniAccept;, "Ljava/util/concurrent/CompletableFuture$UniAccept<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniAccept;->dep:Ljava/util/concurrent/CompletableFuture;

    move-object v1, v0

    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_22

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniAccept;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v3, v0

    .local v3, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture$UniAccept;->fn:Ljava/util/function/Consumer;

    .line 642
    if-lez p1, :cond_f

    move-object v5, v2

    goto :goto_10

    :cond_f
    move-object v5, p0

    :goto_10
    invoke-virtual {v1, v0, v4, v5}, Ljava/util/concurrent/CompletableFuture;->uniAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$UniAccept;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_22

    .line 644
    :cond_17
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniAccept;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniAccept;->src:Ljava/util/concurrent/CompletableFuture;

    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$UniAccept;->fn:Ljava/util/function/Consumer;

    .line 645
    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 643
    .end local v3    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_22
    :goto_22
    return-object v2
.end method