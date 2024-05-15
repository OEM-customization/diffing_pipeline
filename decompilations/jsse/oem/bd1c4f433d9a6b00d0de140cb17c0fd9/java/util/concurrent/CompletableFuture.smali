.class public Ljava/util/concurrent/CompletableFuture;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/util/concurrent/CompletionStage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CompletableFuture$AltResult;,
        Ljava/util/concurrent/CompletableFuture$AsyncRun;,
        Ljava/util/concurrent/CompletableFuture$AsyncSupply;,
        Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;,
        Ljava/util/concurrent/CompletableFuture$BiAccept;,
        Ljava/util/concurrent/CompletableFuture$BiApply;,
        Ljava/util/concurrent/CompletableFuture$BiCompletion;,
        Ljava/util/concurrent/CompletableFuture$BiRelay;,
        Ljava/util/concurrent/CompletableFuture$BiRun;,
        Ljava/util/concurrent/CompletableFuture$Canceller;,
        Ljava/util/concurrent/CompletableFuture$CoCompletion;,
        Ljava/util/concurrent/CompletableFuture$Completion;,
        Ljava/util/concurrent/CompletableFuture$DelayedCompleter;,
        Ljava/util/concurrent/CompletableFuture$DelayedExecutor;,
        Ljava/util/concurrent/CompletableFuture$Delayer;,
        Ljava/util/concurrent/CompletableFuture$MinimalStage;,
        Ljava/util/concurrent/CompletableFuture$OrAccept;,
        Ljava/util/concurrent/CompletableFuture$OrApply;,
        Ljava/util/concurrent/CompletableFuture$OrRelay;,
        Ljava/util/concurrent/CompletableFuture$OrRun;,
        Ljava/util/concurrent/CompletableFuture$Signaller;,
        Ljava/util/concurrent/CompletableFuture$TaskSubmitter;,
        Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;,
        Ljava/util/concurrent/CompletableFuture$Timeout;,
        Ljava/util/concurrent/CompletableFuture$UniAccept;,
        Ljava/util/concurrent/CompletableFuture$UniApply;,
        Ljava/util/concurrent/CompletableFuture$UniCompletion;,
        Ljava/util/concurrent/CompletableFuture$UniCompose;,
        Ljava/util/concurrent/CompletableFuture$UniExceptionally;,
        Ljava/util/concurrent/CompletableFuture$UniHandle;,
        Ljava/util/concurrent/CompletableFuture$UniRelay;,
        Ljava/util/concurrent/CompletableFuture$UniRun;,
        Ljava/util/concurrent/CompletableFuture$UniWhenComplete;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TT;>;",
        "Ljava/util/concurrent/CompletionStage",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final ASYNC:I = 0x1

.field private static final ASYNC_POOL:Ljava/util/concurrent/Executor;

.field static final NESTED:I = -0x1

.field private static final NEXT:J

.field static final NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

.field private static final RESULT:J

.field static final SPINS:I

.field private static final STACK:J

.field static final SYNC:I

.field private static final U:Lsun/misc/Unsafe;

.field private static final USE_COMMON_POOL:Z


# instance fields
.field volatile result:Ljava/lang/Object;

.field volatile stack:Ljava/util/concurrent/CompletableFuture$Completion;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 251
    new-instance v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    sput-object v2, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    .line 396
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v2

    if-le v2, v3, :cond_67

    move v2, v3

    .line 395
    :goto_11
    sput-boolean v2, Ljava/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    .line 402
    sget-boolean v2, Ljava/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    if-eqz v2, :cond_69

    .line 403
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v2

    .line 402
    :goto_1b
    sput-object v2, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    .line 429
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    if-le v2, v3, :cond_29

    .line 430
    const/16 v4, 0x100

    .line 429
    :cond_29
    sput v4, Ljava/util/concurrent/CompletableFuture;->SPINS:I

    .line 2779
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    .line 2785
    :try_start_31
    sget-object v2, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    .line 2786
    const-class v3, Ljava/util/concurrent/CompletableFuture;

    const-string/jumbo v4, "result"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2785
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    .line 2787
    sget-object v2, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    .line 2788
    const-class v3, Ljava/util/concurrent/CompletableFuture;

    const-string/jumbo v4, "stack"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2787
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/CompletableFuture;->STACK:J

    .line 2789
    sget-object v2, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    .line 2790
    const-class v3, Ljava/util/concurrent/CompletableFuture$Completion;

    const-string/jumbo v4, "next"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2789
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/CompletableFuture;->NEXT:J
    :try_end_64
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_31 .. :try_end_64} :catch_6f

    .line 2797
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    .line 115
    .local v1, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    .end local v1    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_67
    move v2, v4

    .line 396
    goto :goto_11

    .line 403
    :cond_69
    new-instance v2, Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;-><init>()V

    goto :goto_1b

    .line 2791
    :catch_6f
    move-exception v0

    .line 2792
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1819
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1820
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "r"    # Ljava/lang/Object;

    .prologue
    .line 1825
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1826
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 1827
    return-void
.end method

.method public static varargs allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2252
    .local p0, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/concurrent/CompletableFuture;->andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;
    .registers 9
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;II)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1331
    .local p0, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1332
    .local v3, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-le p1, p2, :cond_c

    .line 1333
    sget-object v5, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    iput-object v5, v3, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 1348
    :cond_b
    :goto_b
    return-object v3

    .line 1336
    :cond_c
    add-int v5, p1, p2

    ushr-int/lit8 v4, v5, 0x1

    .line 1337
    .local v4, "mid":I
    if-ne p1, v4, :cond_21

    aget-object v0, p0, p1

    .local v0, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :goto_14
    if-eqz v0, :cond_1b

    .line 1339
    if-ne p1, p2, :cond_26

    move-object v1, v0

    .local v1, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :goto_19
    if-nez v1, :cond_34

    .line 1341
    .end local v1    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_1b
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1338
    .end local v0    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_21
    invoke-static {p0, p1, v4}, Ljava/util/concurrent/CompletableFuture;->andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    goto :goto_14

    .line 1339
    .restart local v0    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_26
    add-int/lit8 v5, v4, 0x1

    if-ne p2, v5, :cond_2d

    aget-object v1, p0, p2

    goto :goto_19

    .line 1340
    :cond_2d
    add-int/lit8 v5, v4, 0x1

    invoke-static {p0, v5, p2}, Ljava/util/concurrent/CompletableFuture;->andTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    goto :goto_19

    .line 1342
    .restart local v1    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_34
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/CompletableFuture;->biRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1343
    new-instance v2, Ljava/util/concurrent/CompletableFuture$BiRelay;

    invoke-direct {v2, v3, v0, v1}, Ljava/util/concurrent/CompletableFuture$BiRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    .line 1344
    .local v2, "c":Ljava/util/concurrent/CompletableFuture$BiRelay;, "Ljava/util/concurrent/CompletableFuture$BiRelay<**>;"
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1345
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/concurrent/CompletableFuture$BiRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    goto :goto_b
.end method

.method public static varargs anyOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2271
    .local p0, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/concurrent/CompletableFuture;->orTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p0, "e"    # Ljava/util/concurrent/Executor;
    .param p1, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1673
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1674
    :cond_8
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1675
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AsyncRun;

    invoke-direct {v1, v0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncRun;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1676
    return-object v0
.end method

.method static asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p0, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier",
            "<TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 1637
    .local p1, "f":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1638
    :cond_8
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1639
    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AsyncSupply;

    invoke-direct {v1, v0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Supplier;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1640
    return-object v0
.end method

.method private biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 10
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    const/4 v1, 0x0

    .line 1224
    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-nez v4, :cond_f

    .line 1225
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1226
    .restart local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_f
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    .line 1227
    .local v2, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_1d

    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->biAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$BiAccept;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2c

    .line 1228
    :cond_1d
    new-instance v0, Ljava/util/concurrent/CompletableFuture$BiAccept;

    move-object v1, p1

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$BiAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)V

    .line 1229
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$BiAccept;, "Ljava/util/concurrent/CompletableFuture$BiAccept<TT;TU;>;"
    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1230
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$BiAccept;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1232
    .end local v0    # "c":Ljava/util/concurrent/CompletableFuture$BiAccept;, "Ljava/util/concurrent/CompletableFuture$BiAccept<TT;TU;>;"
    :cond_2c
    return-object v2
.end method

.method private biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 10
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    const/4 v1, 0x0

    .line 1152
    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-nez v4, :cond_f

    .line 1153
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1154
    .restart local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_f
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    .line 1155
    .local v2, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-nez p1, :cond_1d

    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->biApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$BiApply;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2c

    .line 1156
    :cond_1d
    new-instance v0, Ljava/util/concurrent/CompletableFuture$BiApply;

    move-object v1, p1

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$BiApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;)V

    .line 1157
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$BiApply;, "Ljava/util/concurrent/CompletableFuture$BiApply<TT;TU;TV;>;"
    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$BiApply;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1160
    .end local v0    # "c":Ljava/util/concurrent/CompletableFuture$BiApply;, "Ljava/util/concurrent/CompletableFuture$BiApply<TT;TU;TV;>;"
    :cond_2c
    return-object v2
.end method

.method private biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 10
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    const/4 v1, 0x0

    .line 1283
    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-nez v4, :cond_f

    .line 1284
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1285
    .restart local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_f
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    .line 1286
    .local v2, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_1d

    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->biRun(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$BiRun;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2c

    .line 1287
    :cond_1d
    new-instance v0, Ljava/util/concurrent/CompletableFuture$BiRun;

    move-object v1, p1

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$BiRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    .line 1288
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$BiRun;, "Ljava/util/concurrent/CompletableFuture$BiRun<TT;*>;"
    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1289
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$BiRun;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1291
    .end local v0    # "c":Ljava/util/concurrent/CompletableFuture$BiRun;, "Ljava/util/concurrent/CompletableFuture$BiRun<TT;*>;"
    :cond_2c
    return-object v2
.end method

.method public static completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 1896
    .local p0, "value":Ljava/lang/Object;, "TU;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    if-nez p0, :cond_6

    sget-object p0, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    .end local p0    # "value":Ljava/lang/Object;, "TU;"
    :cond_6
    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static completedStage(Ljava/lang/Object;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2611
    .local p0, "value":Ljava/lang/Object;, "TU;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    if-nez p0, :cond_6

    sget-object p0, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    .end local p0    # "value":Ljava/lang/Object;, "TU;"
    :cond_6
    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static delayedExecutor(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Executor;
    .registers 5
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 2593
    if-nez p2, :cond_8

    .line 2594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2595
    :cond_8
    new-instance v0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;

    sget-object v1, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static delayedExecutor(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .registers 6
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 2573
    if-eqz p2, :cond_4

    if-nez p3, :cond_a

    .line 2574
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2575
    :cond_a
    new-instance v0, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$DelayedExecutor;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "r"    # Ljava/lang/Object;

    .prologue
    .line 328
    instance-of v1, p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_1b

    move-object v1, p0

    .line 329
    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .local v0, "x":Ljava/lang/Throwable;
    if-eqz v0, :cond_1b

    .line 330
    instance-of v1, v0, Ljava/util/concurrent/CompletionException;

    xor-int/lit8 v1, v1, 0x1

    .line 328
    if-eqz v1, :cond_1b

    .line 331
    new-instance p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    .end local p0    # "r":Ljava/lang/Object;
    new-instance v1, Ljava/util/concurrent/CompletionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    .line 328
    .end local v0    # "x":Ljava/lang/Throwable;
    :cond_1b
    return-object p0
.end method

.method static encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "x"    # Ljava/lang/Throwable;
    .param p1, "r"    # Ljava/lang/Object;

    .prologue
    .line 293
    instance-of v1, p0, Ljava/util/concurrent/CompletionException;

    if-nez v1, :cond_10

    .line 294
    new-instance v0, Ljava/util/concurrent/CompletionException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "x":Ljava/lang/Throwable;
    .local v0, "x":Ljava/lang/Throwable;
    move-object p0, v0

    .line 297
    .end local v0    # "x":Ljava/lang/Throwable;
    .restart local p0    # "x":Ljava/lang/Throwable;
    :cond_a
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 295
    :cond_10
    instance-of v1, p1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_a

    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-ne p0, v1, :cond_a

    .line 296
    return-object p1
.end method

.method static encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;
    .registers 3
    .param p0, "x"    # Ljava/lang/Throwable;

    .prologue
    .line 275
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    instance-of v0, p0, Ljava/util/concurrent/CompletionException;

    if-eqz v0, :cond_a

    .end local p0    # "x":Ljava/lang/Throwable;
    :goto_6
    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 276
    .restart local p0    # "x":Ljava/lang/Throwable;
    :cond_a
    new-instance v0, Ljava/util/concurrent/CompletionException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p0, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2626
    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2627
    :cond_8
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static failedStage(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .registers 3
    .param p0, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2643
    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2644
    :cond_8
    new-instance v0, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V
    .registers 6
    .param p0, "c"    # Ljava/util/concurrent/CompletableFuture$Completion;
    .param p1, "next"    # Ljava/util/concurrent/CompletableFuture$Completion;

    .prologue
    .line 457
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->NEXT:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 458
    return-void
.end method

.method private orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 10
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v1, 0x0

    .line 1488
    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-nez v4, :cond_f

    .line 1489
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1490
    .restart local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_f
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    .line 1491
    .local v2, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_1d

    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->orAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$OrAccept;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2c

    .line 1492
    :cond_1d
    new-instance v0, Ljava/util/concurrent/CompletableFuture$OrAccept;

    move-object v1, p1

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$OrAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V

    .line 1493
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$OrAccept;, "Ljava/util/concurrent/CompletableFuture$OrAccept<TT;TU;>;"
    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1494
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$OrAccept;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1496
    .end local v0    # "c":Ljava/util/concurrent/CompletableFuture$OrAccept;, "Ljava/util/concurrent/CompletableFuture$OrAccept<TT;TU;>;"
    :cond_2c
    return-object v2
.end method

.method private orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 10
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;",
            "Ljava/util/function/Function",
            "<-TT;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local p3, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    const/4 v1, 0x0

    .line 1424
    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-nez v4, :cond_f

    .line 1425
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1426
    .restart local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_f
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    .line 1427
    .local v2, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-nez p1, :cond_1d

    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->orApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$OrApply;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2c

    .line 1428
    :cond_1d
    new-instance v0, Ljava/util/concurrent/CompletableFuture$OrApply;

    move-object v1, p1

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$OrApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    .line 1429
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$OrApply;, "Ljava/util/concurrent/CompletableFuture$OrApply<TT;TU;TV;>;"
    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1430
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$OrApply;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1432
    .end local v0    # "c":Ljava/util/concurrent/CompletableFuture$OrApply;, "Ljava/util/concurrent/CompletableFuture$OrApply<TT;TU;TV;>;"
    :cond_2c
    return-object v2
.end method

.method private orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 10
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "o":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    const/4 v1, 0x0

    .line 1546
    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    .local v4, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-nez v4, :cond_f

    .line 1547
    .end local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1548
    .restart local v4    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_f
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    .line 1549
    .local v2, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_1d

    invoke-virtual {v2, p0, v4, p3, v1}, Ljava/util/concurrent/CompletableFuture;->orRun(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$OrRun;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2c

    .line 1550
    :cond_1d
    new-instance v0, Ljava/util/concurrent/CompletableFuture$OrRun;

    move-object v1, p1

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$OrRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    .line 1551
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$OrRun;, "Ljava/util/concurrent/CompletableFuture$OrRun<TT;*>;"
    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1552
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture$OrRun;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1554
    .end local v0    # "c":Ljava/util/concurrent/CompletableFuture$OrRun;, "Ljava/util/concurrent/CompletableFuture$OrRun<TT;*>;"
    :cond_2c
    return-object v2
.end method

.method static orTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;
    .registers 9
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;II)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1587
    .local p0, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1588
    .local v3, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Object;>;"
    if-gt p1, p2, :cond_41

    .line 1590
    add-int v5, p1, p2

    ushr-int/lit8 v4, v5, 0x1

    .line 1591
    .local v4, "mid":I
    if-ne p1, v4, :cond_1c

    aget-object v0, p0, p1

    .local v0, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :goto_f
    if-eqz v0, :cond_16

    .line 1593
    if-ne p1, p2, :cond_21

    move-object v1, v0

    .local v1, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :goto_14
    if-nez v1, :cond_2f

    .line 1595
    .end local v1    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_16
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1592
    .end local v0    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_1c
    invoke-static {p0, p1, v4}, Ljava/util/concurrent/CompletableFuture;->orTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    goto :goto_f

    .line 1593
    .restart local v0    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_21
    add-int/lit8 v5, v4, 0x1

    if-ne p2, v5, :cond_28

    aget-object v1, p0, p2

    goto :goto_14

    .line 1594
    :cond_28
    add-int/lit8 v5, v4, 0x1

    invoke-static {p0, v5, p2}, Ljava/util/concurrent/CompletableFuture;->orTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    goto :goto_14

    .line 1596
    .restart local v1    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_2f
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/CompletableFuture;->orRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 1597
    new-instance v2, Ljava/util/concurrent/CompletableFuture$OrRelay;

    invoke-direct {v2, v3, v0, v1}, Ljava/util/concurrent/CompletableFuture$OrRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    .line 1598
    .local v2, "c":Ljava/util/concurrent/CompletableFuture$OrRelay;, "Ljava/util/concurrent/CompletableFuture$OrRelay<**>;"
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1599
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/concurrent/CompletableFuture$OrRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1602
    .end local v0    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v1    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v2    # "c":Ljava/util/concurrent/CompletableFuture$OrRelay;, "Ljava/util/concurrent/CompletableFuture$OrRelay<**>;"
    .end local v4    # "mid":I
    :cond_41
    return-object v3
.end method

.method private static reportGet(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
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

    .prologue
    const/4 v4, 0x0

    .line 348
    if-nez p0, :cond_9

    .line 349
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 350
    :cond_9
    instance-of v3, p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v3, :cond_2c

    .line 352
    check-cast p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    .end local p0    # "r":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .local v2, "x":Ljava/lang/Throwable;
    if-nez v2, :cond_14

    .line 353
    return-object v4

    .line 354
    :cond_14
    instance-of v3, v2, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_1b

    .line 355
    check-cast v2, Ljava/util/concurrent/CancellationException;

    .end local v2    # "x":Ljava/lang/Throwable;
    throw v2

    .line 356
    .restart local v2    # "x":Ljava/lang/Throwable;
    :cond_1b
    instance-of v3, v2, Ljava/util/concurrent/CompletionException;

    if-eqz v3, :cond_26

    .line 357
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_26

    .line 358
    move-object v2, v0

    .line 359
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_26
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 361
    .end local v2    # "x":Ljava/lang/Throwable;
    .restart local p0    # "r":Ljava/lang/Object;
    :cond_2c
    move-object v1, p0

    .line 362
    .local v1, "t":Ljava/lang/Object;, "TT;"
    return-object p0
.end method

.method private static reportJoin(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
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

    .prologue
    const/4 v3, 0x0

    .line 369
    instance-of v2, p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v2, :cond_20

    .line 371
    check-cast p0, Ljava/util/concurrent/CompletableFuture$AltResult;

    .end local p0    # "r":Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .local v1, "x":Ljava/lang/Throwable;
    if-nez v1, :cond_c

    .line 372
    return-object v3

    .line 373
    :cond_c
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_13

    .line 374
    check-cast v1, Ljava/util/concurrent/CancellationException;

    .end local v1    # "x":Ljava/lang/Throwable;
    throw v1

    .line 375
    .restart local v1    # "x":Ljava/lang/Throwable;
    :cond_13
    instance-of v2, v1, Ljava/util/concurrent/CompletionException;

    if-eqz v2, :cond_1a

    .line 376
    check-cast v1, Ljava/util/concurrent/CompletionException;

    .end local v1    # "x":Ljava/lang/Throwable;
    throw v1

    .line 377
    .restart local v1    # "x":Ljava/lang/Throwable;
    :cond_1a
    new-instance v2, Ljava/util/concurrent/CompletionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 379
    .end local v1    # "x":Ljava/lang/Throwable;
    .restart local p0    # "r":Ljava/lang/Object;
    :cond_20
    move-object v0, p0

    .line 380
    .local v0, "t":Ljava/lang/Object;, "TT;"
    return-object p0
.end method

.method public static runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1869
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1884
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .registers 2
    .param p0, "e"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 415
    sget-boolean v0, Ljava/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    if-ne p0, v0, :cond_d

    .line 416
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    return-object v0

    .line 417
    :cond_d
    if-nez p0, :cond_15

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 418
    :cond_15
    return-object p0
.end method

.method public static supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 1840
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 1856
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private timedGet(J)Ljava/lang/Object;
    .registers 18
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 1777
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1778
    const/4 v1, 0x0

    return-object v1

    .line 1779
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_62

    .line 1780
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long v6, v2, p1

    .line 1781
    .local v6, "d":J
    const-wide/16 v2, 0x0

    cmp-long v1, v6, v2

    if-nez v1, :cond_2d

    const-wide/16 v4, 0x1

    .line 1782
    .local v4, "deadline":J
    :goto_1c
    const/4 v0, 0x0

    .line 1783
    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    const/4 v9, 0x0

    .line 1785
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    :cond_1e
    :goto_1e
    iget-object v10, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v10, "r":Ljava/lang/Object;
    if-nez v10, :cond_3e

    .line 1786
    if-nez v0, :cond_2f

    .line 1787
    new-instance v0, Ljava/util/concurrent/CompletableFuture$Signaller;

    const/4 v1, 0x1

    move-wide/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$Signaller;-><init>(ZJJ)V

    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    goto :goto_1e

    .line 1781
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    .end local v4    # "deadline":J
    .end local v10    # "r":Ljava/lang/Object;
    :cond_2d
    move-wide v4, v6

    .restart local v4    # "deadline":J
    goto :goto_1c

    .line 1788
    .restart local v10    # "r":Ljava/lang/Object;
    :cond_2f
    if-nez v9, :cond_36

    .line 1789
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v9

    .local v9, "queued":Z
    goto :goto_1e

    .line 1790
    .end local v9    # "queued":Z
    :cond_36
    iget-wide v2, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->nanos:J

    const-wide/16 v12, 0x0

    cmp-long v1, v2, v12

    if-gtz v1, :cond_51

    .line 1802
    :cond_3e
    :goto_3e
    if-eqz v0, :cond_43

    .line 1803
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1804
    :cond_43
    if-eqz v10, :cond_5e

    .line 1805
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 1808
    :goto_48
    if-nez v10, :cond_50

    if-eqz v0, :cond_62

    iget-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v1, :cond_62

    .line 1809
    :cond_50
    return-object v10

    .line 1794
    :cond_51
    :try_start_51
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_54} :catch_59

    .line 1798
    :goto_54
    iget-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v1, :cond_1e

    goto :goto_3e

    .line 1795
    :catch_59
    move-exception v8

    .line 1796
    .local v8, "ie":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    goto :goto_54

    .line 1807
    .end local v8    # "ie":Ljava/lang/InterruptedException;
    :cond_5e
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    goto :goto_48

    .line 1811
    .end local v4    # "deadline":J
    .end local v6    # "d":J
    .end local v10    # "r":Ljava/lang/Object;
    :cond_62
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1
.end method

.method private uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v2, 0x0

    .line 675
    if-nez p2, :cond_9

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 676
    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 677
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_17

    invoke-virtual {v1, p0, p2, v2}, Ljava/util/concurrent/CompletableFuture;->uniAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$UniAccept;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_23

    .line 678
    :cond_17
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniAccept;

    invoke-direct {v0, p1, v1, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniAccept;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;)V

    .line 679
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniAccept;, "Ljava/util/concurrent/CompletableFuture$UniAccept<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 680
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniAccept;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 682
    .end local v0    # "c":Ljava/util/concurrent/CompletableFuture$UniAccept;, "Ljava/util/concurrent/CompletableFuture$UniAccept<TT;>;"
    :cond_23
    return-object v1
.end method

.method private uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Function",
            "<-TT;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    const/4 v2, 0x0

    .line 620
    if-nez p2, :cond_9

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 621
    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 622
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-nez p1, :cond_17

    invoke-virtual {v1, p0, p2, v2}, Ljava/util/concurrent/CompletableFuture;->uniApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniApply;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_23

    .line 623
    :cond_17
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniApply;

    invoke-direct {v0, p1, v1, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniApply;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    .line 624
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniApply;, "Ljava/util/concurrent/CompletableFuture$UniApply<TT;TV;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 625
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniApply;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 627
    .end local v0    # "c":Ljava/util/concurrent/CompletableFuture$UniApply;, "Ljava/util/concurrent/CompletableFuture$UniApply<TT;TV;>;"
    :cond_23
    return-object v1
.end method

.method private uniAsMinimalStage()Ljava/util/concurrent/CompletableFuture$MinimalStage;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture$MinimalStage",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 940
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v2, "r":Ljava/lang/Object;
    if-eqz v2, :cond_e

    .line 941
    new-instance v3, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v3

    .line 942
    :cond_e
    new-instance v1, Ljava/util/concurrent/CompletableFuture$MinimalStage;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture$MinimalStage;-><init>()V

    .line 943
    .local v1, "d":Ljava/util/concurrent/CompletableFuture$MinimalStage;, "Ljava/util/concurrent/CompletableFuture$MinimalStage<TT;>;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v0, v1, p0}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    .line 944
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 945
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CompletableFuture$UniRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 946
    return-object v1
.end method

.method private uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 13
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TV;>;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TV;>;>;"
    const/4 v9, 0x0

    .line 1003
    if-nez p2, :cond_9

    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 1005
    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    .line 1006
    .local v2, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-nez p1, :cond_4e

    iget-object v5, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v5, "r":Ljava/lang/Object;
    if-eqz v5, :cond_4e

    .line 1007
    instance-of v9, v5, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v9, :cond_26

    move-object v9, v5

    .line 1008
    check-cast v9, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v8, v9, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .local v8, "x":Ljava/lang/Throwable;
    if-eqz v8, :cond_25

    .line 1009
    invoke-static {v8, v5}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 1010
    return-object v2

    .line 1012
    :cond_25
    const/4 v5, 0x0

    .line 1015
    .end local v5    # "r":Ljava/lang/Object;
    .end local v8    # "x":Ljava/lang/Throwable;
    :cond_26
    move-object v7, v5

    .line 1016
    .local v7, "t":Ljava/lang/Object;, "TT;"
    :try_start_27
    invoke-interface {p2, v7}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v9}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    .line 1017
    .local v4, "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    iget-object v6, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v6, "s":Ljava/lang/Object;
    if-eqz v6, :cond_39

    .line 1018
    invoke-virtual {v2, v6}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    .line 1024
    :goto_38
    return-object v2

    .line 1020
    :cond_39
    new-instance v1, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v1, v2, v4}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    .line 1021
    .local v1, "c":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TV;>;"
    invoke-virtual {v4, v1}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 1022
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/concurrent/CompletableFuture$UniRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_45} :catch_46

    goto :goto_38

    .line 1025
    .end local v1    # "c":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TV;>;"
    .end local v4    # "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    .end local v6    # "s":Ljava/lang/Object;
    :catch_46
    move-exception v3

    .line 1026
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v9

    iput-object v9, v2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 1027
    return-object v2

    .line 1030
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v7    # "t":Ljava/lang/Object;, "TT;"
    :cond_4e
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniCompose;

    invoke-direct {v0, p1, v2, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniCompose;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    .line 1031
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniCompose;, "Ljava/util/concurrent/CompletableFuture$UniCompose<TT;TV;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 1032
    invoke-virtual {v0, v9}, Ljava/util/concurrent/CompletableFuture$UniCompose;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 1033
    return-object v2
.end method

.method private uniCopyStage()Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 927
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 928
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v2, "r":Ljava/lang/Object;
    if-eqz v2, :cond_c

    .line 929
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    .line 935
    :goto_b
    return-object v1

    .line 931
    :cond_c
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v0, v1, p0}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    .line 932
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 933
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CompletableFuture$UniRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    goto :goto_b
.end method

.method private uniExceptionallyStage(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    const/4 v2, 0x0

    .line 892
    if-nez p1, :cond_9

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 893
    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 894
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {v1, p0, p1, v2}, Ljava/util/concurrent/CompletableFuture;->uniExceptionally(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniExceptionally;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 895
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniExceptionally;

    invoke-direct {v0, v1, p0, p1}, Ljava/util/concurrent/CompletableFuture$UniExceptionally;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;)V

    .line 896
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniExceptionally;, "Ljava/util/concurrent/CompletableFuture$UniExceptionally<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 897
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 899
    .end local v0    # "c":Ljava/util/concurrent/CompletableFuture$UniExceptionally;, "Ljava/util/concurrent/CompletableFuture$UniExceptionally<TT;>;"
    :cond_1f
    return-object v1
.end method

.method private uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TV;>;"
    const/4 v2, 0x0

    .line 842
    if-nez p2, :cond_9

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 843
    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 844
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-nez p1, :cond_17

    invoke-virtual {v1, p0, p2, v2}, Ljava/util/concurrent/CompletableFuture;->uniHandle(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$UniHandle;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_23

    .line 845
    :cond_17
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniHandle;

    invoke-direct {v0, p1, v1, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniHandle;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;)V

    .line 846
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniHandle;, "Ljava/util/concurrent/CompletableFuture$UniHandle<TT;TV;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 847
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniHandle;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 849
    .end local v0    # "c":Ljava/util/concurrent/CompletableFuture$UniHandle;, "Ljava/util/concurrent/CompletableFuture$UniHandle<TT;TV;>;"
    :cond_23
    return-object v1
.end method

.method private uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p2, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v2, 0x0

    .line 723
    if-nez p2, :cond_9

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 724
    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 725
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-nez p1, :cond_17

    invoke-virtual {v1, p0, p2, v2}, Ljava/util/concurrent/CompletableFuture;->uniRun(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$UniRun;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_23

    .line 726
    :cond_17
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniRun;

    invoke-direct {v0, p1, v1, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniRun;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    .line 727
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniRun;, "Ljava/util/concurrent/CompletableFuture$UniRun<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 728
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniRun;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 730
    .end local v0    # "c":Ljava/util/concurrent/CompletableFuture$UniRun;, "Ljava/util/concurrent/CompletableFuture$UniRun<TT;>;"
    :cond_23
    return-object v1
.end method

.method private uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    const/4 v2, 0x0

    .line 786
    if-nez p2, :cond_9

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 787
    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 788
    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-nez p1, :cond_17

    invoke-virtual {v1, p0, p2, v2}, Ljava/util/concurrent/CompletableFuture;->uniWhenComplete(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$UniWhenComplete;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_23

    .line 789
    :cond_17
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;

    invoke-direct {v0, p1, v1, p0, p2}, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;)V

    .line 790
    .local v0, "c":Ljava/util/concurrent/CompletableFuture$UniWhenComplete;, "Ljava/util/concurrent/CompletableFuture$UniWhenComplete<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 791
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 793
    .end local v0    # "c":Ljava/util/concurrent/CompletableFuture$UniWhenComplete;, "Ljava/util/concurrent/CompletableFuture$UniWhenComplete<TT;>;"
    :cond_23
    return-object v1
.end method

.method private waitingGet(Z)Ljava/lang/Object;
    .registers 13
    .param p1, "interruptible"    # Z

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    .line 1735
    const/4 v0, 0x0

    .line 1736
    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    const/4 v7, 0x0

    .line 1737
    .local v7, "queued":Z
    sget v9, Ljava/util/concurrent/CompletableFuture;->SPINS:I

    .line 1739
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    .end local v7    # "queued":Z
    .local v9, "spins":I
    :cond_7
    :goto_7
    iget-object v8, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v8, "r":Ljava/lang/Object;
    if-nez v8, :cond_30

    .line 1740
    if-lez v9, :cond_16

    .line 1741
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    move-result v1

    if-ltz v1, :cond_7

    .line 1742
    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    .line 1744
    :cond_16
    if-nez v0, :cond_20

    .line 1745
    new-instance v0, Ljava/util/concurrent/CompletableFuture$Signaller;

    move v1, p1

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/CompletableFuture$Signaller;-><init>(ZJJ)V

    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    goto :goto_7

    .line 1746
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Signaller;
    :cond_20
    if-nez v7, :cond_27

    .line 1747
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v7

    .local v7, "queued":Z
    goto :goto_7

    .line 1750
    .end local v7    # "queued":Z
    :cond_27
    :try_start_27
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_43

    .line 1754
    :goto_2a
    iget-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    .line 1758
    :cond_30
    if-eqz v0, :cond_3d

    .line 1759
    iput-object v10, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1760
    iget-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v1, :cond_3d

    .line 1761
    if-eqz p1, :cond_48

    .line 1762
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    .line 1767
    :cond_3d
    :goto_3d
    if-eqz v8, :cond_42

    .line 1768
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 1769
    :cond_42
    return-object v8

    .line 1751
    :catch_43
    move-exception v6

    .line 1752
    .local v6, "ie":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    goto :goto_2a

    .line 1764
    .end local v6    # "ie":Ljava/lang/InterruptedException;
    :cond_48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3d
.end method


# virtual methods
.method public acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2118
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2116
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2123
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2129
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2121
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 5

    .prologue
    .line 2126
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Function",
            "<-TT;TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2102
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2100
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Function",
            "<-TT;TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2107
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TU;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Function",
            "<-TT;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2113
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    .local p2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TU;>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2105
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 5

    .prologue
    .line 2110
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method final biAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$BiAccept;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TR;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/BiConsumer",
            "<-TR;-TS;>;",
            "Ljava/util/concurrent/CompletableFuture$BiAccept",
            "<TR;TS;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TR;>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p3, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TR;-TS;>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$BiAccept;, "Ljava/util/concurrent/CompletableFuture$BiAccept<TR;TS;>;"
    const/4 v7, 0x0

    .line 1188
    if-eqz p1, :cond_7

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v1, "r":Ljava/lang/Object;
    if-nez v1, :cond_8

    .line 1190
    .end local v1    # "r":Ljava/lang/Object;
    :cond_7
    return v7

    .line 1189
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_8
    if-eqz p2, :cond_7

    iget-object v3, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v3, "s":Ljava/lang/Object;
    if-eqz v3, :cond_7

    if-eqz p3, :cond_7

    .line 1191
    iget-object v6, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v6, :cond_22

    .line 1192
    instance-of v6, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v6, :cond_25

    move-object v6, v1

    .line 1193
    check-cast v6, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .local v5, "x":Ljava/lang/Throwable;
    if-eqz v5, :cond_24

    .line 1194
    invoke-virtual {p0, v5, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1217
    .end local v1    # "r":Ljava/lang/Object;
    .end local v3    # "s":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_22
    :goto_22
    const/4 v6, 0x1

    return v6

    .line 1197
    .restart local v1    # "r":Ljava/lang/Object;
    .restart local v3    # "s":Ljava/lang/Object;
    .restart local v5    # "x":Ljava/lang/Throwable;
    :cond_24
    const/4 v1, 0x0

    .line 1199
    .end local v1    # "r":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_25
    instance-of v6, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v6, :cond_35

    move-object v6, v3

    .line 1200
    check-cast v6, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .restart local v5    # "x":Ljava/lang/Throwable;
    if-eqz v5, :cond_34

    .line 1201
    invoke-virtual {p0, v5, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_22

    .line 1204
    :cond_34
    const/4 v3, 0x0

    .line 1207
    .end local v3    # "s":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_35
    if-eqz p4, :cond_40

    :try_start_37
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$BiAccept;->claim()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_40

    .line 1208
    return v7

    .line 1209
    :cond_40
    move-object v2, v1

    .line 1210
    .local v2, "rr":Ljava/lang/Object;, "TR;"
    move-object v4, v3

    .line 1211
    .local v4, "ss":Ljava/lang/Object;, "TS;"
    invoke-interface {p3, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1212
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_48} :catch_49

    goto :goto_22

    .line 1213
    .end local v2    # "rr":Ljava/lang/Object;, "TR;"
    .end local v4    # "ss":Ljava/lang/Object;, "TS;"
    :catch_49
    move-exception v0

    .line 1214
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_22
.end method

.method final biApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$BiApply;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TR;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/BiFunction",
            "<-TR;-TS;+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$BiApply",
            "<TR;TS;TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TR;>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p3, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TR;-TS;+TT;>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$BiApply;, "Ljava/util/concurrent/CompletableFuture$BiApply<TR;TS;TT;>;"
    const/4 v7, 0x0

    .line 1117
    if-eqz p1, :cond_7

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v1, "r":Ljava/lang/Object;
    if-nez v1, :cond_8

    .line 1119
    .end local v1    # "r":Ljava/lang/Object;
    :cond_7
    return v7

    .line 1118
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_8
    if-eqz p2, :cond_7

    iget-object v3, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v3, "s":Ljava/lang/Object;
    if-eqz v3, :cond_7

    if-eqz p3, :cond_7

    .line 1120
    iget-object v6, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v6, :cond_22

    .line 1121
    instance-of v6, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v6, :cond_25

    move-object v6, v1

    .line 1122
    check-cast v6, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .local v5, "x":Ljava/lang/Throwable;
    if-eqz v5, :cond_24

    .line 1123
    invoke-virtual {p0, v5, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1145
    .end local v1    # "r":Ljava/lang/Object;
    .end local v3    # "s":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_22
    :goto_22
    const/4 v6, 0x1

    return v6

    .line 1126
    .restart local v1    # "r":Ljava/lang/Object;
    .restart local v3    # "s":Ljava/lang/Object;
    .restart local v5    # "x":Ljava/lang/Throwable;
    :cond_24
    const/4 v1, 0x0

    .line 1128
    .end local v1    # "r":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_25
    instance-of v6, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v6, :cond_35

    move-object v6, v3

    .line 1129
    check-cast v6, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .restart local v5    # "x":Ljava/lang/Throwable;
    if-eqz v5, :cond_34

    .line 1130
    invoke-virtual {p0, v5, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_22

    .line 1133
    :cond_34
    const/4 v3, 0x0

    .line 1136
    .end local v3    # "s":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_35
    if-eqz p4, :cond_40

    :try_start_37
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$BiApply;->claim()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_40

    .line 1137
    return v7

    .line 1138
    :cond_40
    move-object v2, v1

    .line 1139
    .local v2, "rr":Ljava/lang/Object;, "TR;"
    move-object v4, v3

    .line 1140
    .local v4, "ss":Ljava/lang/Object;, "TS;"
    invoke-interface {p3, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_49} :catch_4a

    goto :goto_22

    .line 1141
    .end local v2    # "rr":Ljava/lang/Object;, "TR;"
    .end local v4    # "ss":Ljava/lang/Object;, "TS;"
    :catch_4a
    move-exception v0

    .line 1142
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_22
.end method

.method biRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1314
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz p1, :cond_6

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v0, "r":Ljava/lang/Object;
    if-nez v0, :cond_8

    .line 1316
    .end local v0    # "r":Ljava/lang/Object;
    :cond_6
    const/4 v3, 0x0

    return v3

    .line 1315
    .restart local v0    # "r":Ljava/lang/Object;
    :cond_8
    if-eqz p2, :cond_6

    iget-object v1, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v1, "s":Ljava/lang/Object;
    if-eqz v1, :cond_6

    .line 1317
    iget-object v3, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v3, :cond_20

    .line 1318
    instance-of v3, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v3, :cond_22

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v2, v3, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .local v2, "x":Ljava/lang/Throwable;
    if-eqz v2, :cond_22

    .line 1319
    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1325
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_20
    :goto_20
    const/4 v3, 0x1

    return v3

    .line 1320
    :cond_22
    instance-of v3, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v3, :cond_31

    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v2, v3, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .restart local v2    # "x":Ljava/lang/Throwable;
    if-eqz v2, :cond_31

    .line 1321
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_20

    .line 1323
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_31
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z

    goto :goto_20
.end method

.method final biRun(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$BiRun;)Z
    .registers 11
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/CompletableFuture$BiRun",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$BiRun;, "Ljava/util/concurrent/CompletableFuture$BiRun<**>;"
    const/4 v5, 0x0

    .line 1259
    if-eqz p1, :cond_7

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v1, "r":Ljava/lang/Object;
    if-nez v1, :cond_8

    .line 1261
    .end local v1    # "r":Ljava/lang/Object;
    :cond_7
    return v5

    .line 1260
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_8
    if-eqz p2, :cond_7

    iget-object v2, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v2, "s":Ljava/lang/Object;
    if-eqz v2, :cond_7

    if-eqz p3, :cond_7

    .line 1262
    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_22

    .line 1263
    instance-of v4, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v4, :cond_24

    move-object v4, v1

    check-cast v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v3, :cond_24

    .line 1264
    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1277
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_22
    :goto_22
    const/4 v4, 0x1

    return v4

    .line 1265
    :cond_24
    instance-of v4, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v4, :cond_33

    move-object v4, v2

    check-cast v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .restart local v3    # "x":Ljava/lang/Throwable;
    if-eqz v3, :cond_33

    .line 1266
    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_22

    .line 1269
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_33
    if-eqz p4, :cond_3e

    :try_start_35
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$BiRun;->claim()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3e

    .line 1270
    return v5

    .line 1271
    :cond_3e
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1272
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_44} :catch_45

    goto :goto_22

    .line 1273
    :catch_45
    move-exception v0

    .line 1274
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_22
.end method

.method final bipush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture$BiCompletion",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "c":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    const/4 v3, 0x0

    .line 1068
    if-eqz p2, :cond_34

    .line 1070
    :goto_3
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v1, "r":Ljava/lang/Object;
    if-nez v1, :cond_13

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_13

    .line 1071
    invoke-static {p2, v3}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_3

    .line 1072
    :cond_13
    if-eqz p1, :cond_34

    if-eq p1, p0, :cond_34

    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_34

    .line 1073
    if-eqz v1, :cond_2e

    move-object v0, p2

    .line 1074
    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_1e
    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_34

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_34

    .line 1075
    invoke-static {v0, v3}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_1e

    .line 1073
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_2e
    new-instance v0, Ljava/util/concurrent/CompletableFuture$CoCompletion;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CompletableFuture$CoCompletion;-><init>(Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .restart local v0    # "q":Ljava/util/concurrent/CompletableFuture$Completion;
    goto :goto_1e

    .line 1078
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Completion;
    .end local v1    # "r":Ljava/lang/Object;
    :cond_34
    return-void
.end method

.method public cancel(Z)Z
    .registers 5
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 2290
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_1c

    .line 2291
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    move-result v0

    .line 2292
    :goto_12
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2293
    if-nez v0, :cond_1e

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->isCancelled()Z

    move-result v1

    :goto_1b
    return v1

    .line 2290
    :cond_1c
    const/4 v0, 0x0

    .local v0, "cancelled":Z
    goto :goto_12

    .line 2293
    .end local v0    # "cancelled":Z
    :cond_1e
    const/4 v1, 0x1

    goto :goto_1b
.end method

.method final casStack(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)Z
    .registers 9
    .param p1, "cmp"    # Ljava/util/concurrent/CompletableFuture$Completion;
    .param p2, "val"    # Ljava/util/concurrent/CompletableFuture$Completion;

    .prologue
    .line 228
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

.method final cleanStack()V
    .registers 5

    .prologue
    .line 489
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    .local v0, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    .end local v0    # "p":Ljava/util/concurrent/CompletableFuture$Completion;
    .local v1, "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_3
    if-eqz v1, :cond_26

    .line 490
    iget-object v2, v1, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    .line 491
    .local v2, "s":Ljava/util/concurrent/CompletableFuture$Completion;
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture$Completion;->isLive()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 492
    move-object v0, v1

    .line 493
    .local v0, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    move-object v1, v2

    goto :goto_3

    .line 495
    .end local v0    # "p":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_10
    if-nez v0, :cond_18

    .line 496
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->casStack(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)Z

    .line 497
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    goto :goto_3

    .line 500
    :cond_18
    iput-object v2, v0, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    .line 501
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture$Completion;->isLive()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 502
    move-object v1, v2

    goto :goto_3

    .line 504
    :cond_22
    const/4 v0, 0x0

    .line 505
    .local v0, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    goto :goto_3

    .line 509
    .end local v0    # "p":Ljava/util/concurrent/CompletableFuture$Completion;
    .end local v2    # "s":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_26
    return-void
.end method

.method public complete(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 1987
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z

    move-result v0

    .line 1988
    .local v0, "triggered":Z
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 1989
    return v0
.end method

.method public completeAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2505
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/CompletableFuture;->completeAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public completeAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2486
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 2487
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2488
    :cond_a
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AsyncSupply;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Supplier;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2489
    return-object p0
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)Z
    .registers 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 2001
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2002
    :cond_8
    new-instance v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v1, p1}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    move-result v0

    .line 2003
    .local v0, "triggered":Z
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2004
    return v0
.end method

.method final completeNull()Z
    .registers 7

    .prologue
    .line 255
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    .line 256
    sget-object v5, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    .line 255
    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .registers 7
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2547
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-nez p4, :cond_8

    .line 2548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2549
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1d

    .line 2550
    new-instance v0, Ljava/util/concurrent/CompletableFuture$Canceller;

    .line 2551
    new-instance v1, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;

    invoke-direct {v1, p0, p1}, Ljava/util/concurrent/CompletableFuture$DelayedCompleter;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)V

    .line 2550
    invoke-static {v1, p2, p3, p4}, Ljava/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$Canceller;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 2553
    :cond_1d
    return-object p0
.end method

.method final completeRelay(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "r"    # Ljava/lang/Object;

    .prologue
    .line 339
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    .line 340
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 339
    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final completeThrowable(Ljava/lang/Throwable;)Z
    .registers 8
    .param p1, "x"    # Ljava/lang/Throwable;

    .prologue
    .line 281
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    .line 282
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object v5

    .line 281
    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "x"    # Ljava/lang/Throwable;
    .param p2, "r"    # Ljava/lang/Object;

    .prologue
    .line 309
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    .line 310
    invoke-static {p1, p2}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 309
    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final completeValue(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 266
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    .line 267
    if-nez p1, :cond_f

    sget-object v5, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    :goto_9
    move-object v1, p0

    .line 266
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_f
    move-object v5, p1

    .line 267
    goto :goto_9
.end method

.method public copy()Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2449
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;->uniCopyStage()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public defaultExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 2429
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method encodeOutcome(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 3
    .param p2, "x"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_7

    if-nez p1, :cond_6

    sget-object p1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_6
    :goto_6
    return-object p1

    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_7
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture$AltResult;

    move-result-object p1

    goto :goto_6
.end method

.method final encodeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    sget-object p1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_4
    return-object p1
.end method

.method public exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2222
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CompletableFuture;->uniExceptionallyStage(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .prologue
    .line 2203
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
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

    .prologue
    .line 1921
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v0, "r":Ljava/lang/Object;
    if-nez v0, :cond_9

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "r":Ljava/lang/Object;
    :cond_9
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->reportGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 9
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

    .prologue
    .line 1940
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 1941
    .local v0, "nanos":J
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v2, "r":Ljava/lang/Object;
    if-nez v2, :cond_c

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/CompletableFuture;->timedGet(J)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "r":Ljava/lang/Object;
    :cond_c
    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->reportGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public getNow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 1975
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "valueIfAbsent":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v0, "r":Ljava/lang/Object;
    if-nez v0, :cond_5

    .end local p1    # "valueIfAbsent":Ljava/lang/Object;, "TT;"
    :goto_4
    return-object p1

    .restart local p1    # "valueIfAbsent":Ljava/lang/Object;, "TT;"
    :cond_5
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->reportJoin(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4
.end method

.method public getNumberOfDependents()I
    .registers 3

    .prologue
    .line 2365
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    .line 2366
    .local v0, "count":I
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    .local v1, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_3
    if-eqz v1, :cond_a

    .line 2367
    add-int/lit8 v0, v0, 0x1

    .line 2366
    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    goto :goto_3

    .line 2368
    :cond_a
    return v0
.end method

.method public handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2181
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .prologue
    .line 2179
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2186
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2191
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .prologue
    .line 2184
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2189
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method final internalComplete(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "r"    # Ljava/lang/Object;

    .prologue
    .line 224
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

.method public isCancelled()Z
    .registers 3

    .prologue
    .line 2305
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v0, "r":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_d

    .line 2306
    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    .end local v0    # "r":Ljava/lang/Object;
    iget-object v1, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    instance-of v1, v1, Ljava/util/concurrent/CancellationException;

    .line 2305
    :goto_c
    return v1

    .restart local v0    # "r":Ljava/lang/Object;
    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isCompletedExceptionally()Z
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v1, 0x0

    .line 2321
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v0, "r":Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v2, :cond_c

    sget-object v2, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eq v0, v2, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 1906
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public join()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1960
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v0, "r":Ljava/lang/Object;
    if-nez v0, :cond_9

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "r":Ljava/lang/Object;
    :cond_9
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->reportJoin(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public minimalCompletionStage()Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletionStage",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2468
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;->uniAsMinimalStage()Ljava/util/concurrent/CompletableFuture$MinimalStage;

    move-result-object v0

    return-object v0
.end method

.method public newIncompleteFuture()Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2412
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    return-object v0
.end method

.method public obtrudeException(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 2351
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2352
    :cond_8
    new-instance v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2353
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2354
    return-void
.end method

.method public obtrudeValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 2335
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    sget-object p1, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_4
    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2336
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2337
    return-void
.end method

.method final orAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$OrAccept;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:TR;>(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TR;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/Consumer",
            "<-TR;>;",
            "Ljava/util/concurrent/CompletableFuture$OrAccept",
            "<TR;TS;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TR;>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p3, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TR;>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$OrAccept;, "Ljava/util/concurrent/CompletableFuture$OrAccept<TR;TS;>;"
    const/4 v6, 0x0

    .line 1461
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 1463
    :cond_5
    return v6

    .line 1462
    :cond_6
    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v2, "r":Ljava/lang/Object;
    if-nez v2, :cond_e

    iget-object v2, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_5

    :cond_e
    if-eqz p3, :cond_5

    .line 1464
    iget-object v5, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v5, :cond_2e

    .line 1466
    if-eqz p4, :cond_1f

    :try_start_16
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$OrAccept;->claim()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1f

    .line 1467
    return v6

    .line 1468
    :cond_1f
    instance-of v5, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v5, :cond_31

    .line 1469
    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object v5, v0

    iget-object v4, v5, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .local v4, "x":Ljava/lang/Throwable;
    if-eqz v4, :cond_30

    .line 1470
    invoke-virtual {p0, v4, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1482
    .end local v2    # "r":Ljava/lang/Object;
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_2e
    :goto_2e
    const/4 v5, 0x1

    return v5

    .line 1473
    .restart local v2    # "r":Ljava/lang/Object;
    .restart local v4    # "x":Ljava/lang/Throwable;
    :cond_30
    const/4 v2, 0x0

    .line 1475
    .end local v2    # "r":Ljava/lang/Object;
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_31
    move-object v3, v2

    .line 1476
    .local v3, "rr":Ljava/lang/Object;, "TR;"
    invoke-interface {p3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1477
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_38} :catch_39

    goto :goto_2e

    .line 1478
    .end local v3    # "rr":Ljava/lang/Object;, "TR;"
    :catch_39
    move-exception v1

    .line 1479
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_2e
.end method

.method final orApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$OrApply;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:TR;>(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TR;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/Function",
            "<-TR;+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$OrApply",
            "<TR;TS;TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TR;>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p3, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TR;+TT;>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$OrApply;, "Ljava/util/concurrent/CompletableFuture$OrApply<TR;TS;TT;>;"
    const/4 v6, 0x0

    .line 1397
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 1399
    :cond_5
    return v6

    .line 1398
    :cond_6
    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v2, "r":Ljava/lang/Object;
    if-nez v2, :cond_e

    iget-object v2, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_5

    :cond_e
    if-eqz p3, :cond_5

    .line 1400
    iget-object v5, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v5, :cond_2e

    .line 1402
    if-eqz p4, :cond_1f

    :try_start_16
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$OrApply;->claim()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1f

    .line 1403
    return v6

    .line 1404
    :cond_1f
    instance-of v5, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v5, :cond_31

    .line 1405
    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object v5, v0

    iget-object v4, v5, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .local v4, "x":Ljava/lang/Throwable;
    if-eqz v4, :cond_30

    .line 1406
    invoke-virtual {p0, v4, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1417
    .end local v2    # "r":Ljava/lang/Object;
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_2e
    :goto_2e
    const/4 v5, 0x1

    return v5

    .line 1409
    .restart local v2    # "r":Ljava/lang/Object;
    .restart local v4    # "x":Ljava/lang/Throwable;
    :cond_30
    const/4 v2, 0x0

    .line 1411
    .end local v2    # "r":Ljava/lang/Object;
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_31
    move-object v3, v2

    .line 1412
    .local v3, "rr":Ljava/lang/Object;, "TR;"
    invoke-interface {p3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_39} :catch_3a

    goto :goto_2e

    .line 1413
    .end local v3    # "rr":Ljava/lang/Object;, "TR;"
    :catch_3a
    move-exception v1

    .line 1414
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_2e
.end method

.method final orRelay(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1576
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 1578
    :cond_4
    const/4 v1, 0x0

    return v1

    .line 1577
    :cond_6
    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v0, "r":Ljava/lang/Object;
    if-nez v0, :cond_e

    iget-object v0, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 1579
    :cond_e
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_15

    .line 1580
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    .line 1581
    :cond_15
    const/4 v1, 0x1

    return v1
.end method

.method final orRun(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$OrRun;)Z
    .registers 11
    .param p3, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/CompletableFuture$OrRun",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p4, "c":Ljava/util/concurrent/CompletableFuture$OrRun;, "Ljava/util/concurrent/CompletableFuture$OrRun<**>;"
    const/4 v5, 0x0

    .line 1523
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 1525
    :cond_5
    return v5

    .line 1524
    :cond_6
    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v2, "r":Ljava/lang/Object;
    if-nez v2, :cond_e

    iget-object v2, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_5

    :cond_e
    if-eqz p3, :cond_5

    .line 1526
    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_2e

    .line 1528
    if-eqz p4, :cond_1f

    :try_start_16
    invoke-virtual {p4}, Ljava/util/concurrent/CompletableFuture$OrRun;->claim()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1f

    .line 1529
    return v5

    .line 1530
    :cond_1f
    instance-of v4, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v4, :cond_30

    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object v4, v0

    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v3, :cond_30

    .line 1531
    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 1540
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_2e
    :goto_2e
    const/4 v4, 0x1

    return v4

    .line 1533
    :cond_30
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1534
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_36} :catch_37

    goto :goto_2e

    .line 1536
    :catch_37
    move-exception v1

    .line 1537
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_2e
.end method

.method public orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2523
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-nez p3, :cond_8

    .line 2524
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2525
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1d

    .line 2526
    new-instance v0, Ljava/util/concurrent/CompletableFuture$Canceller;

    new-instance v1, Ljava/util/concurrent/CompletableFuture$Timeout;

    invoke-direct {v1, p0}, Ljava/util/concurrent/CompletableFuture$Timeout;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v1, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CompletableFuture$Canceller;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 2528
    :cond_1d
    return-object p0
.end method

.method final orpush(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture$BiCompletion;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture$BiCompletion",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "c":Ljava/util/concurrent/CompletableFuture$BiCompletion;, "Ljava/util/concurrent/CompletableFuture$BiCompletion<***>;"
    const/4 v2, 0x0

    .line 1355
    if-eqz p2, :cond_38

    .line 1356
    :goto_3
    if-eqz p1, :cond_9

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_38

    :cond_9
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_38

    .line 1357
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1358
    if-eqz p1, :cond_38

    if-eq p1, p0, :cond_38

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_38

    .line 1359
    new-instance v0, Ljava/util/concurrent/CompletableFuture$CoCompletion;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CompletableFuture$CoCompletion;-><init>(Ljava/util/concurrent/CompletableFuture$BiCompletion;)V

    .line 1360
    .local v0, "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_20
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_38

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_38

    .line 1361
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1360
    if-eqz v1, :cond_38

    .line 1362
    invoke-static {v0, v2}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_20

    .line 1366
    .end local v0    # "q":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_34
    invoke-static {p2, v2}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_3

    .line 1369
    :cond_38
    return-void
.end method

.method final postComplete()V
    .registers 7

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v5, 0x0

    .line 470
    move-object v1, p0

    .line 471
    .local v1, "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_2
    :goto_2
    iget-object v2, v1, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    .local v2, "h":Ljava/util/concurrent/CompletableFuture$Completion;
    if-nez v2, :cond_d

    .line 472
    if-eq v1, p0, :cond_2a

    move-object v1, p0

    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    if-eqz v2, :cond_2a

    .line 474
    :cond_d
    iget-object v3, v2, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    .local v3, "t":Ljava/util/concurrent/CompletableFuture$Completion;
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->casStack(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 475
    if-eqz v3, :cond_1f

    .line 476
    if-eq v1, p0, :cond_1d

    .line 477
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->pushStack(Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_2

    .line 480
    :cond_1d
    iput-object v5, v2, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    .line 482
    :cond_1f
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .local v0, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-nez v0, :cond_28

    move-object v1, p0

    goto :goto_2

    :cond_28
    move-object v1, v0

    goto :goto_2

    .line 485
    .end local v0    # "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v3    # "t":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_2a
    return-void
.end method

.method final postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    const/4 v1, 0x0

    .line 559
    if-eqz p1, :cond_10

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_10

    .line 560
    if-ltz p2, :cond_d

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1b

    .line 561
    :cond_d
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    .line 565
    :cond_10
    :goto_10
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_22

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_22

    .line 566
    if-gez p2, :cond_1f

    .line 567
    return-object p0

    .line 563
    :cond_1b
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    goto :goto_10

    .line 569
    :cond_1f
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 571
    :cond_22
    return-object v1
.end method

.method final postFire(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1083
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz p2, :cond_f

    iget-object v0, p2, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_f

    .line 1084
    if-ltz p3, :cond_c

    iget-object v0, p2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_14

    .line 1085
    :cond_c
    invoke-virtual {p2}, Ljava/util/concurrent/CompletableFuture;->cleanStack()V

    .line 1089
    :cond_f
    :goto_f
    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/CompletableFuture;->postFire(Ljava/util/concurrent/CompletableFuture;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 1087
    :cond_14
    invoke-virtual {p2}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    goto :goto_f
.end method

.method final push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture$UniCompletion",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "c":Ljava/util/concurrent/CompletableFuture$UniCompletion;, "Ljava/util/concurrent/CompletableFuture$UniCompletion<**>;"
    const/4 v1, 0x0

    .line 547
    if-eqz p1, :cond_13

    .line 548
    :goto_3
    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    .line 549
    invoke-static {p1, v1}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_3

    .line 551
    :cond_13
    return-void
.end method

.method final pushStack(Ljava/util/concurrent/CompletableFuture$Completion;)V
    .registers 3
    .param p1, "c"    # Ljava/util/concurrent/CompletableFuture$Completion;

    .prologue
    .line 240
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    return-void
.end method

.method public runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2086
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2084
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2091
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2097
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2089
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 5

    .prologue
    .line 2094
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2134
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2132
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2139
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2145
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2137
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 5

    .prologue
    .line 2142
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2023
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .prologue
    .line 2022
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2027
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2032
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .prologue
    .line 2026
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2030
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2069
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2066
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2075
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2081
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2072
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 5

    .prologue
    .line 2078
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2009
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .prologue
    .line 2007
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2014
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2019
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .prologue
    .line 2012
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2017
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2051
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2048
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2057
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2063
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    .local p2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    invoke-static {p3}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2054
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 5

    .prologue
    .line 2060
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2150
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .prologue
    .line 2148
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2155
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2161
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .prologue
    .line 2153
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2158
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2036
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .prologue
    .line 2035
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2040
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2045
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .prologue
    .line 2039
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2043
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public toCompletableFuture()Ljava/util/concurrent/CompletableFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2200
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 2382
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2383
    .local v2, "r":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 2384
    .local v0, "count":I
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    .local v1, "p":Ljava/util/concurrent/CompletableFuture$Completion;
    :goto_5
    if-eqz v1, :cond_c

    .line 2385
    add-int/lit8 v0, v0, 0x1

    .line 2384
    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture$Completion;->next:Ljava/util/concurrent/CompletableFuture$Completion;

    goto :goto_5

    .line 2386
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2387
    if-nez v2, :cond_45

    .line 2388
    if-nez v0, :cond_29

    .line 2389
    const-string/jumbo v3, "[Not completed]"

    .line 2386
    .end local v2    # "r":Ljava/lang/Object;
    :goto_20
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2390
    .restart local v2    # "r":Ljava/lang/Object;
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[Not completed, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " dependents]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_20

    .line 2391
    :cond_45
    instance-of v3, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v3, :cond_53

    check-cast v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    .end local v2    # "r":Ljava/lang/Object;
    iget-object v3, v2, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v3, :cond_53

    .line 2392
    const-string/jumbo v3, "[Completed exceptionally]"

    goto :goto_20

    .line 2393
    :cond_53
    const-string/jumbo v3, "[Completed normally]"

    goto :goto_20
.end method

.method final tryPushStack(Ljava/util/concurrent/CompletableFuture$Completion;)Z
    .registers 8
    .param p1, "c"    # Ljava/util/concurrent/CompletableFuture$Completion;

    .prologue
    .line 233
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->stack:Ljava/util/concurrent/CompletableFuture$Completion;

    .line 234
    .local v4, "h":Ljava/util/concurrent/CompletableFuture$Completion;
    invoke-static {p1, v4}, Ljava/util/concurrent/CompletableFuture;->lazySetNext(Ljava/util/concurrent/CompletableFuture$Completion;Ljava/util/concurrent/CompletableFuture$Completion;)V

    .line 235
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CompletableFuture;->STACK:J

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final uniAccept(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture$UniAccept;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/Consumer",
            "<-TS;>;",
            "Ljava/util/concurrent/CompletableFuture$UniAccept",
            "<TS;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p2, "f":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TS;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniAccept;, "Ljava/util/concurrent/CompletableFuture$UniAccept<TS;>;"
    const/4 v5, 0x0

    .line 650
    if-eqz p1, :cond_7

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v1, "r":Ljava/lang/Object;
    if-nez v1, :cond_8

    .line 651
    .end local v1    # "r":Ljava/lang/Object;
    :cond_7
    return v5

    .line 650
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_8
    if-eqz p2, :cond_7

    .line 652
    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_1c

    .line 653
    instance-of v4, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v4, :cond_1f

    move-object v4, v1

    .line 654
    check-cast v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v3, :cond_1e

    .line 655
    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 670
    .end local v1    # "r":Ljava/lang/Object;
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_1c
    :goto_1c
    const/4 v4, 0x1

    return v4

    .line 658
    .restart local v1    # "r":Ljava/lang/Object;
    .restart local v3    # "x":Ljava/lang/Throwable;
    :cond_1e
    const/4 v1, 0x0

    .line 661
    .end local v1    # "r":Ljava/lang/Object;
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_1f
    if-eqz p3, :cond_2a

    :try_start_21
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniAccept;->claim()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2a

    .line 662
    return v5

    .line 663
    :cond_2a
    move-object v2, v1

    .line 664
    .local v2, "s":Ljava/lang/Object;, "TS;"
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 665
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_31} :catch_32

    goto :goto_1c

    .line 666
    .end local v2    # "s":Ljava/lang/Object;, "TS;"
    :catch_32
    move-exception v0

    .line 667
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_1c
.end method

.method final uniApply(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniApply;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/Function",
            "<-TS;+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$UniApply",
            "<TS;TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TS;+TT;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniApply;, "Ljava/util/concurrent/CompletableFuture$UniApply<TS;TT;>;"
    const/4 v5, 0x0

    .line 596
    if-eqz p1, :cond_7

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v1, "r":Ljava/lang/Object;
    if-nez v1, :cond_8

    .line 597
    .end local v1    # "r":Ljava/lang/Object;
    :cond_7
    return v5

    .line 596
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_8
    if-eqz p2, :cond_7

    .line 598
    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_1c

    .line 599
    instance-of v4, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v4, :cond_1f

    move-object v4, v1

    .line 600
    check-cast v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v3, :cond_1e

    .line 601
    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 615
    .end local v1    # "r":Ljava/lang/Object;
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_1c
    :goto_1c
    const/4 v4, 0x1

    return v4

    .line 604
    .restart local v1    # "r":Ljava/lang/Object;
    .restart local v3    # "x":Ljava/lang/Throwable;
    :cond_1e
    const/4 v1, 0x0

    .line 607
    .end local v1    # "r":Ljava/lang/Object;
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_1f
    if-eqz p3, :cond_2a

    :try_start_21
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniApply;->claim()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2a

    .line 608
    return v5

    .line 609
    :cond_2a
    move-object v2, v1

    .line 610
    .local v2, "s":Ljava/lang/Object;, "TS;"
    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_32} :catch_33

    goto :goto_1c

    .line 611
    .end local v2    # "s":Ljava/lang/Object;, "TS;"
    :catch_33
    move-exception v0

    .line 612
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_1c
.end method

.method final uniCompose(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniCompose;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/Function",
            "<-TS;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TT;>;>;",
            "Ljava/util/concurrent/CompletableFuture$UniCompose",
            "<TS;TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TS;+Ljava/util/concurrent/CompletionStage<TT;>;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniCompose;, "Ljava/util/concurrent/CompletableFuture$UniCompose<TS;TT;>;"
    const/4 v7, 0x0

    .line 972
    if-eqz p1, :cond_7

    iget-object v3, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v3, "r":Ljava/lang/Object;
    if-nez v3, :cond_8

    .line 973
    .end local v3    # "r":Ljava/lang/Object;
    :cond_7
    return v7

    .line 972
    .restart local v3    # "r":Ljava/lang/Object;
    :cond_8
    if-eqz p2, :cond_7

    .line 974
    iget-object v6, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v6, :cond_1c

    .line 975
    instance-of v6, v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v6, :cond_1f

    move-object v6, v3

    .line 976
    check-cast v6, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .local v5, "x":Ljava/lang/Throwable;
    if-eqz v5, :cond_1e

    .line 977
    invoke-virtual {p0, v5, v3}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 998
    .end local v3    # "r":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_1c
    :goto_1c
    const/4 v6, 0x1

    return v6

    .line 980
    .restart local v3    # "r":Ljava/lang/Object;
    .restart local v5    # "x":Ljava/lang/Throwable;
    :cond_1e
    const/4 v3, 0x0

    .line 983
    .end local v3    # "r":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_1f
    if-eqz p3, :cond_2a

    :try_start_21
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniCompose;->claim()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2a

    .line 984
    return v7

    .line 985
    :cond_2a
    move-object v4, v3

    .line 986
    .local v4, "s":Ljava/lang/Object;, "TS;"
    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v6}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    .line 987
    .local v2, "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    iget-object v6, v2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v6, :cond_41

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->uniRelay(Ljava/util/concurrent/CompletableFuture;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1c

    .line 988
    :cond_41
    new-instance v0, Ljava/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v0, p0, v2}, Ljava/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    .line 989
    .local v0, "copy":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TT;>;"
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CompletableFuture;->push(Ljava/util/concurrent/CompletableFuture$UniCompletion;)V

    .line 990
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/CompletableFuture$UniRelay;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    .line 991
    iget-object v6, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_4f} :catch_52

    if-nez v6, :cond_1c

    .line 992
    return v7

    .line 994
    .end local v0    # "copy":Ljava/util/concurrent/CompletableFuture$UniRelay;, "Ljava/util/concurrent/CompletableFuture$UniRelay<TT;>;"
    .end local v2    # "g":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .end local v4    # "s":Ljava/lang/Object;, "TS;"
    :catch_52
    move-exception v1

    .line 995
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_1c
.end method

.method final uniExceptionally(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture$UniExceptionally;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/function/Function",
            "<-",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$UniExceptionally",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Throwable;+TT;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniExceptionally;, "Ljava/util/concurrent/CompletableFuture$UniExceptionally<TT;>;"
    const/4 v5, 0x0

    .line 873
    if-eqz p1, :cond_7

    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v2, "r":Ljava/lang/Object;
    if-nez v2, :cond_8

    .line 874
    .end local v2    # "r":Ljava/lang/Object;
    :cond_7
    return v5

    .line 873
    .restart local v2    # "r":Ljava/lang/Object;
    :cond_8
    if-eqz p2, :cond_7

    .line 875
    iget-object v4, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_2c

    .line 877
    :try_start_e
    instance-of v4, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v4, :cond_2e

    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object v4, v0

    iget-object v3, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .local v3, "x":Ljava/lang/Throwable;
    if-eqz v3, :cond_2e

    .line 878
    if-eqz p3, :cond_25

    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniExceptionally;->claim()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_25

    .line 879
    return v5

    .line 880
    :cond_25
    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z

    .line 887
    .end local v3    # "x":Ljava/lang/Throwable;
    :cond_2c
    :goto_2c
    const/4 v4, 0x1

    return v4

    .line 882
    :cond_2e
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_31} :catch_32

    goto :goto_2c

    .line 883
    :catch_32
    move-exception v1

    .line 884
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_2c
.end method

.method final uniHandle(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture$UniHandle;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TS;>;",
            "Ljava/util/function/BiFunction",
            "<-TS;",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/CompletableFuture$UniHandle",
            "<TS;TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TS;>;"
    .local p2, "f":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TS;Ljava/lang/Throwable;+TT;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniHandle;, "Ljava/util/concurrent/CompletableFuture$UniHandle<TS;TT;>;"
    const/4 v6, 0x0

    .line 818
    if-eqz p1, :cond_7

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v1, "r":Ljava/lang/Object;
    if-nez v1, :cond_8

    .line 819
    .end local v1    # "r":Ljava/lang/Object;
    :cond_7
    return v6

    .line 818
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_8
    if-eqz p2, :cond_7

    .line 820
    iget-object v5, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v5, :cond_29

    .line 822
    if-eqz p3, :cond_19

    :try_start_10
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniHandle;->claim()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_19

    .line 823
    return v6

    .line 824
    :cond_19
    instance-of v5, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v5, :cond_2b

    .line 825
    check-cast v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    .end local v1    # "r":Ljava/lang/Object;
    iget-object v4, v1, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .line 826
    .local v4, "x":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 832
    .end local v4    # "x":Ljava/lang/Throwable;
    :goto_22
    invoke-interface {p2, v2, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_29} :catch_2f

    .line 837
    :cond_29
    :goto_29
    const/4 v5, 0x1

    return v5

    .line 828
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_2b
    const/4 v4, 0x0

    .line 829
    .local v4, "x":Ljava/lang/Throwable;
    move-object v3, v1

    .line 830
    .local v3, "ss":Ljava/lang/Object;, "TS;"
    move-object v2, v1

    .local v2, "s":Ljava/lang/Object;, "TS;"
    goto :goto_22

    .line 833
    .end local v1    # "r":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/Object;, "TS;"
    .end local v3    # "ss":Ljava/lang/Object;, "TS;"
    .end local v4    # "x":Ljava/lang/Throwable;
    :catch_2f
    move-exception v0

    .line 834
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_29
.end method

.method final uniRelay(Ljava/util/concurrent/CompletableFuture;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 918
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz p1, :cond_6

    iget-object v0, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v0, "r":Ljava/lang/Object;
    if-nez v0, :cond_8

    .line 919
    .end local v0    # "r":Ljava/lang/Object;
    :cond_6
    const/4 v1, 0x0

    return v1

    .line 920
    .restart local v0    # "r":Ljava/lang/Object;
    :cond_8
    iget-object v1, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_f

    .line 921
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    .line 922
    :cond_f
    const/4 v1, 0x1

    return v1
.end method

.method final uniRun(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture$UniRun;)Z
    .registers 9
    .param p2, "f"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/CompletableFuture$UniRun",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniRun;, "Ljava/util/concurrent/CompletableFuture$UniRun<*>;"
    const/4 v4, 0x0

    .line 704
    if-eqz p1, :cond_7

    iget-object v1, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v1, "r":Ljava/lang/Object;
    if-nez v1, :cond_8

    .line 705
    .end local v1    # "r":Ljava/lang/Object;
    :cond_7
    return v4

    .line 704
    .restart local v1    # "r":Ljava/lang/Object;
    :cond_8
    if-eqz p2, :cond_7

    .line 706
    iget-object v3, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v3, :cond_1c

    .line 707
    instance-of v3, v1, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v3, :cond_1e

    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v2, v3, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .local v2, "x":Ljava/lang/Throwable;
    if-eqz v2, :cond_1e

    .line 708
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 719
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_1c
    :goto_1c
    const/4 v3, 0x1

    return v3

    .line 711
    :cond_1e
    if-eqz p3, :cond_29

    :try_start_20
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniRun;->claim()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_29

    .line 712
    return v4

    .line 713
    :cond_29
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 714
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_2f} :catch_30

    goto :goto_1c

    .line 715
    :catch_30
    move-exception v0

    .line 716
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_1c
.end method

.method final uniWhenComplete(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture$UniWhenComplete;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture$UniWhenComplete",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p2, "f":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    .local p3, "c":Ljava/util/concurrent/CompletableFuture$UniWhenComplete;, "Ljava/util/concurrent/CompletableFuture$UniWhenComplete<TT;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 754
    const/4 v5, 0x0

    .line 755
    .local v5, "x":Ljava/lang/Throwable;
    if-eqz p1, :cond_9

    iget-object v2, p1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .local v2, "r":Ljava/lang/Object;
    if-nez v2, :cond_a

    .line 756
    .end local v2    # "r":Ljava/lang/Object;
    :cond_9
    return v7

    .line 755
    .restart local v2    # "r":Ljava/lang/Object;
    :cond_a
    if-eqz p2, :cond_9

    .line 757
    iget-object v6, p0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v6, :cond_39

    .line 759
    if-eqz p3, :cond_1b

    :try_start_12
    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture$UniWhenComplete;->claim()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1b

    .line 760
    return v7

    .line 761
    :cond_1b
    instance-of v6, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v6, :cond_2f

    .line 762
    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object v6, v0

    iget-object v5, v6, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    .line 763
    .local v5, "x":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 768
    .end local v5    # "x":Ljava/lang/Throwable;
    :goto_26
    invoke-interface {p2, v3, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 769
    if-nez v5, :cond_36

    .line 770
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_2e} :catch_32

    .line 771
    return v8

    .line 765
    .local v5, "x":Ljava/lang/Throwable;
    :cond_2f
    move-object v4, v2

    .line 766
    .local v4, "tr":Ljava/lang/Object;, "TT;"
    move-object v3, v2

    .local v3, "t":Ljava/lang/Object;, "TT;"
    goto :goto_26

    .line 773
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    .end local v4    # "tr":Ljava/lang/Object;, "TT;"
    .end local v5    # "x":Ljava/lang/Throwable;
    :catch_32
    move-exception v1

    .line 774
    .local v1, "ex":Ljava/lang/Throwable;
    if-nez v5, :cond_3a

    .line 775
    move-object v5, v1

    .line 779
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_36
    :goto_36
    invoke-virtual {p0, v5, v2}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .line 781
    :cond_39
    return v8

    .line 776
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :cond_3a
    if-eq v5, v1, :cond_36

    .line 777
    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_36
.end method

.method public whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2166
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .prologue
    .line 2164
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2171
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2176
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    invoke-static {p2}, Ljava/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 3

    .prologue
    .line 2169
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .registers 4

    .prologue
    .line 2174
    .local p0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method
