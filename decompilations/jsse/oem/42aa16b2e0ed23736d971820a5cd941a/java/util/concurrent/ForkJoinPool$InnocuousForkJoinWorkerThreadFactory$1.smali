.class Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;->newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/concurrent/ForkJoinWorkerThread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;

.field final synthetic blacklist val$pool:Ljava/util/concurrent/ForkJoinPool;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;Ljava/util/concurrent/ForkJoinPool;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;

    .line 3574
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;->this$0:Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;

    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;->val$pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api run()Ljava/lang/Object;
    .registers 2

    .line 3574
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;->run()Ljava/util/concurrent/ForkJoinWorkerThread;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/util/concurrent/ForkJoinWorkerThread;
    .registers 3

    .line 3576
    new-instance v0, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;->val$pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;-><init>(Ljava/util/concurrent/ForkJoinPool;)V

    return-object v0
.end method
