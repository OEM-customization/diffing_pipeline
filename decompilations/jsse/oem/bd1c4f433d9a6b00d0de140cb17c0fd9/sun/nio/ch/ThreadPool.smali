.class public Lsun/nio/ch/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/ThreadPool$DefaultThreadPoolHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_THREAD_POOL_INITIAL_SIZE:Ljava/lang/String; = "java.nio.channels.DefaultThreadPool.initialSize"

.field private static final DEFAULT_THREAD_POOL_THREAD_FACTORY:Ljava/lang/String; = "java.nio.channels.DefaultThreadPool.threadFactory"


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final isFixed:Z

.field private final poolSize:I


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ExecutorService;ZI)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "isFixed"    # Z
    .param p3, "poolSize"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lsun/nio/ch/ThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    .line 57
    iput-boolean p2, p0, Lsun/nio/ch/ThreadPool;->isFixed:Z

    .line 58
    iput p3, p0, Lsun/nio/ch/ThreadPool;->poolSize:I

    .line 59
    return-void
.end method

.method static create(ILjava/util/concurrent/ThreadFactory;)Lsun/nio/ch/ThreadPool;
    .registers 5
    .param p0, "nThreads"    # I
    .param p1, "factory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 119
    if-gtz p0, :cond_b

    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\'nThreads\' must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_b
    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 122
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lsun/nio/ch/ThreadPool;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p0}, Lsun/nio/ch/ThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;ZI)V

    return-object v1
.end method

.method static createDefault()Lsun/nio/ch/ThreadPool;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-static {}, Lsun/nio/ch/ThreadPool;->getDefaultThreadPoolInitialSize()I

    move-result v1

    .line 106
    .local v1, "initialSize":I
    if-gez v1, :cond_f

    .line 107
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 109
    :cond_f
    invoke-static {}, Lsun/nio/ch/ThreadPool;->getDefaultThreadPoolThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    .line 110
    .local v2, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    if-nez v2, :cond_19

    .line 111
    invoke-static {}, Lsun/nio/ch/ThreadPool;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    .line 113
    :cond_19
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 114
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v3, Lsun/nio/ch/ThreadPool;

    invoke-direct {v3, v0, v4, v1}, Lsun/nio/ch/ThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;ZI)V

    return-object v3
.end method

.method static defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 1

    .prologue
    sget-object v0, Lsun/nio/ch/-$Lambda$MfIm8har2wOVFJJtpwtPJYPKn8o;->$INST$0:Lsun/nio/ch/-$Lambda$MfIm8har2wOVFJJtpwtPJYPKn8o;

    .line 76
    return-object v0
.end method

.method static getDefault()Lsun/nio/ch/ThreadPool;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lsun/nio/ch/ThreadPool$DefaultThreadPoolHolder;->defaultThreadPool:Lsun/nio/ch/ThreadPool;

    return-object v0
.end method

.method private static getDefaultThreadPoolInitialSize()I
    .registers 5

    .prologue
    .line 149
    new-instance v2, Lsun/security/action/GetPropertyAction;

    .line 150
    const-string/jumbo v3, "java.nio.channels.DefaultThreadPool.initialSize"

    .line 149
    invoke-direct {v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    .local v0, "propValue":Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 153
    :try_start_10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_13} :catch_15

    move-result v2

    return v2

    .line 154
    :catch_15
    move-exception v1

    .line 155
    .local v1, "x":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Value of property \'java.nio.channels.DefaultThreadPool.initialSize\' is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    .end local v1    # "x":Ljava/lang/NumberFormatException;
    :cond_30
    const/4 v2, -0x1

    return v2
.end method

.method private static getDefaultThreadPoolThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 8

    .prologue
    const/4 v7, 0x0

    .line 163
    new-instance v5, Lsun/security/action/GetPropertyAction;

    .line 164
    const-string/jumbo v6, "java.nio.channels.DefaultThreadPool.threadFactory"

    .line 163
    invoke-direct {v5, v6}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    .local v1, "propValue":Ljava/lang/String;
    if-eqz v1, :cond_36

    .line 168
    :try_start_11
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    .line 167
    invoke-static {v1, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 169
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ThreadFactory;
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_20} :catch_2f
    .catch Ljava/lang/InstantiationException; {:try_start_11 .. :try_end_20} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_20} :catch_21

    return-object v5

    .line 174
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_21
    move-exception v3

    .line 175
    .local v3, "x":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 172
    .end local v3    # "x":Ljava/lang/IllegalAccessException;
    :catch_28
    move-exception v4

    .line 173
    .local v4, "x":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v4}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 170
    .end local v4    # "x":Ljava/lang/InstantiationException;
    :catch_2f
    move-exception v2

    .line 171
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 178
    .end local v2    # "x":Ljava/lang/ClassNotFoundException;
    :cond_36
    return-object v7
.end method

.method static synthetic lambda$-sun_nio_ch_ThreadPool_2676(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 77
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 79
    return-object v0
.end method

.method public static wrap(Ljava/util/concurrent/ExecutorService;I)Lsun/nio/ch/ThreadPool;
    .registers 5
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "initialSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 127
    if-nez p0, :cond_c

    .line 128
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "\'executor\' is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_c
    instance-of v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_2e

    move-object v1, p0

    .line 131
    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v0

    .line 132
    .local v0, "max":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_26

    .line 133
    if-gez p1, :cond_2c

    .line 134
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    .line 145
    .end local v0    # "max":I
    :cond_26
    :goto_26
    new-instance v1, Lsun/nio/ch/ThreadPool;

    invoke-direct {v1, p0, v2, p1}, Lsun/nio/ch/ThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;ZI)V

    return-object v1

    .line 137
    .restart local v0    # "max":I
    :cond_2c
    const/4 p1, 0x0

    goto :goto_26

    .line 142
    .end local v0    # "max":I
    :cond_2e
    if-gez p1, :cond_26

    .line 143
    const/4 p1, 0x0

    goto :goto_26
.end method


# virtual methods
.method executor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lsun/nio/ch/ThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method isFixedThreadPool()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lsun/nio/ch/ThreadPool;->isFixed:Z

    return v0
.end method

.method poolSize()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lsun/nio/ch/ThreadPool;->poolSize:I

    return v0
.end method
