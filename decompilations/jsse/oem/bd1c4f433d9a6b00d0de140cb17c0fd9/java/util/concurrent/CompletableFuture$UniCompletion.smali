.class abstract Ljava/util/concurrent/CompletableFuture$UniCompletion;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "UniCompletion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$Completion;"
    }
.end annotation


# instance fields
.field dep:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation
.end field

.field executor:Ljava/util/concurrent/Executor;

.field src:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniCompletion;, "Ljava/util/concurrent/CompletableFuture$UniCompletion<TT;TV;>;"
    .local p2, "dep":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .local p3, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 522
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object p3, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->src:Ljava/util/concurrent/CompletableFuture;

    .line 523
    return-void
.end method


# virtual methods
.method final claim()Z
    .registers 6

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniCompletion;, "Ljava/util/concurrent/CompletableFuture$UniCompletion<TT;TV;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 532
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->executor:Ljava/util/concurrent/Executor;

    .line 533
    .local v0, "e":Ljava/util/concurrent/Executor;
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/CompletableFuture$UniCompletion;->compareAndSetForkJoinTaskTag(SS)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 534
    if-nez v0, :cond_e

    .line 535
    return v3

    .line 536
    :cond_e
    iput-object v4, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->executor:Ljava/util/concurrent/Executor;

    .line 537
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 539
    :cond_13
    return v2
.end method

.method final isLive()Z
    .registers 2

    .prologue
    .line 542
    .local p0, "this":Ljava/util/concurrent/CompletableFuture$UniCompletion;, "Ljava/util/concurrent/CompletableFuture$UniCompletion<TT;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
