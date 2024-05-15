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

.field public static final whitelist test-api MAX_PRIORITY:I = 0xa

.field public static final whitelist test-api MIN_PRIORITY:I = 0x1

.field public static final whitelist test-api NORM_PRIORITY:I = 0x5

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

    .line 1683
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Ljava/lang/Thread;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    .line 1808
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "enableContextClassLoaderOverride"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/Thread;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/lang/RuntimePermission;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 9

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 179
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 207
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 242
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 262
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 574
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

    .line 575
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Runnable;)V
    .registers 10
    .param p1, "target"    # Ljava/lang/Runnable;

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 179
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 207
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 242
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 262
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 590
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

    .line 591
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 10
    .param p1, "target"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 179
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 207
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 242
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 262
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 710
    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 711
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Runnable;Ljava/security/AccessControlContext;)V
    .registers 12
    .param p1, "target"    # Ljava/lang/Runnable;
    .param p2, "acc"    # Ljava/security/AccessControlContext;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 179
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 207
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 242
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 262
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 598
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

    .line 599
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 179
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 207
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 242
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 262
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 637
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 638
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 179
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 207
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 242
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 262
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 625
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

    .line 626
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 11
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 179
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 207
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 242
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 262
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 758
    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 759
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 8
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 179
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 207
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 242
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 262
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 837
    invoke-direct/range {p0 .. p5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 838
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 10
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 179
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 207
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 242
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 262
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 661
    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 662
    return-void
.end method

.method constructor greylist-max-r <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "daemon"    # Z

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    .line 179
    iput-boolean v0, p0, Ljava/lang/Thread;->stillborn:Z

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 207
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 242
    iput-boolean v0, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 262
    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 667
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 668
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->addUnstarted()V

    .line 670
    if-nez p2, :cond_3b

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 677
    :cond_3b
    iput-object p2, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 679
    iput p3, p0, Ljava/lang/Thread;->priority:I

    .line 680
    iput-boolean p4, p0, Ljava/lang/Thread;->daemon:Z

    .line 681
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;->init2(Ljava/lang/Thread;)V

    .line 682
    invoke-static {}, Ljava/lang/Thread;->nextThreadID()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/Thread;->tid:J

    .line 683
    return-void
.end method

.method public static whitelist test-api activeCount()I
    .registers 1

    .line 1338
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

    .line 1851
    .local p0, "subcl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/Thread$1;

    invoke-direct {v0, p0}, Ljava/lang/Thread$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1874
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static native whitelist test-api currentThread()Ljava/lang/Thread;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api dumpStack()V
    .registers 2

    .line 1517
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Stack trace"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1518
    return-void
.end method

.method public static whitelist test-api enumerate([Ljava/lang/Thread;)I
    .registers 2
    .param p0, "tarray"    # [Ljava/lang/Thread;

    .line 1368
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

    .line 929
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 930
    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->threadTerminated(Ljava/lang/Thread;)V

    .line 931
    iput-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 934
    :cond_a
    iput-object v1, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 936
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 937
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 938
    iput-object v1, p0, Ljava/lang/Thread;->inheritedAccessControlContext:Ljava/security/AccessControlContext;

    .line 939
    iput-object v1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    .line 940
    iput-object v1, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 941
    return-void
.end method

.method public static whitelist test-api getAllStackTraces()Ljava/util/Map;
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

    .line 1791
    sget-object v0, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    .line 1792
    .local v0, "count":I
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/Thread;

    .line 1795
    .local v1, "threads":[Ljava/lang/Thread;
    sget-object v2, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    .line 1798
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1799
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v0, :cond_27

    .line 1800
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 1801
    .local v4, "stackTrace":[Ljava/lang/StackTraceElement;
    aget-object v5, v1, v3

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    .end local v4    # "stackTrace":[Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1804
    .end local v3    # "i":I
    :cond_27
    return-object v2
.end method

.method public static whitelist test-api getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    .line 2110
    sget-object v0, Ljava/lang/Thread;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static greylist test-api getUncaughtExceptionPreHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    .line 2143
    sget-object v0, Ljava/lang/Thread;->uncaughtExceptionPreHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static native whitelist test-api holdsLock(Ljava/lang/Object;)Z
.end method

.method private greylist-max-o init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 13
    .param p1, "g"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    .line 463
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;JLjava/security/AccessControlContext;)V

    .line 464
    return-void
.end method

.method private blacklist init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;JLjava/security/AccessControlContext;)V
    .registers 10
    .param p1, "g"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J
    .param p6, "acc"    # Ljava/security/AccessControlContext;

    .line 479
    if-eqz p3, :cond_2d

    .line 483
    iput-object p3, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 485
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 488
    .local v0, "parent":Ljava/lang/Thread;
    if-nez p1, :cond_e

    .line 503
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    .line 523
    :cond_e
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->addUnstarted()V

    .line 525
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 526
    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v1

    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    .line 527
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    iput v1, p0, Ljava/lang/Thread;->priority:I

    .line 537
    iput-object p2, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 545
    invoke-direct {p0, v0}, Ljava/lang/Thread;->init2(Ljava/lang/Thread;)V

    .line 548
    iput-wide p4, p0, Ljava/lang/Thread;->stackSize:J

    .line 551
    invoke-static {}, Ljava/lang/Thread;->nextThreadID()J

    move-result-wide v1

    iput-wide v1, p0, Ljava/lang/Thread;->tid:J

    .line 552
    return-void

    .line 480
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

    .line 687
    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 688
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->inheritedAccessControlContext:Ljava/security/AccessControlContext;

    .line 689
    iget-object v0, p1, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    if-eqz v0, :cond_16

    .line 690
    invoke-static {v0}, Ljava/lang/ThreadLocal;->createInheritedMap(Ljava/lang/ThreadLocal$ThreadLocalMap;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 693
    :cond_16
    return-void
.end method

.method private native blacklist interrupt0()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native whitelist test-api interrupted()Z
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

    .line 1831
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Thread;

    if-ne p0, v0, :cond_6

    .line 1832
    const/4 v0, 0x0

    return v0

    .line 1834
    :cond_6
    sget-object v0, Ljava/lang/Thread$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v1, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Ljava/lang/Thread;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 1835
    new-instance v0, Ljava/lang/Thread$WeakClassKey;

    sget-object v1, Ljava/lang/Thread$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    .line 1836
    .local v0, "key":Ljava/lang/Thread$WeakClassKey;
    sget-object v1, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1837
    .local v1, "result":Ljava/lang/Boolean;
    if-nez v1, :cond_2b

    .line 1838
    invoke-static {p0}, Ljava/lang/Thread;->auditSubclass(Ljava/lang/Class;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1839
    sget-object v2, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
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

    .line 267
    :try_start_3
    sget-wide v1, Ljava/lang/Thread;->threadSeqNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Ljava/lang/Thread;->threadSeqNumber:J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-wide v1

    .line 267
    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized greylist-max-o nextThreadNum()I
    .registers 3

    const-class v0, Ljava/lang/Thread;

    monitor-enter v0

    .line 196
    :try_start_3
    sget v1, Ljava/lang/Thread;->threadInitNumber:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Ljava/lang/Thread;->threadInitNumber:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    .line 196
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

    .line 2249
    .local p0, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<+Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;*>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Ljava/lang/Class<*>;>;"
    if-eqz v0, :cond_b

    .line 2250
    invoke-interface {p1, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2252
    :cond_b
    return-void
.end method

.method public static whitelist test-api setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 1
    .param p0, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2098
    sput-object p0, Ljava/lang/Thread;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2099
    return-void
.end method

.method private native blacklist setNativeName(Ljava/lang/String;)V
.end method

.method private native blacklist setPriority0(I)V
.end method

.method public static greylist-max-o test-api setUncaughtExceptionPreHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 1
    .param p0, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2129
    sput-object p0, Ljava/lang/Thread;->uncaughtExceptionPreHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2130
    return-void
.end method

.method public static whitelist test-api sleep(J)V
    .registers 3
    .param p0, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 356
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Thread;->sleep(JI)V

    .line 357
    return-void
.end method

.method public static whitelist test-api sleep(JI)V
    .registers 21
    .param p0, "millis"    # J
    .param p2, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 399
    move-wide/from16 v0, p0

    move/from16 v2, p2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_a1

    .line 402
    if-ltz v2, :cond_8a

    .line 405
    const v5, 0xf423f

    if-gt v2, v5, :cond_73

    .line 422
    cmp-long v3, v0, v3

    if-nez v3, :cond_24

    if-nez v2, :cond_24

    .line 424
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 427
    return-void

    .line 425
    :cond_1e
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 430
    :cond_24
    const v3, 0xf4240

    .line 432
    .local v3, "nanosPerMilli":I
    const-wide v4, 0x8637bd05af5L

    cmp-long v4, v0, v4

    const-wide/32 v5, 0xf4240

    if-ltz v4, :cond_39

    .line 434
    const-wide v7, 0x7fffffffffffffffL

    .local v7, "durationNanos":J
    goto :goto_3d

    .line 436
    .end local v7    # "durationNanos":J
    :cond_39
    mul-long v7, v0, v5

    int-to-long v9, v2

    add-long/2addr v7, v9

    .line 438
    .restart local v7    # "durationNanos":J
    :goto_3d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 440
    .local v9, "startNanos":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iget-object v4, v4, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 445
    .local v4, "lock":Ljava/lang/Object;
    monitor-enter v4

    .line 446
    const-wide/16 v11, 0x0

    move-wide v12, v11

    move v11, v2

    move-wide v1, v0

    .end local p0    # "millis":J
    .end local p2    # "nanos":I
    .local v1, "millis":J
    .local v11, "nanos":I
    .local v12, "elapsed":J
    :goto_4d
    cmp-long v0, v12, v7

    if-gez v0, :cond_6c

    .line 448
    sub-long v14, v7, v12

    .line 449
    .local v14, "remaining":J
    :try_start_53
    div-long v16, v14, v5
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_68

    move-wide/from16 v1, v16

    .line 450
    move-wide/from16 v16, v7

    .end local v7    # "durationNanos":J
    .local v16, "durationNanos":J
    :try_start_59
    rem-long v7, v14, v5

    long-to-int v11, v7

    .line 451
    invoke-static {v4, v1, v2, v11}, Ljava/lang/Thread;->sleep(Ljava/lang/Object;JI)V

    .line 447
    .end local v14    # "remaining":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long v12, v7, v9

    move-wide/from16 v7, v16

    goto :goto_4d

    .line 453
    .end local v12    # "elapsed":J
    .end local v16    # "durationNanos":J
    .restart local v7    # "durationNanos":J
    :catchall_68
    move-exception v0

    move-wide/from16 v16, v7

    .end local v7    # "durationNanos":J
    .restart local v16    # "durationNanos":J
    goto :goto_71

    .line 446
    .end local v16    # "durationNanos":J
    .restart local v7    # "durationNanos":J
    .restart local v12    # "elapsed":J
    :cond_6c
    move-wide/from16 v16, v7

    .line 453
    .end local v7    # "durationNanos":J
    .end local v12    # "elapsed":J
    .restart local v16    # "durationNanos":J
    monitor-exit v4

    .line 455
    return-void

    .line 453
    :catchall_70
    move-exception v0

    :goto_71
    monitor-exit v4
    :try_end_72
    .catchall {:try_start_59 .. :try_end_72} :catchall_70

    throw v0

    .line 406
    .end local v1    # "millis":J
    .end local v3    # "nanosPerMilli":I
    .end local v4    # "lock":Ljava/lang/Object;
    .end local v9    # "startNanos":J
    .end local v11    # "nanos":I
    .end local v16    # "durationNanos":J
    .restart local p0    # "millis":J
    .restart local p2    # "nanos":I
    :cond_73
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

    .line 403
    :cond_8a
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

    .line 400
    :cond_a1
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

.method public static native whitelist test-api yield()V
.end method


# virtual methods
.method public greylist-max-o blockedOn(Lsun/nio/ch/Interruptible;)V
    .registers 4
    .param p1, "b"    # Lsun/nio/ch/Interruptible;

    .line 291
    iget-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    iput-object p1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    .line 293
    monitor-exit v0

    .line 294
    return-void

    .line 293
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final whitelist test-api checkAccess()V
    .registers 1

    .line 1574
    return-void
.end method

.method protected whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 563
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public whitelist test-api countStackFrames()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1386
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public whitelist test-api destroy()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final greylist-max-r dispatchUncaughtException(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 2191
    invoke-static {}, Ljava/lang/Thread;->getUncaughtExceptionPreHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 2192
    .local v0, "initialUeh":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_b

    .line 2194
    :try_start_6
    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_9} :catch_a
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_9} :catch_a

    .line 2197
    goto :goto_b

    .line 2195
    :catch_a
    move-exception v1

    .line 2200
    :cond_b
    :goto_b
    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 2201
    return-void
.end method

.method public whitelist test-api getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 2
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1631
    iget-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public whitelist test-api getId()J
    .registers 3

    .line 1891
    iget-wide v0, p0, Ljava/lang/Thread;->tid:J

    return-wide v0
.end method

.method public final whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 1298
    iget-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getPriority()I
    .registers 2

    .line 1259
    iget v0, p0, Ljava/lang/Thread;->priority:I

    return v0
.end method

.method public whitelist test-api getStackTrace()[Ljava/lang/StackTraceElement;
    .registers 3

    .line 1724
    invoke-static {p0}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1725
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_a

    :cond_8
    sget-object v1, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    :goto_a
    return-object v1
.end method

.method public whitelist test-api getState()Ljava/lang/Thread$State;
    .registers 3

    .line 2007
    invoke-static {}, Ljava/lang/Thread$State;->values()[Ljava/lang/Thread$State;

    move-result-object v0

    iget-boolean v1, p0, Ljava/lang/Thread;->started:Z

    invoke-direct {p0, v1}, Ljava/lang/Thread;->nativeGetStatus(Z)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final whitelist test-api getThreadGroup()Ljava/lang/ThreadGroup;
    .registers 3

    .line 1314
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_a

    .line 1315
    const/4 v0, 0x0

    return-object v0

    .line 1318
    :cond_a
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method public whitelist test-api getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    .line 2157
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_7

    .line 2158
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 2157
    :goto_9
    return-object v0
.end method

.method public whitelist test-api interrupt()V
    .registers 3

    .line 1049
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p0, v0, :cond_9

    .line 1050
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1052
    :cond_9
    iget-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1053
    :try_start_c
    iget-object v1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    .line 1054
    .local v1, "b":Lsun/nio/ch/Interruptible;
    if-eqz v1, :cond_18

    .line 1055
    invoke-direct {p0}, Ljava/lang/Thread;->interrupt0()V

    .line 1056
    invoke-interface {v1, p0}, Lsun/nio/ch/Interruptible;->interrupt(Ljava/lang/Thread;)V

    .line 1057
    monitor-exit v0

    return-void

    .line 1059
    .end local v1    # "b":Lsun/nio/ch/Interruptible;
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    .line 1060
    invoke-direct {p0}, Ljava/lang/Thread;->interrupt0()V

    .line 1061
    return-void

    .line 1059
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public final whitelist test-api isAlive()Z
    .registers 5

    .line 1159
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

.method public final whitelist test-api isDaemon()Z
    .registers 2

    .line 1553
    iget-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    return v0
.end method

.method public native whitelist test-api isInterrupted()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist test-api join()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1507
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V

    .line 1508
    return-void
.end method

.method public final whitelist test-api join(J)V
    .registers 14
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1416
    iget-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1417
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1418
    .local v1, "base":J
    const-wide/16 v3, 0x0

    .line 1420
    .local v3, "now":J
    const-wide/16 v5, 0x0

    cmp-long v7, p1, v5

    if-ltz v7, :cond_3a

    .line 1424
    cmp-long v7, p1, v5

    if-nez v7, :cond_1f

    .line 1425
    :goto_13
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 1426
    iget-object v7, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V

    goto :goto_13

    .line 1429
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 1430
    sub-long v7, p1, v3

    .line 1431
    .local v7, "delay":J
    cmp-long v9, v7, v5

    if-gtz v9, :cond_2c

    .line 1432
    goto :goto_38

    .line 1434
    :cond_2c
    iget-object v9, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    invoke-virtual {v9, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 1435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v3, v9, v1

    .line 1436
    .end local v7    # "delay":J
    goto :goto_1f

    .line 1438
    .end local v1    # "base":J
    .end local v3    # "now":J
    :cond_38
    :goto_38
    monitor-exit v0

    .line 1439
    return-void

    .line 1421
    .restart local v1    # "base":J
    .restart local v3    # "now":J
    :cond_3a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "timeout value is negative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/lang/Thread;
    .end local p1    # "millis":J
    throw v5

    .line 1438
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

.method public final whitelist test-api join(JI)V
    .registers 8
    .param p1, "millis"    # J
    .param p3, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1472
    iget-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1473
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_2b

    .line 1477
    if-ltz p3, :cond_23

    const v3, 0xf423f

    if-gt p3, v3, :cond_23

    .line 1482
    const v3, 0x7a120

    if-ge p3, v3, :cond_1b

    if-eqz p3, :cond_1e

    cmp-long v1, p1, v1

    if-nez v1, :cond_1e

    .line 1483
    :cond_1b
    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    .line 1486
    :cond_1e
    :try_start_1e
    invoke-virtual {p0, p1, p2}, Ljava/lang/Thread;->join(J)V

    .line 1487
    monitor-exit v0

    .line 1488
    return-void

    .line 1478
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "nanosecond timeout value out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/lang/Thread;
    .end local p1    # "millis":J
    .end local p3    # "nanos":I
    throw v1

    .line 1474
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

    .line 1487
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

.method public final whitelist test-api resume()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1203
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 919
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 920
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 922
    :cond_7
    return-void
.end method

.method public whitelist test-api setContextClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 1662
    iput-object p1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 1663
    return-void
.end method

.method public final whitelist test-api setDaemon(Z)V
    .registers 3
    .param p1, "on"    # Z

    .line 1538
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1539
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1542
    iput-boolean p1, p0, Ljava/lang/Thread;->daemon:Z

    .line 1543
    return-void

    .line 1540
    :cond_c
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0
.end method

.method public final declared-synchronized whitelist test-api setName(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 1277
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1278
    if-eqz p1, :cond_13

    .line 1282
    iput-object p1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 1286
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1287
    invoke-direct {p0, p1}, Ljava/lang/Thread;->setNativeName(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    .line 1289
    .end local p0    # "this":Ljava/lang/Thread;
    :cond_11
    monitor-exit p0

    return-void

    .line 1279
    :cond_13
    :try_start_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1b

    .line 1276
    .end local p1    # "name":Ljava/lang/String;
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final whitelist test-api setPriority(I)V
    .registers 5
    .param p1, "newPriority"    # I

    .line 1232
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1233
    const/16 v0, 0xa

    if-gt p1, v0, :cond_31

    const/4 v0, 0x1

    if-lt p1, v0, :cond_31

    .line 1237
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    move-object v1, v0

    .local v1, "g":Ljava/lang/ThreadGroup;
    if-eqz v0, :cond_30

    .line 1238
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v0

    if-le p1, v0, :cond_1d

    .line 1239
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result p1

    move v0, p1

    goto :goto_1e

    .line 1238
    :cond_1d
    move v0, p1

    .line 1243
    .end local p1    # "newPriority":I
    .local v0, "newPriority":I
    :goto_1e
    monitor-enter p0

    .line 1244
    :try_start_1f
    iput v0, p0, Ljava/lang/Thread;->priority:I

    .line 1245
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 1246
    invoke-direct {p0, v0}, Ljava/lang/Thread;->setPriority0(I)V

    .line 1248
    :cond_2a
    monitor-exit p0

    move p1, v0

    goto :goto_30

    :catchall_2d
    move-exception p1

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    throw p1

    .line 1250
    .end local v0    # "newPriority":I
    .restart local p1    # "newPriority":I
    :cond_30
    :goto_30
    return-void

    .line 1235
    .end local v1    # "g":Ljava/lang/ThreadGroup;
    :cond_31
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

    .line 2232
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 2233
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2236
    iput-boolean p1, p0, Ljava/lang/Thread;->systemDaemon:Z

    .line 2237
    return-void

    .line 2234
    :cond_12
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2
    .param p1, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2177
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 2178
    iput-object p1, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2179
    return-void
.end method

.method public declared-synchronized whitelist test-api start()V
    .registers 4

    monitor-enter p0

    .line 868
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/Thread;->started:Z

    if-nez v0, :cond_28

    .line 874
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/Thread;)V

    .line 880
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_2e

    .line 884
    :try_start_d
    iget-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    iget-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    invoke-static {p0, v0, v1, v2}, Ljava/lang/Thread;->nativeCreate(Ljava/lang/Thread;JZ)V

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/Thread;->started:Z
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1b

    .line 888
    nop

    .line 894
    nop

    .line 896
    monitor-exit p0

    return-void

    .line 887
    :catchall_1b
    move-exception v0

    .line 888
    :try_start_1c
    iget-boolean v1, p0, Ljava/lang/Thread;->started:Z

    if-nez v1, :cond_25

    .line 889
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->threadStartFailed(Ljava/lang/Thread;)V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 894
    :cond_25
    goto :goto_27

    .line 891
    :catchall_26
    move-exception v1

    .line 895
    :goto_27
    :try_start_27
    throw v0

    .line 869
    .end local p0    # "this":Ljava/lang/Thread;
    :cond_28
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2e

    .line 867
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final whitelist test-api stop()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 987
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final declared-synchronized whitelist test-api stop(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1006
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    .line 1006
    .end local p0    # "this":Ljava/lang/Thread;
    .end local p1    # "obj":Ljava/lang/Throwable;
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final whitelist test-api suspend()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1583
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 1584
    .local v0, "group":Ljava/lang/ThreadGroup;
    const-string v1, "Thread["

    const-string v2, ","

    if-eqz v0, :cond_37

    .line 1585
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

    .line 1586
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1585
    return-object v1

    .line 1588
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
