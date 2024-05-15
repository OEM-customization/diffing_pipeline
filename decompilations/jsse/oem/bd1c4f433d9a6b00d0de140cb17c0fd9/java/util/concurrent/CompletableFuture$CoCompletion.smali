.class final Ljava/util/concurrent/CompletableFuture$CoCompletion;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CoCompletion"
.end annotation


# instance fields
.field base:Ljava/util/concurrent/CompletableFuture$BiCompletion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture$BiCompletion",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture$BiCompletion;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture$BiCompletion",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 1052
    .local p1, "base":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava/util/concurrent/CompletableFuture$BiCompletion;

    return-void
.end method


# virtual methods
.method final isLive()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1062
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava/util/concurrent/CompletableFuture$BiCompletion;

    .local v0, "c":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    if-eqz v0, :cond_a

    iget-object v2, v0, Ljava/util/concurrent/CompletableFuture$BiCompletion;->dep:Ljava/util/concurrent/CompletableFuture;

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method final tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1055
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava/util/concurrent/CompletableFuture$BiCompletion;

    .local v0, "c":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture$BiCompletion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-nez v1, :cond_c

    .line 1056
    .end local v1    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_b
    return-object v2

    .line 1057
    .restart local v1    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_c
    iput-object v2, p0, Ljava/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava/util/concurrent/CompletableFuture$BiCompletion;

    .line 1058
    return-object v1
.end method
