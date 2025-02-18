.class final Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;
.super Ljava/util/concurrent/ForkJoinTask;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AdaptedCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ForkJoinTask<",
        "TT;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x2763fe86dcb18e30L


# instance fields
.field final greylist-max-o callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field greylist-max-o result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1425
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedCallable<TT;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 1426
    if-eqz p1, :cond_8

    .line 1427
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;->callable:Ljava/util/concurrent/Callable;

    .line 1428
    return-void

    .line 1426
    :cond_8
    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public final whitelist core-platform-api test-api exec()Z
    .registers 3

    .line 1433
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedCallable<TT;>;"
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;->result:Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    .line 1434
    const/4 v0, 0x1

    return v0

    .line 1437
    :catch_a
    move-exception v0

    .line 1438
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1435
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_11
    move-exception v0

    .line 1436
    .local v0, "rex":Ljava/lang/RuntimeException;
    throw v0
.end method

.method public final whitelist core-platform-api test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1429
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedCallable<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api run()V
    .registers 1

    .line 1441
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedCallable<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final whitelist core-platform-api test-api setRawResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1430
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedCallable<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;->result:Ljava/lang/Object;

    return-void
.end method
