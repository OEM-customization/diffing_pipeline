.class public Ljava/lang/Thread;
.super Ljava/lang/Object;
.source "Thread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Thread$Caches;,
        Ljava/lang/Thread$ParkState;,
        Ljava/lang/Thread$State;,
        Ljava/lang/Thread$UncaughtExceptionHandler;,
        Ljava/lang/Thread$WeakClassKey;
    }
.end annotation


# static fields
.field private static final EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

.field public static final MAX_PRIORITY:I = 0xa

.field public static final MIN_PRIORITY:I = 0x1

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field public static final NORM_PRIORITY:I = 0x5

.field private static final SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/lang/RuntimePermission;

.field private static volatile defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static threadInitNumber:I

.field private static threadSeqNumber:J

.field private static volatile uncaughtExceptionPreHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private volatile blocker:Lsun/nio/ch/Interruptible;

.field private final blockerLock:Ljava/lang/Object;

.field private contextClassLoader:Ljava/lang/ClassLoader;

.field private daemon:Z

.field private eetop:J

.field private group:Ljava/lang/ThreadGroup;

.field inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

.field private inheritedAccessControlContext:Ljava/security/AccessControlContext;

.field private final lock:Ljava/lang/Object;

.field private volatile name:Ljava/lang/String;

.field private nativeParkEventPointer:J

.field private volatile nativePeer:J

.field volatile parkBlocker:Ljava/lang/Object;

.field private parkState:I

.field private priority:I

.field private single_step:Z

.field private stackSize:J

.field started:Z

.field private stillborn:Z

.field private target:Ljava/lang/Runnable;

.field threadLocalRandomProbe:I

.field threadLocalRandomSecondarySeed:I

.field threadLocalRandomSeed:J

.field threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

.field private threadQ:Ljava/lang/Thread;

.field private volatile threadStatus:I

.field private tid:J

.field private volatile uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1499
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 1498
    sput-object v0, Ljava/lang/Thread;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    .line 1596
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string/jumbo v1, "enableContextClassLoaderOverride"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    .line 1595
    sput-object v0, Ljava/lang/Thread;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/lang/RuntimePermission;

    .line 143
    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v2, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v2, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v2, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2064
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Thread-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 441
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "target"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v2, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v2, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v2, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2064
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Thread-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 457
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 9
    .param p1, "target"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v2, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v2, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v2, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2064
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 566
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 567
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v2, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v2, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v2, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2064
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 495
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 496
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .registers 9
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2064
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 484
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 10
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2064
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 614
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 615
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 10
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2064
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 693
    invoke-direct/range {p0 .. p5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 694
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 9
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2064
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 519
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 520
    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "daemon"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2064
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 526
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 527
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->addUnstarted()V

    .line 529
    if-nez p2, :cond_43

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 536
    :cond_43
    iput-object p2, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 538
    iput p3, p0, Ljava/lang/Thread;->priority:I

    .line 539
    iput-boolean p4, p0, Ljava/lang/Thread;->daemon:Z

    .line 540
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;->init2(Ljava/lang/Thread;)V

    .line 541
    invoke-static {}, Ljava/lang/Thread;->nextThreadID()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/Thread;->tid:J

    .line 542
    return-void
.end method

.method public static activeCount()I
    .registers 1

    .prologue
    .line 1181
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    return v0
.end method

.method private static auditSubclass(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1639
    .local p0, "subcl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/Thread$1;

    invoke-direct {v1, p0}, Ljava/lang/Thread$1;-><init>(Ljava/lang/Class;)V

    .line 1638
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1661
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static native currentThread()Ljava/lang/Thread;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static dumpStack()V
    .registers 2

    .prologue
    .line 1348
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Stack trace"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1349
    return-void
.end method

.method public static enumerate([Ljava/lang/Thread;)I
    .registers 2
    .param p0, "tarray"    # [Ljava/lang/Thread;

    .prologue
    .line 1211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    return v0
.end method

.method private exit()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 773
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_c

    .line 774
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->threadTerminated(Ljava/lang/Thread;)V

    .line 775
    iput-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 778
    :cond_c
    iput-object v1, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 780
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 781
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 782
    iput-object v1, p0, Ljava/lang/Thread;->inheritedAccessControlContext:Ljava/security/AccessControlContext;

    .line 783
    iput-object v1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    .line 784
    iput-object v1, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 785
    return-void
.end method

.method public static getAllStackTraces()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1578
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1582
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    sget-object v4, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    .line 1583
    .local v0, "count":I
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v0

    new-array v3, v4, [Ljava/lang/Thread;

    .line 1586
    .local v3, "threads":[Ljava/lang/Thread;
    sget-object v4, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v4, v3}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    .line 1587
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v0, :cond_27

    .line 1588
    aget-object v4, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1591
    :cond_27
    return-object v2
.end method

.method public static getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    .prologue
    .line 1879
    sget-object v0, Ljava/lang/Thread;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static getUncaughtExceptionPreHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    .prologue
    .line 1901
    sget-object v0, Ljava/lang/Thread;->uncaughtExceptionPreHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static holdsLock(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1493
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {v0, p0}, Ljava/lang/Thread;->nativeHoldsLock(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 10
    .param p1, "g"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    .prologue
    .line 400
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 401
    .local v0, "parent":Ljava/lang/Thread;
    if-nez p1, :cond_a

    .line 402
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    .line 405
    :cond_a
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->addUnstarted()V

    .line 406
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 408
    iput-object p2, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 409
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    iput v1, p0, Ljava/lang/Thread;->priority:I

    .line 410
    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v1

    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    .line 411
    invoke-virtual {p0, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 413
    invoke-direct {p0, v0}, Ljava/lang/Thread;->init2(Ljava/lang/Thread;)V

    .line 416
    iput-wide p4, p0, Ljava/lang/Thread;->stackSize:J

    .line 417
    invoke-static {}, Ljava/lang/Thread;->nextThreadID()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/lang/Thread;->tid:J

    .line 418
    return-void
.end method

.method private init2(Ljava/lang/Thread;)V
    .registers 3
    .param p1, "parent"    # Ljava/lang/Thread;

    .prologue
    .line 545
    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 546
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->inheritedAccessControlContext:Ljava/security/AccessControlContext;

    .line 547
    iget-object v0, p1, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    if-eqz v0, :cond_18

    .line 549
    iget-object v0, p1, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 548
    invoke-static {v0}, Ljava/lang/ThreadLocal;->createInheritedMap(Ljava/lang/ThreadLocal$ThreadLocalMap;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 551
    :cond_18
    return-void
.end method

.method public static native interrupted()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static isCCLOverridden(Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1618
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Thread;

    if-ne p0, v2, :cond_6

    .line 1619
    const/4 v2, 0x0

    return v2

    .line 1621
    :cond_6
    sget-object v2, Ljava/lang/Thread$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v3, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2, v3}, Ljava/lang/Thread;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 1622
    new-instance v0, Ljava/lang/Thread$WeakClassKey;

    sget-object v2, Ljava/lang/Thread$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    .line 1623
    .local v0, "key":Ljava/lang/Thread$WeakClassKey;
    sget-object v2, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1624
    .local v1, "result":Ljava/lang/Boolean;
    if-nez v1, :cond_2b

    .line 1625
    invoke-static {p0}, Ljava/lang/Thread;->auditSubclass(Ljava/lang/Class;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1626
    sget-object v2, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method private static native nativeCreate(Ljava/lang/Thread;JZ)V
.end method

.method private native nativeGetStatus(Z)I
.end method

.method private native nativeHoldsLock(Ljava/lang/Object;)Z
.end method

.method private native nativeInterrupt()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native nativeSetName(Ljava/lang/String;)V
.end method

.method private native nativeSetPriority(I)V
.end method

.method private static declared-synchronized nextThreadID()J
    .registers 6

    .prologue
    const-class v1, Ljava/lang/Thread;

    monitor-enter v1

    .line 226
    :try_start_3
    sget-wide v2, Ljava/lang/Thread;->threadSeqNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Ljava/lang/Thread;->threadSeqNumber:J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v1

    return-wide v2

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized nextThreadNum()I
    .registers 3

    .prologue
    const-class v1, Ljava/lang/Thread;

    monitor-enter v1

    .line 185
    :try_start_3
    sget v0, Ljava/lang/Thread;->threadInitNumber:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Ljava/lang/Thread;->threadInitNumber:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<+",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;*>;)V"
        }
    .end annotation

    .prologue
    .line 1967
    .local p0, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<+Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;*>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .local v0, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Ljava/lang/Class<*>;>;"
    if-eqz v0, :cond_a

    .line 1968
    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1970
    :cond_a
    return-void
.end method

.method public static setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 1
    .param p0, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 1867
    sput-object p0, Ljava/lang/Thread;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1868
    return-void
.end method

.method public static setUncaughtExceptionPreHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 1
    .param p0, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 1896
    sput-object p0, Ljava/lang/Thread;->uncaughtExceptionPreHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1897
    return-void
.end method

.method public static sleep(J)V
    .registers 4
    .param p0, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Thread;->sleep(JI)V

    .line 315
    return-void
.end method

.method public static sleep(JI)V
    .registers 21
    .param p0, "millis"    # J
    .param p2, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 345
    const-wide/16 v14, 0x0

    cmp-long v9, p0, v14

    if-gez v9, :cond_22

    .line 346
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "millis < 0: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p0

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 348
    :cond_22
    if-gez p2, :cond_40

    .line 349
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "nanos < 0: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 351
    :cond_40
    const v9, 0xf423f

    move/from16 v0, p2

    if-le v0, v9, :cond_63

    .line 352
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "nanos > 999999: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 357
    :cond_63
    const-wide/16 v14, 0x0

    cmp-long v9, p0, v14

    if-nez v9, :cond_78

    if-nez p2, :cond_78

    .line 359
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_77

    .line 360
    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9

    .line 362
    :cond_77
    return-void

    .line 365
    :cond_78
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 366
    .local v12, "start":J
    const-wide/32 v14, 0xf4240

    mul-long v14, v14, p0

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    .line 368
    .local v4, "duration":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iget-object v8, v9, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 371
    .local v8, "lock":Ljava/lang/Object;
    monitor-enter v8

    .line 373
    :goto_8f
    :try_start_8f
    move-wide/from16 v0, p0

    move/from16 v2, p2

    invoke-static {v8, v0, v1, v2}, Ljava/lang/Thread;->sleep(Ljava/lang/Object;JI)V

    .line 375
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_99
    .catchall {:try_start_8f .. :try_end_99} :catchall_b2

    move-result-wide v10

    .line 376
    .local v10, "now":J
    sub-long v6, v10, v12

    .line 378
    .local v6, "elapsed":J
    cmp-long v9, v6, v4

    if-ltz v9, :cond_a2

    monitor-exit v8

    .line 388
    return-void

    .line 382
    :cond_a2
    sub-long/2addr v4, v6

    .line 383
    move-wide v12, v10

    .line 384
    const-wide/32 v14, 0xf4240

    :try_start_a7
    div-long p0, v4, v14

    .line 385
    const-wide/32 v14, 0xf4240

    rem-long v14, v4, v14
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_b2

    long-to-int v0, v14

    move/from16 p2, v0

    goto :goto_8f

    .line 371
    .end local v6    # "elapsed":J
    .end local v10    # "now":J
    :catchall_b2
    move-exception v9

    monitor-exit v8

    throw v9
.end method

.method private static native sleep(Ljava/lang/Object;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native yield()V
.end method


# virtual methods
.method public blockedOn(Lsun/nio/ch/Interruptible;)V
    .registers 4
    .param p1, "b"    # Lsun/nio/ch/Interruptible;

    .prologue
    .line 250
    iget-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    iput-object p1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    .line 253
    return-void

    .line 250
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final checkAccess()V
    .registers 1

    .prologue
    .line 1400
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 429
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public countStackFrames()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1227
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public destroy()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 988
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final dispatchUncaughtException(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1947
    invoke-static {}, Ljava/lang/Thread;->getUncaughtExceptionPreHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 1948
    .local v1, "initialUeh":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v1, :cond_9

    .line 1950
    :try_start_6
    invoke-interface {v1, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_9} :catch_11
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_9} :catch_11

    .line 1955
    :cond_9
    :goto_9
    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1956
    return-void

    .line 1951
    :catch_11
    move-exception v0

    .local v0, "ignored":Ljava/lang/Throwable;
    goto :goto_9
.end method

.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 2
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 1447
    iget-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 1674
    iget-wide v0, p0, Ljava/lang/Thread;->tid:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1146
    iget-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .registers 2

    .prologue
    .line 1108
    iget v0, p0, Ljava/lang/Thread;->priority:I

    return v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .registers 2

    .prologue
    .line 1538
    invoke-static {p0}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1539
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_7

    .end local v0    # "ste":[Ljava/lang/StackTraceElement;
    :goto_6
    return-object v0

    .restart local v0    # "ste":[Ljava/lang/StackTraceElement;
    :cond_7
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    goto :goto_6
.end method

.method public getState()Ljava/lang/Thread$State;
    .registers 3

    .prologue
    .line 1786
    invoke-static {}, Ljava/lang/Thread$State;->values()[Ljava/lang/Thread$State;

    move-result-object v0

    iget-boolean v1, p0, Ljava/lang/Thread;->started:Z

    invoke-direct {p0, v1}, Ljava/lang/Thread;->nativeGetStatus(Z)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getThreadGroup()Ljava/lang/ThreadGroup;
    .registers 3

    .prologue
    .line 1158
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_a

    .line 1159
    const/4 v0, 0x0

    return-object v0

    .line 1161
    :cond_a
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    .prologue
    .line 1914
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_7

    .line 1915
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1914
    :goto_6
    return-object v0

    .line 1915
    :cond_7
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    goto :goto_6
.end method

.method public interrupt()V
    .registers 4

    .prologue
    .line 917
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq p0, v1, :cond_9

    .line 918
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 920
    :cond_9
    iget-object v2, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 921
    :try_start_c
    iget-object v0, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    .line 922
    .local v0, "b":Lsun/nio/ch/Interruptible;
    if-eqz v0, :cond_18

    .line 923
    invoke-direct {p0}, Ljava/lang/Thread;->nativeInterrupt()V

    .line 924
    invoke-interface {v0, p0}, Lsun/nio/ch/Interruptible;->interrupt(Ljava/lang/Thread;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1d

    monitor-exit v2

    .line 925
    return-void

    :cond_18
    monitor-exit v2

    .line 928
    invoke-direct {p0}, Ljava/lang/Thread;->nativeInterrupt()V

    .line 929
    return-void

    .line 920
    .end local v0    # "b":Lsun/nio/ch/Interruptible;
    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final isAlive()Z
    .registers 5

    .prologue
    .line 999
    iget-wide v0, p0, Ljava/lang/Thread;->nativePeer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isDaemon()Z
    .registers 2

    .prologue
    .line 1384
    iget-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    return v0
.end method

.method public native isInterrupted()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final join()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1338
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V

    .line 1339
    return-void
.end method

.method public final join(J)V
    .registers 16
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 1252
    iget-object v7, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 1253
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1254
    .local v0, "base":J
    const-wide/16 v4, 0x0

    .line 1256
    .local v4, "now":J
    cmp-long v6, p1, v10

    if-gez v6, :cond_1b

    .line 1257
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "timeout value is negative"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_18

    .line 1252
    .end local v0    # "base":J
    .end local v4    # "now":J
    :catchall_18
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1260
    .restart local v0    # "base":J
    .restart local v4    # "now":J
    :cond_1b
    cmp-long v6, p1, v10

    if-nez v6, :cond_38

    .line 1261
    :goto_1f
    :try_start_1f
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 1262
    iget-object v6, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V

    goto :goto_1f

    .line 1270
    .local v2, "delay":J
    :cond_2d
    iget-object v6, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v0

    .line 1265
    .end local v2    # "delay":J
    :cond_38
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_18

    move-result v6

    if-eqz v6, :cond_44

    .line 1266
    sub-long v2, p1, v4

    .line 1267
    .restart local v2    # "delay":J
    cmp-long v6, v2, v10

    if-gtz v6, :cond_2d

    .end local v2    # "delay":J
    :cond_44
    monitor-exit v7

    .line 1275
    return-void
.end method

.method public final join(JI)V
    .registers 9
    .param p1, "millis"    # J
    .param p3, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 1304
    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1305
    cmp-long v0, p1, v2

    if-gez v0, :cond_15

    .line 1306
    :try_start_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "timeout value is negative"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_12

    .line 1304
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1309
    :cond_15
    if-ltz p3, :cond_1c

    const v0, 0xf423f

    if-le p3, v0, :cond_25

    .line 1310
    :cond_1c
    :try_start_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1311
    const-string/jumbo v2, "nanosecond timeout value out of range"

    .line 1310
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1314
    :cond_25
    const v0, 0x7a120

    if-ge p3, v0, :cond_30

    if-eqz p3, :cond_33

    cmp-long v0, p1, v2

    if-nez v0, :cond_33

    .line 1315
    :cond_30
    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    .line 1318
    :cond_33
    invoke-virtual {p0, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_12

    monitor-exit v1

    .line 1320
    return-void
.end method

.method public final parkFor$(J)V
    .registers 12
    .param p1, "nanos"    # J

    .prologue
    const/4 v8, 0x3

    .line 2125
    iget-object v4, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 2126
    :try_start_4
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    packed-switch v1, :pswitch_data_4a

    .line 2153
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v5, "Attempt to repark"

    invoke-direct {v1, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_12

    .line 2125
    :catchall_12
    move-exception v1

    monitor-exit v4

    throw v1

    .line 2128
    :pswitch_15
    const/4 v1, 0x1

    :try_start_16
    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_12

    :cond_18
    :goto_18
    monitor-exit v4

    .line 2157
    return-void

    .line 2132
    :pswitch_1a
    const-wide/32 v6, 0xf4240

    :try_start_1d
    div-long v2, p1, v6

    .line 2133
    .local v2, "millis":J
    const-wide/32 v6, 0xf4240

    rem-long/2addr p1, v6

    .line 2135
    const/4 v1, 0x3

    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_12

    .line 2137
    :try_start_26
    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    long-to-int v5, p1

    invoke-virtual {v1, v2, v3, v5}, Ljava/lang/Object;->wait(JI)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2c} :catch_34
    .catchall {:try_start_26 .. :try_end_2c} :catchall_40

    .line 2146
    :try_start_2c
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    if-ne v1, v8, :cond_18

    .line 2147
    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_12

    goto :goto_18

    .line 2138
    :catch_34
    move-exception v0

    .line 2139
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_35
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 2146
    :try_start_38
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    if-ne v1, v8, :cond_18

    .line 2147
    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/Thread;->parkState:I

    goto :goto_18

    .line 2140
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_40
    move-exception v1

    .line 2146
    iget v5, p0, Ljava/lang/Thread;->parkState:I

    if-ne v5, v8, :cond_48

    .line 2147
    const/4 v5, 0x1

    iput v5, p0, Ljava/lang/Thread;->parkState:I

    .line 2140
    :cond_48
    throw v1
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_12

    .line 2126
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method public final parkUntil$(J)V
    .registers 14
    .param p1, "time"    # J

    .prologue
    .line 2181
    iget-object v7, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 2196
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2197
    .local v0, "currentTime":J
    cmp-long v6, p1, v0

    if-gtz v6, :cond_10

    .line 2198
    const/4 v6, 0x1

    iput v6, p0, Ljava/lang/Thread;->parkState:I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2d

    :goto_e
    monitor-exit v7

    .line 2211
    return-void

    .line 2200
    :cond_10
    sub-long v2, p1, v0

    .line 2204
    .local v2, "delayMillis":J
    const-wide v4, 0x8637bd05af6L

    .local v4, "maxValue":J
    const-wide v8, 0x8637bd05af6L

    .line 2205
    cmp-long v6, v2, v8

    if-lez v6, :cond_25

    .line 2204
    const-wide v2, 0x8637bd05af6L

    .line 2208
    :cond_25
    const-wide/32 v8, 0xf4240

    mul-long/2addr v8, v2

    :try_start_29
    invoke-virtual {p0, v8, v9}, Ljava/lang/Thread;->parkFor$(J)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_e

    .line 2181
    .end local v0    # "currentTime":J
    .end local v2    # "delayMillis":J
    .end local v4    # "maxValue":J
    :catchall_2d
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public final resume()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1053
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 763
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 764
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 766
    :cond_9
    return-void
.end method

.method public setContextClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1473
    iput-object p1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 1474
    return-void
.end method

.method public final setDaemon(Z)V
    .registers 3
    .param p1, "on"    # Z

    .prologue
    .line 1369
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1370
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1371
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0

    .line 1373
    :cond_f
    iput-boolean p1, p0, Ljava/lang/Thread;->daemon:Z

    .line 1374
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1126
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1127
    if-nez p1, :cond_e

    .line 1128
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1131
    :cond_e
    monitor-enter p0

    .line 1132
    :try_start_f
    iput-object p1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 1133
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1134
    invoke-direct {p0, p1}, Ljava/lang/Thread;->nativeSetName(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    .line 1137
    return-void

    .line 1131
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setPriority(I)V
    .registers 6
    .param p1, "newPriority"    # I

    .prologue
    .line 1082
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1083
    const/16 v1, 0xa

    if-gt p1, v1, :cond_a

    const/4 v1, 0x1

    if-ge p1, v1, :cond_24

    .line 1086
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Priority out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1088
    :cond_24
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .local v0, "g":Ljava/lang/ThreadGroup;
    if-eqz v0, :cond_41

    .line 1089
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v1

    if-le p1, v1, :cond_34

    .line 1090
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result p1

    .line 1092
    :cond_34
    monitor-enter p0

    .line 1093
    :try_start_35
    iput p1, p0, Ljava/lang/Thread;->priority:I

    .line 1094
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1095
    invoke-direct {p0, p1}, Ljava/lang/Thread;->nativeSetPriority(I)V
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_42

    :cond_40
    monitor-exit p0

    .line 1099
    :cond_41
    return-void

    .line 1092
    :catchall_42
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2
    .param p1, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 1934
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1935
    iput-object p1, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1936
    return-void
.end method

.method public declared-synchronized start()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 723
    :try_start_1
    iget v1, p0, Ljava/lang/Thread;->threadStatus:I

    if-nez v1, :cond_9

    iget-boolean v1, p0, Ljava/lang/Thread;->started:Z

    if-eqz v1, :cond_12

    .line 724
    :cond_9
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v1}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 729
    :cond_12
    :try_start_12
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/Thread;)V

    .line 731
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 733
    :try_start_1a
    iget-wide v2, p0, Ljava/lang/Thread;->stackSize:J

    iget-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    invoke-static {p0, v2, v3, v1}, Ljava/lang/Thread;->nativeCreate(Ljava/lang/Thread;JZ)V

    .line 734
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_2f

    .line 737
    :try_start_24
    iget-boolean v1, p0, Ljava/lang/Thread;->started:Z

    if-nez v1, :cond_2d

    .line 738
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->threadStartFailed(Ljava/lang/Thread;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_2d} :catch_3c
    .catchall {:try_start_24 .. :try_end_2d} :catchall_f

    :cond_2d
    :goto_2d
    monitor-exit p0

    .line 745
    return-void

    .line 735
    :catchall_2f
    move-exception v1

    .line 737
    :try_start_30
    iget-boolean v2, p0, Ljava/lang/Thread;->started:Z

    if-nez v2, :cond_39

    .line 738
    iget-object v2, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v2, p0}, Ljava/lang/ThreadGroup;->threadStartFailed(Ljava/lang/Thread;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_39} :catch_3a
    .catchall {:try_start_30 .. :try_end_39} :catchall_f

    .line 735
    :cond_39
    :goto_39
    :try_start_39
    throw v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_f

    .line 740
    :catch_3a
    move-exception v0

    .local v0, "ignore":Ljava/lang/Throwable;
    goto :goto_39

    .end local v0    # "ignore":Ljava/lang/Throwable;
    :catch_3c
    move-exception v0

    .restart local v0    # "ignore":Ljava/lang/Throwable;
    goto :goto_2d
.end method

.method public final stop()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 855
    new-instance v0, Ljava/lang/ThreadDeath;

    invoke-direct {v0}, Ljava/lang/ThreadDeath;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->stop(Ljava/lang/Throwable;)V

    .line 856
    return-void
.end method

.method public final stop(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 874
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final suspend()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1028
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1409
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 1410
    .local v0, "group":Ljava/lang/ThreadGroup;
    if-eqz v0, :cond_44

    .line 1411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Thread["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1412
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1411
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1412
    const-string/jumbo v2, "]"

    .line 1411
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1414
    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Thread["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1415
    const-string/jumbo v2, ""

    .line 1414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1415
    const-string/jumbo v2, "]"

    .line 1414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final unpark$()V
    .registers 3

    .prologue
    .line 2079
    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 2080
    :try_start_3
    iget v0, p0, Ljava/lang/Thread;->parkState:I

    packed-switch v0, :pswitch_data_1a

    .line 2095
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 2096
    iget-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    :goto_10
    :pswitch_10
    monitor-exit v1

    .line 2101
    return-void

    .line 2091
    :pswitch_12
    const/4 v0, 0x2

    :try_start_13
    iput v0, p0, Ljava/lang/Thread;->parkState:I
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_16

    goto :goto_10

    .line 2079
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2080
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_10
    .end packed-switch
.end method
