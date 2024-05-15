.class final Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
.super Ljava/util/concurrent/ForkJoinWorkerThread;
.source "ForkJoinWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnocuousForkJoinWorkerThread"
.end annotation


# static fields
.field private static final greylist-max-o INNOCUOUS_ACC:Ljava/security/AccessControlContext;

.field private static final greylist-max-o innocuousThreadGroup:Ljava/lang/ThreadGroup;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 213
    invoke-static {}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->createThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->innocuousThreadGroup:Ljava/lang/ThreadGroup;

    .line 216
    new-instance v0, Ljava/security/AccessControlContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/ProtectionDomain;

    new-instance v2, Ljava/security/ProtectionDomain;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    sput-object v0, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->INNOCUOUS_ACC:Ljava/security/AccessControlContext;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/concurrent/ForkJoinPool;)V
    .registers 4
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;

    .line 223
    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->innocuousThreadGroup:Ljava/lang/ThreadGroup;

    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->INNOCUOUS_ACC:Ljava/security/AccessControlContext;

    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/lang/ThreadGroup;Ljava/security/AccessControlContext;)V

    .line 224
    return-void
.end method

.method private static greylist-max-o createThreadGroup()Ljava/lang/ThreadGroup;
    .registers 9

    .line 251
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    .line 252
    .local v0, "u":Lsun/misc/Unsafe;
    const-class v1, Ljava/lang/Thread;

    const-string v2, "group"

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    .line 254
    .local v1, "tg":J
    const-class v3, Ljava/lang/ThreadGroup;

    const-string v4, "parent"

    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    .line 256
    .local v3, "gp":J
    nop

    .line 257
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v0, v5, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ThreadGroup;

    .line 258
    .local v5, "group":Ljava/lang/ThreadGroup;
    :goto_27
    if-eqz v5, :cond_3b

    .line 259
    invoke-virtual {v0, v5, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ThreadGroup;

    .line 260
    .local v6, "parent":Ljava/lang/ThreadGroup;
    if-nez v6, :cond_39

    .line 261
    new-instance v7, Ljava/lang/ThreadGroup;

    const-string v8, "InnocuousForkJoinWorkerThreadGroup"

    invoke-direct {v7, v5, v8}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_38} :catch_44

    return-object v7

    .line 263
    :cond_39
    move-object v5, v6

    .line 264
    .end local v6    # "parent":Ljava/lang/ThreadGroup;
    goto :goto_27

    .line 267
    .end local v0    # "u":Lsun/misc/Unsafe;
    .end local v1    # "tg":J
    .end local v3    # "gp":J
    .end local v5    # "group":Ljava/lang/ThreadGroup;
    :cond_3b
    nop

    .line 269
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Cannot create ThreadGroup"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :catch_44
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method greylist-max-o afterTopLevelExec()V
    .registers 1

    .line 228
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->eraseThreadLocals()V

    .line 229
    return-void
.end method

.method public whitelist test-api getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 233
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setContextClassLoader(Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 241
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "setContextClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2
    .param p1, "x"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 237
    return-void
.end method
