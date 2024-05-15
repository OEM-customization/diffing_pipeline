.class public Ljava/lang/Thread;
.super Ljava/lang/Object;
.source "Thread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Thread$WeakClassKey;,
        Ljava/lang/Thread$UncaughtExceptionHandler;,
        Ljava/lang/Thread$State;,
        Ljava/lang/Thread$Caches;
    }
.end annotation


# static fields
.field private static final greylist-max-o EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

.field public static final whitelist core-platform-api test-api MAX_PRIORITY:I = 0xa

.field public static final whitelist core-platform-api test-api MIN_PRIORITY:I = 0x1

.field public static final whitelist core-platform-api test-api NORM_PRIORITY:I = 0x5

.field private static final greylist-max-o SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/lang/RuntimePermission;

.field private static volatile greylist-max-o defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static greylist-max-o threadInitNumber:I

.field private static greylist threadSeqNumber:J

.field private static volatile greylist uncaughtExceptionPreHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private volatile greylist-max-o blocker:Lsun/nio/ch/Interruptible;

.field private final greylist-max-o blockerLock:Ljava/lang/Object;

.field private greylist contextClassLoader:Ljava/lang/ClassLoader;

.field private greylist daemon:Z

.field private greylist-max-o eetop:J

.field private greylist group:Ljava/lang/ThreadGroup;

.field greylist inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

.field private greylist inheritedAccessControlContext:Ljava/security/AccessControlContext;

.field private final greylist lock:Ljava/lang/Object;

.field private volatile greylist name:Ljava/lang/String;

.field private volatile greylist nativePeer:J

.field volatile greylist parkBlocker:Ljava/lang/Object;

.field private greylist priority:I

.field private greylist-max-o single_step:Z

.field private greylist-max-o stackSize:J

.field greylist-max-o started:Z

.field private greylist-max-o stillborn:Z

.field private blacklist systemDaemon:Z

.field private greylist target:Ljava/lang/Runnable;

.field greylist-max-o threadLocalRandomProbe:I

.field greylist-max-o threadLocalRandomSecondarySeed:I

.field greylist-max-o threadLocalRandomSeed:J

.field greylist threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

.field private greylist-max-o threadQ:Ljava/lang/Thread;

.field private greylist-max-o tid:J

.field private volatile greylist-max-o uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private blacklist unparkedBeforeStart:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1695
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Ljava/lang/Thread;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    .line 1820
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "enableContextClassLoaderOverride"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/Thread;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/lang/RuntimePermission;

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 9

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 181
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 209
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 244
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 264
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 578
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/Runnable;)V
    .registers 10
    .param p1, "target"    # Ljava/lang/Runnable;

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 181
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 209
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 244
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 264
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 594
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 10
    .param p1, "target"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 181
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 209
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 244
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 264
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 713
    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 714
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Runnable;Ljava/security/AccessControlContext;)V
    .registers 12
    .param p1, "target"    # Ljava/lang/Runnable;
    .param p2, "acc"    # Ljava/security/AccessControlContext;

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 181
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 209
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 244
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 264
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;JLjava/security/AccessControlContext;)V

    .line 602
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 181
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 209
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 244
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 264
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 640
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 641
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 181
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 209
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 244
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 264
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 629
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 11
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 181
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 209
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 244
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 264
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 761
    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 762
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 8
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 181
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 209
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 244
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 264
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 840
    invoke-direct/range {p0 .. p5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 841
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 10
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 181
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 209
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 244
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 264
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 664
    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 665
    return-void
.end method

.method constructor greylist <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "daemon"    # Z

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 181
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 209
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 244
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 264
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 670
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 671
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->addUnstarted()V

    .line 673
    if-nez p2, :cond_3b

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 680
    :cond_3b
    iput-object p2, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 682
    iput p3, p0, Ljava/lang/Thread;->priority:I

    .line 683
    iput-boolean p4, p0, Ljava/lang/Thread;->daemon:Z

    .line 684
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;->init2(Ljava/lang/Thread;)V

    .line 685
    invoke-static {}, Ljava/lang/Thread;->nextThreadID()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/Thread;->tid:J

    .line 686
    return-void
.end method

.method public static whitelist core-platform-api test-api activeCount()I
    .registers 1

    .line 1352
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    return v0
.end method

.method private static greylist-max-o auditSubclass(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1863
    .local p0, "subcl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/Thread$1;

    invoke-direct {v0, p0}, Ljava/lang/Thread$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1886
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static native whitelist core-platform-api test-api currentThread()Ljava/lang/Thread;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api dumpStack()V
    .registers 2

    .line 1529
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Stack trace"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1530
    return-void
.end method

.method public static whitelist core-platform-api test-api enumerate([Ljava/lang/Thread;)I
    .registers 2
    .param p0, "tarray"    # [Ljava/lang/Thread;

    .line 1382
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o exit()V
    .registers 3

    .line 932
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 933
    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->threadTerminated(Ljava/lang/Thread;)V

    .line 934
    iput-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 937
    :cond_a
    iput-object v1, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 939
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 940
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 941
    iput-object v1, p0, Ljava/lang/Thread;->inheritedAccessControlContext:Ljava/security/AccessControlContext;

    .line 942
    iput-object v1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    .line 943
    iput-object v1, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 944
    return-void
.end method

.method public static whitelist core-platform-api test-api getAllStackTraces()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 1803
    sget-object v0, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    .line 1804
    .local v0, "count":I
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/Thread;

    .line 1807
    .local v1, "threads":[Ljava/lang/Thread;
    sget-object v2, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    .line 1810
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1811
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v0, :cond_27

    .line 1812
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 1813
    .local v4, "stackTrace":[Ljava/lang/StackTraceElement;
    aget-object v5, v1, v3

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    .end local v4    # "stackTrace":[Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1816
    .end local v3    # "i":I
    :cond_27
    return-object v2
.end method

.method public static whitelist core-platform-api test-api getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    .line 2122
    sget-object v0, Ljava/lang/Thread;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private native blacklist getNativeTid()I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static greylist core-platform-api getUncaughtExceptionPreHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    .line 2146
    sget-object v0, Ljava/lang/Thread;->uncaughtExceptionPreHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static native whitelist core-platform-api test-api holdsLock(Ljava/lang/Object;)Z
.end method

.method private greylist-max-o init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 13
    .param p1, "g"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    .line 466
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;JLjava/security/AccessControlContext;)V

    .line 467
    return-void
.end method

.method private blacklist init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;JLjava/security/AccessControlContext;)V
    .registers 10
    .param p1, "g"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J
    .param p6, "acc"    # Ljava/security/AccessControlContext;

    .line 482
    if-eqz p3, :cond_2d

    .line 486
    iput-object p3, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 488
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 491
    .local v0, "parent":Ljava/lang/Thread;
    if-nez p1, :cond_e

    .line 506
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    .line 526
    :cond_e
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->addUnstarted()V

    .line 528
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 529
    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v1

    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    .line 530
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    iput v1, p0, Ljava/lang/Thread;->priority:I

    .line 540
    iput-object p2, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 548
    invoke-direct {p0, v0}, Ljava/lang/Thread;->init2(Ljava/lang/Thread;)V

    .line 551
    iput-wide p4, p0, Ljava/lang/Thread;->stackSize:J

    .line 554
    invoke-static {}, Ljava/lang/Thread;->nextThreadID()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/lang/Thread;->tid:J

    .line 555
    return-void

    .line 483
    .end local v0    # "parent":Ljava/lang/Thread;
    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o init2(Ljava/lang/Thread;)V
    .registers 3
    .param p1, "parent"    # Ljava/lang/Thread;

    .line 690
    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 691
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->inheritedAccessControlContext:Ljava/security/AccessControlContext;

    .line 692
    iget-object v0, p1, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    if-eqz v0, :cond_16

    .line 693
    invoke-static {v0}, Ljava/lang/ThreadLocal;->createInheritedMap(Ljava/lang/ThreadLocal$ThreadLocalMap;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 696
    :cond_16
    return-void
.end method

.method private native blacklist interrupt0()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native whitelist core-platform-api test-api interrupted()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static greylist-max-o isCCLOverridden(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1843
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Thread;

    if-ne p0, v0, :cond_6

    .line 1844
    const/4 v0, 0x0

    return v0

    .line 1846
    :cond_6
    sget-object v0, Ljava/lang/Thread$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v1, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Ljava/lang/Thread;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 1847
    new-instance v0, Ljava/lang/Thread$WeakClassKey;

    sget-object v1, Ljava/lang/Thread$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    .line 1848
    .local v0, "key":Ljava/lang/Thread$WeakClassKey;
    sget-object v1, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1849
    .local v1, "result":Ljava/lang/Boolean;
    if-nez v1, :cond_2b

    .line 1850
    invoke-static {p0}, Ljava/lang/Thread;->auditSubclass(Ljava/lang/Class;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1851
    sget-object v2, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method private static native greylist-max-o nativeCreate(Ljava/lang/Thread;JZ)V
.end method

.method private native greylist-max-o nativeGetStatus(Z)I
.end method

.method private static declared-synchronized greylist-max-o nextThreadID()J
    .registers 5

    const-class v0, Ljava/lang/Thread;

    monitor-enter v0

    .line 269
    :try_start_3
    sget-wide v1, Ljava/lang/Thread;->threadSeqNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Ljava/lang/Thread;->threadSeqNumber:J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-wide v1

    .line 269
    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized greylist-max-o nextThreadNum()I
    .registers 3

    const-class v0, Ljava/lang/Thread;

    monitor-enter v0

    .line 198
    :try_start_3
    sget v1, Ljava/lang/Thread;->threadInitNumber:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Ljava/lang/Thread;->threadInitNumber:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    .line 198
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static greylist-max-o processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "+",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Class<",
            "*>;>;*>;)V"
        }
    .end annotation

    .line 2252
    .local p0, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<+Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;*>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Ljava/lang/Class<*>;>;"
    if-eqz v0, :cond_b

    .line 2253
    invoke-interface {p1, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2255
    :cond_b
    return-void
.end method

.method public static whitelist core-platform-api test-api setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 1
    .param p0, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2110
    sput-object p0, Ljava/lang/Thread;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2111
    return-void
.end method

.method private native blacklist setNativeName(Ljava/lang/String;)V
.end method

.method private native blacklist setPriority0(I)V
.end method

.method public static greylist-max-o core-platform-api setUncaughtExceptionPreHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 1
    .param p0, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2141
    sput-object p0, Ljava/lang/Thread;->uncaughtExceptionPreHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2142
    return-void
.end method

.method public static whitelist core-platform-api test-api sleep(J)V
    .registers 3
    .param p0, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 358
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Thread;->sleep(JI)V

    .line 359
    return-void
.end method

.method public static whitelist core-platform-api test-api sleep(JI)V
    .registers 21
    .param p0, "millis"    # J
    .param p2, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 401
    move-wide/from16 v0, p0

    move/from16 v2, p2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_8e

    .line 404
    if-ltz v2, :cond_77

    .line 407
    const v5, 0xf423f

    if-gt v2, v5, :cond_60

    .line 424
    cmp-long v3, v0, v3

    if-nez v3, :cond_24

    if-nez v2, :cond_24

    .line 426
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 429
    return-void

    .line 427
    :cond_1e
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 432
    :cond_24
    const v3, 0xf4240

    .line 433
    .local v3, "nanosPerMilli":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 434
    .local v4, "start":J
    const-wide/32 v6, 0xf4240

    mul-long v8, v0, v6

    int-to-long v10, v2

    add-long/2addr v8, v10

    .line 436
    .local v8, "duration":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    iget-object v10, v10, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 440
    .local v10, "lock":Ljava/lang/Object;
    monitor-enter v10

    move v11, v2

    move-wide v1, v0

    .line 442
    .end local p0    # "millis":J
    .end local p2    # "nanos":I
    .local v1, "millis":J
    .local v11, "nanos":I
    :goto_3b
    :try_start_3b
    invoke-static {v10, v1, v2, v11}, Ljava/lang/Thread;->sleep(Ljava/lang/Object;JI)V

    .line 444
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 445
    .local v12, "now":J
    sub-long v14, v12, v4

    .line 447
    .local v14, "elapsed":J
    cmp-long v0, v14, v8

    if-ltz v0, :cond_4b

    .line 448
    nop

    .line 456
    .end local v12    # "now":J
    .end local v14    # "elapsed":J
    monitor-exit v10

    .line 458
    return-void

    .line 451
    .restart local v12    # "now":J
    .restart local v14    # "elapsed":J
    :cond_4b
    sub-long/2addr v8, v14

    .line 452
    move-wide v4, v12

    .line 453
    div-long v16, v8, v6
    :try_end_4f
    .catchall {:try_start_3b .. :try_end_4f} :catchall_5d

    move-wide/from16 v1, v16

    .line 454
    move-wide/from16 p0, v1

    .end local v1    # "millis":J
    .restart local p0    # "millis":J
    :try_start_53
    rem-long v0, v8, v6
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_59

    long-to-int v11, v0

    .line 455
    .end local v12    # "now":J
    .end local v14    # "elapsed":J
    move-wide/from16 v1, p0

    goto :goto_3b

    .line 456
    :catchall_59
    move-exception v0

    move-wide/from16 v1, p0

    goto :goto_5e

    .end local p0    # "millis":J
    .restart local v1    # "millis":J
    :catchall_5d
    move-exception v0

    :goto_5e
    :try_start_5e
    monitor-exit v10
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v0

    .line 408
    .end local v1    # "millis":J
    .end local v3    # "nanosPerMilli":I
    .end local v4    # "start":J
    .end local v8    # "duration":J
    .end local v10    # "lock":Ljava/lang/Object;
    .end local v11    # "nanos":I
    .restart local p0    # "millis":J
    .restart local p2    # "nanos":I
    :cond_60
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nanos > 999999: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 405
    :cond_77
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nanos < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 402
    :cond_8e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "millis < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static native greylist-max-o sleep(Ljava/lang/Object;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native whitelist core-platform-api test-api yield()V
.end method


# virtual methods
.method public greylist-max-o blockedOn(Lsun/nio/ch/Interruptible;)V
    .registers 4
    .param p1, "b"    # Lsun/nio/ch/Interruptible;

    .line 293
    iget-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_3
    iput-object p1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    .line 295
    monitor-exit v0

    .line 296
    return-void

    .line 295
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final whitelist core-platform-api test-api checkAccess()V
    .registers 1

    .line 1586
    return-void
.end method

.method protected whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 566
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api countStackFrames()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1400
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public whitelist core-platform-api test-api destroy()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final greylist dispatchUncaughtException(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 2194
    invoke-static {}, Ljava/lang/Thread;->getUncaughtExceptionPreHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 2195
    .local v0, "initialUeh":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_b

    .line 2197
    :try_start_6
    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_9} :catch_a
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_9} :catch_a

    .line 2200
    goto :goto_b

    .line 2198
    :catch_a
    move-exception v1

    .line 2203
    :cond_b
    :goto_b
    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 2204
    return-void
.end method

.method public whitelist core-platform-api test-api getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 2
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1643
    iget-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getId()J
    .registers 3

    .line 1903
    iget-wide v0, p0, Ljava/lang/Thread;->tid:J

    return-wide v0
.end method

.method public final whitelist core-platform-api test-api getName()Ljava/lang/String;
    .registers 2

    .line 1312
    iget-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getPriority()I
    .registers 2

    .line 1273
    iget v0, p0, Ljava/lang/Thread;->priority:I

    return v0
.end method

.method public whitelist core-platform-api test-api getStackTrace()[Ljava/lang/StackTraceElement;
    .registers 3

    .line 1736
    invoke-static {p0}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1737
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_a

    :cond_8
    sget-object v1, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    :goto_a
    return-object v1
.end method

.method public whitelist core-platform-api test-api getState()Ljava/lang/Thread$State;
    .registers 3

    .line 2019
    invoke-static {}, Ljava/lang/Thread$State;->values()[Ljava/lang/Thread$State;

    move-result-object v0

    iget-boolean v1, p0, Ljava/lang/Thread;->started:Z

    invoke-direct {p0, v1}, Ljava/lang/Thread;->nativeGetStatus(Z)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getThreadGroup()Ljava/lang/ThreadGroup;
    .registers 3

    .line 1328
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_a

    .line 1329
    const/4 v0, 0x0

    return-object v0

    .line 1332
    :cond_a
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    .line 2160
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_7

    .line 2161
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 2160
    :goto_9
    return-object v0
.end method

.method public whitelist core-platform-api test-api interrupt()V
    .registers 3

    .line 1052
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p0, v0, :cond_9

    .line 1053
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1055
    :cond_9
    iget-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1056
    :try_start_c
    iget-object v1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    .line 1057
    .local v1, "b":Lsun/nio/ch/Interruptible;
    if-eqz v1, :cond_18

    .line 1058
    invoke-direct {p0}, Ljava/lang/Thread;->interrupt0()V

    .line 1059
    invoke-interface {v1, p0}, Lsun/nio/ch/Interruptible;->interrupt(Ljava/lang/Thread;)V

    .line 1060
    monitor-exit v0

    return-void

    .line 1062
    .end local v1    # "b":Lsun/nio/ch/Interruptible;
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    .line 1063
    invoke-direct {p0}, Ljava/lang/Thread;->interrupt0()V

    .line 1064
    return-void

    .line 1062
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public final whitelist core-platform-api test-api isAlive()Z
    .registers 5

    .line 1162
    iget-wide v0, p0, Ljava/lang/Thread;->nativePeer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist core-platform-api test-api isDaemon()Z
    .registers 2

    .line 1565
    iget-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    return v0
.end method

.method public native whitelist core-platform-api test-api isInterrupted()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist core-platform-api test-api join()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1519
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V

    .line 1520
    return-void
.end method

.method public final whitelist core-platform-api test-api join(J)V
    .registers 14
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1428
    iget-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1429
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1430
    .local v1, "base":J
    const-wide/16 v3, 0x0

    .line 1432
    .local v3, "now":J
    const-wide/16 v5, 0x0

    cmp-long v7, p1, v5

    if-ltz v7, :cond_3a

    .line 1436
    cmp-long v7, p1, v5

    if-nez v7, :cond_1f

    .line 1437
    :goto_13
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 1438
    iget-object v7, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V

    goto :goto_13

    .line 1441
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 1442
    sub-long v7, p1, v3

    .line 1443
    .local v7, "delay":J
    cmp-long v9, v7, v5

    if-gtz v9, :cond_2c

    .line 1444
    goto :goto_38

    .line 1446
    :cond_2c
    iget-object v9, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    invoke-virtual {v9, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 1447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v3, v9, v1

    .line 1448
    .end local v7    # "delay":J
    goto :goto_1f

    .line 1450
    .end local v1    # "base":J
    .end local v3    # "now":J
    :cond_38
    :goto_38
    monitor-exit v0

    .line 1451
    return-void

    .line 1433
    .restart local v1    # "base":J
    .restart local v3    # "now":J
    :cond_3a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "timeout value is negative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/lang/Thread;
    .end local p1    # "millis":J
    throw v5

    .line 1450
    .end local v1    # "base":J
    .end local v3    # "now":J
    .restart local p0    # "this":Ljava/lang/Thread;
    .restart local p1    # "millis":J
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public final whitelist core-platform-api test-api join(JI)V
    .registers 8
    .param p1, "millis"    # J
    .param p3, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1484
    iget-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1485
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_2b

    .line 1489
    if-ltz p3, :cond_23

    const v3, 0xf423f

    if-gt p3, v3, :cond_23

    .line 1494
    const v3, 0x7a120

    if-ge p3, v3, :cond_1b

    if-eqz p3, :cond_1e

    cmp-long v1, p1, v1

    if-nez v1, :cond_1e

    .line 1495
    :cond_1b
    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    .line 1498
    :cond_1e
    :try_start_1e
    invoke-virtual {p0, p1, p2}, Ljava/lang/Thread;->join(J)V

    .line 1499
    monitor-exit v0

    .line 1500
    return-void

    .line 1490
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "nanosecond timeout value out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/lang/Thread;
    .end local p1    # "millis":J
    .end local p3    # "nanos":I
    throw v1

    .line 1486
    .restart local p0    # "this":Ljava/lang/Thread;
    .restart local p1    # "millis":J
    .restart local p3    # "nanos":I
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "timeout value is negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/lang/Thread;
    .end local p1    # "millis":J
    .end local p3    # "nanos":I
    throw v1

    .line 1499
    .restart local p0    # "this":Ljava/lang/Thread;
    .restart local p1    # "millis":J
    .restart local p3    # "nanos":I
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_33

    throw v1
.end method

.method public final whitelist core-platform-api test-api resume()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api run()V
    .registers 2

    .line 922
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 923
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 925
    :cond_7
    return-void
.end method

.method public whitelist core-platform-api test-api setContextClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 1674
    iput-object p1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 1675
    return-void
.end method

.method public final whitelist core-platform-api test-api setDaemon(Z)V
    .registers 3
    .param p1, "on"    # Z

    .line 1550
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1551
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1554
    iput-boolean p1, p0, Ljava/lang/Thread;->daemon:Z

    .line 1555
    return-void

    .line 1552
    :cond_c
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0
.end method

.method public final declared-synchronized whitelist core-platform-api test-api setName(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 1291
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1292
    if-eqz p1, :cond_13

    .line 1296
    iput-object p1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 1300
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1301
    invoke-direct {p0, p1}, Ljava/lang/Thread;->setNativeName(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    .line 1303
    .end local p0    # "this":Ljava/lang/Thread;
    :cond_11
    monitor-exit p0

    return-void

    .line 1293
    :cond_13
    :try_start_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1b

    .line 1290
    .end local p1    # "name":Ljava/lang/String;
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final whitelist core-platform-api test-api setPriority(I)V
    .registers 5
    .param p1, "newPriority"    # I

    .line 1235
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1236
    const/16 v0, 0xa

    if-gt p1, v0, :cond_41

    const/4 v0, 0x1

    if-lt p1, v0, :cond_41

    .line 1240
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    move-object v1, v0

    .local v1, "g":Ljava/lang/ThreadGroup;
    if-eqz v0, :cond_40

    .line 1241
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v0

    if-le p1, v0, :cond_1d

    .line 1242
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result p1

    move v0, p1

    goto :goto_1e

    .line 1241
    :cond_1d
    move v0, p1

    .line 1246
    .end local p1    # "newPriority":I
    .local v0, "newPriority":I
    :goto_1e
    monitor-enter p0

    .line 1247
    :try_start_1f
    iput v0, p0, Ljava/lang/Thread;->priority:I

    .line 1248
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 1253
    invoke-static {}, Ldalvik/system/RuntimeHooks;->getThreadPrioritySetter()Ldalvik/system/ThreadPrioritySetter;

    move-result-object p1

    .line 1254
    .local p1, "threadPrioritySetter":Ldalvik/system/ThreadPrioritySetter;
    invoke-direct {p0}, Ljava/lang/Thread;->getNativeTid()I

    move-result v2

    .line 1255
    .local v2, "nativeTid":I
    if-eqz p1, :cond_37

    if-eqz v2, :cond_37

    .line 1256
    invoke-interface {p1, v2, v0}, Ldalvik/system/ThreadPrioritySetter;->setPriority(II)V

    goto :goto_3a

    .line 1258
    :cond_37
    invoke-direct {p0, v0}, Ljava/lang/Thread;->setPriority0(I)V

    .line 1262
    .end local v2    # "nativeTid":I
    .end local p1    # "threadPrioritySetter":Ldalvik/system/ThreadPrioritySetter;
    :cond_3a
    :goto_3a
    monitor-exit p0

    move p1, v0

    goto :goto_40

    :catchall_3d
    move-exception p1

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1f .. :try_end_3f} :catchall_3d

    throw p1

    .line 1264
    .end local v0    # "newPriority":I
    .local p1, "newPriority":I
    :cond_40
    :goto_40
    return-void

    .line 1238
    .end local v1    # "g":Ljava/lang/ThreadGroup;
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist setSystemDaemon(Z)V
    .registers 3
    .param p1, "on"    # Z

    .line 2235
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 2236
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2239
    iput-boolean p1, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 2240
    return-void

    .line 2237
    :cond_12
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2
    .param p1, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2180
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 2181
    iput-object p1, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2182
    return-void
.end method

.method public declared-synchronized whitelist core-platform-api test-api start()V
    .registers 4

    monitor-enter p0

    .line 871
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/Thread;->started:Z

    if-nez v0, :cond_31

    .line 877
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/Thread;)V

    .line 883
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_37

    .line 887
    :try_start_d
    iget-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    iget-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    invoke-static {p0, v0, v1, v2}, Ljava/lang/Thread;->nativeCreate(Ljava/lang/Thread;JZ)V

    .line 888
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_24

    .line 891
    if-nez v0, :cond_21

    .line 892
    :try_start_19
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->threadStartFailed(Ljava/lang/Thread;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1f

    goto :goto_21

    .line 894
    :catchall_1f
    move-exception v0

    .line 898
    goto :goto_22

    .line 897
    :cond_21
    :goto_21
    nop

    .line 899
    :goto_22
    monitor-exit p0

    return-void

    .line 890
    :catchall_24
    move-exception v0

    .line 891
    :try_start_25
    iget-boolean v1, p0, Ljava/lang/Thread;->started:Z

    if-nez v1, :cond_2e

    .line 892
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->threadStartFailed(Ljava/lang/Thread;)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2f

    .line 897
    :cond_2e
    goto :goto_30

    .line 894
    :catchall_2f
    move-exception v1

    .line 898
    :goto_30
    :try_start_30
    throw v0

    .line 872
    .end local p0    # "this":Ljava/lang/Thread;
    :cond_31
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_37

    .line 870
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final whitelist core-platform-api test-api stop()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 990
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final declared-synchronized whitelist core-platform-api test-api stop(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1009
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    .line 1009
    .end local p0    # "this":Ljava/lang/Thread;
    .end local p1    # "obj":Ljava/lang/Throwable;
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final whitelist core-platform-api test-api suspend()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1187
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 1595
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 1596
    .local v0, "group":Ljava/lang/ThreadGroup;
    const-string v1, "Thread["

    const-string v2, ","

    if-eqz v0, :cond_37

    .line 1597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1597
    return-object v1

    .line 1600
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
