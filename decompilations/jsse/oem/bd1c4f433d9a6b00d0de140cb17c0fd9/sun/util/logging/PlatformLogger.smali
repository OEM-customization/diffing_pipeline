.class public Lsun/util/logging/PlatformLogger;
.super Ljava/lang/Object;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/logging/PlatformLogger$1;,
        Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;,
        Lsun/util/logging/PlatformLogger$JavaLoggerProxy;,
        Lsun/util/logging/PlatformLogger$Level;,
        Lsun/util/logging/PlatformLogger$LoggerProxy;
    }
.end annotation


# static fields
.field private static final ALL:I = -0x80000000

.field private static final CONFIG:I = 0x2bc

.field private static final DEFAULT_LEVEL:Lsun/util/logging/PlatformLogger$Level;

.field private static final FINE:I = 0x1f4

.field private static final FINER:I = 0x190

.field private static final FINEST:I = 0x12c

.field private static final INFO:I = 0x320

.field private static final OFF:I = 0x7fffffff

.field private static final SEVERE:I = 0x3e8

.field private static final WARNING:I = 0x384

.field private static loggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lsun/util/logging/PlatformLogger;",
            ">;>;"
        }
    .end annotation
.end field

.field private static loggingEnabled:Z


# instance fields
.field private volatile javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

.field private volatile loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;


# direct methods
.method static synthetic -get0()Lsun/util/logging/PlatformLogger$Level;
    .registers 1

    sget-object v0, Lsun/util/logging/PlatformLogger;->DEFAULT_LEVEL:Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 156
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    sput-object v0, Lsun/util/logging/PlatformLogger;->DEFAULT_LEVEL:Lsun/util/logging/PlatformLogger$Level;

    .line 160
    new-instance v0, Lsun/util/logging/PlatformLogger$1;

    invoke-direct {v0}, Lsun/util/logging/PlatformLogger$1;-><init>()V

    .line 159
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 187
    sput-object v0, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    sget-boolean v0, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    if-eqz v0, :cond_11

    .line 241
    new-instance v0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    invoke-direct {v0, p1}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    .line 245
    :goto_10
    return-void

    .line 243
    :cond_11
    new-instance v0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;

    invoke-direct {v0, p1}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    goto :goto_10
.end method

.method public static declared-synchronized getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;
    .registers 8
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v5, Lsun/util/logging/PlatformLogger;

    monitor-enter v5

    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "log":Lsun/util/logging/PlatformLogger;
    :try_start_4
    sget-object v4, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 196
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    if-eqz v3, :cond_32

    .line 197
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lsun/util/logging/PlatformLogger;

    move-object v1, v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_2a

    .local v1, "log":Lsun/util/logging/PlatformLogger;
    move-object v2, v1

    .line 199
    .end local v1    # "log":Lsun/util/logging/PlatformLogger;
    .local v2, "log":Lsun/util/logging/PlatformLogger;
    :goto_17
    if-nez v2, :cond_30

    .line 200
    :try_start_19
    new-instance v1, Lsun/util/logging/PlatformLogger;

    invoke-direct {v1, p0}, Lsun/util/logging/PlatformLogger;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_2d

    .line 201
    .end local v2    # "log":Lsun/util/logging/PlatformLogger;
    .restart local v1    # "log":Lsun/util/logging/PlatformLogger;
    :try_start_1e
    sget-object v4, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_2a

    :goto_28
    monitor-exit v5

    .line 203
    return-object v1

    .end local v1    # "log":Lsun/util/logging/PlatformLogger;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    :catchall_2a
    move-exception v4

    :goto_2b
    monitor-exit v5

    throw v4

    .restart local v2    # "log":Lsun/util/logging/PlatformLogger;
    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    :catchall_2d
    move-exception v4

    move-object v1, v2

    .end local v2    # "log":Lsun/util/logging/PlatformLogger;
    .restart local v1    # "log":Lsun/util/logging/PlatformLogger;
    goto :goto_2b

    .end local v1    # "log":Lsun/util/logging/PlatformLogger;
    .restart local v2    # "log":Lsun/util/logging/PlatformLogger;
    :cond_30
    move-object v1, v2

    .end local v2    # "log":Lsun/util/logging/PlatformLogger;
    .restart local v1    # "log":Lsun/util/logging/PlatformLogger;
    goto :goto_28

    .local v1, "log":Lsun/util/logging/PlatformLogger;
    :cond_32
    move-object v2, v1

    .restart local v2    # "log":Lsun/util/logging/PlatformLogger;
    goto :goto_17
.end method

.method public static declared-synchronized redirectPlatformLoggers()V
    .registers 6

    .prologue
    const-class v5, Lsun/util/logging/PlatformLogger;

    monitor-enter v5

    .line 211
    :try_start_3
    sget-boolean v4, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    if-nez v4, :cond_f

    invoke-static {}, Lsun/util/logging/LoggingSupport;->isAvailable()Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_3c

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_11

    :cond_f
    monitor-exit v5

    return-void

    .line 213
    :cond_11
    const/4 v4, 0x1

    :try_start_12
    sput-boolean v4, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    .line 214
    sget-object v4, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 216
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/util/logging/PlatformLogger;

    .line 217
    .local v2, "plog":Lsun/util/logging/PlatformLogger;
    if-eqz v2, :cond_1e

    .line 218
    invoke-direct {v2}, Lsun/util/logging/PlatformLogger;->redirectToJavaLoggerProxy()V
    :try_end_3b
    .catchall {:try_start_12 .. :try_end_3b} :catchall_3c

    goto :goto_1e

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;>;"
    .end local v2    # "plog":Lsun/util/logging/PlatformLogger;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    :catchall_3c
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_3f
    monitor-exit v5

    .line 221
    return-void
.end method

.method private redirectToJavaLoggerProxy()V
    .registers 5

    .prologue
    .line 227
    const-class v2, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;

    iget-object v3, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;

    .line 228
    .local v1, "lp":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    new-instance v0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    iget-object v2, v1, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->name:Ljava/lang/String;

    iget-object v3, v1, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    invoke-direct {v0, v2, v3}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;-><init>(Ljava/lang/String;Lsun/util/logging/PlatformLogger$Level;)V

    .line 230
    .local v0, "jlp":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    .line 231
    iput-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    .line 232
    return-void
.end method


# virtual methods
.method public config(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 351
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public config(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 355
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    return-void
.end method

.method public varargs config(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 359
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    return-void
.end method

.method public fine(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 366
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public fine(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 370
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    return-void
.end method

.method public varargs fine(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 374
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 381
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public finer(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 385
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    return-void
.end method

.method public varargs finer(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 389
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public finest(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 400
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    return-void
.end method

.method public varargs finest(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 404
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    iget-object v0, v0, Lsun/util/logging/PlatformLogger$LoggerProxy;->name:Ljava/lang/String;

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 340
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 344
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v0}, Lsun/util/logging/PlatformLogger$LoggerProxy;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z
    .registers 4
    .param p1, "level"    # Lsun/util/logging/PlatformLogger$Level;

    .prologue
    .line 267
    if-nez p1, :cond_8

    .line 268
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 271
    :cond_8
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    .line 272
    .local v0, "jlp":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v1

    :goto_10
    return v1

    :cond_11
    iget-object v1, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v1

    goto :goto_10
.end method

.method public level()Lsun/util/logging/PlatformLogger$Level;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v0}, Lsun/util/logging/PlatformLogger$LoggerProxy;->getLevel()Lsun/util/logging/PlatformLogger$Level;

    move-result-object v0

    return-object v0
.end method

.method public setLevel(Lsun/util/logging/PlatformLogger$Level;)V
    .registers 3
    .param p1, "newLevel"    # Lsun/util/logging/PlatformLogger$Level;

    .prologue
    .line 299
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v0, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->setLevel(Lsun/util/logging/PlatformLogger$Level;)V

    .line 300
    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 306
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public severe(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 310
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    return-void
.end method

.method public varargs severe(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 314
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 325
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    return-void
.end method

.method public varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 329
    iget-object v0, p0, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0, v1, p1, p2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    return-void
.end method
