.class public Ljava/util/concurrent/ThreadPoolExecutor;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    }
.end annotation


# static fields
.field private static final greylist-max-o CAPACITY:I = 0x1fffffff

.field private static final greylist-max-o COUNT_BITS:I = 0x1d

.field private static final greylist-max-o ONLY_ONE:Z = true

.field private static final greylist-max-o RUNNING:I = -0x20000000

.field private static final greylist-max-o SHUTDOWN:I = 0x0

.field private static final greylist-max-o STOP:I = 0x20000000

.field private static final greylist-max-o TERMINATED:I = 0x60000000

.field private static final greylist-max-o TIDYING:I = 0x40000000

.field private static final greylist defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private static final greylist-max-o shutdownPerm:Ljava/lang/RuntimePermission;


# instance fields
.field private volatile greylist allowCoreThreadTimeOut:Z

.field private greylist-max-o completedTaskCount:J

.field private volatile greylist-max-o corePoolSize:I

.field private final greylist ctl:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private volatile greylist-max-o handler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private volatile greylist-max-o keepAliveTime:J

.field private greylist-max-o largestPoolSize:I

.field private final greylist mainLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile greylist-max-o maximumPoolSize:I

.field private final greylist-max-o termination:Ljava/util/concurrent/locks/Condition;

.field private volatile greylist-max-o threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private final greylist-max-o workQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o workers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/util/concurrent/ThreadPoolExecutor$Worker;",
            ">;"
        }
    .end annotation

    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 570
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 593
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "modifyThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .registers 16
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 1220
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    nop

    .line 1221
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    sget-object v8, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 1220
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 1222
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 17
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 1290
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    nop

    .line 1291
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    .line 1290
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 1292
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .registers 17
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .line 1255
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    sget-object v8, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 1257
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 12
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p8, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 1327
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 398
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 399
    const/high16 v1, -0x20000000

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 481
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 488
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    .line 494
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    .line 1328
    if-ltz p1, :cond_4c

    if-lez p2, :cond_4c

    if-lt p2, p1, :cond_4c

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_4c

    .line 1333
    if-eqz p6, :cond_4a

    if-eqz p7, :cond_4a

    if-eqz p8, :cond_4a

    .line 1335
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    .line 1336
    iput p2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    .line 1337
    iput-object p6, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 1338
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    .line 1339
    iput-object p7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 1340
    iput-object p8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 1341
    return-void

    .line 1334
    :cond_4a
    const/4 v0, 0x0

    throw v0

    .line 1332
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private greylist-max-o addWorker(Ljava/lang/Runnable;Z)Z
    .registers 11
    .param p1, "firstTask"    # Ljava/lang/Runnable;
    .param p2, "core"    # Z

    .line 922
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 923
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v1

    .line 926
    .local v1, "rs":I
    const/4 v2, 0x0

    if-ltz v1, :cond_1a

    if-nez v1, :cond_19

    if-nez p1, :cond_19

    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 929
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 930
    :cond_19
    return v2

    .line 933
    :cond_1a
    :goto_1a
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v3

    .line 934
    .local v3, "wc":I
    const v4, 0x1fffffff

    if-ge v3, v4, :cond_a3

    .line 935
    if-eqz p2, :cond_28

    iget v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    goto :goto_2a

    :cond_28
    iget v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    :goto_2a
    if-lt v3, v4, :cond_2e

    goto/16 :goto_a3

    .line 937
    :cond_2e
    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndIncrementWorkerCount(I)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 938
    nop

    .line 946
    .end local v0    # "c":I
    .end local v1    # "rs":I
    .end local v3    # "wc":I
    const/4 v0, 0x0

    .line 947
    .local v0, "workerStarted":Z
    const/4 v1, 0x0

    .line 948
    .local v1, "workerAdded":Z
    const/4 v2, 0x0

    .line 950
    .local v2, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :try_start_38
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    invoke-direct {v3, p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)V

    move-object v2, v3

    .line 951
    iget-object v3, v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 952
    .local v3, "t":Ljava/lang/Thread;
    if-eqz v3, :cond_86

    .line 953
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 954
    .local v4, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_8c

    .line 959
    :try_start_47
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-static {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v5

    .line 961
    .local v5, "rs":I
    if-ltz v5, :cond_57

    if-nez v5, :cond_6f

    if-nez p1, :cond_6f

    .line 963
    :cond_57
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-nez v6, :cond_7a

    .line 965
    iget-object v6, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 966
    iget-object v6, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    .line 967
    .local v6, "s":I
    iget v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I

    if-le v6, v7, :cond_6e

    .line 968
    iput v6, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_6e
    .catchall {:try_start_47 .. :try_end_6e} :catchall_80

    .line 969
    :cond_6e
    const/4 v1, 0x1

    .line 972
    .end local v5    # "rs":I
    .end local v6    # "s":I
    :cond_6f
    :try_start_6f
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 973
    nop

    .line 974
    if-eqz v1, :cond_86

    .line 975
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_8c

    .line 976
    const/4 v0, 0x1

    goto :goto_86

    .line 964
    .restart local v5    # "rs":I
    :cond_7a
    :try_start_7a
    new-instance v6, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v6}, Ljava/lang/IllegalThreadStateException;-><init>()V

    .end local v0    # "workerStarted":Z
    .end local v1    # "workerAdded":Z
    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .end local v3    # "t":Ljava/lang/Thread;
    .end local v4    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local p1    # "firstTask":Ljava/lang/Runnable;
    .end local p2    # "core":Z
    throw v6
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_80

    .line 972
    .end local v5    # "rs":I
    .restart local v0    # "workerStarted":Z
    .restart local v1    # "workerAdded":Z
    .restart local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .restart local v3    # "t":Ljava/lang/Thread;
    .restart local v4    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local p1    # "firstTask":Ljava/lang/Runnable;
    .restart local p2    # "core":Z
    :catchall_80
    move-exception v5

    :try_start_81
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 973
    nop

    .end local v0    # "workerStarted":Z
    .end local v1    # "workerAdded":Z
    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .end local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local p1    # "firstTask":Ljava/lang/Runnable;
    .end local p2    # "core":Z
    throw v5
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_8c

    .line 980
    .end local v3    # "t":Ljava/lang/Thread;
    .end local v4    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v0    # "workerStarted":Z
    .restart local v1    # "workerAdded":Z
    .restart local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .restart local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local p1    # "firstTask":Ljava/lang/Runnable;
    .restart local p2    # "core":Z
    :cond_86
    :goto_86
    if-nez v0, :cond_8b

    .line 981
    invoke-direct {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    .line 983
    :cond_8b
    return v0

    .line 980
    :catchall_8c
    move-exception v3

    if-nez v0, :cond_92

    .line 981
    invoke-direct {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    .line 982
    :cond_92
    throw v3

    .line 939
    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .local v0, "c":I
    .local v1, "rs":I
    .local v3, "wc":I
    :cond_93
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 940
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v4

    if-eq v4, v1, :cond_a1

    .line 941
    goto/16 :goto_0

    .line 943
    .end local v3    # "wc":I
    :cond_a1
    goto/16 :goto_1a

    .line 936
    .restart local v3    # "wc":I
    :cond_a3
    :goto_a3
    return v2
.end method

.method private greylist-max-o addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V
    .registers 4
    .param p1, "w"    # Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 994
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 995
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 997
    if-eqz p1, :cond_c

    .line 998
    :try_start_7
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 999
    :cond_c
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    .line 1000
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_17

    .line 1002
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1003
    nop

    .line 1004
    return-void

    .line 1002
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1003
    throw v1
.end method

.method private greylist-max-o advanceRunState(I)V
    .registers 5
    .param p1, "targetState"    # I

    .line 697
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 698
    .local v0, "c":I
    invoke-static {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 699
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    invoke-static {p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 700
    goto :goto_1e

    .line 701
    .end local v0    # "c":I
    :cond_1d
    goto :goto_0

    .line 702
    :cond_1e
    :goto_1e
    return-void
.end method

.method private greylist-max-o checkShutdownAccess()V
    .registers 6

    .line 758
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 759
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_31

    .line 760
    sget-object v1, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 761
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 762
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 764
    :try_start_10
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 765
    .local v3, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v4, v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, v4}, Ljava/lang/SecurityManager;->checkAccess(Ljava/lang/Thread;)V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2c

    .end local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    goto :goto_16

    .line 767
    :cond_28
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 768
    goto :goto_31

    .line 767
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 768
    throw v2

    .line 770
    .end local v1    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_31
    :goto_31
    return-void
.end method

.method private greylist-max-o compareAndDecrementWorkerCount(I)Z
    .registers 4
    .param p1, "expect"    # I

    .line 443
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o compareAndIncrementWorkerCount(I)Z
    .registers 4
    .param p1, "expect"    # I

    .line 436
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o ctlOf(II)I
    .registers 3
    .param p0, "rs"    # I
    .param p1, "wc"    # I

    .line 413
    or-int v0, p0, p1

    return v0
.end method

.method private greylist-max-o decrementWorkerCount()V
    .registers 2

    .line 452
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndDecrementWorkerCount(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 453
    return-void

    .line 452
    :cond_d
    goto :goto_0
.end method

.method private greylist-max-o drainQueue()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 877
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 878
    .local v0, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .local v1, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 880
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 881
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Runnable;

    invoke-interface {v0, v3}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Runnable;

    array-length v4, v3

    :goto_1a
    if-ge v2, v4, :cond_2a

    aget-object v5, v3, v2

    .line 882
    .local v5, "r":Ljava/lang/Runnable;
    invoke-interface {v0, v5}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 883
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    .end local v5    # "r":Ljava/lang/Runnable;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 886
    :cond_2a
    return-object v1
.end method

.method private greylist-max-o getTask()Ljava/lang/Runnable;
    .registers 10

    .line 1065
    const/4 v0, 0x0

    .line 1068
    .local v0, "timedOut":Z
    :goto_1
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1069
    .local v1, "c":I
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v2

    .line 1072
    .local v2, "rs":I
    const/4 v3, 0x0

    if-ltz v2, :cond_1e

    const/high16 v4, 0x20000000

    if-ge v2, v4, :cond_1a

    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1073
    :cond_1a
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    .line 1074
    return-object v3

    .line 1077
    :cond_1e
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v4

    .line 1080
    .local v4, "wc":I
    iget-boolean v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    const/4 v6, 0x1

    if-nez v5, :cond_2e

    iget v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-le v4, v5, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v5, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v5, v6

    .line 1082
    .local v5, "timed":Z
    :goto_2f
    iget v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    if-gt v4, v7, :cond_37

    if-eqz v5, :cond_42

    if-eqz v0, :cond_42

    :cond_37
    if-gt v4, v6, :cond_62

    iget-object v6, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 1083
    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_42

    goto :goto_62

    .line 1090
    :cond_42
    if-eqz v5, :cond_51

    .line 1091
    :try_start_44
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    iget-wide v6, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v6, v7, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    goto :goto_59

    .line 1092
    :cond_51
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_59} :catch_5f

    :goto_59
    nop

    .line 1093
    .local v3, "r":Ljava/lang/Runnable;
    if-eqz v3, :cond_5d

    .line 1094
    return-object v3

    .line 1095
    :cond_5d
    const/4 v0, 0x1

    .line 1098
    .end local v3    # "r":Ljava/lang/Runnable;
    goto :goto_61

    .line 1096
    :catch_5f
    move-exception v3

    .line 1097
    .local v3, "retry":Ljava/lang/InterruptedException;
    const/4 v0, 0x0

    .line 1099
    .end local v1    # "c":I
    .end local v2    # "rs":I
    .end local v3    # "retry":Ljava/lang/InterruptedException;
    .end local v4    # "wc":I
    .end local v5    # "timed":Z
    :goto_61
    goto :goto_1

    .line 1084
    .restart local v1    # "c":I
    .restart local v2    # "rs":I
    .restart local v4    # "wc":I
    .restart local v5    # "timed":Z
    :cond_62
    :goto_62
    invoke-direct {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndDecrementWorkerCount(I)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 1085
    return-object v3

    .line 1084
    :cond_69
    goto :goto_1
.end method

.method private greylist-max-o interruptIdleWorkers()V
    .registers 2

    .line 833
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers(Z)V

    .line 834
    return-void
.end method

.method private greylist-max-o interruptIdleWorkers(Z)V
    .registers 7
    .param p1, "onlyOne"    # Z

    .line 807
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 808
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 810
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 811
    .local v2, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v3, v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 812
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_34

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->tryLock()Z

    move-result v4
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_3d

    if-eqz v4, :cond_34

    .line 814
    :try_start_25
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_28} :catch_32
    .catchall {:try_start_25 .. :try_end_28} :catchall_2c

    .line 817
    :goto_28
    :try_start_28
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    .line 818
    goto :goto_34

    .line 817
    :catchall_2c
    move-exception v1

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    .line 818
    nop

    .end local v0    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local p1    # "onlyOne":Z
    throw v1
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_3d

    .line 815
    .restart local v0    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local p1    # "onlyOne":Z
    :catch_32
    move-exception v4

    goto :goto_28

    .line 820
    :cond_34
    :goto_34
    if-eqz p1, :cond_37

    .line 821
    goto :goto_38

    .line 822
    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .end local v3    # "t":Ljava/lang/Thread;
    :cond_37
    goto :goto_b

    .line 824
    :cond_38
    :goto_38
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 825
    nop

    .line 826
    return-void

    .line 824
    :catchall_3d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 825
    throw v1
.end method

.method private greylist-max-o interruptWorkers()V
    .registers 4

    .line 777
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 778
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 780
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 781
    .local v2, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->interruptIfStarted()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    goto :goto_b

    .line 783
    :cond_1b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 784
    nop

    .line 785
    return-void

    .line 783
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 784
    throw v1
.end method

.method private static greylist-max-o isRunning(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 429
    if-gez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private greylist-max-o processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V
    .registers 8
    .param p1, "w"    # Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .param p2, "completedAbruptly"    # Z

    .line 1020
    if-eqz p2, :cond_5

    .line 1021
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    .line 1023
    :cond_5
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1024
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1026
    :try_start_a
    iget-wide v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    iget-wide v3, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1027
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_4d

    .line 1029
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1030
    nop

    .line 1032
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1034
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1035
    .local v1, "c":I
    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1036
    const/4 v2, 0x0

    if-nez p2, :cond_48

    .line 1037
    iget-boolean v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-eqz v3, :cond_34

    move v3, v2

    goto :goto_36

    :cond_34
    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    .line 1038
    .local v3, "min":I
    :goto_36
    if-nez v3, :cond_41

    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_41

    .line 1039
    const/4 v3, 0x1

    .line 1040
    :cond_41
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v4

    if-lt v4, v3, :cond_48

    .line 1041
    return-void

    .line 1043
    .end local v3    # "min":I
    :cond_48
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    .line 1045
    :cond_4c
    return-void

    .line 1029
    .end local v1    # "c":I
    :catchall_4d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1030
    throw v1
.end method

.method private static greylist-max-o runStateAtLeast(II)Z
    .registers 3
    .param p0, "c"    # I
    .param p1, "s"    # I

    .line 425
    if-lt p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static greylist-max-o runStateLessThan(II)Z
    .registers 3
    .param p0, "c"    # I
    .param p1, "s"    # I

    .line 421
    if-ge p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static greylist-max-o runStateOf(I)I
    .registers 2
    .param p0, "c"    # I

    .line 411
    const/high16 v0, -0x20000000

    and-int/2addr v0, p0

    return v0
.end method

.method private static greylist-max-o workerCountOf(I)I
    .registers 2
    .param p0, "c"    # I

    .line 412
    const v0, 0x1fffffff

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected whitelist core-platform-api test-api afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 2028
    return-void
.end method

.method public whitelist core-platform-api test-api allowCoreThreadTimeOut(Z)V
    .registers 6
    .param p1, "value"    # Z

    .line 1671
    if-eqz p1, :cond_13

    iget-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    goto :goto_13

    .line 1672
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Core threads must have nonzero keep alive times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1673
    :cond_13
    :goto_13
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-eq p1, v0, :cond_1e

    .line 1674
    iput-boolean p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    .line 1675
    if-eqz p1, :cond_1e

    .line 1676
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1678
    :cond_1e
    return-void
.end method

.method public whitelist core-platform-api test-api allowsCoreThreadTimeOut()Z
    .registers 2

    .line 1650
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    return v0
.end method

.method public whitelist core-platform-api test-api awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1479
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 1480
    .local v0, "nanos":J
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1481
    .local v2, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1483
    :goto_9
    :try_start_9
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/high16 v4, 0x60000000

    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_2f

    if-nez v3, :cond_2a

    .line 1484
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_22

    .line 1485
    const/4 v3, 0x0

    .line 1490
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1485
    return v3

    .line 1486
    :cond_22
    :try_start_22
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v3
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_2f

    move-wide v0, v3

    goto :goto_9

    .line 1488
    :cond_2a
    const/4 v3, 0x1

    .line 1490
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1488
    return v3

    .line 1490
    :catchall_2f
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1491
    throw v3
.end method

.method protected whitelist core-platform-api test-api beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 1977
    return-void
.end method

.method greylist-max-o ensurePrestart()V
    .registers 4

    .line 1615
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v0

    .line 1616
    .local v0, "wc":I
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_14

    .line 1617
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    goto :goto_1a

    .line 1618
    :cond_14
    if-nez v0, :cond_1a

    .line 1619
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    .line 1620
    :cond_1a
    :goto_1a
    return-void
.end method

.method public whitelist core-platform-api test-api execute(Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 1358
    const/4 v0, 0x0

    if-eqz p1, :cond_58

    .line 1380
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1381
    .local v1, "c":I
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge v2, v3, :cond_1f

    .line 1382
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1383
    return-void

    .line 1384
    :cond_19
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1386
    :cond_1f
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4e

    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1387
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 1388
    .local v2, "recheck":I
    invoke-static {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v4

    if-nez v4, :cond_44

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1389
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    goto :goto_4d

    .line 1390
    :cond_44
    invoke-static {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v4

    if-nez v4, :cond_4d

    .line 1391
    invoke-direct {p0, v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    .line 1392
    .end local v2    # "recheck":I
    :cond_4d
    :goto_4d
    goto :goto_57

    .line 1393
    :cond_4e
    invoke-direct {p0, p1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-nez v0, :cond_57

    .line 1394
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    .line 1395
    :cond_57
    :goto_57
    return-void

    .line 1359
    .end local v1    # "c":I
    :cond_58
    throw v0
.end method

.method protected whitelist core-platform-api test-api finalize()V
    .registers 1

    .line 1499
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 1500
    return-void
.end method

.method public whitelist core-platform-api test-api getActiveCount()I
    .registers 6

    .line 1848
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1849
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1851
    const/4 v1, 0x0

    .line 1852
    .local v1, "n":I
    :try_start_6
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1853
    .local v3, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z

    move-result v4
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_26

    if-eqz v4, :cond_20

    .line 1854
    add-int/lit8 v1, v1, 0x1

    .line 1853
    .end local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_20
    goto :goto_c

    .line 1855
    :cond_21
    nop

    .line 1857
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1855
    return v1

    .line 1857
    .end local v1    # "n":I
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1858
    throw v1
.end method

.method public whitelist core-platform-api test-api getCompletedTaskCount()J
    .registers 8

    .line 1911
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1912
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1914
    :try_start_5
    iget-wide v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1915
    .local v1, "n":J
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1916
    .local v4, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v5, v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_22

    add-long/2addr v1, v5

    .end local v4    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    goto :goto_d

    .line 1917
    :cond_1d
    nop

    .line 1919
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1917
    return-wide v1

    .line 1919
    .end local v1    # "n":J
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1920
    throw v1
.end method

.method public whitelist core-platform-api test-api getCorePoolSize()I
    .registers 2

    .line 1594
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    return v0
.end method

.method public whitelist core-platform-api test-api getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 1751
    iget-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getLargestPoolSize()I
    .registers 3

    .line 1868
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1869
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1871
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 1873
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1871
    return v1

    .line 1873
    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1874
    throw v1
.end method

.method public whitelist core-platform-api test-api getMaximumPoolSize()I
    .registers 2

    .line 1707
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    return v0
.end method

.method public whitelist core-platform-api test-api getPoolSize()I
    .registers 4

    .line 1829
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1830
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1834
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    goto :goto_1b

    .line 1835
    :cond_15
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1f

    .line 1837
    :goto_1b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1834
    return v1

    .line 1837
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1838
    throw v1
.end method

.method public whitelist core-platform-api test-api getQueue()Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1765
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;
    .registers 2

    .line 1545
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getTaskCount()J
    .registers 8

    .line 1886
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1887
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1889
    :try_start_5
    iget-wide v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1890
    .local v1, "n":J
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1891
    .local v4, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v5, v4, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v1, v5

    .line 1892
    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1893
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 1894
    .end local v4    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_25
    goto :goto_d

    .line 1895
    :cond_26
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_32

    int-to-long v3, v3

    add-long/2addr v3, v1

    .line 1897
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1895
    return-wide v3

    .line 1897
    .end local v1    # "n":J
    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1898
    throw v1
.end method

.method public whitelist core-platform-api test-api getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 2

    .line 1522
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method final greylist-max-o isRunningOrShutdown(Z)Z
    .registers 4
    .param p1, "shutdownOK"    # Z

    .line 866
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v0

    .line 867
    .local v0, "rs":I
    const/high16 v1, -0x20000000

    if-eq v0, v1, :cond_15

    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    :goto_16
    return v1
.end method

.method public whitelist core-platform-api test-api isShutdown()Z
    .registers 2

    .line 1454
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist core-platform-api test-api isTerminated()Z
    .registers 3

    .line 1474
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/high16 v1, 0x60000000

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isTerminating()Z
    .registers 3

    .line 1469
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1470
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v1

    if-nez v1, :cond_16

    const/high16 v1, 0x60000000

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method greylist-max-o onShutdown()V
    .registers 1

    .line 857
    return-void
.end method

.method public whitelist core-platform-api test-api prestartAllCoreThreads()I
    .registers 4

    .line 1630
    const/4 v0, 0x0

    .line 1631
    .local v0, "n":I
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1632
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1633
    :cond_c
    return v0
.end method

.method public whitelist core-platform-api test-api prestartCoreThread()Z
    .registers 4

    .line 1606
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_17

    const/4 v0, 0x0

    .line 1607
    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 1606
    :goto_18
    return v2
.end method

.method public whitelist core-platform-api test-api purge()V
    .registers 8

    .line 1801
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 1803
    .local v0, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1804
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1805
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 1806
    .local v2, "r":Ljava/lang/Runnable;
    instance-of v3, v2, Ljava/util/concurrent/Future;

    if-eqz v3, :cond_22

    move-object v3, v2

    check-cast v3, Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1807
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_22
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_22} :catch_24

    .line 1808
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_22
    goto :goto_6

    .line 1816
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_23
    goto :goto_42

    .line 1809
    :catch_24
    move-exception v1

    .line 1813
    .local v1, "fallThrough":Ljava/util/ConcurrentModificationException;
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v3, :cond_42

    aget-object v5, v2, v4

    .line 1814
    .local v5, "r":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/concurrent/Future;

    if-eqz v6, :cond_3f

    move-object v6, v5

    check-cast v6, Ljava/util/concurrent/Future;

    invoke-interface {v6}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 1815
    invoke-interface {v0, v5}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1813
    .end local v5    # "r":Ljava/lang/Object;
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 1818
    .end local v1    # "fallThrough":Ljava/util/ConcurrentModificationException;
    :cond_42
    :goto_42
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1819
    return-void
.end method

.method final greylist-max-o reject(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 848
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-interface {v0, p1, p0}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 849
    return-void
.end method

.method public whitelist core-platform-api test-api remove(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 1785
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1786
    .local v0, "removed":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1787
    return v0
.end method

.method final greylist-max-o runWorker(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V
    .registers 10
    .param p1, "w"    # Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1146
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1147
    .local v0, "wt":Ljava/lang/Thread;
    iget-object v1, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 1148
    .local v1, "task":Ljava/lang/Runnable;
    const/4 v2, 0x0

    iput-object v2, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 1149
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    .line 1150
    const/4 v2, 0x1

    .line 1152
    .local v2, "completedAbruptly":Z
    :goto_d
    if-nez v1, :cond_1d

    :try_start_f
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getTask()Ljava/lang/Runnable;

    move-result-object v3
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_80

    move-object v1, v3

    if-eqz v3, :cond_17

    goto :goto_1d

    .line 1183
    :cond_17
    const/4 v2, 0x0

    .line 1185
    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V

    .line 1186
    nop

    .line 1187
    return-void

    .line 1153
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->lock()V

    .line 1158
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/high16 v4, 0x20000000

    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v3

    if-nez v3, :cond_40

    .line 1159
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1160
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1161
    :cond_40
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_49

    .line 1162
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_49
    .catchall {:try_start_1d .. :try_end_49} :catchall_80

    .line 1164
    :cond_49
    const-wide/16 v3, 0x1

    :try_start_4b
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_74

    .line 1165
    const/4 v5, 0x0

    .line 1167
    .local v5, "thrown":Ljava/lang/Throwable;
    :try_start_4f
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_52
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_52} :catch_6b
    .catch Ljava/lang/Error; {:try_start_4f .. :try_end_52} :catch_68
    .catchall {:try_start_4f .. :try_end_52} :catchall_60

    .line 1175
    :try_start_52
    invoke-virtual {p0, v1, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_74

    .line 1176
    nop

    .line 1178
    .end local v5    # "thrown":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 1179
    :try_start_57
    iget-wide v5, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v5, v3

    iput-wide v5, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    .line 1180
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_80

    .line 1181
    goto :goto_d

    .line 1172
    .restart local v5    # "thrown":Ljava/lang/Throwable;
    :catchall_60
    move-exception v6

    .line 1173
    .local v6, "x":Ljava/lang/Throwable;
    move-object v5, v6

    :try_start_62
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v6}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "wt":Ljava/lang/Thread;
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v2    # "completedAbruptly":Z
    .end local v5    # "thrown":Ljava/lang/Throwable;
    .end local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local p1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    throw v7

    .line 1170
    .end local v6    # "x":Ljava/lang/Throwable;
    .restart local v0    # "wt":Ljava/lang/Thread;
    .restart local v1    # "task":Ljava/lang/Runnable;
    .restart local v2    # "completedAbruptly":Z
    .restart local v5    # "thrown":Ljava/lang/Throwable;
    .restart local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local p1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catch_68
    move-exception v6

    .line 1171
    .local v6, "x":Ljava/lang/Error;
    move-object v5, v6

    .end local v0    # "wt":Ljava/lang/Thread;
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v2    # "completedAbruptly":Z
    .end local v5    # "thrown":Ljava/lang/Throwable;
    .end local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local p1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    throw v6

    .line 1168
    .end local v6    # "x":Ljava/lang/Error;
    .restart local v0    # "wt":Ljava/lang/Thread;
    .restart local v1    # "task":Ljava/lang/Runnable;
    .restart local v2    # "completedAbruptly":Z
    .restart local v5    # "thrown":Ljava/lang/Throwable;
    .restart local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local p1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catch_6b
    move-exception v6

    .line 1169
    .local v6, "x":Ljava/lang/RuntimeException;
    move-object v5, v6

    .end local v0    # "wt":Ljava/lang/Thread;
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v2    # "completedAbruptly":Z
    .end local v5    # "thrown":Ljava/lang/Throwable;
    .end local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local p1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    throw v6
    :try_end_6e
    .catchall {:try_start_62 .. :try_end_6e} :catchall_6e

    .line 1175
    .end local v6    # "x":Ljava/lang/RuntimeException;
    .restart local v0    # "wt":Ljava/lang/Thread;
    .restart local v1    # "task":Ljava/lang/Runnable;
    .restart local v2    # "completedAbruptly":Z
    .restart local v5    # "thrown":Ljava/lang/Throwable;
    .restart local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local p1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_6e
    move-exception v6

    :try_start_6f
    invoke-virtual {p0, v1, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 1176
    nop

    .end local v0    # "wt":Ljava/lang/Thread;
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v2    # "completedAbruptly":Z
    .end local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local p1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    throw v6
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_74

    .line 1178
    .end local v5    # "thrown":Ljava/lang/Throwable;
    .restart local v0    # "wt":Ljava/lang/Thread;
    .restart local v1    # "task":Ljava/lang/Runnable;
    .restart local v2    # "completedAbruptly":Z
    .restart local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local p1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_74
    move-exception v5

    const/4 v1, 0x0

    .line 1179
    :try_start_76
    iget-wide v6, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v6, v3

    iput-wide v6, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    .line 1180
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    .line 1181
    nop

    .end local v0    # "wt":Ljava/lang/Thread;
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v2    # "completedAbruptly":Z
    .end local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local p1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    throw v5
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_80

    .line 1185
    .restart local v0    # "wt":Ljava/lang/Thread;
    .restart local v1    # "task":Ljava/lang/Runnable;
    .restart local v2    # "completedAbruptly":Z
    .restart local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local p1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_80
    move-exception v3

    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V

    .line 1186
    throw v3
.end method

.method public whitelist core-platform-api test-api setCorePoolSize(I)V
    .registers 6
    .param p1, "corePoolSize"    # I

    .line 1567
    if-ltz p1, :cond_3c

    .line 1570
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    sub-int v0, p1, v0

    .line 1571
    .local v0, "delta":I
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    .line 1572
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v1

    if-le v1, p1, :cond_18

    .line 1573
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    goto :goto_3b

    .line 1574
    :cond_18
    if-lez v0, :cond_3b

    .line 1579
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1580
    .local v1, "k":I
    :goto_24
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "k":I
    .local v2, "k":I
    if-lez v1, :cond_3b

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1581
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1582
    goto :goto_3b

    .line 1581
    :cond_39
    move v1, v2

    goto :goto_24

    .line 1585
    .end local v2    # "k":I
    :cond_3b
    :goto_3b
    return-void

    .line 1569
    .end local v0    # "delta":I
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V
    .registers 10
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 1727
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2b

    .line 1729
    cmp-long v2, p1, v0

    if-nez v2, :cond_19

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowsCoreThreadTimeOut()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_19

    .line 1730
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Core threads must have nonzero keep alive times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1731
    :cond_19
    :goto_19
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 1732
    .local v2, "keepAliveTime":J
    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sub-long v4, v2, v4

    .line 1733
    .local v4, "delta":J
    iput-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    .line 1734
    cmp-long v0, v4, v0

    if-gez v0, :cond_2a

    .line 1735
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1736
    :cond_2a
    return-void

    .line 1728
    .end local v2    # "keepAliveTime":J
    .end local v4    # "delta":J
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api setMaximumPoolSize(I)V
    .registers 3
    .param p1, "maximumPoolSize"    # I

    .line 1693
    if-lez p1, :cond_18

    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-lt p1, v0, :cond_18

    .line 1695
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    .line 1696
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v0

    if-le v0, p1, :cond_17

    .line 1697
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1698
    :cond_17
    return-void

    .line 1694
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 3
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 1533
    if-eqz p1, :cond_5

    .line 1535
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 1536
    return-void

    .line 1534
    :cond_5
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .registers 3
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 1510
    if-eqz p1, :cond_5

    .line 1512
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 1513
    return-void

    .line 1511
    :cond_5
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api shutdown()V
    .registers 3

    .line 1408
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1409
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1411
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->checkShutdownAccess()V

    .line 1412
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->advanceRunState(I)V

    .line 1413
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1414
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->onShutdown()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_1a

    .line 1416
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1417
    nop

    .line 1418
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1419
    return-void

    .line 1416
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1417
    throw v1
.end method

.method public whitelist core-platform-api test-api shutdownNow()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1439
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1440
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1442
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->checkShutdownAccess()V

    .line 1443
    const/high16 v1, 0x20000000

    invoke-direct {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->advanceRunState(I)V

    .line 1444
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptWorkers()V

    .line 1445
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->drainQueue()Ljava/util/List;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1c

    .line 1447
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1448
    nop

    .line 1449
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1450
    return-object v1

    .line 1447
    .end local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1448
    throw v1
.end method

.method protected whitelist core-platform-api test-api terminated()V
    .registers 1

    .line 2036
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 10

    .line 1933
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1934
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1936
    :try_start_5
    iget-wide v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1937
    .local v1, "ncompleted":J
    const/4 v3, 0x0

    .line 1938
    .local v3, "nactive":I
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    .line 1939
    .local v4, "nworkers":I
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1940
    .local v6, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v7, v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v1, v7

    .line 1941
    invoke-virtual {v6}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z

    move-result v7
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_92

    if-eqz v7, :cond_2b

    .line 1942
    add-int/lit8 v3, v3, 0x1

    .line 1943
    .end local v6    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_2b
    goto :goto_14

    .line 1945
    :cond_2c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1946
    nop

    .line 1947
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    .line 1949
    .local v5, "c":I
    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v6

    if-eqz v6, :cond_40

    const-string v6, "Running"

    goto :goto_4d

    .line 1950
    :cond_40
    const/high16 v6, 0x60000000

    invoke-static {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v6

    if-eqz v6, :cond_4b

    const-string v6, "Terminated"

    goto :goto_4d

    .line 1951
    :cond_4b
    const-string v6, "Shutting down"

    :goto_4d
    nop

    .line 1952
    .local v6, "runState":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", pool size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", active threads = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", queued tasks = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 1956
    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", completed tasks = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1952
    return-object v7

    .line 1945
    .end local v1    # "ncompleted":J
    .end local v3    # "nactive":I
    .end local v4    # "nworkers":I
    .end local v5    # "c":I
    .end local v6    # "runState":Ljava/lang/String;
    :catchall_92
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1946
    throw v1
.end method

.method final greylist-max-o tryTerminate()V
    .registers 7

    .line 716
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 717
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v1

    if-nez v1, :cond_73

    .line 718
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v2

    if-nez v2, :cond_73

    .line 719
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_73

    .line 721
    :cond_23
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    if-eqz v2, :cond_2e

    .line 722
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers(Z)V

    .line 723
    return-void

    .line 726
    :cond_2e
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 727
    .local v2, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 729
    :try_start_33
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_6e

    if-eqz v1, :cond_69

    .line 731
    const/high16 v1, 0x60000000

    :try_start_42
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_58

    .line 733
    :try_start_45
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 734
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_53
    .catchall {:try_start_45 .. :try_end_53} :catchall_6e

    .line 735
    nop

    .line 739
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 736
    return-void

    .line 733
    :catchall_58
    move-exception v3

    :try_start_59
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 734
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 735
    nop

    .end local v0    # "c":I
    .end local v2    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    throw v3
    :try_end_69
    .catchall {:try_start_59 .. :try_end_69} :catchall_6e

    .line 739
    .restart local v0    # "c":I
    .restart local v2    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/ThreadPoolExecutor;
    :cond_69
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 740
    nop

    .line 742
    .end local v0    # "c":I
    .end local v2    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    goto :goto_0

    .line 739
    .restart local v0    # "c":I
    .restart local v2    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    :catchall_6e
    move-exception v1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 740
    throw v1

    .line 720
    .end local v2    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_73
    :goto_73
    return-void
.end method
