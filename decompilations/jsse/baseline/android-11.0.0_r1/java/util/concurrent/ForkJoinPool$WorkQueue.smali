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
.field private static final greylist-max-o ABASE:I

.field private static final greylist-max-o ASHIFT:I

.field static final greylist-max-o INITIAL_QUEUE_CAPACITY:I = 0x2000

.field static final greylist-max-o MAXIMUM_QUEUE_CAPACITY:I = 0x4000000

.field private static final greylist-max-o QLOCK:J

.field private static final greylist-max-o U:Lsun/misc/Unsafe;


# instance fields
.field greylist-max-o array:[Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation
.end field

.field volatile greylist-max-o base:I

.field greylist-max-o config:I

.field volatile greylist-max-o currentJoin:Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation
.end field

.field volatile greylist-max-o currentSteal:Ljava/util/concurrent/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation
.end field

.field greylist-max-o hint:I

.field greylist-max-o nsteals:I

.field final greylist-max-o owner:Ljava/util/concurrent/ForkJoinWorkerThread;

.field volatile greylist-max-o parker:Ljava/lang/Thread;

.field final greylist-max-o pool:Ljava/util/concurrent/ForkJoinPool;

.field volatile greylist-max-o qlock:I

.field volatile greylist-max-o scanState:I

.field greylist-max-o stackPred:I

.field greylist-max-o top:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1348
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1354
    :try_start_6
    const-class v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    const-string v2, "qlock"

    .line 1355
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    .line 1356
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-class v1, [Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    .line 1357
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-class v1, [Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 1358
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_35

    .line 1360
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    sput v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    .line 1363
    .end local v0    # "scale":I
    nop

    .line 1364
    return-void

    .line 1359
    .restart local v0    # "scale":I
    :cond_35
    new-instance v1, Ljava/lang/Error;

    const-string v2, "array index scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3d
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_3d} :catch_3d

    .line 1361
    .end local v0    # "scale":I
    :catch_3d
    move-exception v0

    .line 1362
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor greylist-max-o <init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;)V
    .registers 4
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;
    .param p2, "owner"    # Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 830
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 831
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 833
    const/16 v0, 0x1000

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 834
    return-void
.end method

.method private greylist-max-o growAndSharedPush(Ljava/util/concurrent/ForkJoinTask;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 1049
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    .line 1050
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1051
    .local v1, "s":I
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v3, v2

    .local v3, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_18

    array-length v2, v3

    move v4, v2

    .local v4, "al":I
    if-lez v2, :cond_18

    .line 1052
    add-int/lit8 v2, v4, -0x1

    and-int/2addr v2, v1

    aput-object p1, v3, v2

    .line 1053
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1c

    .line 1056
    .end local v1    # "s":I
    .end local v3    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4    # "al":I
    :cond_18
    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1057
    nop

    .line 1058
    return-void

    .line 1056
    :catchall_1c
    move-exception v1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1057
    throw v1
.end method


# virtual methods
.method final greylist-max-o cancelAll()V
    .registers 4

    .line 1088
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    move-object v1, v0

    .local v1, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 1089
    iput-object v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 1090
    invoke-static {v1}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    .line 1092
    :cond_b
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object v1, v0

    if-eqz v0, :cond_15

    .line 1093
    iput-object v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 1094
    invoke-static {v1}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    .line 1096
    :cond_15
    :goto_15
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_20

    .line 1097
    invoke-static {v1}, Ljava/util/concurrent/ForkJoinTask;->cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_15

    .line 1098
    :cond_20
    return-void
.end method

.method final greylist-max-o getPoolIndex()I
    .registers 3

    .line 840
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method final greylist-max-o growArray()[Ljava/util/concurrent/ForkJoinTask;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 892
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .line 893
    .local v7, "oldA":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    const/16 v1, 0x2000

    if-eqz v7, :cond_c

    array-length v2, v7

    shl-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    move v8, v2

    .line 894
    .local v8, "size":I
    if-lt v8, v1, :cond_65

    const/high16 v1, 0x4000000

    if-gt v8, v1, :cond_65

    .line 897
    new-array v1, v8, [Ljava/util/concurrent/ForkJoinTask;

    iput-object v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v9, v1

    .line 898
    .local v9, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v7, :cond_64

    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    move v10, v1

    .local v10, "oldMask":I
    if-lez v1, :cond_64

    iget v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move v11, v1

    .local v11, "t":I
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move v3, v2

    .local v3, "b":I
    sub-int/2addr v1, v2

    if-lez v1, :cond_64

    .line 900
    add-int/lit8 v12, v8, -0x1

    move v13, v3

    .line 902
    .end local v3    # "b":I
    .local v12, "mask":I
    .local v13, "b":I
    :cond_2d
    and-int v14, v13, v10

    .line 903
    .local v14, "index":I
    int-to-long v1, v14

    sget v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v1, v3

    sget v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v3, v3

    add-long v5, v1, v3

    .line 904
    .local v5, "offset":J
    sget-object v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 905
    invoke-virtual {v1, v7, v5, v6}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/util/concurrent/ForkJoinTask;

    .line 906
    .local v15, "x":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v15, :cond_59

    sget-object v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    .line 907
    move-object v2, v7

    move-wide v3, v5

    move-wide/from16 v17, v5

    .end local v5    # "offset":J
    .local v17, "offset":J
    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 908
    and-int v1, v13, v12

    aput-object v15, v9, v1

    goto :goto_5b

    .line 906
    .end local v17    # "offset":J
    .restart local v5    # "offset":J
    :cond_59
    move-wide/from16 v17, v5

    .line 909
    .end local v5    # "offset":J
    .end local v14    # "index":I
    .end local v15    # "x":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_5b
    :goto_5b
    add-int/lit8 v13, v13, 0x1

    if-ne v13, v11, :cond_2d

    .line 910
    sget-object v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1}, Lsun/misc/Unsafe;->storeFence()V

    .line 912
    .end local v10    # "oldMask":I
    .end local v11    # "t":I
    .end local v12    # "mask":I
    .end local v13    # "b":I
    :cond_64
    return-object v9

    .line 895
    .end local v9    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_65
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v2, "Queue capacity exceeded"

    invoke-direct {v1, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final greylist-max-o isApparentlyUnblocked()Z
    .registers 5

    .line 1340
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-ltz v0, :cond_1c

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v1, v0

    .local v1, "wt":Ljava/lang/Thread;
    if-eqz v0, :cond_1c

    .line 1342
    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    move-object v2, v0

    .local v2, "s":Ljava/lang/Thread$State;
    sget-object v3, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v0, v3, :cond_1c

    sget-object v0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v2, v0, :cond_1c

    sget-object v0, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-eq v2, v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    .end local v1    # "wt":Ljava/lang/Thread;
    .end local v2    # "s":Ljava/lang/Thread$State;
    :cond_1c
    const/4 v0, 0x0

    .line 1340
    :goto_1d
    return v0
.end method

.method final greylist-max-o isEmpty()Z
    .registers 7

    .line 858
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move v2, v1

    .local v2, "s":I
    sub-int/2addr v0, v1

    move v1, v0

    .local v1, "n":I
    if-gez v0, :cond_21

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1f

    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v3, v0

    .local v3, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_21

    array-length v0, v3

    move v4, v0

    .local v4, "al":I
    if-eqz v0, :cond_21

    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v5, v2, -0x1

    and-int/2addr v0, v5

    aget-object v0, v3, v0

    if-nez v0, :cond_1f

    goto :goto_21

    .end local v3    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4    # "al":I
    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method

.method final greylist-max-o localPollAndExec()V
    .registers 12

    .line 1131
    const/4 v0, 0x0

    .line 1132
    .local v0, "nexec":I
    :goto_1
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v1, "b":I
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1133
    .local v2, "s":I
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v4, v3

    .local v4, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_35

    if-eq v1, v2, :cond_35

    array-length v3, v4

    move v5, v3

    .local v5, "al":I
    if-lez v3, :cond_35

    .line 1134
    add-int/lit8 v3, v5, -0x1

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "b":I
    .local v6, "b":I
    and-int/2addr v1, v3

    .line 1135
    .local v1, "index":I
    int-to-long v7, v1

    sget v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v7, v3

    sget v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v9, v3

    add-long/2addr v7, v9

    .line 1136
    .local v7, "offset":J
    sget-object v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    .line 1137
    invoke-virtual {v3, v4, v7, v8, v9}, Lsun/misc/Unsafe;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ForkJoinTask;

    .line 1138
    .local v3, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_34

    .line 1139
    iput v6, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1140
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 1141
    add-int/lit8 v0, v0, 0x1

    const/16 v9, 0x3ff

    if-le v0, v9, :cond_34

    .line 1142
    goto :goto_35

    .line 1147
    .end local v1    # "index":I
    .end local v2    # "s":I
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v5    # "al":I
    .end local v6    # "b":I
    .end local v7    # "offset":J
    :cond_34
    goto :goto_1

    .line 1148
    .end local v0    # "nexec":I
    :cond_35
    :goto_35
    return-void
.end method

.method final greylist-max-o localPopAndExec()V
    .registers 11

    .line 1106
    const/4 v0, 0x0

    .line 1107
    .local v0, "nexec":I
    :goto_1
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v1, "b":I
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1108
    .local v2, "s":I
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v4, v3

    .local v4, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_37

    if-eq v1, v2, :cond_37

    array-length v3, v4

    move v5, v3

    .local v5, "al":I
    if-lez v3, :cond_37

    .line 1109
    add-int/lit8 v3, v5, -0x1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v3, v2

    .line 1110
    .local v3, "index":I
    int-to-long v6, v3

    sget v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v6, v8

    sget v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 1111
    .local v6, "offset":J
    sget-object v8, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    .line 1112
    invoke-virtual {v8, v4, v6, v7, v9}, Lsun/misc/Unsafe;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/ForkJoinTask;

    .line 1113
    .local v8, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v8, :cond_37

    .line 1114
    iput v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1115
    iput-object v8, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v8}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 1116
    add-int/lit8 v0, v0, 0x1

    const/16 v9, 0x3ff

    if-le v0, v9, :cond_36

    .line 1117
    goto :goto_37

    .line 1124
    .end local v1    # "b":I
    .end local v2    # "s":I
    .end local v3    # "index":I
    .end local v4    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v5    # "al":I
    .end local v6    # "offset":J
    .end local v8    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_36
    goto :goto_1

    .line 1125
    .end local v0    # "nexec":I
    :cond_37
    :goto_37
    return-void
.end method

.method final greylist-max-o nextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 989
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    if-gez v0, :cond_9

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method final greylist-max-o peek()Ljava/util/concurrent/ForkJoinTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 997
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v1, v0

    .local v1, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_1a

    array-length v0, v1

    move v2, v0

    .local v2, "al":I
    if-lez v0, :cond_1a

    .line 998
    add-int/lit8 v0, v2, -0x1

    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    if-gez v3, :cond_12

    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    goto :goto_16

    :cond_12
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v3, v3, -0x1

    :goto_16
    and-int/2addr v0, v3

    aget-object v0, v1, v0

    goto :goto_1b

    .end local v2    # "al":I
    :cond_1a
    const/4 v0, 0x0

    .line 997
    :goto_1b
    return-object v0
.end method

.method final greylist-max-o poll()Ljava/util/concurrent/ForkJoinTask;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 961
    :goto_2
    iget v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v1, "b":I
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 962
    .local v2, "s":I
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v10, v3

    .local v10, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_55

    sub-int v3, v1, v2

    move v11, v3

    .local v11, "d":I
    if-gez v3, :cond_52

    array-length v3, v10

    move v12, v3

    .local v12, "al":I
    if-lez v3, :cond_4f

    .line 964
    add-int/lit8 v3, v12, -0x1

    and-int/2addr v3, v1

    .line 965
    .local v3, "index":I
    int-to-long v4, v3

    sget v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v4, v6

    sget v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v6, v6

    add-long v13, v4, v6

    .line 966
    .local v13, "offset":J
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 967
    invoke-virtual {v4, v10, v13, v14}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/util/concurrent/ForkJoinTask;

    .line 968
    .local v15, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    add-int/lit8 v9, v1, 0x1

    .end local v1    # "b":I
    .local v9, "b":I
    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v1, v4, :cond_4b

    .line 969
    if-eqz v15, :cond_44

    .line 970
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    move-object v5, v10

    move-wide v6, v13

    move-object v8, v15

    move/from16 v16, v2

    move v2, v9

    .end local v9    # "b":I
    .local v2, "b":I
    .local v16, "s":I
    move-object v9, v1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 971
    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 972
    return-object v15

    .line 975
    .end local v16    # "s":I
    .local v2, "s":I
    .restart local v9    # "b":I
    :cond_44
    move/from16 v16, v2

    move v2, v9

    .end local v9    # "b":I
    .local v2, "b":I
    .restart local v16    # "s":I
    const/4 v1, -0x1

    if-ne v11, v1, :cond_4e

    .line 976
    goto :goto_57

    .line 968
    .end local v16    # "s":I
    .local v2, "s":I
    .restart local v9    # "b":I
    :cond_4b
    move/from16 v16, v2

    move v2, v9

    .line 981
    .end local v2    # "s":I
    .end local v3    # "index":I
    .end local v9    # "b":I
    .end local v10    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v11    # "d":I
    .end local v12    # "al":I
    .end local v13    # "offset":J
    .end local v15    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4e
    goto :goto_2

    .line 962
    .restart local v1    # "b":I
    .restart local v2    # "s":I
    .restart local v10    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v11    # "d":I
    .restart local v12    # "al":I
    :cond_4f
    move/from16 v16, v2

    .end local v2    # "s":I
    .restart local v16    # "s":I
    goto :goto_57

    .end local v12    # "al":I
    .end local v16    # "s":I
    .restart local v2    # "s":I
    :cond_52
    move/from16 v16, v2

    .end local v2    # "s":I
    .restart local v16    # "s":I
    goto :goto_57

    .end local v11    # "d":I
    .end local v16    # "s":I
    .restart local v2    # "s":I
    :cond_55
    move/from16 v16, v2

    .line 982
    .end local v1    # "b":I
    .end local v2    # "s":I
    .end local v10    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_57
    const/4 v1, 0x0

    return-object v1
.end method

.method final greylist-max-o pollAndExecCC(Ljava/util/concurrent/CountedCompleter;)I
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)I"
        }
    .end annotation

    .line 1299
    .local p1, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, p0

    iget v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v1, "b":I
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1300
    .local v2, "s":I
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v10, v3

    .local v10, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_78

    if-eq v1, v2, :cond_78

    array-length v3, v10

    move v11, v3

    .local v11, "al":I
    if-lez v3, :cond_75

    .line 1301
    add-int/lit8 v3, v11, -0x1

    and-int/2addr v3, v1

    .line 1302
    .local v3, "index":I
    int-to-long v4, v3

    sget v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v4, v6

    sget v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v6, v6

    add-long v12, v4, v6

    .line 1303
    .local v12, "offset":J
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1304
    invoke-virtual {v4, v10, v12, v13}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/util/concurrent/ForkJoinTask;

    .line 1305
    .local v14, "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v14, :cond_2c

    .line 1306
    const/4 v4, 0x2

    move/from16 v17, v2

    .local v4, "h":I
    goto :goto_71

    .line 1307
    .end local v4    # "h":I
    :cond_2c
    instance-of v4, v14, Ljava/util/concurrent/CountedCompleter;

    if-nez v4, :cond_34

    .line 1308
    const/4 v4, -0x1

    move/from16 v17, v2

    .restart local v4    # "h":I
    goto :goto_71

    .line 1310
    .end local v4    # "h":I
    :cond_34
    move-object v15, v14

    check-cast v15, Ljava/util/concurrent/CountedCompleter;

    .line 1311
    .local v15, "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v4, v15

    move-object v9, v4

    .line 1312
    .local v9, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_39
    move-object/from16 v8, p1

    if-ne v9, v8, :cond_67

    .line 1313
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "b":I
    .local v6, "b":I
    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v1, v4, :cond_61

    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    .line 1314
    move-object v5, v10

    move/from16 v16, v6

    .end local v6    # "b":I
    .local v16, "b":I
    move-wide v6, v12

    move-object v8, v15

    move/from16 v17, v2

    move-object v2, v9

    .end local v9    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local v2, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local v17, "s":I
    move-object v9, v1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1315
    move/from16 v1, v16

    .end local v16    # "b":I
    .restart local v1    # "b":I
    iput v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1316
    invoke-virtual {v15}, Ljava/util/concurrent/CountedCompleter;->doExec()I

    .line 1317
    const/4 v4, 0x1

    .restart local v4    # "h":I
    goto :goto_71

    .line 1314
    .end local v1    # "b":I
    .end local v4    # "h":I
    .restart local v16    # "b":I
    :cond_5e
    move/from16 v1, v16

    .end local v16    # "b":I
    .restart local v1    # "b":I
    goto :goto_65

    .line 1313
    .end local v1    # "b":I
    .end local v17    # "s":I
    .local v2, "s":I
    .restart local v6    # "b":I
    .restart local v9    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_61
    move/from16 v17, v2

    move v1, v6

    move-object v2, v9

    .line 1320
    .end local v6    # "b":I
    .end local v9    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v1    # "b":I
    .local v2, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v17    # "s":I
    :goto_65
    const/4 v4, 0x2

    .line 1321
    .restart local v4    # "h":I
    goto :goto_71

    .line 1323
    .end local v4    # "h":I
    .end local v17    # "s":I
    .local v2, "s":I
    .restart local v9    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_67
    move/from16 v17, v2

    move-object v2, v9

    .end local v9    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local v2, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v17    # "s":I
    iget-object v4, v2, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v9, v4

    .end local v2    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v9    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-nez v4, :cond_72

    .line 1324
    const/4 v4, -0x1

    .line 1325
    .restart local v4    # "h":I
    nop

    .line 1329
    .end local v3    # "index":I
    .end local v9    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v12    # "offset":J
    .end local v14    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v15    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_71
    goto :goto_7e

    .line 1323
    .end local v4    # "h":I
    .restart local v3    # "index":I
    .restart local v9    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v12    # "offset":J
    .restart local v14    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v15    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_72
    move/from16 v2, v17

    goto :goto_39

    .line 1300
    .end local v3    # "index":I
    .end local v9    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v12    # "offset":J
    .end local v14    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v15    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v17    # "s":I
    .local v2, "s":I
    :cond_75
    move/from16 v17, v2

    .end local v2    # "s":I
    .restart local v17    # "s":I
    goto :goto_7a

    .end local v11    # "al":I
    .end local v17    # "s":I
    .restart local v2    # "s":I
    :cond_78
    move/from16 v17, v2

    .line 1331
    .end local v2    # "s":I
    .restart local v17    # "s":I
    :goto_7a
    const/high16 v2, -0x80000000

    or-int v4, v1, v2

    .line 1332
    .restart local v4    # "h":I
    :goto_7e
    return v4
.end method

.method final greylist-max-o pollAt(I)Ljava/util/concurrent/ForkJoinTask;
    .registers 15
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 942
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v7, v0

    .local v7, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_36

    array-length v0, v7

    move v8, v0

    .local v8, "al":I
    if-lez v0, :cond_36

    .line 943
    add-int/lit8 v0, v8, -0x1

    and-int/2addr v0, p1

    .line 944
    .local v0, "index":I
    int-to-long v1, v0

    sget v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v1, v3

    sget v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v3, v3

    add-long v9, v1, v3

    .line 945
    .local v9, "offset":J
    sget-object v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 946
    invoke-virtual {v1, v7, v9, v10}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/concurrent/ForkJoinTask;

    .line 947
    .local v11, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v11, :cond_36

    add-int/lit8 v12, p1, 0x1

    .end local p1    # "b":I
    .local v12, "b":I
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne p1, v1, :cond_35

    sget-object v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v6, 0x0

    .line 948
    move-object v2, v7

    move-wide v3, v9

    move-object v5, v11

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 949
    iput v12, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 950
    return-object v11

    .line 953
    .end local v0    # "index":I
    .end local v8    # "al":I
    .end local v9    # "offset":J
    .end local v11    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_35
    move p1, v12

    .end local v12    # "b":I
    .restart local p1    # "b":I
    :cond_36
    const/4 v0, 0x0

    return-object v0
.end method

.method final greylist-max-o pop()Ljava/util/concurrent/ForkJoinTask;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 920
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v0, "b":I
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 921
    .local v1, "s":I
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v9, v2

    .local v9, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_37

    if-eq v0, v1, :cond_37

    array-length v2, v9

    move v10, v2

    .local v10, "al":I
    if-lez v2, :cond_37

    .line 922
    add-int/lit8 v2, v10, -0x1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v2, v1

    .line 923
    .local v2, "index":I
    int-to-long v3, v2

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v3, v5

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v5, v5

    add-long v11, v3, v5

    .line 924
    .local v11, "offset":J
    sget-object v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 925
    invoke-virtual {v3, v9, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/util/concurrent/ForkJoinTask;

    .line 926
    .local v13, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v13, :cond_37

    sget-object v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    .line 927
    move-object v4, v9

    move-wide v5, v11

    move-object v7, v13

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 928
    iput v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 929
    return-object v13

    .line 932
    .end local v2    # "index":I
    .end local v10    # "al":I
    .end local v11    # "offset":J
    .end local v13    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_37
    const/4 v2, 0x0

    return-object v2
.end method

.method final greylist-max-o popCC(Ljava/util/concurrent/CountedCompleter;I)Ljava/util/concurrent/CountedCompleter;
    .registers 22
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;I)",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 1248
    .local p1, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v6, p0

    iget v7, v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v7, "b":I
    iget v8, v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1249
    .local v8, "s":I
    iget-object v0, v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v15, v0

    .local v15, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_a8

    if-eq v7, v8, :cond_a8

    array-length v0, v15

    move/from16 v16, v0

    .local v16, "al":I
    if-lez v0, :cond_a8

    .line 1250
    add-int/lit8 v0, v16, -0x1

    add-int/lit8 v1, v8, -0x1

    and-int v14, v0, v1

    .line 1251
    .local v14, "index":I
    int-to-long v0, v14

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v0, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v2, v2

    add-long v11, v0, v2

    .line 1252
    .local v11, "offset":J
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1253
    invoke-virtual {v0, v15, v11, v12}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/concurrent/ForkJoinTask;

    .line 1254
    .local v13, "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    instance-of v0, v13, Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_a5

    .line 1255
    move-object/from16 v17, v13

    check-cast v17, Ljava/util/concurrent/CountedCompleter;

    .line 1256
    .local v17, "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, v17

    move-object v10, v0

    .line 1257
    .local v10, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_35
    move-object/from16 v9, p1

    if-ne v10, v9, :cond_97

    .line 1258
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_82

    .line 1259
    const/16 v18, 0x0

    .line 1260
    .local v18, "popped":Z
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1261
    iget v0, v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v8, :cond_6e

    iget-object v0, v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-ne v0, v15, :cond_6e

    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    .line 1262
    move-object v9, v0

    move-object v0, v10

    .end local v10    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local v0, "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v10, v15

    move-wide v2, v11

    .end local v11    # "offset":J
    .local v2, "offset":J
    move-object v4, v13

    .end local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .local v4, "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v13, v17

    move v5, v14

    .end local v14    # "index":I
    .local v5, "index":I
    move-object v14, v1

    invoke-virtual/range {v9 .. v14}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1264
    const/16 v18, 0x1

    .line 1265
    add-int/lit8 v1, v8, -0x1

    iput v1, v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    goto :goto_72

    .line 1261
    .end local v0    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v2    # "offset":J
    .end local v4    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v5    # "index":I
    .restart local v10    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v11    # "offset":J
    .restart local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v14    # "index":I
    :cond_6e
    move-object v0, v10

    move-wide v2, v11

    move-object v4, v13

    move v5, v14

    .line 1267
    .end local v10    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v11    # "offset":J
    .end local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "index":I
    .restart local v0    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v2    # "offset":J
    .restart local v4    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v5    # "index":I
    :cond_72
    :goto_72
    sget-object v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v11, 0x0

    invoke-virtual {v1, v6, v9, v10, v11}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 1268
    if-eqz v18, :cond_81

    .line 1269
    return-object v17

    .line 1260
    .end local v0    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v2    # "offset":J
    .end local v4    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v5    # "index":I
    .restart local v10    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v11    # "offset":J
    .restart local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v14    # "index":I
    :cond_7d
    move-object v0, v10

    move-wide v2, v11

    move-object v4, v13

    move v5, v14

    .line 1271
    .end local v10    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v11    # "offset":J
    .end local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "index":I
    .end local v18    # "popped":Z
    .restart local v0    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v2    # "offset":J
    .restart local v4    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v5    # "index":I
    :cond_81
    goto :goto_a8

    .line 1272
    .end local v0    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v2    # "offset":J
    .end local v4    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v5    # "index":I
    .restart local v10    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v11    # "offset":J
    .restart local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v14    # "index":I
    :cond_82
    move-object v0, v10

    move-wide v2, v11

    move-object v4, v13

    move v5, v14

    .end local v10    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v11    # "offset":J
    .end local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "index":I
    .restart local v0    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v2    # "offset":J
    .restart local v4    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v5    # "index":I
    sget-object v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v14, 0x0

    move-object v10, v15

    move-object/from16 v13, v17

    invoke-virtual/range {v9 .. v14}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 1274
    add-int/lit8 v1, v8, -0x1

    iput v1, v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1275
    return-object v17

    .line 1279
    .end local v0    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v2    # "offset":J
    .end local v4    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v5    # "index":I
    .restart local v10    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v11    # "offset":J
    .restart local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v14    # "index":I
    :cond_97
    move-object v0, v10

    move-wide v2, v11

    move-object v4, v13

    move v5, v14

    .end local v10    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v11    # "offset":J
    .end local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "index":I
    .restart local v0    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v2    # "offset":J
    .restart local v4    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v5    # "index":I
    iget-object v1, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v10, v1

    .end local v0    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v10    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-nez v1, :cond_a1

    .line 1280
    goto :goto_a8

    .line 1279
    :cond_a1
    move-wide v11, v2

    move-object v13, v4

    move v14, v5

    goto :goto_35

    .line 1254
    .end local v2    # "offset":J
    .end local v4    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v5    # "index":I
    .end local v10    # "r":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v17    # "t":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v11    # "offset":J
    .restart local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v14    # "index":I
    :cond_a5
    move-wide v2, v11

    move-object v4, v13

    move v5, v14

    .line 1284
    .end local v11    # "offset":J
    .end local v13    # "o":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "index":I
    .end local v16    # "al":I
    :cond_a8
    :goto_a8
    const/4 v0, 0x0

    return-object v0
.end method

.method final greylist-max-o push(Ljava/util/concurrent/ForkJoinTask;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 871
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->storeFence()V

    .line 872
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 873
    .local v0, "s":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v2, v1

    .local v2, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_34

    array-length v1, v2

    move v3, v1

    .local v3, "al":I
    if-lez v1, :cond_34

    .line 874
    add-int/lit8 v1, v3, -0x1

    and-int/2addr v1, v0

    aput-object p1, v2, v1

    .line 875
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 876
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 877
    .local v1, "p":Ljava/util/concurrent/ForkJoinPool;
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v4, v0

    move v5, v4

    .local v5, "d":I
    if-nez v4, :cond_2c

    if-eqz v1, :cond_2c

    .line 878
    sget-object v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v4}, Lsun/misc/Unsafe;->fullFence()V

    .line 879
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    goto :goto_34

    .line 881
    :cond_2c
    add-int v4, v3, v5

    const/4 v6, 0x1

    if-ne v4, v6, :cond_34

    .line 882
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    .line 884
    .end local v1    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v3    # "al":I
    .end local v5    # "d":I
    :cond_34
    :goto_34
    return-void
.end method

.method final greylist-max-o queueSize()I
    .registers 3

    .line 847
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v0, v1

    .line 848
    .local v0, "n":I
    if-ltz v0, :cond_9

    const/4 v1, 0x0

    goto :goto_a

    :cond_9
    neg-int v1, v0

    :goto_a
    return v1
.end method

.method final greylist-max-o runTask(Ljava/util/concurrent/ForkJoinTask;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 1154
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p1, :cond_27

    .line 1155
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 1156
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    if-gez v0, :cond_d

    .line 1157
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->localPollAndExec()V

    goto :goto_10

    .line 1159
    :cond_d
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->localPopAndExec()V

    .line 1160
    :goto_10
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    .line 1161
    .local v0, "ns":I
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 1162
    .local v1, "thread":Ljava/util/concurrent/ForkJoinWorkerThread;
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 1163
    if-gez v0, :cond_22

    .line 1164
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->transferStealCount(Ljava/util/concurrent/ForkJoinPool;)V

    .line 1165
    :cond_22
    if-eqz v1, :cond_27

    .line 1166
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinWorkerThread;->afterTopLevelExec()V

    .line 1168
    .end local v0    # "ns":I
    .end local v1    # "thread":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_27
    return-void
.end method

.method final greylist-max-o sharedPush(Ljava/util/concurrent/ForkJoinTask;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)I"
        }
    .end annotation

    .line 1024
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    sget-object v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1025
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v0, "b":I
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1026
    .local v1, "s":I
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v3, v2

    .local v3, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_36

    array-length v2, v3

    move v4, v2

    .local v4, "al":I
    if-lez v2, :cond_36

    add-int/lit8 v2, v4, -0x1

    sub-int v5, v0, v1

    move v6, v5

    .local v6, "d":I
    add-int/2addr v2, v5

    if-lez v2, :cond_36

    .line 1028
    add-int/lit8 v2, v4, -0x1

    and-int/2addr v2, v1

    aput-object p1, v3, v2

    .line 1029
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1030
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1031
    if-gez v6, :cond_35

    iget v5, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v5, :cond_35

    move v2, v6

    .local v2, "stat":I
    :cond_35
    goto :goto_3a

    .line 1034
    .end local v2    # "stat":I
    .end local v4    # "al":I
    .end local v6    # "d":I
    :cond_36
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growAndSharedPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 1035
    const/4 v2, 0x0

    .line 1037
    .end local v0    # "b":I
    .end local v1    # "s":I
    .end local v3    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v2    # "stat":I
    :goto_3a
    goto :goto_3c

    .line 1039
    .end local v2    # "stat":I
    :cond_3b
    const/4 v2, 0x1

    .line 1040
    .restart local v2    # "stat":I
    :goto_3c
    return v2
.end method

.method final greylist-max-o transferStealCount(Ljava/util/concurrent/ForkJoinPool;)V
    .registers 8
    .param p1, "p"    # Ljava/util/concurrent/ForkJoinPool;

    .line 1175
    if-eqz p1, :cond_27

    iget-object v0, p1, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    move-object v1, v0

    .local v1, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-eqz v0, :cond_27

    .line 1176
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v2, v0

    .line 1177
    .local v2, "s":J
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    .line 1178
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_16

    const-wide/32 v2, 0x7fffffff

    .line 1179
    :cond_16
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    .line 1181
    :try_start_19
    iget-wide v4, v1, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_22

    .line 1183
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 1184
    goto :goto_27

    .line 1183
    :catchall_22
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 1184
    throw v0

    .line 1186
    .end local v1    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .end local v2    # "s":J
    :cond_27
    :goto_27
    return-void
.end method

.method final greylist-max-o tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    .line 1195
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_ad

    iget v2, v1, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_ad

    .line 1197
    :cond_a
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move v3, v2

    .local v3, "b":I
    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move v5, v4

    .local v5, "s":I
    sub-int/2addr v2, v4

    move v4, v2

    .local v4, "d":I
    if-gez v2, :cond_ad

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v12, v2

    .local v12, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_ad

    array-length v2, v12

    move v13, v2

    .local v13, "al":I
    if-lez v2, :cond_ad

    .line 1200
    :goto_1d
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v2, v13, -0x1

    and-int/2addr v2, v5

    .line 1201
    .local v2, "index":I
    sget v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int v6, v2, v6

    sget v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v6, v7

    int-to-long v14, v6

    .line 1202
    .local v14, "offset":J
    sget-object v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1203
    invoke-virtual {v6, v12, v14, v15}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Ljava/util/concurrent/ForkJoinTask;

    .line 1204
    .local v11, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/16 v16, 0x0

    if-nez v11, :cond_39

    .line 1205
    goto/16 :goto_a5

    .line 1206
    :cond_39
    if-ne v11, v1, :cond_7a

    .line 1207
    const/16 v17, 0x0

    .line 1208
    .local v17, "removed":Z
    add-int/lit8 v6, v5, 0x1

    iget v7, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v6, v7, :cond_59

    .line 1209
    sget-object v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/16 v18, 0x0

    move-object v7, v12

    move-wide v8, v14

    move-object v10, v11

    move-object/from16 v19, v11

    .end local v11    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .local v19, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v11, v18

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 1210
    iput v5, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1211
    const/16 v17, 0x1

    goto :goto_6e

    .line 1214
    .end local v19    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v11    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_59
    move-object/from16 v19, v11

    .end local v11    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v19    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iget v6, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v6, v3, :cond_6e

    .line 1215
    sget-object v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    new-instance v11, Ljava/util/concurrent/ForkJoinPool$EmptyTask;

    invoke-direct {v11}, Ljava/util/concurrent/ForkJoinPool$EmptyTask;-><init>()V

    move-object v7, v12

    move-wide v8, v14

    move-object/from16 v10, v19

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    .line 1217
    :cond_6e
    :goto_6e
    if-eqz v17, :cond_a5

    .line 1218
    iget-object v6, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 1219
    .local v6, "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iput-object v1, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 1220
    iput-object v6, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 1221
    .end local v6    # "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    goto :goto_a5

    .line 1224
    .end local v17    # "removed":Z
    .end local v19    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v11    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_7a
    move-object/from16 v19, v11

    iget v6, v11, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v6, :cond_9a

    add-int/lit8 v6, v5, 0x1

    iget v7, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v6, v7, :cond_9a

    .line 1225
    sget-object v6, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/16 v17, 0x0

    move-object v7, v12

    move-wide v8, v14

    move-object v10, v11

    move-object/from16 v18, v11

    .end local v11    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .local v18, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v11, v17

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 1226
    iput v5, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    goto :goto_a5

    .line 1224
    .end local v18    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v11    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_9a
    move-object/from16 v18, v11

    .line 1230
    .end local v11    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v18    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    add-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_ab

    .line 1231
    iget v6, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-eq v6, v3, :cond_aa

    .line 1232
    nop

    .line 1236
    .end local v2    # "index":I
    .end local v14    # "offset":J
    .end local v18    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_a5
    :goto_a5
    iget v2, v1, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v2, :cond_a

    .line 1237
    return v16

    .line 1233
    .restart local v2    # "index":I
    .restart local v14    # "offset":J
    .restart local v18    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_aa
    return v16

    .line 1235
    .end local v2    # "index":I
    .end local v14    # "offset":J
    .end local v18    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_ab
    goto/16 :goto_1d

    .line 1240
    .end local v3    # "b":I
    .end local v4    # "d":I
    .end local v5    # "s":I
    .end local v12    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v13    # "al":I
    :cond_ad
    const/4 v2, 0x1

    return v2
.end method

.method final greylist-max-o trySharedUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    .line 1064
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v0, 0x0

    .line 1065
    .local v0, "popped":Z
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v1, v1, -0x1

    .line 1066
    .local v1, "s":I
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v9, v2

    .local v9, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_53

    array-length v2, v9

    move v10, v2

    .local v10, "al":I
    if-lez v2, :cond_53

    .line 1067
    add-int/lit8 v2, v10, -0x1

    and-int/2addr v2, v1

    .line 1068
    .local v2, "index":I
    int-to-long v3, v2

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v3, v5

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v5, v5

    add-long v11, v3, v5

    .line 1069
    .local v11, "offset":J
    sget-object v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v3, v9, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/util/concurrent/ForkJoinTask;

    .line 1070
    .local v13, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-ne v13, p1, :cond_53

    sget-object v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1071
    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1072
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v4, v1, 0x1

    if-ne v3, v4, :cond_4b

    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-ne v3, v9, :cond_4b

    sget-object v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    .line 1073
    move-object v4, v9

    move-wide v5, v11

    move-object v7, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1074
    const/4 v0, 0x1

    .line 1075
    iput v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1077
    :cond_4b
    sget-object v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v6, 0x0

    invoke-virtual {v3, p0, v4, v5, v6}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 1080
    .end local v2    # "index":I
    .end local v10    # "al":I
    .end local v11    # "offset":J
    .end local v13    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_53
    return v0
.end method

.method final greylist-max-o tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    .line 1005
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v0, "b":I
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1006
    .local v1, "s":I
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    move-object v9, v2

    .local v9, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_2d

    if-eq v0, v1, :cond_2d

    array-length v2, v9

    move v10, v2

    .local v10, "al":I
    if-lez v2, :cond_2d

    .line 1007
    add-int/lit8 v2, v10, -0x1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v2, v1

    .line 1008
    .local v2, "index":I
    int-to-long v3, v2

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-long/2addr v3, v5

    sget v5, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v5, v5

    add-long v11, v3, v5

    .line 1009
    .local v11, "offset":J
    sget-object v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    move-object v4, v9

    move-wide v5, v11

    move-object v7, p1

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1010
    iput v1, p0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1011
    const/4 v3, 0x1

    return v3

    .line 1014
    .end local v2    # "index":I
    .end local v10    # "al":I
    .end local v11    # "offset":J
    :cond_2d
    const/4 v2, 0x0

    return v2
.end method
