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
.field private static final INNOCUOUS_ACC:Ljava/security/AccessControlContext;

.field private static final innocuousThreadGroup:Ljava/lang/ThreadGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 213
    invoke-static {}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->createThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 212
    sput-object v0, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->innocuousThreadGroup:Ljava/lang/ThreadGroup;

    .line 217
    new-instance v0, Ljava/security/AccessControlContext;

    .line 218
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/ProtectionDomain;

    .line 219
    new-instance v2, Ljava/security/ProtectionDomain;

    invoke-direct {v2, v3, v3}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 217
    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    .line 216
    sput-object v0, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->INNOCUOUS_ACC:Ljava/security/AccessControlContext;

    .line 210
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ForkJoinPool;)V
    .registers 4
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;

    .prologue
    .line 223
    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->innocuousThreadGroup:Ljava/lang/ThreadGroup;

    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->INNOCUOUS_ACC:Ljava/security/AccessControlContext;

    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/lang/ThreadGroup;Ljava/security/AccessControlContext;)V

    .line 224
    return-void
.end method

.method private static createThreadGroup()Ljava/lang/ThreadGroup;
    .registers 10

    .prologue
    .line 251
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v5

    .line 253
    .local v5, "u":Lsun/misc/Unsafe;
    const-class v8, Ljava/lang/Thread;

    const-string/jumbo v9, "group"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 252
    invoke-virtual {v5, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    .line 255
    .local v6, "tg":J
    const-class v8, Ljava/lang/ThreadGroup;

    const-string/jumbo v9, "parent"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 254
    invoke-virtual {v5, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    .line 257
    .local v2, "gp":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v5, v8, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 256
    check-cast v1, Ljava/lang/ThreadGroup;

    .line 258
    .local v1, "group":Ljava/lang/ThreadGroup;
    :goto_28
    if-eqz v1, :cond_44

    .line 259
    invoke-virtual {v5, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ThreadGroup;

    .line 260
    .local v4, "parent":Ljava/lang/ThreadGroup;
    if-nez v4, :cond_3b

    .line 261
    new-instance v8, Ljava/lang/ThreadGroup;

    .line 262
    const-string/jumbo v9, "InnocuousForkJoinWorkerThreadGroup"

    .line 261
    invoke-direct {v8, v1, v9}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_3a} :catch_3d

    return-object v8

    .line 263
    :cond_3b
    move-object v1, v4

    goto :goto_28

    .line 265
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    .end local v2    # "gp":J
    .end local v4    # "parent":Ljava/lang/ThreadGroup;
    .end local v6    # "tg":J
    :catch_3d
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v8, Ljava/lang/Error;

    invoke-direct {v8, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 269
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local v1    # "group":Ljava/lang/ThreadGroup;
    .restart local v2    # "gp":J
    .restart local v6    # "tg":J
    :cond_44
    new-instance v8, Ljava/lang/Error;

    const-string/jumbo v9, "Cannot create ThreadGroup"

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8
.end method


# virtual methods
.method afterTopLevelExec()V
    .registers 1

    .prologue
    .line 228
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->eraseThreadLocals()V

    .line 229
    return-void
.end method

.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 233
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public setContextClassLoader(Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 241
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "setContextClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2
    .param p1, "x"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 237
    return-void
.end method
