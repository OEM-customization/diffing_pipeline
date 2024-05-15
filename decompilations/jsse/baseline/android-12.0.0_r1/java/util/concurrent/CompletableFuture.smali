.class public Ljava/util/concurrent/CompletableFuture;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/util/concurrent/CompletionStage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CompletableFuture$MinimalStage;,
        Ljava/util/concurrent/CompletableFuture$Canceller;,
        Ljava/util/concurrent/CompletableFuture$DelayedCompleter;,
        Ljava/util/concurrent/CompletableFuture$Timeout;,
        Ljava/util/concurrent/CompletableFuture$TaskSubmitter;,
        Ljava/util/concurrent/CompletableFuture$DelayedExecutor;,
        Ljava/util/concurrent/CompletableFuture$Delayer;,
        Ljava/util/concurrent/CompletableFuture$Signaller;,
        Ljava/util/concurrent/CompletableFuture$AsyncRun;,
        Ljava/util/concurrent/CompletableFuture$AsyncSupply;,
        Ljava/util/concurrent/CompletableFuture$OrRelay;,
        Ljava/util/concurrent/CompletableFuture$OrRun;,
        Ljava/util/concurrent/CompletableFuture$OrAccept;,
        Ljava/util/concurrent/CompletableFuture$OrApply;,
        Ljava/util/concurrent/CompletableFuture$BiRelay;,
        Ljava/util/concurrent/CompletableFuture$BiRun;,
        Ljava/util/concurrent/CompletableFuture$BiAccept;,
        Ljava/util/concurrent/CompletableFuture$BiApply;,
        Ljava/util/concurrent/CompletableFuture$CoCompletion;,
        Ljava/util/concurrent/CompletableFuture$BiCompletion;,
        Ljava/util/concurrent/CompletableFuture$UniCompose;,
        Ljava/util/concurrent/CompletableFuture$UniRelay;,
        Ljava/util/concurrent/CompletableFuture$UniExceptionally;,
        Ljava/util/concurrent/CompletableFuture$UniHandle;,
        Ljava/util/concurrent/CompletableFuture$UniWhenComplete;,
        Ljava/util/concurrent/CompletableFuture$UniRun;,
        Ljava/util/concurrent/CompletableFuture$UniAccept;,
        Ljava/util/concurrent/CompletableFuture$UniApply;,
        Ljava/util/concurrent/CompletableFuture$UniCompletion;,
        Ljava/util/concurrent/CompletableFuture$Completion;,
        Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;,
        Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;,
        Ljava/util/concurrent/CompletableFuture$AltResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;",
        "Ljava/util/concurrent/CompletionStage<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final greylist-max-o ASYNC:I = 0x1

.field private static final greylist-max-o ASYNC_POOL:Ljava/util/concurrent/Executor;

.field static final greylist-max-o NESTED:I = -0x1

.field private static final greylist-max-o NEXT:J

.field static final greylist-max-o NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

.field private static final greylist-max-o RESULT:J

.field static final greylist-max-o SPINS:I

.field private static final greylist-max-o STACK:J

.field static final greylist-max-o SYNC:I

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final greylist-max-o USE_COMMON_POOL:Z


# instance fields
.field volatile greylist-max-o result:Ljava/lang/Object;

.field volatile greylist-max-o stack:Ljava/util/concurrent/CompletableFuture$Completion;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 253
    const-class v0, Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    sput-object v1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    .line 398
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_14

    move v1, v3

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    sput-boolean v1, Ljava/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    .line 404
    if-eqz v1, :cond_1e

    .line 405
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v1

    goto :goto_23

    :cond_1e
    new-instance v1, Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;-><init>()V

    :goto_23
    sput-object v1, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    .line 431
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    if-le v1, v3, :cond_32

    .line 432
    const/16 v2, 0x100

    goto :goto_33

    :cond_32
    nop

    :goto_33
    sput v2, Ljava/util/concurrent/CompletableFuture;->SPINS:I

    .line 2755
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    .line 2761
    :try_start_3b
    const-string v2, "result"

    .line 2762
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    .line 2763
    const-string v2, "stack"

    .line 2764
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/CompletableFuture;->STACK:J

    .line 2765
    const-class v0, Ljava/util/concurrent/CompletableFuture$Completion;

    const-string v2, "next"

    .line 2766
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/CompletableFuture;->NEXT:J
    :try_end_61
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3b .. :try_end_61} :catch_65

    .line 2769
    nop

    .line 2773
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 2774
    return-void

    .line 2767
    :catch_65
    move-exception v0

    .line 2768
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 1821
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1822
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "r"    # Ljava/lang/Object;

    .line 1827
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1828
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 1829
    return-void
.end method

.method public static varargs whitelist test-api allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2254
    .local p0, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/concurrent/CompletableFuture;->andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;
    .registers 9
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;II)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1333
    .local p0, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1334
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-le p1, p2, :cond_c

    .line 1335
    sget-object v1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    iput-object v1, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_42

    .line 1338
    :cond_c
    add-int v1, p1, p2

    ushr-int/lit8 v1, v1, 0x1

    .line 1339
    .local v1, "mid":I
    if-ne p1, v1, :cond_15

    aget-object v2, p0, p1

    goto :goto_19

    .line 1340
    :cond_15
    invoke-static {p0, p1, v1}, Ljava/util/concurrent/CompletableFuture;->andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    :goto_19
    move-object v3, v2

    .local v3, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v2, :cond_43

    .line 1341
    if-ne p1, p2, :cond_20

    move-object v2, v3

    goto :goto_2d

    :cond_20
    add-int/lit8 v2, v1, 0x1

    if-ne p2, v2, :cond_27

    aget-object v2, p0, p2

    goto :goto_2d

    .line 1342
    :cond_27
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, v2, p2}, Ljava/util/concurrent/CompletableFuture;->andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    :goto_2d
    move-object v4, v2

    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v2, :cond_43

    .line 1344
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/CompletableFuture;->biRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 1345
    new-instance v2, Ljava/util/concurrent/CompletableFuture$BiRelay;

    invoke-direct {v2, v0, v3, v4}, Ljava/util/concurrent/CompletableFuture$BiRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    .line 1346
    .local v2, "c":Ljava/util/concurrent/CompletableFuture$BiRelay;, "Ljava/util/concurrent/CompletableFuture$BiRelay<**>;"
    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1347
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/concurrent/CompletableFuture$BiRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1350
    .end local v1    # "mid":I
    .end local v2    # "c":Ljava/util/concurrent/CompletableFuture$BiRelay;, "Ljava/util/concurrent/CompletableFuture$BiRelay<**>;"
    .end local v3    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_42
    :goto_42
    return-object v0

    .line 1343
    .restart local v1    # "mid":I
    .restart local v3    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_43
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
.end method

.method public static varargs whitelist test-api anyOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2273
    .local p0, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/concurrent/CompletableFuture;->orTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p0, "e"    # Ljava/util/concurrent/Executor;
    .param p1, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1675
    if-eqz p1, :cond_10

    .line 1676
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1677
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AsyncRun;

    invoke-direct {v1, v0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncRun;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1678
    return-object v0

    .line 1675
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static greylist-max-o asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p0, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier<",
            "TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1639
    .local p1, "f":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    if-eqz p1, :cond_10

    .line 1640
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1641
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AsyncSupply;

    invoke-direct {v1, v0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Supplier;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1642
    return-object v0

    .line 1639
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 13
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1226
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    if-eqz p3, :cond_29

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v7, v0

    .local v7, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v0, :cond_29

    .line 1228
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1229
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v7, p3, v1}, Ljava/util/concurrent/CompletableFuture;->biAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$BiAccept;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1230
    :cond_16
    new-instance v8, Ljava/util/concurrent/CompletableFuture$BiAccept;

    move-object v1, v8

    move-object v2, p1

    move-object v3, v0

    move-object v4, p0

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/CompletableFuture$BiAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)V

    .line 1231
    .local v1, "c":Ljava/util/concurrent/CompletableFuture$BiAccept;, "Ljava/util/concurrent/CompletableFuture$BiAccept<TT;TU;>;"
    invoke-virtual {p0, v7, v1}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1232
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture$BiAccept;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1234
    .end local v1    # "c":Ljava/util/concurrent/CompletableFuture$BiAccept;, "Ljava/util/concurrent/CompletableFuture$BiAccept<TT;TU;>;"
    :cond_28
    return-object v0

    .line 1227
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v7    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 13
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1154
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    if-eqz p3, :cond_29

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v7, v0

    .local v7, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v0, :cond_29

    .line 1156
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1157
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-nez p1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v7, p3, v1}, Ljava/util/concurrent/CompletableFuture;->biApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$BiApply;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1158
    :cond_16
    new-instance v8, Ljava/util/concurrent/CompletableFuture$BiApply;

    move-object v1, v8

    move-object v2, p1

    move-object v3, v0

    move-object v4, p0

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/CompletableFuture$BiApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;)V

    .line 1159
    .local v1, "c":Ljava/util/concurrent/CompletableFuture$BiApply;, "Ljava/util/concurrent/CompletableFuture$BiApply<TT;TU;TV;>;"
    invoke-virtual {p0, v7, v1}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1160
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture$BiApply;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1162
    .end local v1    # "c":Ljava/util/concurrent/CompletableFuture$BiApply;, "Ljava/util/concurrent/CompletableFuture$BiApply<TT;TU;TV;>;"
    :cond_28
    return-object v0

    .line 1155
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .end local v7    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 13
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1285
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    if-eqz p3, :cond_29

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v7, v0

    .local v7, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v0, :cond_29

    .line 1287
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1288
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v7, p3, v1}, Ljava/util/concurrent/CompletableFuture;->biRun(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$BiRun;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1289
    :cond_16
    new-instance v8, Ljava/util/concurrent/CompletableFuture$BiRun;

    move-object v1, v8

    move-object v2, p1

    move-object v3, v0

    move-object v4, p0

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/CompletableFuture$BiRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    .line 1290
    .local v1, "c":Ljava/util/concurrent/CompletableFuture$BiRun;, "Ljava/util/concurrent/CompletableFuture$BiRun<TT;*>;"
    invoke-virtual {p0, v7, v1}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1291
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture$BiRun;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1293
    .end local v1    # "c":Ljava/util/concurrent/CompletableFuture$BiRun;, "Ljava/util/concurrent/CompletableFuture$BiRun<TT;*>;"
    :cond_28
    return-object v0

    .line 1286
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v7    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1898
    .local p0, "value":Ljava/lang/Object;, "TU;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    if-nez p0, :cond_7

    sget-object v1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    goto :goto_8

    :cond_7
    move-object v1, p0

    :goto_8
    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api completedStage(Ljava/lang/Object;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation

    .line 2591
    .local p0, "value":Ljava/lang/Object;, "TU;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    if-nez p0, :cond_7

    sget-object v1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    goto :goto_8

    :cond_7
    move-object v1, p0

    :goto_8
    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api delayedExecutor(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Executor;
    .registers 5
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 2575
    if-eqz p2, :cond_a

    .line 2577
    new-instance v0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;

    sget-object v1, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    return-object v0

    .line 2576
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api delayedExecutor(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .registers 5
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 2557
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 2559
    new-instance v0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    return-object v0

    .line 2558
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static greylist-max-o encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "r"    # Ljava/lang/Object;

    .line 330
    instance-of v0, p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_1b

    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_1b

    instance-of v0, v1, Ljava/util/concurrent/CompletionException;

    if-nez v0, :cond_1b

    .line 333
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    new-instance v2, Ljava/util/concurrent/CompletionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1c

    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_1b
    move-object v0, p0

    .line 330
    :goto_1c
    return-object v0
.end method

.method static greylist-max-o encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "x"    # Ljava/lang/Throwable;
    .param p1, "r"    # Ljava/lang/Object;

    .line 295
    instance-of v0, p0, Ljava/util/concurrent/CompletionException;

    if-nez v0, :cond_b

    .line 296
    new-instance v0, Ljava/util/concurrent/CompletionException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_17

    .line 297
    :cond_b
    instance-of v0, p1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-ne p0, v0, :cond_17

    .line 298
    return-object p1

    .line 299
    :cond_17
    :goto_17
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static greylist-max-o encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;
    .registers 3
    .param p0, "x"    # Ljava/lang/Throwable;

    .line 277
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    instance-of v1, p0, Ljava/util/concurrent/CompletionException;

    if-eqz v1, :cond_8

    move-object v1, p0

    goto :goto_d

    .line 278
    :cond_8
    new-instance v1, Ljava/util/concurrent/CompletionException;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    :goto_d
    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    .line 277
    return-object v0
.end method

.method public static whitelist test-api failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p0, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2604
    if-eqz p0, :cond_d

    .line 2605
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 2604
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api failedStage(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .param p0, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation

    .line 2619
    if-eqz p0, :cond_d

    .line 2620
    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 2619
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static greylist-max-o lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V
    .registers 5
    .param p0, "c"    # Ljava/util/concurrent/CompletableFuture$Completion;
    .param p1, "next"    # Ljava/util/concurrent/CompletableFuture$Completion;

    .line 459
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/CompletableFuture;->NEXT:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 460
    return-void
.end method

.method private greylist-max-o orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 13
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1490
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz p3, :cond_29

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v7, v0

    .local v7, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v0, :cond_29

    .line 1492
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1493
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v7, p3, v1}, Ljava/util/concurrent/CompletableFuture;->orAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$OrAccept;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1494
    :cond_16
    new-instance v8, Ljava/util/concurrent/CompletableFuture$OrAccept;

    move-object v1, v8

    move-object v2, p1

    move-object v3, v0

    move-object v4, p0

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/CompletableFuture$OrAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V

    .line 1495
    .local v1, "c":Ljava/util/concurrent/CompletableFuture$OrAccept;, "Ljava/util/concurrent/CompletableFuture$OrAccept<TT;TU;>;"
    invoke-virtual {p0, v7, v1}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1496
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture$OrAccept;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1498
    .end local v1    # "c":Ljava/util/concurrent/CompletableFuture$OrAccept;, "Ljava/util/concurrent/CompletableFuture$OrAccept<TT;TU;>;"
    :cond_28
    return-object v0

    .line 1491
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v7    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 13
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1426
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    if-eqz p3, :cond_29

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v7, v0

    .local v7, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v0, :cond_29

    .line 1428
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1429
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-nez p1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v7, p3, v1}, Ljava/util/concurrent/CompletableFuture;->orApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$OrApply;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1430
    :cond_16
    new-instance v8, Ljava/util/concurrent/CompletableFuture$OrApply;

    move-object v1, v8

    move-object v2, p1

    move-object v3, v0

    move-object v4, p0

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/CompletableFuture$OrApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    .line 1431
    .local v1, "c":Ljava/util/concurrent/CompletableFuture$OrApply;, "Ljava/util/concurrent/CompletableFuture$OrApply<TT;TU;TV;>;"
    invoke-virtual {p0, v7, v1}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1432
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture$OrApply;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1434
    .end local v1    # "c":Ljava/util/concurrent/CompletableFuture$OrApply;, "Ljava/util/concurrent/CompletableFuture$OrApply<TT;TU;TV;>;"
    :cond_28
    return-object v0

    .line 1427
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .end local v7    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 13
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1548
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    if-eqz p3, :cond_29

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    move-object v7, v0

    .local v7, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v0, :cond_29

    .line 1550
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1551
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v7, p3, v1}, Ljava/util/concurrent/CompletableFuture;->orRun(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$OrRun;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1552
    :cond_16
    new-instance v8, Ljava/util/concurrent/CompletableFuture$OrRun;

    move-object v1, v8

    move-object v2, p1

    move-object v3, v0

    move-object v4, p0

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/CompletableFuture$OrRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    .line 1553
    .local v1, "c":Ljava/util/concurrent/CompletableFuture$OrRun;, "Ljava/util/concurrent/CompletableFuture$OrRun<TT;*>;"
    invoke-virtual {p0, v7, v1}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1554
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture$OrRun;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1556
    .end local v1    # "c":Ljava/util/concurrent/CompletableFuture$OrRun;, "Ljava/util/concurrent/CompletableFuture$OrRun<TT;*>;"
    :cond_28
    return-object v0

    .line 1549
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v7    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static greylist-max-o orTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;
    .registers 9
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;II)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1589
    .local p0, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1590
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Object;>;"
    if-gt p1, p2, :cond_44

    .line 1592
    add-int v1, p1, p2

    ushr-int/lit8 v1, v1, 0x1

    .line 1593
    .local v1, "mid":I
    if-ne p1, v1, :cond_10

    aget-object v2, p0, p1

    goto :goto_14

    .line 1594
    :cond_10
    invoke-static {p0, p1, v1}, Ljava/util/concurrent/CompletableFuture;->orTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    :goto_14
    move-object v3, v2

    .local v3, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v2, :cond_3e

    .line 1595
    if-ne p1, p2, :cond_1b

    move-object v2, v3

    goto :goto_28

    :cond_1b
    add-int/lit8 v2, v1, 0x1

    if-ne p2, v2, :cond_22

    aget-object v2, p0, p2

    goto :goto_28

    .line 1596
    :cond_22
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, v2, p2}, Ljava/util/concurrent/CompletableFuture;->orTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    :goto_28
    move-object v4, v2

    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v2, :cond_3e

    .line 1598
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/CompletableFuture;->orRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 1599
    new-instance v2, Ljava/util/concurrent/CompletableFuture$OrRelay;

    invoke-direct {v2, v0, v3, v4}, Ljava/util/concurrent/CompletableFuture$OrRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    .line 1600
    .local v2, "c":Ljava/util/concurrent/CompletableFuture$OrRelay;, "Ljava/util/concurrent/CompletableFuture$OrRelay<**>;"
    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1601
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/concurrent/CompletableFuture$OrRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    goto :goto_44

    .line 1597
    .end local v2    # "c":Ljava/util/concurrent/CompletableFuture$OrRelay;, "Ljava/util/concurrent/CompletableFuture$OrRelay<**>;"
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_3e
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1604
    .end local v1    # "mid":I
    .end local v3    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_44
    :goto_44
    return-object v0
.end method

.method private static greylist-max-o reportGet(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "r"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 350
    if-eqz p0, :cond_2c

    .line 352
    instance-of v0, p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_2a

    .line 354
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-nez v0, :cond_10

    .line 355
    const/4 v0, 0x0

    return-object v0

    .line 356
    :cond_10
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_26

    .line 358
    instance-of v0, v1, Ljava/util/concurrent/CompletionException;

    if-eqz v0, :cond_20

    .line 359
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v2, v0

    .local v2, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_20

    .line 360
    move-object v1, v2

    .line 361
    .end local v2    # "cause":Ljava/lang/Throwable;
    :cond_20
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 357
    :cond_26
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    throw v0

    .line 363
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_2a
    move-object v0, p0

    .line 364
    .local v0, "t":Ljava/lang/Object;, "TT;"
    return-object v0

    .line 351
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :cond_2c
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o reportJoin(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "r"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 371
    instance-of v0, p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_24

    .line 373
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-nez v0, :cond_e

    .line 374
    const/4 v0, 0x0

    return-object v0

    .line 375
    :cond_e
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_20

    .line 377
    instance-of v0, v1, Ljava/util/concurrent/CompletionException;

    if-eqz v0, :cond_1a

    .line 378
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/CompletionException;

    throw v0

    .line 379
    :cond_1a
    new-instance v0, Ljava/util/concurrent/CompletionException;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 376
    :cond_20
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    throw v0

    .line 381
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_24
    move-object v0, p0

    .line 382
    .local v0, "t":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public static whitelist test-api runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1871
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1886
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .registers 2
    .param p0, "e"    # Ljava/util/concurrent/Executor;

    .line 417
    sget-boolean v0, Ljava/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p0, v0, :cond_d

    .line 418
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    return-object v0

    .line 419
    :cond_d
    if-eqz p0, :cond_10

    .line 420
    return-object p0

    .line 419
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static whitelist test-api supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1842
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1858
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o timedGet(J)Ljava/lang/Object;
    .registers 19
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1779
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_a

    .line 1780
    return-object v8

    .line 1781
    :cond_a
    const-wide/16 v9, 0x0

    cmp-long v0, p1, v9

    if-lez v0, :cond_67

    .line 1782
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long v11, v2, p1

    .line 1783
    .local v11, "d":J
    cmp-long v0, v11, v9

    if-nez v0, :cond_1e

    const-wide/16 v2, 0x1

    move-wide v6, v2

    goto :goto_1f

    :cond_1e
    move-wide v6, v11

    .line 1784
    .local v6, "deadline":J
    :goto_1f
    const/4 v0, 0x0

    .line 1785
    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    const/4 v2, 0x0

    move-object v13, v0

    move v14, v2

    .line 1787
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    .local v13, "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    .local v14, "queued":Z
    :cond_23
    :goto_23
    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v15, v0

    .local v15, "r":Ljava/lang/Object;
    if-nez v0, :cond_51

    .line 1788
    if-nez v13, :cond_35

    .line 1789
    new-instance v0, Ljava/util/concurrent/CompletableFuture$Signaller;

    const/4 v3, 0x1

    move-object v2, v0

    move-wide/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Ljava/util/concurrent/CompletableFuture$Signaller;-><init>(ZJJ)V

    move-object v13, v0

    goto :goto_23

    .line 1790
    :cond_35
    if-nez v14, :cond_3c

    .line 1791
    invoke-virtual {v1, v13}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v14

    goto :goto_23

    .line 1792
    :cond_3c
    iget-wide v2, v13, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    cmp-long v0, v2, v9

    if-gtz v0, :cond_43

    .line 1793
    goto :goto_51

    .line 1796
    :cond_43
    :try_start_43
    invoke-static {v13}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_46} :catch_47

    .line 1799
    goto :goto_4d

    .line 1797
    :catch_47
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1798
    .local v0, "ie":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    iput-boolean v2, v13, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    .line 1800
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :goto_4d
    iget-boolean v0, v13, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v0, :cond_23

    .line 1804
    :cond_51
    :goto_51
    if-eqz v13, :cond_55

    .line 1805
    iput-object v8, v13, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1806
    :cond_55
    if-eqz v15, :cond_5b

    .line 1807
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    goto :goto_5e

    .line 1809
    :cond_5b
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    .line 1810
    :goto_5e
    if-nez v15, :cond_66

    if-eqz v13, :cond_67

    iget-boolean v0, v13, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v0, :cond_67

    .line 1811
    :cond_66
    return-object v15

    .line 1813
    .end local v6    # "deadline":J
    .end local v11    # "d":J
    .end local v13    # "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    .end local v14    # "queued":Z
    .end local v15    # "r":Ljava/lang/Object;
    :cond_67
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
.end method

.method private greylist-max-o uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 677
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz p2, :cond_1c

    .line 678
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 679
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Ljava/util/concurrent/CompletableFuture;->uniAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$UniAccept;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 680
    :cond_f
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniAccept;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V

    .line 681
    .local v1, "c":Ljava/util/concurrent/CompletableFuture$UniAccept;, "Ljava/util/concurrent/CompletableFuture$UniAccept<TT;>;"
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 682
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture$UniAccept;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 684
    .end local v1    # "c":Ljava/util/concurrent/CompletableFuture$UniAccept;, "Ljava/util/concurrent/CompletableFuture$UniAccept<TT;>;"
    :cond_1b
    return-object v0

    .line 677
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 622
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    if-eqz p2, :cond_1c

    .line 623
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 624
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-nez p1, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Ljava/util/concurrent/CompletableFuture;->uniApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniApply;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 625
    :cond_f
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniApply;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    .line 626
    .local v1, "c":Ljava/util/concurrent/CompletableFuture$UniApply;, "Ljava/util/concurrent/CompletableFuture$UniApply<TT;TV;>;"
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 627
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture$UniApply;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 629
    .end local v1    # "c":Ljava/util/concurrent/CompletableFuture$UniApply;, "Ljava/util/concurrent/CompletableFuture$UniApply<TT;TV;>;"
    :cond_1b
    return-object v0

    .line 622
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o uniAsMinimalStage()Ljava/util/concurrent/CompletableFuture$MinimalStage;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture$MinimalStage<",
            "TT;>;"
        }
    .end annotation

    .line 942
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-eqz v0, :cond_f

    .line 943
    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 944
    :cond_f
    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>()V

    .line 945
    .local v0, "d":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v2, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v2, v0, p0}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    .line 946
    .local v2, "c":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TT;>;"
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 947
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture$UniRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 948
    return-object v0
.end method

.method private greylist-max-o uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 10
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TV;>;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1005
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TV;>;>;"
    if-eqz p2, :cond_56

    .line 1007
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1008
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    const/4 v1, 0x0

    if-nez p1, :cond_4a

    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "r":Ljava/lang/Object;
    if-eqz v2, :cond_4a

    .line 1009
    instance-of v2, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v2, :cond_22

    .line 1010
    move-object v2, v3

    check-cast v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v2, v2, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v4, v2

    .local v4, "x":Ljava/lang/Throwable;
    if-eqz v2, :cond_21

    .line 1011
    invoke-static {v4, v3}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 1012
    return-object v0

    .line 1014
    :cond_21
    const/4 v3, 0x0

    .line 1017
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_22
    move-object v2, v3

    .line 1018
    .local v2, "t":Ljava/lang/Object;, "TT;"
    :try_start_23
    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v4}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    .line 1019
    .local v4, "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    iget-object v5, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v6, v5

    .local v6, "s":Ljava/lang/Object;
    if-eqz v5, :cond_36

    .line 1020
    invoke-virtual {v0, v6}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    goto :goto_41

    .line 1022
    :cond_36
    new-instance v5, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v5, v0, v4}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    .line 1023
    .local v5, "c":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TV;>;"
    invoke-virtual {v4, v5}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 1024
    invoke-virtual {v5, v1}, Ljava/util/concurrent/CompletableFuture$UniRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_42

    .line 1026
    .end local v5    # "c":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TV;>;"
    :goto_41
    return-object v0

    .line 1027
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    .end local v4    # "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .end local v6    # "s":Ljava/lang/Object;
    :catchall_42
    move-exception v1

    .line 1028
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v2

    iput-object v2, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 1029
    return-object v0

    .line 1032
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v3    # "r":Ljava/lang/Object;
    :cond_4a
    new-instance v2, Ljava/util/concurrent/CompletableFuture$UniCompose;

    invoke-direct {v2, p1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniCompose;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    .line 1033
    .local v2, "c":Ljava/util/concurrent/CompletableFuture$UniCompose;, "Ljava/util/concurrent/CompletableFuture$UniCompose<TT;TV;>;"
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 1034
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CompletableFuture$UniCompose;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1035
    return-object v0

    .line 1005
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .end local v2    # "c":Ljava/util/concurrent/CompletableFuture$UniCompose;, "Ljava/util/concurrent/CompletableFuture$UniCompose<TT;TV;>;"
    :cond_56
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o uniCopyStage()Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 929
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 930
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-eqz v1, :cond_d

    .line 931
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    goto :goto_19

    .line 933
    :cond_d
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v1, v0, p0}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    .line 934
    .local v1, "c":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TT;>;"
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 935
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CompletableFuture$UniRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 937
    .end local v1    # "c":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TT;>;"
    :goto_19
    return-object v0
.end method

.method private greylist-max-o uniExceptionallyStage(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 894
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    if-eqz p1, :cond_1a

    .line 895
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 896
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/CompletableFuture;->uniExceptionally(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniExceptionally;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 897
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniExceptionally;

    invoke-direct {v1, v0, p0, p1}, Ljava/util/concurrent/CompletableFuture$UniExceptionally;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    .line 898
    .local v1, "c":Ljava/util/concurrent/CompletableFuture$UniExceptionally;, "Ljava/util/concurrent/CompletableFuture$UniExceptionally<TT;>;"
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 899
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 901
    .end local v1    # "c":Ljava/util/concurrent/CompletableFuture$UniExceptionally;, "Ljava/util/concurrent/CompletableFuture$UniExceptionally<TT;>;"
    :cond_19
    return-object v0

    .line 894
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 844
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TV;>;"
    if-eqz p2, :cond_1c

    .line 845
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 846
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-nez p1, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Ljava/util/concurrent/CompletableFuture;->uniHandle(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$UniHandle;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 847
    :cond_f
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniHandle;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniHandle;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;)V

    .line 848
    .local v1, "c":Ljava/util/concurrent/CompletableFuture$UniHandle;, "Ljava/util/concurrent/CompletableFuture$UniHandle<TT;TV;>;"
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 849
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture$UniHandle;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 851
    .end local v1    # "c":Ljava/util/concurrent/CompletableFuture$UniHandle;, "Ljava/util/concurrent/CompletableFuture$UniHandle<TT;TV;>;"
    :cond_1b
    return-object v0

    .line 844
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p2, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 725
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz p2, :cond_1c

    .line 726
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 727
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Ljava/util/concurrent/CompletableFuture;->uniRun(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$UniRun;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 728
    :cond_f
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniRun;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    .line 729
    .local v1, "c":Ljava/util/concurrent/CompletableFuture$UniRun;, "Ljava/util/concurrent/CompletableFuture$UniRun<TT;>;"
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 730
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture$UniRun;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 732
    .end local v1    # "c":Ljava/util/concurrent/CompletableFuture$UniRun;, "Ljava/util/concurrent/CompletableFuture$UniRun<TT;>;"
    :cond_1b
    return-object v0

    .line 725
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 788
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    if-eqz p2, :cond_1c

    .line 789
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 790
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-nez p1, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Ljava/util/concurrent/CompletableFuture;->uniWhenComplete(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$UniWhenComplete;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 791
    :cond_f
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)V

    .line 792
    .local v1, "c":Ljava/util/concurrent/CompletableFuture$UniWhenComplete;, "Ljava/util/concurrent/CompletableFuture$UniWhenComplete<TT;>;"
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 793
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 795
    .end local v1    # "c":Ljava/util/concurrent/CompletableFuture$UniWhenComplete;, "Ljava/util/concurrent/CompletableFuture$UniWhenComplete<TT;>;"
    :cond_1b
    return-object v0

    .line 788
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o waitingGet(Z)Ljava/lang/Object;
    .registers 13
    .param p1, "interruptible"    # Z

    .line 1737
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    .line 1738
    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    const/4 v1, 0x0

    .line 1739
    .local v1, "queued":Z
    sget v2, Ljava/util/concurrent/CompletableFuture;->SPINS:I

    .line 1741
    .local v2, "spins":I
    :cond_4
    :goto_4
    iget-object v3, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "r":Ljava/lang/Object;
    if-nez v3, :cond_38

    .line 1742
    if-lez v2, :cond_14

    .line 1743
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    move-result v3

    if-ltz v3, :cond_4

    .line 1744
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1746
    :cond_14
    if-nez v0, :cond_23

    .line 1747
    new-instance v3, Ljava/util/concurrent/CompletableFuture$Signaller;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v5, v3

    move v6, p1

    invoke-direct/range {v5 .. v10}, Ljava/util/concurrent/CompletableFuture$Signaller;-><init>(ZJJ)V

    move-object v0, v3

    goto :goto_4

    .line 1748
    :cond_23
    if-nez v1, :cond_2a

    .line 1749
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v1

    goto :goto_4

    .line 1752
    :cond_2a
    :try_start_2a
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 1755
    goto :goto_32

    .line 1753
    :catch_2e
    move-exception v3

    .line 1754
    .local v3, "ie":Ljava/lang/InterruptedException;
    const/4 v5, 0x1

    iput-boolean v5, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    .line 1756
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :goto_32
    iget-boolean v3, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    .line 1760
    :cond_38
    if-eqz v0, :cond_4e

    .line 1761
    const/4 v3, 0x0

    iput-object v3, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1762
    iget-boolean v3, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v3, :cond_4e

    .line 1763
    if-eqz p1, :cond_47

    .line 1764
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    goto :goto_4e

    .line 1766
    :cond_47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1769
    :cond_4e
    :goto_4e
    if-eqz v4, :cond_53

    .line 1770
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 1771
    :cond_53
    return-object v4
.end method


# virtual methods
.method public whitelist test-api acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2120
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2125
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2131
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Function<",
            "-TT;TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2104
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Function<",
            "-TT;TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2109
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TU;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava/util/function/Function<",
            "-TT;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2115
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TU;>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method final greylist-max-o biAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$BiAccept;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TR;>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TS;>;",
            "Ljava/util/function/BiConsumer<",
            "-TR;-TS;>;",
            "Ljava/util/concurrent/CompletableFuture$BiAccept<",
            "TR;TS;>;)Z"
        }
    .end annotation

    .line 1190
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TR;>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p3, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TR;-TS;>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$BiAccept;, "Ljava/util/concurrent/CompletableFuture$BiAccept<TR;TS;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_51

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-eqz v1, :cond_51

    if-eqz p2, :cond_51

    iget-object v1, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v1

    .local v3, "s":Ljava/lang/Object;
    if-eqz v1, :cond_51

    if-nez p3, :cond_12

    goto :goto_51

    .line 1193
    :cond_12
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_4f

    .line 1194
    instance-of v1, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_27

    .line 1195
    move-object v1, v2

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v4, v1

    .local v4, "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_26

    .line 1196
    invoke-virtual {p0, v4, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1197
    goto :goto_4f

    .line 1199
    :cond_26
    const/4 v2, 0x0

    .line 1201
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_27
    instance-of v1, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_38

    .line 1202
    move-object v1, v3

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v4, v1

    .restart local v4    # "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_37

    .line 1203
    invoke-virtual {p0, v4, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1204
    goto :goto_4f

    .line 1206
    :cond_37
    const/4 v3, 0x0

    .line 1209
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_38
    if-eqz p4, :cond_41

    :try_start_3a
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$BiAccept;->claim()Z

    move-result v1

    if-nez v1, :cond_41

    .line 1210
    return v0

    .line 1211
    :cond_41
    move-object v0, v2

    .line 1212
    .local v0, "rr":Ljava/lang/Object;, "TR;"
    move-object v1, v3

    .line 1213
    .local v1, "ss":Ljava/lang/Object;, "TS;"
    invoke-interface {p3, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1214
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_4b

    .line 1217
    nop

    .end local v0    # "rr":Ljava/lang/Object;, "TR;"
    .end local v1    # "ss":Ljava/lang/Object;, "TS;"
    goto :goto_4f

    .line 1215
    :catchall_4b
    move-exception v0

    .line 1216
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1219
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_4f
    :goto_4f
    const/4 v0, 0x1

    return v0

    .line 1192
    .end local v2    # "r":Ljava/lang/Object;
    .end local v3    # "s":Ljava/lang/Object;
    :cond_51
    :goto_51
    return v0
.end method

.method final greylist-max-o biApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$BiApply;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TR;>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TS;>;",
            "Ljava/util/function/BiFunction<",
            "-TR;-TS;+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$BiApply<",
            "TR;TS;TT;>;)Z"
        }
    .end annotation

    .line 1119
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TR;>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p3, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TR;-TS;+TT;>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$BiApply;, "Ljava/util/concurrent/CompletableFuture$BiApply<TR;TS;TT;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_52

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-eqz v1, :cond_52

    if-eqz p2, :cond_52

    iget-object v1, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v1

    .local v3, "s":Ljava/lang/Object;
    if-eqz v1, :cond_52

    if-nez p3, :cond_12

    goto :goto_52

    .line 1122
    :cond_12
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_50

    .line 1123
    instance-of v1, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_27

    .line 1124
    move-object v1, v2

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v4, v1

    .local v4, "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_26

    .line 1125
    invoke-virtual {p0, v4, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1126
    goto :goto_50

    .line 1128
    :cond_26
    const/4 v2, 0x0

    .line 1130
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_27
    instance-of v1, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_38

    .line 1131
    move-object v1, v3

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v4, v1

    .restart local v4    # "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_37

    .line 1132
    invoke-virtual {p0, v4, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1133
    goto :goto_50

    .line 1135
    :cond_37
    const/4 v3, 0x0

    .line 1138
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_38
    if-eqz p4, :cond_41

    :try_start_3a
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$BiApply;->claim()Z

    move-result v1

    if-nez v1, :cond_41

    .line 1139
    return v0

    .line 1140
    :cond_41
    move-object v0, v2

    .line 1141
    .local v0, "rr":Ljava/lang/Object;, "TR;"
    move-object v1, v3

    .line 1142
    .local v1, "ss":Ljava/lang/Object;, "TS;"
    invoke-interface {p3, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_4c

    .line 1145
    nop

    .end local v0    # "rr":Ljava/lang/Object;, "TR;"
    .end local v1    # "ss":Ljava/lang/Object;, "TS;"
    goto :goto_50

    .line 1143
    :catchall_4c
    move-exception v0

    .line 1144
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1147
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_50
    :goto_50
    const/4 v0, 0x1

    return v0

    .line 1121
    .end local v2    # "r":Ljava/lang/Object;
    .end local v3    # "s":Ljava/lang/Object;
    :cond_52
    :goto_52
    return v0
.end method

.method greylist-max-o biRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)Z"
        }
    .end annotation

    .line 1316
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz p1, :cond_38

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-eqz v0, :cond_38

    if-eqz p2, :cond_38

    iget-object v0, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v0

    .local v2, "s":Ljava/lang/Object;
    if-nez v0, :cond_f

    goto :goto_38

    .line 1319
    :cond_f
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_36

    .line 1320
    instance-of v0, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_23

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v3, v0

    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_23

    .line 1321
    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_36

    .line 1322
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_23
    instance-of v0, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_33

    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v3, v0

    .restart local v3    # "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_33

    .line 1323
    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_36

    .line 1325
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_33
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z

    .line 1327
    :cond_36
    :goto_36
    const/4 v0, 0x1

    return v0

    .line 1318
    .end local v1    # "r":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/Object;
    :cond_38
    :goto_38
    const/4 v0, 0x0

    return v0
.end method

.method final greylist-max-o biRun(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$BiRun;)Z
    .registers 10
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/CompletableFuture$BiRun<",
            "**>;)Z"
        }
    .end annotation

    .line 1261
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$BiRun;, "Ljava/util/concurrent/CompletableFuture$BiRun<**>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_4c

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-eqz v1, :cond_4c

    if-eqz p2, :cond_4c

    iget-object v1, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v1

    .local v3, "s":Ljava/lang/Object;
    if-eqz v1, :cond_4c

    if-nez p3, :cond_12

    goto :goto_4c

    .line 1264
    :cond_12
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_4a

    .line 1265
    instance-of v1, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_26

    move-object v1, v2

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v4, v1

    .local v4, "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_26

    .line 1266
    invoke-virtual {p0, v4, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_4a

    .line 1267
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_26
    instance-of v1, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_36

    move-object v1, v3

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v4, v1

    .restart local v4    # "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_36

    .line 1268
    invoke-virtual {p0, v4, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_4a

    .line 1271
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_36
    if-eqz p4, :cond_3f

    :try_start_38
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$BiRun;->claim()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1272
    return v0

    .line 1273
    :cond_3f
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1274
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_46

    .line 1277
    goto :goto_4a

    .line 1275
    :catchall_46
    move-exception v0

    .line 1276
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1279
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_4a
    :goto_4a
    const/4 v0, 0x1

    return v0

    .line 1263
    .end local v2    # "r":Ljava/lang/Object;
    .end local v3    # "s":Ljava/lang/Object;
    :cond_4c
    :goto_4c
    return v0
.end method

.method final greylist-max-o bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;)V"
        }
    .end annotation

    .line 1070
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "c":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    if-eqz p2, :cond_31

    .line 1072
    :goto_2
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    const/4 v2, 0x0

    if-nez v0, :cond_12

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1073
    invoke-static {p2, v2}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_2

    .line 1074
    :cond_12
    if-eqz p1, :cond_31

    if-eq p1, p0, :cond_31

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_31

    .line 1075
    if-eqz v1, :cond_1e

    move-object v0, p2

    goto :goto_23

    :cond_1e
    new-instance v0, Ljava/util/concurrent/CompletableFuture$CoCompletion;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CompletableFuture$CoCompletion;-><init>(Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1076
    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_23
    iget-object v3, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v3, :cond_31

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 1077
    invoke-static {v0, v2}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_23

    .line 1080
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Completion;
    .end local v1    # "r":Ljava/lang/Object;
    :cond_31
    return-void
.end method

.method public whitelist test-api cancel(Z)Z
    .registers 6
    .param p1, "mayInterruptIfRunning"    # Z

    .line 2292
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    new-instance v3, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v0, v3}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    .line 2293
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    .line 2294
    .local v0, "cancelled":Z
    :goto_19
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2295
    if-nez v0, :cond_26

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    :cond_26
    :goto_26
    return v1
.end method

.method final greylist-max-o casStack(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)Z
    .registers 9
    .param p1, "cmp"    # Ljava/util/concurrent/CompletableFuture$Completion;
    .param p2, "val"    # Ljava/util/concurrent/CompletableFuture$Completion;

    .line 230
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->STACK:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final greylist-max-o cleanStack()V
    .registers 5

    .line 491
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    .local v0, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    .local v1, "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_3
    if-eqz v1, :cond_26

    .line 492
    iget-object v2, v1, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    .line 493
    .local v2, "s":Ljava/util/concurrent/CompletableFuture$Completion;
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture$Completion;->isLive()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 494
    move-object v0, v1

    .line 495
    move-object v1, v2

    goto :goto_25

    .line 497
    :cond_10
    if-nez v0, :cond_18

    .line 498
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->casStack(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)Z

    .line 499
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    goto :goto_25

    .line 502
    :cond_18
    iput-object v2, v0, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    .line 503
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture$Completion;->isLive()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 504
    move-object v1, v2

    goto :goto_25

    .line 506
    :cond_22
    const/4 v0, 0x0

    .line 507
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    .line 510
    .end local v2    # "s":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_25
    goto :goto_3

    .line 511
    .end local v0    # "p":Ljava/util/concurrent/CompletableFuture$Completion;
    .end local v1    # "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_26
    return-void
.end method

.method public whitelist test-api complete(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1989
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z

    move-result v0

    .line 1990
    .local v0, "triggered":Z
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 1991
    return v0
.end method

.method public whitelist test-api completeAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2495
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/CompletableFuture;->completeAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api completeAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2478
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 2480
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Supplier;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2481
    return-object p0

    .line 2479
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api completeExceptionally(Ljava/lang/Throwable;)Z
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 2003
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz p1, :cond_f

    .line 2004
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    move-result v0

    .line 2005
    .local v0, "triggered":Z
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2006
    return v0

    .line 2003
    .end local v0    # "triggered":Z
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method final greylist-max-o completeNull()Z
    .registers 7

    .line 257
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    sget-object v5, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .registers 7
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2533
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-eqz p4, :cond_18

    .line 2535
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_17

    .line 2536
    new-instance v0, Ljava/util/concurrent/CompletableFuture$Canceller;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;

    invoke-direct {v1, p0, p1}, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)V

    invoke-static {v1, p2, p3, p4}, Ljava/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$Canceller;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 2539
    :cond_17
    return-object p0

    .line 2534
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method final greylist-max-o completeRelay(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "r"    # Ljava/lang/Object;

    .line 341
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    .line 342
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 341
    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final greylist-max-o completeThrowable(Ljava/lang/Throwable;)Z
    .registers 8
    .param p1, "x"    # Ljava/lang/Throwable;

    .line 283
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    .line 284
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v5

    .line 283
    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final greylist-max-o completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "x"    # Ljava/lang/Throwable;
    .param p2, "r"    # Ljava/lang/Object;

    .line 311
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    .line 312
    invoke-static {p1, p2}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 311
    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final greylist-max-o completeValue(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 268
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    .line 269
    if-nez p1, :cond_a

    sget-object v1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object v5, v1

    goto :goto_b

    :cond_a
    move-object v5, p1

    .line 268
    :goto_b
    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api copy()Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2445
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;->uniCopyStage()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api defaultExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 2427
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method greylist-max-o encodeOutcome(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 4
    .param p2, "x"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 321
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_9

    if-nez p1, :cond_7

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    goto :goto_d

    :cond_7
    move-object v0, p1

    goto :goto_d

    :cond_9
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method final greylist-max-o encodeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 263
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_5

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    return-object v0
.end method

.method public whitelist test-api exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2224
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CompletableFuture;->uniExceptionallyStage(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1923
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-nez v0, :cond_b

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_b
    move-object v0, v1

    :goto_c
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->reportGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1942
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 1943
    .local v0, "nanos":J
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "r":Ljava/lang/Object;
    if-nez v2, :cond_e

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/CompletableFuture;->timedGet(J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_f

    :cond_e
    move-object v2, v3

    :goto_f
    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->reportGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api getNow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1977
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "valueIfAbsent":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-nez v0, :cond_7

    move-object v0, p1

    goto :goto_b

    :cond_7
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->reportJoin(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public whitelist test-api getNumberOfDependents()I
    .registers 3

    .line 2367
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    .line 2368
    .local v0, "count":I
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    .local v1, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_3
    if-eqz v1, :cond_a

    .line 2369
    add-int/lit8 v0, v0, 0x1

    .line 2368
    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    goto :goto_3

    .line 2370
    .end local v1    # "p":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_a
    return v0
.end method

.method public whitelist test-api handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2183
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2188
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2193
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method final greylist-max-o internalComplete(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "r"    # Ljava/lang/Object;

    .line 226
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isCancelled()Z
    .registers 3

    .line 2307
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    instance-of v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_12

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api isCompletedExceptionally()Z
    .registers 3

    .line 2323
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    instance-of v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_d

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eq v1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist test-api isDone()Z
    .registers 2

    .line 1908
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api join()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1962
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_b
    move-object v0, v1

    :goto_c
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->reportJoin(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api minimalCompletionStage()Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 2462
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;->uniAsMinimalStage()Ljava/util/concurrent/CompletableFuture$MinimalStage;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2412
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    return-object v0
.end method

.method public whitelist test-api obtrudeException(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 2353
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz p1, :cond_d

    .line 2354
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2355
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2356
    return-void

    .line 2353
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api obtrudeValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2337
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_5

    sget-object v0, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2338
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2339
    return-void
.end method

.method final greylist-max-o orAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$OrAccept;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:TR;>(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TR;>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TS;>;",
            "Ljava/util/function/Consumer<",
            "-TR;>;",
            "Ljava/util/concurrent/CompletableFuture$OrAccept<",
            "TR;TS;>;)Z"
        }
    .end annotation

    .line 1463
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TR;>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p3, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TR;>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$OrAccept;, "Ljava/util/concurrent/CompletableFuture$OrAccept<TR;TS;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_3f

    if-eqz p2, :cond_3f

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_f

    iget-object v1, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    if-eqz v1, :cond_11

    :cond_f
    if-nez p3, :cond_12

    :cond_11
    goto :goto_3f

    .line 1466
    :cond_12
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_3d

    .line 1468
    if-eqz p4, :cond_1f

    :try_start_18
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$OrAccept;->claim()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1469
    return v0

    .line 1470
    :cond_1f
    instance-of v0, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_30

    .line 1471
    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_2f

    .line 1472
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1473
    goto :goto_3d

    .line 1475
    :cond_2f
    const/4 v2, 0x0

    .line 1477
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_30
    move-object v0, v2

    .line 1478
    .local v0, "rr":Ljava/lang/Object;, "TR;"
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1479
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_39

    .line 1482
    nop

    .end local v0    # "rr":Ljava/lang/Object;, "TR;"
    goto :goto_3d

    .line 1480
    :catchall_39
    move-exception v0

    .line 1481
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1484
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3d
    :goto_3d
    const/4 v0, 0x1

    return v0

    .line 1465
    .end local v2    # "r":Ljava/lang/Object;
    :cond_3f
    :goto_3f
    return v0
.end method

.method final greylist-max-o orApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$OrApply;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:TR;>(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TR;>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TS;>;",
            "Ljava/util/function/Function<",
            "-TR;+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$OrApply<",
            "TR;TS;TT;>;)Z"
        }
    .end annotation

    .line 1399
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TR;>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p3, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TR;+TT;>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$OrApply;, "Ljava/util/concurrent/CompletableFuture$OrApply<TR;TS;TT;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_40

    if-eqz p2, :cond_40

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_f

    iget-object v1, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    if-eqz v1, :cond_11

    :cond_f
    if-nez p3, :cond_12

    :cond_11
    goto :goto_40

    .line 1402
    :cond_12
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_3e

    .line 1404
    if-eqz p4, :cond_1f

    :try_start_18
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$OrApply;->claim()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1405
    return v0

    .line 1406
    :cond_1f
    instance-of v0, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_30

    .line 1407
    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_2f

    .line 1408
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1409
    goto :goto_3e

    .line 1411
    :cond_2f
    const/4 v2, 0x0

    .line 1413
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_30
    move-object v0, v2

    .line 1414
    .local v0, "rr":Ljava/lang/Object;, "TR;"
    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_18 .. :try_end_38} :catchall_3a

    .line 1417
    nop

    .end local v0    # "rr":Ljava/lang/Object;, "TR;"
    goto :goto_3e

    .line 1415
    :catchall_3a
    move-exception v0

    .line 1416
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1419
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3e
    :goto_3e
    const/4 v0, 0x1

    return v0

    .line 1401
    .end local v2    # "r":Ljava/lang/Object;
    :cond_40
    :goto_40
    return v0
.end method

.method final greylist-max-o orRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)Z"
        }
    .end annotation

    .line 1578
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-nez v0, :cond_f

    iget-object v0, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    if-nez v0, :cond_f

    goto :goto_18

    .line 1581
    :cond_f
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_16

    .line 1582
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    .line 1583
    :cond_16
    const/4 v0, 0x1

    return v0

    .line 1580
    .end local v1    # "r":Ljava/lang/Object;
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method final greylist-max-o orRun(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$OrRun;)Z
    .registers 8
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/CompletableFuture$OrRun<",
            "**>;)Z"
        }
    .end annotation

    .line 1525
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$OrRun;, "Ljava/util/concurrent/CompletableFuture$OrRun<**>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    if-eqz p2, :cond_3c

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-nez v1, :cond_f

    iget-object v1, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    if-eqz v1, :cond_11

    :cond_f
    if-nez p3, :cond_12

    :cond_11
    goto :goto_3c

    .line 1528
    :cond_12
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_3a

    .line 1530
    if-eqz p4, :cond_1f

    :try_start_18
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$OrRun;->claim()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1531
    return v0

    .line 1532
    :cond_1f
    instance-of v0, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_2f

    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    .local v1, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_2f

    .line 1533
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_35

    .line 1535
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_2f
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1536
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_35
    .catchall {:try_start_18 .. :try_end_35} :catchall_36

    .line 1540
    :goto_35
    goto :goto_3a

    .line 1538
    :catchall_36
    move-exception v0

    .line 1539
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1542
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3a
    :goto_3a
    const/4 v0, 0x1

    return v0

    .line 1527
    .end local v2    # "r":Ljava/lang/Object;
    :cond_3c
    :goto_3c
    return v0
.end method

.method public whitelist test-api orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2511
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz p3, :cond_18

    .line 2513
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_17

    .line 2514
    new-instance v0, Ljava/util/concurrent/CompletableFuture$Canceller;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$Timeout;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$Timeout;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v1, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$Canceller;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 2516
    :cond_17
    return-object p0

    .line 2512
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method final greylist-max-o orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;)V"
        }
    .end annotation

    .line 1357
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "c":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    if-eqz p2, :cond_37

    .line 1358
    :goto_2
    if-eqz p1, :cond_8

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_37

    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_37

    .line 1359
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 1360
    if-eqz p1, :cond_37

    if-eq p1, p0, :cond_37

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_37

    .line 1361
    new-instance v0, Ljava/util/concurrent/CompletableFuture$CoCompletion;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CompletableFuture$CoCompletion;-><init>(Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1362
    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_20
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_32

    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_32

    .line 1363
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 1364
    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_20

    .line 1365
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_32
    goto :goto_37

    .line 1368
    :cond_33
    invoke-static {p2, v1}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_2

    .line 1371
    :cond_37
    :goto_37
    return-void
.end method

.method final greylist-max-o postComplete()V
    .registers 6

    .line 472
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v0, p0

    .line 473
    .local v0, "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :goto_1
    iget-object v1, v0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    move-object v2, v1

    .local v2, "h":Ljava/util/concurrent/CompletableFuture$Completion;
    if-nez v1, :cond_10

    if-eq v0, p0, :cond_f

    move-object v0, p0

    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    move-object v2, v1

    if-eqz v1, :cond_f

    goto :goto_10

    .line 487
    :cond_f
    return-void

    .line 476
    :cond_10
    :goto_10
    iget-object v1, v2, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    move-object v3, v1

    .local v3, "t":Ljava/util/concurrent/CompletableFuture$Completion;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/CompletableFuture;->casStack(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 477
    if-eqz v3, :cond_24

    .line 478
    if-eq v0, p0, :cond_21

    .line 479
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->pushStack(Ljava/util/concurrent/CompletableFuture$Completion;)V

    .line 480
    goto :goto_1

    .line 482
    :cond_21
    const/4 v1, 0x0

    iput-object v1, v2, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    .line 484
    :cond_24
    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    move-object v4, v1

    .local v4, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-nez v1, :cond_2e

    move-object v1, p0

    goto :goto_2f

    :cond_2e
    move-object v1, v4

    :goto_2f
    move-object v0, v1

    .line 486
    .end local v3    # "t":Ljava/util/concurrent/CompletableFuture$Completion;
    .end local v4    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_30
    goto :goto_1
.end method

.method final greylist-max-o postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 561
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz p1, :cond_14

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_14

    .line 562
    if-ltz p2, :cond_11

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_d

    goto :goto_11

    .line 565
    :cond_d
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    goto :goto_14

    .line 563
    :cond_11
    :goto_11
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    .line 567
    :cond_14
    :goto_14
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_22

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_22

    .line 568
    if-gez p2, :cond_1f

    .line 569
    return-object p0

    .line 571
    :cond_1f
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 573
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method final greylist-max-o postFire(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1085
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz p2, :cond_14

    iget-object v0, p2, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_14

    .line 1086
    if-ltz p3, :cond_11

    iget-object v0, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_d

    goto :goto_11

    .line 1089
    :cond_d
    invoke-virtual {p2}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    goto :goto_14

    .line 1087
    :cond_11
    :goto_11
    invoke-virtual {p2}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    .line 1091
    :cond_14
    :goto_14
    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture$UniCompletion<",
            "**>;)V"
        }
    .end annotation

    .line 549
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "c":Ljava/util/concurrent/CompletableFuture$UniCompletion;, "Ljava/util/concurrent/CompletableFuture$UniCompletion<**>;"
    if-eqz p1, :cond_11

    .line 550
    :goto_2
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_11

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 551
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_2

    .line 553
    :cond_11
    return-void
.end method

.method final greylist-max-o pushStack(Ljava/util/concurrent/CompletableFuture$Completion;)V
    .registers 3
    .param p1, "c"    # Ljava/util/concurrent/CompletableFuture$Completion;

    .line 242
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 243
    return-void

    .line 242
    :cond_7
    goto :goto_0
.end method

.method public whitelist test-api runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2088
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2093
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2099
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2136
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2141
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2147
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2025
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2029
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2034
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2071
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2077
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2083
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2011
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2016
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2021
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2053
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2059
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2065
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2152
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2157
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2163
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2038
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2042
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2047
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toCompletableFuture()Ljava/util/concurrent/CompletableFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2202
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 2384
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2385
    .local v0, "r":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2386
    .local v1, "count":I
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    .local v2, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_5
    if-eqz v2, :cond_c

    .line 2387
    add-int/lit8 v1, v1, 0x1

    .line 2386
    iget-object v2, v2, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    goto :goto_5

    .line 2388
    .end local v2    # "p":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2389
    if-nez v0, :cond_36

    .line 2390
    if-nez v1, :cond_1f

    .line 2391
    const-string v3, "[Not completed]"

    goto :goto_46

    .line 2392
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Not completed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dependents]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_46

    .line 2393
    :cond_36
    instance-of v3, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v3, :cond_44

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v3, v3, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v3, :cond_44

    .line 2394
    const-string v3, "[Completed exceptionally]"

    goto :goto_46

    .line 2395
    :cond_44
    const-string v3, "[Completed normally]"

    :goto_46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2388
    return-object v2
.end method

.method final greylist-max-o tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z
    .registers 9
    .param p1, "c"    # Ljava/util/concurrent/CompletableFuture$Completion;

    .line 235
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v6, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    .line 236
    .local v6, "h":Ljava/util/concurrent/CompletableFuture$Completion;
    invoke-static {p1, v6}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    .line 237
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->STACK:J

    move-object v1, p0

    move-object v4, v6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final greylist-max-o uniAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$UniAccept;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TS;>;",
            "Ljava/util/function/Consumer<",
            "-TS;>;",
            "Ljava/util/concurrent/CompletableFuture$UniAccept<",
            "TS;>;)Z"
        }
    .end annotation

    .line 652
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p2, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TS;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniAccept;, "Ljava/util/concurrent/CompletableFuture$UniAccept<TS;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_38

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-eqz v1, :cond_38

    if-nez p2, :cond_b

    goto :goto_38

    .line 654
    :cond_b
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_36

    .line 655
    instance-of v1, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_20

    .line 656
    move-object v1, v2

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v3, v1

    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_1f

    .line 657
    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 658
    goto :goto_36

    .line 660
    :cond_1f
    const/4 v2, 0x0

    .line 663
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_20
    if-eqz p3, :cond_29

    :try_start_22
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniAccept;->claim()Z

    move-result v1

    if-nez v1, :cond_29

    .line 664
    return v0

    .line 665
    :cond_29
    move-object v0, v2

    .line 666
    .local v0, "s":Ljava/lang/Object;, "TS;"
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 667
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_32

    .line 670
    nop

    .end local v0    # "s":Ljava/lang/Object;, "TS;"
    goto :goto_36

    .line 668
    :catchall_32
    move-exception v0

    .line 669
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 672
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_36
    :goto_36
    const/4 v0, 0x1

    return v0

    .line 653
    .end local v2    # "r":Ljava/lang/Object;
    :cond_38
    :goto_38
    return v0
.end method

.method final greylist-max-o uniApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniApply;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TS;>;",
            "Ljava/util/function/Function<",
            "-TS;+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$UniApply<",
            "TS;TT;>;)Z"
        }
    .end annotation

    .line 598
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TS;+TT;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniApply;, "Ljava/util/concurrent/CompletableFuture$UniApply<TS;TT;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_39

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-eqz v1, :cond_39

    if-nez p2, :cond_b

    goto :goto_39

    .line 600
    :cond_b
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_37

    .line 601
    instance-of v1, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_20

    .line 602
    move-object v1, v2

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v3, v1

    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_1f

    .line 603
    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 604
    goto :goto_37

    .line 606
    :cond_1f
    const/4 v2, 0x0

    .line 609
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_20
    if-eqz p3, :cond_29

    :try_start_22
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniApply;->claim()Z

    move-result v1

    if-nez v1, :cond_29

    .line 610
    return v0

    .line 611
    :cond_29
    move-object v0, v2

    .line 612
    .local v0, "s":Ljava/lang/Object;, "TS;"
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_33

    .line 615
    nop

    .end local v0    # "s":Ljava/lang/Object;, "TS;"
    goto :goto_37

    .line 613
    :catchall_33
    move-exception v0

    .line 614
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 617
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_37
    :goto_37
    const/4 v0, 0x1

    return v0

    .line 599
    .end local v2    # "r":Ljava/lang/Object;
    :cond_39
    :goto_39
    return v0
.end method

.method final greylist-max-o uniCompose(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniCompose;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TS;>;",
            "Ljava/util/function/Function<",
            "-TS;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;>;",
            "Ljava/util/concurrent/CompletableFuture$UniCompose<",
            "TS;TT;>;)Z"
        }
    .end annotation

    .line 974
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TS;+Ljava/util/concurrent/CompletionStage<TT;>;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniCompose;, "Ljava/util/concurrent/CompletableFuture$UniCompose<TS;TT;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_55

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-eqz v1, :cond_55

    if-nez p2, :cond_b

    goto :goto_55

    .line 976
    :cond_b
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_53

    .line 977
    instance-of v1, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_20

    .line 978
    move-object v1, v2

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v3, v1

    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_1f

    .line 979
    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 980
    goto :goto_53

    .line 982
    :cond_1f
    const/4 v2, 0x0

    .line 985
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_20
    if-eqz p3, :cond_29

    :try_start_22
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniCompose;->claim()Z

    move-result v1

    if-nez v1, :cond_29

    .line 986
    return v0

    .line 987
    :cond_29
    move-object v1, v2

    .line 988
    .local v1, "s":Ljava/lang/Object;, "TS;"
    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v3}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    .line 989
    .local v3, "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v4, v3, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v4, :cond_3e

    invoke-virtual {p0, v3}, Ljava/util/concurrent/CompletableFuture;->uniRelay(Ljava/util/concurrent/CompletableFuture;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 990
    :cond_3e
    new-instance v4, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v4, p0, v3}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    .line 991
    .local v4, "copy":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TT;>;"
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 992
    invoke-virtual {v4, v0}, Ljava/util/concurrent/CompletableFuture$UniRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 993
    iget-object v5, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_22 .. :try_end_4b} :catchall_4f

    if-nez v5, :cond_4e

    .line 994
    return v0

    .line 998
    .end local v1    # "s":Ljava/lang/Object;, "TS;"
    .end local v3    # "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .end local v4    # "copy":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TT;>;"
    :cond_4e
    goto :goto_53

    .line 996
    :catchall_4f
    move-exception v0

    .line 997
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 1000
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_53
    :goto_53
    const/4 v0, 0x1

    return v0

    .line 975
    .end local v2    # "r":Ljava/lang/Object;
    :cond_55
    :goto_55
    return v0
.end method

.method final greylist-max-o uniExceptionally(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniExceptionally;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$UniExceptionally<",
            "TT;>;)Z"
        }
    .end annotation

    .line 875
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Throwable;+TT;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniExceptionally;, "Ljava/util/concurrent/CompletableFuture$UniExceptionally<TT;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_36

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-eqz v1, :cond_36

    if-nez p2, :cond_b

    goto :goto_36

    .line 877
    :cond_b
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_34

    .line 879
    :try_start_f
    instance-of v1, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_2c

    move-object v1, v2

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v3, v1

    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_2c

    .line 880
    if-eqz p3, :cond_24

    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->claim()Z

    move-result v1

    if-nez v1, :cond_24

    .line 881
    return v0

    .line 882
    :cond_24
    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 884
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_2c
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_30

    .line 887
    :goto_2f
    goto :goto_34

    .line 885
    :catchall_30
    move-exception v0

    .line 886
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 889
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_34
    :goto_34
    const/4 v0, 0x1

    return v0

    .line 876
    .end local v2    # "r":Ljava/lang/Object;
    :cond_36
    :goto_36
    return v0
.end method

.method final greylist-max-o uniHandle(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$UniHandle;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TS;>;",
            "Ljava/util/function/BiFunction<",
            "-TS;",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$UniHandle<",
            "TS;TT;>;)Z"
        }
    .end annotation

    .line 820
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p2, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TS;Ljava/lang/Throwable;+TT;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniHandle;, "Ljava/util/concurrent/CompletableFuture$UniHandle<TS;TT;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_35

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-eqz v1, :cond_35

    if-nez p2, :cond_b

    goto :goto_35

    .line 822
    :cond_b
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_33

    .line 824
    if-eqz p3, :cond_18

    :try_start_11
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniHandle;->claim()Z

    move-result v1

    if-nez v1, :cond_18

    .line 825
    return v0

    .line 826
    :cond_18
    instance-of v0, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_23

    .line 827
    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .line 828
    .local v0, "x":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .local v1, "s":Ljava/lang/Object;, "TS;"
    goto :goto_27

    .line 830
    .end local v0    # "x":Ljava/lang/Throwable;
    .end local v1    # "s":Ljava/lang/Object;, "TS;"
    :cond_23
    const/4 v0, 0x0

    .line 831
    .restart local v0    # "x":Ljava/lang/Throwable;
    move-object v1, v2

    .line 832
    .local v1, "ss":Ljava/lang/Object;, "TS;"
    move-object v3, v1

    move-object v1, v3

    .line 834
    .local v1, "s":Ljava/lang/Object;, "TS;"
    :goto_27
    invoke-interface {p2, v1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2f

    .line 837
    goto :goto_33

    .line 835
    .end local v0    # "x":Ljava/lang/Throwable;
    .end local v1    # "s":Ljava/lang/Object;, "TS;"
    :catchall_2f
    move-exception v0

    .line 836
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 839
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_33
    :goto_33
    const/4 v0, 0x1

    return v0

    .line 821
    .end local v2    # "r":Ljava/lang/Object;
    :cond_35
    :goto_35
    return v0
.end method

.method final greylist-max-o uniRelay(Ljava/util/concurrent/CompletableFuture;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;)Z"
        }
    .end annotation

    .line 920
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz p1, :cond_11

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "r":Ljava/lang/Object;
    if-nez v0, :cond_8

    goto :goto_11

    .line 922
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 923
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    .line 924
    :cond_f
    const/4 v0, 0x1

    return v0

    .line 921
    .end local v1    # "r":Ljava/lang/Object;
    :cond_11
    :goto_11
    const/4 v0, 0x0

    return v0
.end method

.method final greylist-max-o uniRun(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$UniRun;)Z
    .registers 8
    .param p2, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/CompletableFuture$UniRun<",
            "*>;)Z"
        }
    .end annotation

    .line 706
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniRun;, "Ljava/util/concurrent/CompletableFuture$UniRun<*>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_35

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;
    if-eqz v1, :cond_35

    if-nez p2, :cond_b

    goto :goto_35

    .line 708
    :cond_b
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_33

    .line 709
    instance-of v1, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_1f

    move-object v1, v2

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v3, v1

    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v1, :cond_1f

    .line 710
    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_33

    .line 713
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_1f
    if-eqz p3, :cond_28

    :try_start_21
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniRun;->claim()Z

    move-result v1

    if-nez v1, :cond_28

    .line 714
    return v0

    .line 715
    :cond_28
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 716
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2f

    .line 719
    goto :goto_33

    .line 717
    :catchall_2f
    move-exception v0

    .line 718
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    .line 721
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_33
    :goto_33
    const/4 v0, 0x1

    return v0

    .line 707
    .end local v2    # "r":Ljava/lang/Object;
    :cond_35
    :goto_35
    return v0
.end method

.method final greylist-max-o uniWhenComplete(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$UniWhenComplete;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture$UniWhenComplete<",
            "TT;>;)Z"
        }
    .end annotation

    .line 756
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniWhenComplete;, "Ljava/util/concurrent/CompletableFuture$UniWhenComplete<TT;>;"
    const/4 v0, 0x0

    .line 757
    .local v0, "x":Ljava/lang/Throwable;
    const/4 v1, 0x0

    if-eqz p1, :cond_41

    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "r":Ljava/lang/Object;
    if-eqz v2, :cond_41

    if-nez p2, :cond_c

    goto :goto_41

    .line 759
    :cond_c
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    const/4 v4, 0x1

    if-nez v2, :cond_40

    .line 761
    if-eqz p3, :cond_1a

    :try_start_13
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;->claim()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 762
    return v1

    .line 763
    :cond_1a
    instance-of v1, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_26

    .line 764
    move-object v1, v3

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v0, v1

    .line 765
    const/4 v1, 0x0

    .local v1, "t":Ljava/lang/Object;, "TT;"
    goto :goto_29

    .line 767
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_26
    move-object v1, v3

    .line 768
    .local v1, "tr":Ljava/lang/Object;, "TT;"
    move-object v2, v1

    move-object v1, v2

    .line 770
    .local v1, "t":Ljava/lang/Object;, "TT;"
    :goto_29
    invoke-interface {p2, v1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 771
    if-nez v0, :cond_32

    .line 772
    invoke-virtual {p0, v3}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_33

    .line 773
    return v4

    .line 780
    :cond_32
    goto :goto_3d

    .line 775
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :catchall_33
    move-exception v1

    .line 776
    .local v1, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_38

    .line 777
    move-object v0, v1

    goto :goto_3d

    .line 778
    :cond_38
    if-eq v0, v1, :cond_3d

    .line 779
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 781
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3d
    :goto_3d
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 783
    :cond_40
    return v4

    .line 758
    .end local v3    # "r":Ljava/lang/Object;
    :cond_41
    :goto_41
    return v1
.end method

.method public whitelist test-api whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2168
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2173
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2178
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 2

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .line 117
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
