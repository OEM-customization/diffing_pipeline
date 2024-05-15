.class final Ljava/util/concurrent/ForkJoinPool$WorkQueue;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WorkQueue"
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field static final INITIAL_QUEUE_CAPACITY:I = 0x2000

.field static final MAXIMUM_QUEUE_CAPACITY:I = 0x4000000

.field private static final QLOCK:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field array:[Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile base:I

.field config:I

.field volatile currentJoin:Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile currentSteal:Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field hint:I

.field nsteals:I

.field final owner:Ljava/util/concurrent/ForkJoinWorkerThread;

.field volatile parker:Ljava/lang/Thread;

.field final pool:Ljava/util/concurrent/ForkJoinPool;

.field volatile qlock:I

.field volatile scanState:I

.field stackPred:I

.field top:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 1345
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1351
    :try_start_6
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1352
    const-class v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    const-string/jumbo v4, "qlock"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1351
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    .line 1353
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-class v3, [Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    .line 1354
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-class v3, [Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    .line 1355
    .local v1, "scale":I
    add-int/lit8 v2, v1, -0x1

    and-int/2addr v2, v1

    if-eqz v2, :cond_3e

    .line 1356
    new-instance v2, Ljava/lang/Error;

    const-string/jumbo v3, "array index scale not a power of two"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_37
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_37} :catch_37

    .line 1358
    :catch_37
    move-exception v0

    .line 1359
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1357
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_3e
    :try_start_3e
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1f

    sput v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I
    :try_end_46
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3e .. :try_end_46} :catch_37

    .line 785
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;)V
    .registers 4
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;
    .param p2, "owner"    # Ljava/util/concurrent/ForkJoinWorkerThread;

    .prologue
    const/16 v0, 0x1000

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 828
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 830
    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 831
    return-void
.end method

.method private growAndSharedPush(Ljava/util/concurrent/ForkJoinTask;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v4, 0x0

    .line 1046
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    .line 1047
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1048
    .local v2, "s":I
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_16

    array-length v1, v0

    .local v1, "al":I
    if-lez v1, :cond_16

    .line 1049
    add-int/lit8 v3, v1, -0x1

    and-int/2addr v3, v2

    aput-object p1, v0, v3

    .line 1050
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    .line 1053
    .end local v1    # "al":I
    :cond_16
    iput v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1055
    return-void

    .line 1052
    .end local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "s":I
    :catchall_19
    move-exception v3

    .line 1053
    iput v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1052
    throw v3
.end method


# virtual methods
.method final cancelAll()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1085
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .local v0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_a

    .line 1086
    iput-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 1087
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    .line 1089
    :cond_a
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_13

    .line 1090
    iput-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 1091
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    .line 1093
    :cond_13
    :goto_13
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1094
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_13

    .line 1095
    :cond_1d
    return-void
.end method

.method final getPoolIndex()I
    .registers 3

    .prologue
    .line 837
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method final growArray()[Ljava/util/concurrent/ForkJoinTask;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 889
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 890
    .local v3, "oldA":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_1a

    array-length v2, v3

    shl-int/lit8 v13, v2, 0x1

    .line 891
    .local v13, "size":I
    :goto_9
    const/16 v2, 0x2000

    if-lt v13, v2, :cond_11

    const/high16 v2, 0x4000000

    if-le v13, v2, :cond_1d

    .line 892
    :cond_11
    new-instance v2, Ljava/util/concurrent/RejectedExecutionException;

    const-string/jumbo v7, "Queue capacity exceeded"

    invoke-direct {v2, v7}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 890
    .end local v13    # "size":I
    :cond_1a
    const/16 v13, 0x2000

    .restart local v13    # "size":I
    goto :goto_9

    .line 894
    :cond_1d
    new-array v8, v13, [Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, p0

    iput-object v8, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 895
    .local v8, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_68

    array-length v2, v3

    add-int/lit8 v12, v2, -0x1

    .local v12, "oldMask":I
    if-lez v12, :cond_68

    .line 896
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v14, "t":I
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v9, "b":I
    sub-int v2, v14, v9

    if-lez v2, :cond_68

    .line 897
    add-int/lit8 v11, v13, -0x1

    .line 899
    .local v11, "mask":I
    :cond_38
    and-int v10, v9, v12

    .line 900
    .local v10, "index":I
    int-to-long v0, v10

    move-wide/from16 v16, v0

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long v16, v16, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v4, v16, v18

    .line 902
    .local v4, "offset":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 901
    check-cast v6, Ljava/util/concurrent/ForkJoinTask;

    .line 903
    .local v6, "x":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v6, :cond_5f

    .line 904
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 903
    if-eqz v2, :cond_5f

    .line 905
    and-int v2, v9, v11

    aput-object v6, v8, v2

    .line 906
    :cond_5f
    add-int/lit8 v9, v9, 0x1

    if-ne v9, v14, :cond_38

    .line 907
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2}, Lsun/misc/Unsafe;->storeFence()V

    .line 909
    .end local v4    # "offset":J
    .end local v6    # "x":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v9    # "b":I
    .end local v10    # "index":I
    .end local v11    # "mask":I
    .end local v12    # "oldMask":I
    .end local v14    # "t":I
    :cond_68
    return-object v8
.end method

.method final isApparentlyUnblocked()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1337
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-ltz v3, :cond_1a

    .line 1338
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v1, "wt":Ljava/lang/Thread;
    if-eqz v1, :cond_1a

    .line 1339
    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    .local v0, "s":Ljava/lang/Thread$State;
    sget-object v3, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v0, v3, :cond_1a

    .line 1340
    sget-object v3, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v0, v3, :cond_1a

    .line 1341
    sget-object v3, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-eq v0, v3, :cond_1a

    const/4 v2, 0x1

    .line 1337
    .end local v0    # "s":Ljava/lang/Thread$State;
    .end local v1    # "wt":Ljava/lang/Thread;
    :cond_1a
    return v2
.end method

.method final isEmpty()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 855
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v3, "s":I
    sub-int v2, v6, v3

    .local v2, "n":I
    if-gez v2, :cond_14

    .line 856
    const/4 v6, -0x1

    if-ne v2, v6, :cond_20

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_14

    .line 857
    array-length v1, v0

    .local v1, "al":I
    if-nez v1, :cond_15

    .line 855
    .end local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v1    # "al":I
    :cond_14
    :goto_14
    return v4

    .line 858
    .restart local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v1    # "al":I
    :cond_15
    add-int/lit8 v6, v1, -0x1

    add-int/lit8 v7, v3, -0x1

    and-int/2addr v6, v7

    aget-object v6, v0, v6

    if-eqz v6, :cond_14

    move v4, v5

    goto :goto_14

    .end local v0    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v1    # "al":I
    :cond_20
    move v4, v5

    .line 856
    goto :goto_14
.end method

.method final localPollAndExec()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 1128
    const/4 v5, 0x0

    .line 1129
    .local v5, "nexec":I
    :cond_2
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v2, "b":I
    iget v8, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1130
    .local v8, "s":I
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_34

    if-eq v2, v8, :cond_34

    array-length v1, v0

    .local v1, "al":I
    if-lez v1, :cond_34

    .line 1131
    add-int/lit8 v10, v1, -0x1

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "b":I
    .local v3, "b":I
    and-int v4, v10, v2

    .line 1132
    .local v4, "index":I
    int-to-long v10, v4

    sget v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v10, v12

    sget v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v12, v12

    add-long v6, v10, v12

    .line 1134
    .local v6, "offset":J
    sget-object v10, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v10, v0, v6, v7, v14}, Lsun/misc/Unsafe;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1133
    check-cast v9, Ljava/util/concurrent/ForkJoinTask;

    .line 1135
    .local v9, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v9, :cond_2

    .line 1136
    iput v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1137
    invoke-virtual {v9}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 1138
    add-int/lit8 v5, v5, 0x1

    const/16 v10, 0x3ff

    if-le v5, v10, :cond_2

    move v2, v3

    .line 1145
    .end local v1    # "al":I
    .end local v3    # "b":I
    .end local v4    # "index":I
    .end local v6    # "offset":J
    .end local v9    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v2    # "b":I
    :cond_34
    return-void
.end method

.method final localPopAndExec()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 1103
    const/4 v4, 0x0

    .line 1104
    .local v4, "nexec":I
    :cond_2
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v2, "b":I
    iget v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1105
    .local v5, "s":I
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_35

    if-eq v2, v5, :cond_35

    array-length v1, v0

    .local v1, "al":I
    if-lez v1, :cond_35

    .line 1106
    add-int/lit8 v9, v1, -0x1

    add-int/lit8 v5, v5, -0x1

    and-int v3, v9, v5

    .line 1107
    .local v3, "index":I
    int-to-long v10, v3

    sget v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v10, v9

    sget v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v12, v9

    add-long v6, v10, v12

    .line 1109
    .local v6, "offset":J
    sget-object v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v9, v0, v6, v7, v14}, Lsun/misc/Unsafe;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1108
    check-cast v8, Ljava/util/concurrent/ForkJoinTask;

    .line 1110
    .local v8, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v8, :cond_35

    .line 1111
    iput v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1112
    iput-object v8, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v8}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 1113
    add-int/lit8 v4, v4, 0x1

    const/16 v9, 0x3ff

    if-le v4, v9, :cond_2

    .line 1122
    .end local v1    # "al":I
    .end local v3    # "index":I
    .end local v6    # "offset":J
    .end local v8    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_35
    return-void
.end method

.method final nextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 986
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    if-gez v0, :cond_9

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_8
.end method

.method final peek()Ljava/util/concurrent/ForkJoinTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 994
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_13

    array-length v1, v0

    .local v1, "al":I
    if-lez v1, :cond_13

    .line 995
    add-int/lit8 v3, v1, -0x1

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    if-gez v2, :cond_14

    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    :goto_10
    and-int/2addr v2, v3

    aget-object v2, v0, v2

    .line 994
    .end local v1    # "al":I
    :cond_13
    return-object v2

    .line 995
    .restart local v1    # "al":I
    :cond_14
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_10
.end method

.method final poll()Ljava/util/concurrent/ForkJoinTask;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 958
    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v9, "b":I
    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 959
    .local v13, "s":I
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v3, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_48

    sub-int v11, v9, v13

    .local v11, "d":I
    if-gez v11, :cond_48

    .line 960
    array-length v8, v3

    .local v8, "al":I
    if-lez v8, :cond_48

    .line 961
    add-int/lit8 v2, v8, -0x1

    and-int v12, v2, v9

    .line 962
    .local v12, "index":I
    int-to-long v14, v12

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v14, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    .line 964
    .local v4, "offset":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 963
    check-cast v6, Ljava/util/concurrent/ForkJoinTask;

    .line 965
    .local v6, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "b":I
    .local v10, "b":I
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v9, v2, :cond_0

    .line 966
    if-eqz v6, :cond_44

    .line 967
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 968
    move-object/from16 v0, p0

    iput v10, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 969
    return-object v6

    .line 972
    :cond_44
    const/4 v2, -0x1

    if-ne v11, v2, :cond_0

    move v9, v10

    .line 979
    .end local v4    # "offset":J
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "al":I
    .end local v10    # "b":I
    .end local v11    # "d":I
    .end local v12    # "index":I
    .restart local v9    # "b":I
    :cond_48
    const/4 v2, 0x0

    return-object v2
.end method

.method final pollAndExecCC(Ljava/util/concurrent/CountedCompleter;)I
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1296
    .local p1, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v9, "b":I
    move-object/from16 v0, p0

    iget v15, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1297
    .local v15, "s":I
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v3, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_62

    if-eq v9, v15, :cond_62

    array-length v8, v3

    .local v8, "al":I
    if-lez v8, :cond_62

    .line 1298
    add-int/lit8 v2, v8, -0x1

    and-int v12, v2, v9

    .line 1299
    .local v12, "index":I
    int-to-long v0, v12

    move-wide/from16 v16, v0

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long v16, v16, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v4, v16, v18

    .line 1301
    .local v4, "offset":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    .line 1300
    check-cast v13, Ljava/util/concurrent/ForkJoinTask;

    .line 1302
    .local v13, "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v13, :cond_31

    .line 1303
    const/4 v11, 0x2

    .line 1329
    .end local v4    # "offset":J
    .end local v8    # "al":I
    .end local v12    # "index":I
    .end local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .local v11, "h":I
    :goto_30
    return v11

    .line 1304
    .end local v11    # "h":I
    .restart local v4    # "offset":J
    .restart local v8    # "al":I
    .restart local v12    # "index":I
    .restart local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_31
    instance-of v2, v13, Ljava/util/concurrent/CountedCompleter;

    if-nez v2, :cond_37

    .line 1305
    const/4 v11, -0x1

    .restart local v11    # "h":I
    goto :goto_30

    .end local v11    # "h":I
    :cond_37
    move-object v6, v13

    .line 1307
    check-cast v6, Ljava/util/concurrent/CountedCompleter;

    .line 1308
    .local v6, "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v14, v6

    .line 1309
    .local v14, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_3b
    move-object/from16 v0, p1

    if-ne v14, v0, :cond_5c

    .line 1310
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "b":I
    .local v10, "b":I
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v9, v2, :cond_5a

    .line 1311
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1310
    if-eqz v2, :cond_5a

    .line 1312
    move-object/from16 v0, p0

    iput v10, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1313
    invoke-virtual {v6}, Ljava/util/concurrent/CountedCompleter;->doExec()I

    .line 1314
    const/4 v11, 0x1

    .restart local v11    # "h":I
    :goto_58
    move v9, v10

    .line 1318
    .end local v10    # "b":I
    .restart local v9    # "b":I
    goto :goto_30

    .line 1317
    .end local v9    # "b":I
    .end local v11    # "h":I
    .restart local v10    # "b":I
    :cond_5a
    const/4 v11, 0x2

    .restart local v11    # "h":I
    goto :goto_58

    .line 1320
    .end local v10    # "b":I
    .end local v11    # "h":I
    .restart local v9    # "b":I
    :cond_5c
    iget-object v14, v14, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-nez v14, :cond_3b

    .line 1321
    const/4 v11, -0x1

    .line 1322
    .restart local v11    # "h":I
    goto :goto_30

    .line 1328
    .end local v4    # "offset":J
    .end local v6    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v8    # "al":I
    .end local v11    # "h":I
    .end local v12    # "index":I
    .end local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_62
    const/high16 v2, -0x80000000

    or-int v11, v9, v2

    .restart local v11    # "h":I
    goto :goto_30
.end method

.method final pollAt(I)Ljava/util/concurrent/ForkJoinTask;
    .registers 16
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 939
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_31

    array-length v6, v1

    .local v6, "al":I
    if-lez v6, :cond_31

    .line 940
    add-int/lit8 v0, v6, -0x1

    and-int v8, v0, p1

    .line 941
    .local v8, "index":I
    int-to-long v10, v8

    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v10, v0

    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v12, v0

    add-long v2, v10, v12

    .line 943
    .local v2, "offset":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 942
    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    .line 944
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_31

    add-int/lit8 v7, p1, 0x1

    .end local p1    # "b":I
    .local v7, "b":I
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne p1, v0, :cond_30

    .line 945
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 944
    if-eqz v0, :cond_32

    .line 946
    iput v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 947
    return-object v4

    :cond_30
    move p1, v7

    .line 950
    .end local v2    # "offset":J
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "al":I
    .end local v7    # "b":I
    .end local v8    # "index":I
    .restart local p1    # "b":I
    :cond_31
    :goto_31
    return-object v5

    .end local p1    # "b":I
    .restart local v2    # "offset":J
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v6    # "al":I
    .restart local v7    # "b":I
    .restart local v8    # "index":I
    :cond_32
    move p1, v7

    .end local v7    # "b":I
    .restart local p1    # "b":I
    goto :goto_31
.end method

.method final pop()Ljava/util/concurrent/ForkJoinTask;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 917
    iget v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v7, "b":I
    iget v9, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 918
    .local v9, "s":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_32

    if-eq v7, v9, :cond_32

    array-length v6, v1

    .local v6, "al":I
    if-lez v6, :cond_32

    .line 919
    add-int/lit8 v0, v6, -0x1

    add-int/lit8 v9, v9, -0x1

    and-int v8, v0, v9

    .line 920
    .local v8, "index":I
    int-to-long v10, v8

    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v10, v0

    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v12, v0

    add-long v2, v10, v12

    .line 922
    .local v2, "offset":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 921
    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    .line 923
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_32

    .line 924
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 923
    if-eqz v0, :cond_32

    .line 925
    iput v9, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 926
    return-object v4

    .line 929
    .end local v2    # "offset":J
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "al":I
    .end local v8    # "index":I
    :cond_32
    return-object v5
.end method

.method final popCC(Ljava/util/concurrent/CountedCompleter;I)Ljava/util/concurrent/CountedCompleter;
    .registers 22
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;I)",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1245
    .local p1, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v10, "b":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move/from16 v17, v0

    .line 1246
    .local v17, "s":I
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v8, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v8, :cond_9c

    move/from16 v0, v17

    if-eq v10, v0, :cond_9c

    array-length v9, v8

    .local v9, "al":I
    if-lez v9, :cond_9c

    .line 1247
    add-int/lit8 v2, v9, -0x1

    add-int/lit8 v3, v17, -0x1

    and-int v11, v2, v3

    .line 1248
    .local v11, "index":I
    int-to-long v2, v11

    sget v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v2, v4

    sget v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v4, v4

    add-long v14, v2, v4

    .line 1250
    .local v14, "offset":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v8, v14, v15}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    .line 1249
    check-cast v12, Ljava/util/concurrent/ForkJoinTask;

    .line 1251
    .local v12, "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    instance-of v2, v12, Ljava/util/concurrent/CountedCompleter;

    if-eqz v2, :cond_9c

    move-object/from16 v18, v12

    .line 1252
    check-cast v18, Ljava/util/concurrent/CountedCompleter;

    .line 1253
    .local v18, "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v16, v18

    .line 1254
    .local v16, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_38
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_94

    .line 1255
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_80

    .line 1256
    const/4 v13, 0x0

    .line 1257
    .local v13, "popped":Z
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 1258
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move/from16 v0, v17

    if-ne v2, v0, :cond_73

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-ne v2, v8, :cond_73

    .line 1259
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1260
    const/4 v7, 0x0

    move-object v3, v8

    move-wide v4, v14

    move-object/from16 v6, v18

    .line 1259
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 1258
    if-eqz v2, :cond_73

    .line 1261
    const/4 v13, 0x1

    .line 1262
    add-int/lit8 v2, v17, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1264
    :cond_73
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v5, v3}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 1265
    if-eqz v13, :cond_9c

    .line 1266
    return-object v18

    .line 1269
    .end local v13    # "popped":Z
    :cond_80
    sget-object v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1270
    const/4 v7, 0x0

    move-object v3, v8

    move-wide v4, v14

    move-object/from16 v6, v18

    .line 1269
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 1271
    add-int/lit8 v2, v17, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1272
    return-object v18

    .line 1276
    :cond_94
    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object/from16 v16, v0

    if-nez v16, :cond_38

    .line 1281
    .end local v9    # "al":I
    .end local v11    # "index":I
    .end local v12    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "offset":J
    .end local v16    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v18    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_9c
    const/4 v2, 0x0

    return-object v2
.end method

.method final push(Ljava/util/concurrent/ForkJoinTask;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 868
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v5}, Lsun/misc/Unsafe;->storeFence()V

    .line 869
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 870
    .local v4, "s":I
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v0, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_29

    array-length v1, v0

    .local v1, "al":I
    if-lez v1, :cond_29

    .line 871
    add-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v4

    aput-object p1, v0, v5

    .line 872
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 873
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 874
    .local v3, "p":Ljava/util/concurrent/ForkJoinPool;
    iget v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v2, v5, v4

    .local v2, "d":I
    if-nez v2, :cond_2a

    if-eqz v3, :cond_2a

    .line 875
    sget-object v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v5}, Lsun/misc/Unsafe;->fullFence()V

    .line 876
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    .line 881
    .end local v1    # "al":I
    .end local v2    # "d":I
    .end local v3    # "p":Ljava/util/concurrent/ForkJoinPool;
    :cond_29
    :goto_29
    return-void

    .line 878
    .restart local v1    # "al":I
    .restart local v2    # "d":I
    .restart local v3    # "p":Ljava/util/concurrent/ForkJoinPool;
    :cond_2a
    add-int v5, v1, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_29

    .line 879
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    goto :goto_29
.end method

.method final queueSize()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 844
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v0, v2, v3

    .line 845
    .local v0, "n":I
    if-ltz v0, :cond_a

    :goto_9
    return v1

    :cond_a
    neg-int v1, v0

    goto :goto_9
.end method

.method final runTask(Ljava/util/concurrent/ForkJoinTask;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v3, 0x0

    .line 1151
    if-eqz p1, :cond_23

    .line 1152
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 1153
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    if-gez v2, :cond_24

    .line 1154
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->localPollAndExec()V

    .line 1157
    :goto_d
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    .line 1158
    .local v0, "ns":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 1159
    .local v1, "thread":Ljava/util/concurrent/ForkJoinWorkerThread;
    iput-object v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 1160
    if-gez v0, :cond_1e

    .line 1161
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->transferStealCount(Ljava/util/concurrent/ForkJoinPool;)V

    .line 1162
    :cond_1e
    if-eqz v1, :cond_23

    .line 1163
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinWorkerThread;->afterTopLevelExec()V

    .line 1165
    .end local v0    # "ns":I
    .end local v1    # "thread":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_23
    return-void

    .line 1156
    :cond_24
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->localPopAndExec()V

    goto :goto_d
.end method

.method final sharedPush(Ljava/util/concurrent/ForkJoinTask;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v4, 0x0

    .line 1021
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1022
    iget v8, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v8, "b":I
    iget v10, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1023
    .local v10, "s":I
    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v6, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v6, :cond_34

    array-length v7, v6

    .local v7, "al":I
    if-lez v7, :cond_34

    .line 1024
    add-int/lit8 v0, v7, -0x1

    sub-int v9, v8, v10

    .local v9, "d":I
    add-int/2addr v0, v9

    if-lez v0, :cond_34

    .line 1025
    add-int/lit8 v0, v7, -0x1

    and-int/2addr v0, v10

    aput-object p1, v6, v0

    .line 1026
    add-int/lit8 v0, v10, 0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1027
    iput v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1028
    if-gez v9, :cond_32

    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v8, v0, :cond_32

    move v11, v9

    .line 1037
    .end local v6    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v7    # "al":I
    .end local v8    # "b":I
    .end local v9    # "d":I
    .end local v10    # "s":I
    .local v11, "stat":I
    :goto_31
    return v11

    .line 1028
    .end local v11    # "stat":I
    .restart local v6    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v7    # "al":I
    .restart local v8    # "b":I
    .restart local v9    # "d":I
    .restart local v10    # "s":I
    :cond_32
    const/4 v11, 0x0

    .restart local v11    # "stat":I
    goto :goto_31

    .line 1031
    .end local v7    # "al":I
    .end local v9    # "d":I
    .end local v11    # "stat":I
    :cond_34
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growAndSharedPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 1032
    const/4 v11, 0x0

    .restart local v11    # "stat":I
    goto :goto_31

    .line 1036
    .end local v6    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "b":I
    .end local v10    # "s":I
    .end local v11    # "stat":I
    :cond_39
    const/4 v11, 0x1

    .restart local v11    # "stat":I
    goto :goto_31
.end method

.method final transferStealCount(Ljava/util/concurrent/ForkJoinPool;)V
    .registers 8
    .param p1, "p"    # Ljava/util/concurrent/ForkJoinPool;

    .prologue
    .line 1172
    if-eqz p1, :cond_20

    iget-object v0, p1, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    .local v0, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-eqz v0, :cond_20

    .line 1173
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v2, v1

    .line 1174
    .local v2, "s":J
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    .line 1175
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_15

    const-wide/32 v2, 0x7fffffff

    .line 1176
    :cond_15
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    .line 1178
    :try_start_18
    iget-wide v4, v0, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_21

    .line 1180
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 1183
    .end local v0    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .end local v2    # "s":J
    :cond_20
    return-void

    .line 1179
    .restart local v0    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .restart local v2    # "s":J
    :catchall_21
    move-exception v1

    .line 1180
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 1179
    throw v1
.end method

.method final tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1192
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p1, :cond_84

    iget v0, p1, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_84

    .line 1194
    :cond_6
    iget v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v7, "b":I
    iget v12, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .local v12, "s":I
    sub-int v8, v7, v12

    .local v8, "d":I
    if-gez v8, :cond_84

    .line 1195
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_84

    array-length v6, v1

    .local v6, "al":I
    if-lez v6, :cond_84

    .line 1197
    :cond_15
    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v0, v6, -0x1

    and-int v9, v12, v0

    .line 1198
    .local v9, "index":I
    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int v0, v9, v0

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v5

    int-to-long v2, v0

    .line 1200
    .local v2, "offset":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1199
    check-cast v4, Ljava/util/concurrent/ForkJoinTask;

    .line 1201
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v4, :cond_33

    .line 1233
    :cond_2d
    :goto_2d
    iget v0, p1, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v0, :cond_6

    .line 1234
    const/4 v0, 0x0

    return v0

    .line 1203
    :cond_33
    if-ne v4, p1, :cond_64

    .line 1204
    const/4 v11, 0x0

    .line 1205
    .local v11, "removed":Z
    add-int/lit8 v0, v12, 0x1

    iget v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v5, :cond_54

    .line 1206
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1207
    iput v12, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1208
    const/4 v11, 0x1

    .line 1214
    .end local v11    # "removed":Z
    :cond_48
    :goto_48
    if-eqz v11, :cond_2d

    .line 1215
    iget-object v10, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 1216
    .local v10, "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 1217
    iput-object v10, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    goto :goto_2d

    .line 1211
    .end local v10    # "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v11    # "removed":Z
    :cond_54
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v7, :cond_48

    .line 1212
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1213
    new-instance v5, Ljava/util/concurrent/ForkJoinPool$EmptyTask;

    invoke-direct {v5}, Ljava/util/concurrent/ForkJoinPool$EmptyTask;-><init>()V

    .line 1212
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .local v11, "removed":Z
    goto :goto_48

    .line 1221
    .end local v11    # "removed":Z
    :cond_64
    iget v0, v4, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v0, :cond_7a

    add-int/lit8 v0, v12, 0x1

    iget v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v5, :cond_7a

    .line 1222
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1223
    iput v12, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    goto :goto_2d

    .line 1227
    :cond_7a
    add-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_15

    .line 1228
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v7, :cond_2d

    .line 1230
    const/4 v0, 0x0

    return v0

    .line 1237
    .end local v1    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v2    # "offset":J
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "al":I
    .end local v7    # "b":I
    .end local v8    # "d":I
    .end local v9    # "index":I
    .end local v12    # "s":I
    :cond_84
    const/4 v0, 0x1

    return v0
.end method

.method final trySharedUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1061
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v9, 0x0

    .line 1062
    .local v9, "popped":Z
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v12, v0, -0x1

    .line 1063
    .local v12, "s":I
    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v6, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v6, :cond_51

    array-length v7, v6

    .local v7, "al":I
    if-lez v7, :cond_51

    .line 1064
    add-int/lit8 v0, v7, -0x1

    and-int v8, v0, v12

    .line 1065
    .local v8, "index":I
    int-to-long v0, v8

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v0, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v2, v2

    add-long v10, v0, v2

    .line 1066
    .local v10, "offset":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v6, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/concurrent/ForkJoinTask;

    .line 1067
    .local v13, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-ne v13, p1, :cond_51

    .line 1068
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    .line 1067
    if-eqz v0, :cond_51

    .line 1069
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v1, v12, 0x1

    if-ne v0, v1, :cond_49

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-ne v0, v6, :cond_49

    .line 1070
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-object v1, v6

    move-wide v2, v10

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1069
    if-eqz v0, :cond_49

    .line 1071
    const/4 v9, 0x1

    .line 1072
    iput v12, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1074
    :cond_49
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 1077
    .end local v7    # "al":I
    .end local v8    # "index":I
    .end local v10    # "offset":J
    .end local v13    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_51
    return v9
.end method

.method final tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1002
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iget v7, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v7, "b":I
    iget v9, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1003
    .local v9, "s":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_2a

    if-eq v7, v9, :cond_2a

    array-length v6, v1

    .local v6, "al":I
    if-lez v6, :cond_2a

    .line 1004
    add-int/lit8 v0, v6, -0x1

    add-int/lit8 v9, v9, -0x1

    and-int v8, v0, v9

    .line 1005
    .local v8, "index":I
    int-to-long v4, v8

    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v4, v0

    sget v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v10, v0

    add-long v2, v4, v10

    .line 1006
    .local v2, "offset":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1007
    iput v9, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1008
    const/4 v0, 0x1

    return v0

    .line 1011
    .end local v2    # "offset":J
    .end local v6    # "al":I
    .end local v8    # "index":I
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method
