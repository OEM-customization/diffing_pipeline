.class public Lsun/misc/VM;
.super Ljava/lang/Object;
.source "VM.java"


# static fields
.field private static final JVMTI_THREAD_STATE_ALIVE:I = 0x1

.field private static final JVMTI_THREAD_STATE_BLOCKED_ON_MONITOR_ENTER:I = 0x400

.field private static final JVMTI_THREAD_STATE_RUNNABLE:I = 0x4

.field private static final JVMTI_THREAD_STATE_TERMINATED:I = 0x2

.field private static final JVMTI_THREAD_STATE_WAITING_INDEFINITELY:I = 0x10

.field private static final JVMTI_THREAD_STATE_WAITING_WITH_TIMEOUT:I = 0x20

.field public static final STATE_GREEN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_RED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_YELLOW:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static allowArraySyntax:Z

.field private static volatile booted:Z

.field private static defaultAllowArraySyntax:Z

.field private static directMemory:J

.field private static volatile finalRefCount:I

.field private static final lock:Ljava/lang/Object;

.field private static pageAlignDirectMemory:Z

.field private static volatile peakFinalRefCount:I

.field private static final savedProps:Ljava/util/Properties;

.field private static suspended:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 43
    sput-boolean v2, Lsun/misc/VM;->suspended:Z

    .line 151
    sput-boolean v2, Lsun/misc/VM;->booted:Z

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsun/misc/VM;->lock:Ljava/lang/Object;

    .line 189
    const-wide/32 v0, 0x4000000

    sput-wide v0, Lsun/misc/VM;->directMemory:J

    .line 219
    sput-boolean v2, Lsun/misc/VM;->defaultAllowArraySyntax:Z

    .line 220
    sget-boolean v0, Lsun/misc/VM;->defaultAllowArraySyntax:Z

    sput-boolean v0, Lsun/misc/VM;->allowArraySyntax:Z

    .line 269
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lsun/misc/VM;->savedProps:Ljava/util/Properties;

    .line 336
    sput v2, Lsun/misc/VM;->finalRefCount:I

    .line 339
    sput v2, Lsun/misc/VM;->peakFinalRefCount:I

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFinalRefCount(I)V
    .registers 3
    .param p0, "n"    # I

    .prologue
    .line 368
    sget v0, Lsun/misc/VM;->finalRefCount:I

    add-int/2addr v0, p0

    sput v0, Lsun/misc/VM;->finalRefCount:I

    .line 369
    sget v0, Lsun/misc/VM;->finalRefCount:I

    sget v1, Lsun/misc/VM;->peakFinalRefCount:I

    if-le v0, v1, :cond_f

    .line 370
    sget v0, Lsun/misc/VM;->finalRefCount:I

    sput v0, Lsun/misc/VM;->peakFinalRefCount:I

    .line 372
    :cond_f
    return-void
.end method

.method public static allowArraySyntax()Z
    .registers 1

    .prologue
    .line 233
    sget-boolean v0, Lsun/misc/VM;->allowArraySyntax:Z

    return v0
.end method

.method public static allowThreadSuspension(Ljava/lang/ThreadGroup;Z)Z
    .registers 3
    .param p0, "g"    # Ljava/lang/ThreadGroup;
    .param p1, "b"    # Z

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/ThreadGroup;->allowThreadSuspension(Z)Z

    move-result v0

    return v0
.end method

.method public static asChange(II)V
    .registers 2
    .param p0, "as_old"    # I
    .param p1, "as_new"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    return-void
.end method

.method public static asChange_otherthread(II)V
    .registers 2
    .param p0, "as_old"    # I
    .param p1, "as_new"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 107
    return-void
.end method

.method public static awaitBooted()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 174
    sget-object v1, Lsun/misc/VM;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :goto_3
    :try_start_3
    sget-boolean v0, Lsun/misc/VM;->booted:Z

    if-nez v0, :cond_10

    .line 176
    sget-object v0, Lsun/misc/VM;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    goto :goto_3

    .line 174
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_10
    monitor-exit v1

    .line 179
    return-void
.end method

.method public static booted()V
    .registers 2

    .prologue
    .line 160
    sget-object v1, Lsun/misc/VM;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lsun/misc/VM;->booted:Z

    .line 162
    sget-object v0, Lsun/misc/VM;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    monitor-exit v1

    .line 164
    return-void

    .line 160
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getFinalRefCount()I
    .registers 1

    .prologue
    .line 347
    sget v0, Lsun/misc/VM;->finalRefCount:I

    return v0
.end method

.method public static getPeakFinalRefCount()I
    .registers 1

    .prologue
    .line 356
    sget v0, Lsun/misc/VM;->peakFinalRefCount:I

    return v0
.end method

.method public static getSavedProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 263
    sget-object v0, Lsun/misc/VM;->savedProps:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getState()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public static initializeOSEnvironment()V
    .registers 0

    .prologue
    .line 333
    return-void
.end method

.method public static isBooted()Z
    .registers 1

    .prologue
    .line 167
    sget-boolean v0, Lsun/misc/VM;->booted:Z

    return v0
.end method

.method public static isDirectMemoryPageAligned()Z
    .registers 1

    .prologue
    .line 207
    sget-boolean v0, Lsun/misc/VM;->pageAlignDirectMemory:Z

    return v0
.end method

.method public static maxDirectMemory()J
    .registers 2

    .prologue
    .line 196
    sget-wide v0, Lsun/misc/VM;->directMemory:J

    return-wide v0
.end method

.method public static saveAndRemoveProperties(Ljava/util/Properties;)V
    .registers 7
    .param p0, "props"    # Ljava/util/Properties;

    .prologue
    .line 276
    sget-boolean v3, Lsun/misc/VM;->booted:Z

    if-eqz v3, :cond_d

    .line 277
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "System initialization has completed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 279
    :cond_d
    sget-object v3, Lsun/misc/VM;->savedProps:Ljava/util/Properties;

    invoke-virtual {v3, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 286
    const-string/jumbo v3, "sun.nio.MaxDirectMemorySize"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 287
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_30

    .line 288
    const-string/jumbo v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 290
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    sput-wide v4, Lsun/misc/VM;->directMemory:J

    .line 299
    :cond_30
    :goto_30
    const-string/jumbo v3, "sun.nio.PageAlignDirectMemory"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "s":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 300
    .restart local v2    # "s":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 301
    const/4 v3, 0x1

    sput-boolean v3, Lsun/misc/VM;->pageAlignDirectMemory:Z

    .line 306
    :cond_45
    const-string/jumbo v3, "sun.lang.ClassLoader.allowArraySyntax"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    if-nez v2, :cond_78

    .line 308
    sget-boolean v3, Lsun/misc/VM;->defaultAllowArraySyntax:Z

    .line 307
    :goto_50
    sput-boolean v3, Lsun/misc/VM;->allowArraySyntax:Z

    .line 313
    const-string/jumbo v3, "java.lang.Integer.IntegerCache.high"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string/jumbo v3, "sun.zip.disableMemoryMapping"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string/jumbo v3, "sun.java.launcher.diag"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string/jumbo v3, "sun.cds.enableSharedLookupCache"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    return-void

    .line 292
    :cond_6b
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 293
    .local v0, "l":J
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-lez v3, :cond_30

    .line 294
    sput-wide v0, Lsun/misc/VM;->directMemory:J

    goto :goto_30

    .line 309
    .end local v0    # "l":J
    :cond_78
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_50
.end method

.method public static suspendThreads()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 59
    sput-boolean v0, Lsun/misc/VM;->suspended:Z

    .line 60
    return v0
.end method

.method public static threadsSuspended()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    sget-boolean v0, Lsun/misc/VM;->suspended:Z

    return v0
.end method

.method public static toThreadState(I)Ljava/lang/Thread$State;
    .registers 2
    .param p0, "threadStatus"    # I

    .prologue
    .line 378
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_7

    .line 379
    sget-object v0, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    return-object v0

    .line 380
    :cond_7
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_e

    .line 381
    sget-object v0, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    return-object v0

    .line 382
    :cond_e
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_15

    .line 383
    sget-object v0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    return-object v0

    .line 384
    :cond_15
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_1c

    .line 385
    sget-object v0, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    return-object v0

    .line 386
    :cond_1c
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_23

    .line 387
    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    return-object v0

    .line 388
    :cond_23
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_2a

    .line 389
    sget-object v0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    return-object v0

    .line 391
    :cond_2a
    sget-object v0, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    return-object v0
.end method

.method public static unsuspendSomeThreads()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    return-void
.end method

.method public static unsuspendThreads()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lsun/misc/VM;->suspended:Z

    .line 68
    return-void
.end method
