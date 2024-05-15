.class public Ljava/util/concurrent/ForkJoinWorkerThread;
.super Ljava/lang/Thread;
.source "ForkJoinWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
    }
.end annotation


# static fields
.field private static final greylist-max-o INHERITABLETHREADLOCALS:J

.field private static final greylist-max-o INHERITEDACCESSCONTROLCONTEXT:J

.field private static final greylist-max-o THREADLOCALS:J

.field private static final greylist-max-o U:Lsun/misc/Unsafe;


# instance fields
.field final greylist-max-o pool:Ljava/util/concurrent/ForkJoinPool;

.field final greylist-max-o workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 188
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    .line 194
    :try_start_6
    const-class v1, Ljava/lang/Thread;

    const-string v2, "threadLocals"

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/ForkJoinWorkerThread;->THREADLOCALS:J

    .line 196
    const-class v1, Ljava/lang/Thread;

    const-string v2, "inheritableThreadLocals"

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/ForkJoinWorkerThread;->INHERITABLETHREADLOCALS:J

    .line 198
    const-class v1, Ljava/lang/Thread;

    const-string v2, "inheritedAccessControlContext"

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ForkJoinWorkerThread;->INHERITEDACCESSCONTROLCONTEXT:J
    :try_end_30
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_30} :catch_32

    .line 202
    nop

    .line 203
    return-void

    .line 200
    :catch_32
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor whitelist test-api <init>(Ljava/util/concurrent/ForkJoinPool;)V
    .registers 3
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;

    .line 84
    const-string v0, "aForkJoinWorkerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 86
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ForkJoinPool;->registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 87
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/concurrent/ForkJoinPool;Ljava/lang/ThreadGroup;Ljava/security/AccessControlContext;)V
    .registers 7
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;
    .param p2, "threadGroup"    # Ljava/lang/ThreadGroup;
    .param p3, "acc"    # Ljava/security/AccessControlContext;

    .line 94
    const/4 v0, 0x0

    const-string v1, "aForkJoinWorkerThread"

    invoke-direct {p0, p2, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 95
    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ForkJoinWorkerThread;->INHERITEDACCESSCONTROLCONTEXT:J

    invoke-virtual {v0, p0, v1, v2, p3}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->eraseThreadLocals()V

    .line 97
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 98
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ForkJoinPool;->registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 99
    return-void
.end method


# virtual methods
.method greylist-max-o afterTopLevelExec()V
    .registers 1

    .line 185
    return-void
.end method

.method final greylist-max-o eraseThreadLocals()V
    .registers 5

    .line 177
    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ForkJoinWorkerThread;->THREADLOCALS:J

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 178
    sget-wide v1, Ljava/util/concurrent/ForkJoinWorkerThread;->INHERITABLETHREADLOCALS:J

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 179
    return-void
.end method

.method public whitelist test-api getPool()Ljava/util/concurrent/ForkJoinPool;
    .registers 2

    .line 107
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method public whitelist test-api getPoolIndex()I
    .registers 2

    .line 121
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getPoolIndex()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api onStart()V
    .registers 1

    .line 134
    return-void
.end method

.method protected whitelist test-api onTermination(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 145
    return-void
.end method

.method public whitelist test-api run()V
    .registers 4

    .line 153
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-nez v0, :cond_27

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "exception":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->onStart()V

    .line 157
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v2, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ForkJoinPool;->runWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_1a

    .line 162
    :try_start_11
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_1f

    .line 163
    :catchall_15
    move-exception v1

    .line 164
    .local v1, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_1f

    .line 165
    move-object v0, v1

    goto :goto_1f

    .line 158
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catchall_1a
    move-exception v1

    .line 159
    .restart local v1    # "ex":Ljava/lang/Throwable;
    move-object v0, v1

    .line 162
    .end local v1    # "ex":Ljava/lang/Throwable;
    :try_start_1c
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_25

    .line 167
    :cond_1f
    :goto_1f
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 168
    goto :goto_27

    .line 163
    :catchall_25
    move-exception v1

    .line 164
    .restart local v1    # "ex":Ljava/lang/Throwable;
    goto :goto_1f

    .line 171
    .end local v0    # "exception":Ljava/lang/Throwable;
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_27
    :goto_27
    return-void
.end method
