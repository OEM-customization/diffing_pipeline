.class final Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultForkJoinWorkerThreadFactory"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/ForkJoinPool$1;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/concurrent/ForkJoinPool$1;

    .line 718
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;
    .registers 3
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;

    .line 721
    new-instance v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinWorkerThread;-><init>(Ljava/util/concurrent/ForkJoinPool;)V

    return-object v0
.end method
