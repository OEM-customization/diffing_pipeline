.class public Ljava/util/logging/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/LogManager$1;,
        Ljava/util/logging/LogManager$Beans;,
        Ljava/util/logging/LogManager$Cleaner;,
        Ljava/util/logging/LogManager$LogNode;,
        Ljava/util/logging/LogManager$LoggerContext;,
        Ljava/util/logging/LogManager$LoggerWeakRef;,
        Ljava/util/logging/LogManager$RootLogger;,
        Ljava/util/logging/LogManager$SystemLoggerContext;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final LOGGING_MXBEAN_NAME:Ljava/lang/String; = "java.util.logging:type=Logging"

.field private static final MAX_ITERATIONS:I = 0x190

.field private static final defaultLevel:Ljava/util/logging/Level;

.field private static loggingMXBean:Ljava/util/logging/LoggingMXBean;

.field private static final manager:Ljava/util/logging/LogManager;


# instance fields
.field private contextsMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/logging/LogManager$LoggerContext;",
            ">;"
        }
    .end annotation
.end field

.field private final controlPermission:Ljava/security/Permission;

.field private deathImminent:Z

.field private volatile initializationDone:Z

.field private initializedCalled:Z

.field private initializedGlobalHandlers:Z

.field private final listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private volatile props:Ljava/util/Properties;

.field private volatile readPrimordialConfiguration:Z

.field private volatile rootLogger:Ljava/util/logging/Logger;

.field private final systemContext:Ljava/util/logging/LogManager$LoggerContext;

.field private final userContext:Ljava/util/logging/LogManager$LoggerContext;


# direct methods
.method static synthetic -get0()Ljava/util/logging/Level;
    .registers 1

    sget-object v0, Ljava/util/logging/LogManager;->defaultLevel:Ljava/util/logging/Level;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/logging/LogManager;)Z
    .registers 2
    .param p0, "-this"    # Ljava/util/logging/LogManager;

    .prologue
    iget-boolean v0, p0, Ljava/util/logging/LogManager;->initializationDone:Z

    return v0
.end method

.method static synthetic -get2(Ljava/util/logging/LogManager;)Z
    .registers 2
    .param p0, "-this"    # Ljava/util/logging/LogManager;

    .prologue
    iget-boolean v0, p0, Ljava/util/logging/LogManager;->initializedCalled:Z

    return v0
.end method

.method static synthetic -get3(Ljava/util/logging/LogManager;)Ljava/lang/ref/ReferenceQueue;
    .registers 2
    .param p0, "-this"    # Ljava/util/logging/LogManager;

    .prologue
    iget-object v0, p0, Ljava/util/logging/LogManager;->loggerRefQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic -get4()Ljava/util/logging/LogManager;
    .registers 1

    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    return-object v0
.end method

.method static synthetic -get5(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;
    .registers 2
    .param p0, "-this"    # Ljava/util/logging/LogManager;

    .prologue
    iget-object v0, p0, Ljava/util/logging/LogManager;->rootLogger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/logging/LogManager;Z)Z
    .registers 2
    .param p0, "-this"    # Ljava/util/logging/LogManager;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Ljava/util/logging/LogManager;->deathImminent:Z

    return p1
.end method

.method static synthetic -set1(Ljava/util/logging/LogManager;Z)Z
    .registers 2
    .param p0, "-this"    # Ljava/util/logging/LogManager;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z

    return p1
.end method

.method static synthetic -set2(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)Ljava/util/logging/Logger;
    .registers 2
    .param p0, "-this"    # Ljava/util/logging/LogManager;
    .param p1, "-value"    # Ljava/util/logging/Logger;

    .prologue
    iput-object p1, p0, Ljava/util/logging/LogManager;->rootLogger:Ljava/util/logging/Logger;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .param p0, "cname"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/logging/LogManager;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "-this"    # Ljava/util/logging/LogManager;
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager;->parseClassNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    .registers 2
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "level"    # Ljava/util/logging/Level;

    .prologue
    invoke-static {p0, p1}, Ljava/util/logging/LogManager;->doSetLevel(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    return-void
.end method

.method static synthetic -wrap3(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .registers 2
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "parent"    # Ljava/util/logging/Logger;

    .prologue
    invoke-static {p0, p1}, Ljava/util/logging/LogManager;->doSetParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    return-void
.end method

.method static synthetic -wrap4(Ljava/util/logging/LogManager;)V
    .registers 1
    .param p0, "-this"    # Ljava/util/logging/LogManager;

    .prologue
    invoke-direct {p0}, Ljava/util/logging/LogManager;->initializeGlobalHandlers()V

    return-void
.end method

.method static synthetic -wrap5(Ljava/util/logging/LogManager;)V
    .registers 1
    .param p0, "-this"    # Ljava/util/logging/LogManager;

    .prologue
    invoke-direct {p0}, Ljava/util/logging/LogManager;->readPrimordialConfiguration()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/logging/LogManager;->-assertionsDisabled:Z

    .line 156
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    sput-object v0, Ljava/util/logging/LogManager;->defaultLevel:Ljava/util/logging/Level;

    .line 180
    new-instance v0, Ljava/util/logging/LogManager$1;

    invoke-direct {v0}, Ljava/util/logging/LogManager$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/LogManager;

    sput-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    .line 1704
    const/4 v0, 0x0

    sput-object v0, Ljava/util/logging/LogManager;->loggingMXBean:Ljava/util/logging/LoggingMXBean;

    .line 144
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 242
    invoke-static {}, Ljava/util/logging/LogManager;->checkSubclassPermissions()Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/logging/LogManager;-><init>(Ljava/lang/Void;)V

    .line 243
    return-void
.end method

.method private constructor <init>(Ljava/lang/Void;)V
    .registers 6
    .param p1, "checked"    # Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    .line 163
    new-instance v1, Ljava/util/logging/LogManager$SystemLoggerContext;

    invoke-direct {v1, p0}, Ljava/util/logging/LogManager$SystemLoggerContext;-><init>(Ljava/util/logging/LogManager;)V

    iput-object v1, p0, Ljava/util/logging/LogManager;->systemContext:Ljava/util/logging/LogManager$LoggerContext;

    .line 164
    new-instance v1, Ljava/util/logging/LogManager$LoggerContext;

    invoke-direct {v1, p0, v3}, Ljava/util/logging/LogManager$LoggerContext;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$LoggerContext;)V

    iput-object v1, p0, Ljava/util/logging/LogManager;->userContext:Ljava/util/logging/LogManager$LoggerContext;

    .line 175
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z

    .line 286
    iput-boolean v2, p0, Ljava/util/logging/LogManager;->initializedCalled:Z

    .line 287
    iput-boolean v2, p0, Ljava/util/logging/LogManager;->initializationDone:Z

    .line 485
    iput-object v3, p0, Ljava/util/logging/LogManager;->contextsMap:Ljava/util/WeakHashMap;

    .line 992
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 991
    iput-object v1, p0, Ljava/util/logging/LogManager;->loggerRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1584
    new-instance v1, Ljava/util/logging/LoggingPermission;

    const-string/jumbo v2, "control"

    invoke-direct {v1, v2, v3}, Ljava/util/logging/LoggingPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/util/logging/LogManager;->controlPermission:Ljava/security/Permission;

    .line 249
    :try_start_3b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/util/logging/LogManager$Cleaner;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ljava/util/logging/LogManager$Cleaner;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$Cleaner;)V

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
    :try_end_48
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_48} :catch_49

    .line 254
    :goto_48
    return-void

    .line 250
    :catch_49
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_48
.end method

.method private static checkSubclassPermissions()Ljava/lang/Void;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 258
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1d

    .line 263
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "shutdownHooks"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 264
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "setContextClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 266
    :cond_1d
    return-object v3
.end method

.method private contexts()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/LogManager$LoggerContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v0, "cxs":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/LogManager$LoggerContext;>;"
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->getSystemContext()Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-direct {p0}, Ljava/util/logging/LogManager;->getUserContext()Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    return-object v0
.end method

.method private static doSetLevel(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    .registers 4
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "level"    # Ljava/util/logging/Level;

    .prologue
    .line 1171
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1172
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-nez v0, :cond_a

    .line 1174
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 1175
    return-void

    .line 1179
    :cond_a
    new-instance v1, Ljava/util/logging/LogManager$6;

    invoke-direct {v1, p0, p1}, Ljava/util/logging/LogManager$6;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 1185
    return-void
.end method

.method private static doSetParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .registers 4
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "parent"    # Ljava/util/logging/Logger;

    .prologue
    .line 1190
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1191
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-nez v0, :cond_a

    .line 1193
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->setParent(Ljava/util/logging/Logger;)V

    .line 1194
    return-void

    .line 1198
    :cond_a
    new-instance v1, Ljava/util/logging/LogManager$7;

    invoke-direct {v1, p0, p1}, Ljava/util/logging/LogManager$7;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 1204
    return-void
.end method

.method private static getClassInstance(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .param p0, "cname"    # Ljava/lang/String;

    .prologue
    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, "clz":Ljava/lang/Class;
    if-eqz p0, :cond_b

    .line 589
    :try_start_3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_a} :catch_c

    move-result-object v0

    .line 598
    .end local v0    # "clz":Ljava/lang/Class;
    :cond_b
    :goto_b
    return-object v0

    .line 590
    .restart local v0    # "clz":Ljava/lang/Class;
    :catch_c
    move-exception v1

    .line 592
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_18} :catch_1a

    move-result-object v0

    .local v0, "clz":Ljava/lang/Class;
    goto :goto_b

    .line 593
    .local v0, "clz":Ljava/lang/Class;
    :catch_1a
    move-exception v2

    .line 594
    .local v2, "innerEx":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static getLogManager()Ljava/util/logging/LogManager;
    .registers 1

    .prologue
    .line 368
    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    if-eqz v0, :cond_9

    .line 369
    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->ensureLogManagerInitialized()V

    .line 371
    :cond_9
    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    return-object v0
.end method

.method public static declared-synchronized getLoggingMXBean()Ljava/util/logging/LoggingMXBean;
    .registers 2

    .prologue
    const-class v1, Ljava/util/logging/LogManager;

    monitor-enter v1

    .line 1738
    :try_start_3
    sget-object v0, Ljava/util/logging/LogManager;->loggingMXBean:Ljava/util/logging/LoggingMXBean;

    if-nez v0, :cond_e

    .line 1739
    new-instance v0, Ljava/util/logging/Logging;

    invoke-direct {v0}, Ljava/util/logging/Logging;-><init>()V

    sput-object v0, Ljava/util/logging/LogManager;->loggingMXBean:Ljava/util/logging/LoggingMXBean;

    .line 1741
    :cond_e
    sget-object v0, Ljava/util/logging/LogManager;->loggingMXBean:Ljava/util/logging/LoggingMXBean;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUserContext()Ljava/util/logging/LogManager$LoggerContext;
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Ljava/util/logging/LogManager;->userContext:Ljava/util/logging/LogManager$LoggerContext;

    return-object v0
.end method

.method private declared-synchronized initializeGlobalHandlers()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 1569
    :try_start_1
    iget-boolean v0, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-eqz v0, :cond_7

    monitor-exit p0

    .line 1570
    return-void

    .line 1573
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z

    .line 1575
    iget-boolean v0, p0, Ljava/util/logging/LogManager;->deathImminent:Z
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1b

    if-eqz v0, :cond_10

    monitor-exit p0

    .line 1579
    return-void

    .line 1581
    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/util/logging/LogManager;->rootLogger:Ljava/util/logging/Logger;

    const-string/jumbo v1, "handlers"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Ljava/util/logging/LogManager;->loadLoggerHandlers(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1b

    monitor-exit p0

    .line 1582
    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadLoggerHandlers(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handlersPropertyName"    # Ljava/lang/String;

    .prologue
    .line 953
    new-instance v0, Ljava/util/logging/LogManager$5;

    invoke-direct {v0, p0, p3, p1}, Ljava/util/logging/LogManager$5;-><init>(Ljava/util/logging/LogManager;Ljava/lang/String;Ljava/util/logging/Logger;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 986
    return-void
.end method

.method private parseClassNames(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1368
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1369
    .local v1, "hands":Ljava/lang/String;
    if-nez v1, :cond_a

    .line 1370
    new-array v5, v5, [Ljava/lang/String;

    return-object v5

    .line 1372
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1373
    const/4 v2, 0x0

    .line 1374
    .local v2, "ix":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1375
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14
    :goto_14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4a

    .line 1376
    move v0, v2

    .line 1377
    .local v0, "end":I
    :goto_1b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2b

    .line 1378
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1386
    :cond_2b
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1387
    .local v4, "word":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    .line 1388
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1389
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_14

    .line 1392
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1381
    .end local v4    # "word":Ljava/lang/String;
    :cond_3f
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_2b

    .line 1384
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1394
    .end local v0    # "end":I
    :cond_4a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method private readPrimordialConfiguration()V
    .registers 5

    .prologue
    .line 375
    iget-boolean v1, p0, Ljava/util/logging/LogManager;->readPrimordialConfiguration:Z

    if-nez v1, :cond_1b

    .line 376
    monitor-enter p0

    .line 377
    :try_start_5
    iget-boolean v1, p0, Ljava/util/logging/LogManager;->readPrimordialConfiguration:Z

    if-nez v1, :cond_1a

    .line 381
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_3b

    if-nez v1, :cond_f

    monitor-exit p0

    .line 382
    return-void

    .line 384
    :cond_f
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Ljava/util/logging/LogManager;->readPrimordialConfiguration:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_3b

    .line 387
    :try_start_12
    new-instance v1, Ljava/util/logging/LogManager$3;

    invoke-direct {v1, p0}, Ljava/util/logging/LogManager$3;-><init>(Ljava/util/logging/LogManager;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1c
    .catchall {:try_start_12 .. :try_end_1a} :catchall_3b

    :cond_1a
    monitor-exit p0

    .line 403
    :cond_1b
    return-void

    .line 397
    :catch_1c
    move-exception v0

    .line 398
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1d
    sget-boolean v1, Ljava/util/logging/LogManager;->-assertionsDisabled:Z

    if-nez v1, :cond_1a

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception raised while reading logging configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_3b

    .line 376
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private resetLogger(Ljava/util/logging/Logger;)V
    .registers 9
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .prologue
    const/4 v6, 0x0

    .line 1347
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v4

    .line 1348
    .local v4, "targets":[Ljava/util/logging/Handler;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v5, v4

    if-ge v2, v5, :cond_16

    .line 1349
    aget-object v1, v4, v2

    .line 1350
    .local v1, "h":Ljava/util/logging/Handler;
    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    .line 1352
    :try_start_e
    invoke-virtual {v1}, Ljava/util/logging/Handler;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_14

    .line 1348
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1353
    :catch_14
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_11

    .line 1357
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "h":Ljava/util/logging/Handler;
    :cond_16
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1358
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_2b

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1360
    sget-object v5, Ljava/util/logging/LogManager;->defaultLevel:Ljava/util/logging/Level;

    invoke-virtual {p1, v5}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 1364
    :goto_2a
    return-void

    .line 1362
    :cond_2b
    invoke-virtual {p1, v6}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    goto :goto_2a
.end method

.method private declared-synchronized setLevelsOnExistingLoggers()V
    .registers 12

    .prologue
    monitor-enter p0

    .line 1679
    :try_start_1
    iget-object v8, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    invoke-virtual {v8}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 1680
    .local v2, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_69

    .line 1681
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1682
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v8, ".level"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1686
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x6

    .line 1687
    .local v3, "ix":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1688
    .local v7, "name":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p0, v4, v8}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v6

    .line 1689
    .local v6, "level":Ljava/util/logging/Level;
    if-nez v6, :cond_4b

    .line 1690
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad level value for property: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_48

    goto :goto_7

    .end local v2    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v3    # "ix":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "level":Ljava/util/logging/Level;
    .end local v7    # "name":Ljava/lang/String;
    :catchall_48
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1693
    .restart local v2    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v3    # "ix":I
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v6    # "level":Ljava/util/logging/Level;
    .restart local v7    # "name":Ljava/lang/String;
    :cond_4b
    :try_start_4b
    invoke-direct {p0}, Ljava/util/logging/LogManager;->contexts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cx$iterator":Ljava/util/Iterator;
    :cond_53
    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/LogManager$LoggerContext;

    .line 1694
    .local v0, "cx":Ljava/util/logging/LogManager$LoggerContext;
    invoke-virtual {v0, v7}, Ljava/util/logging/LogManager$LoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    .line 1695
    .local v5, "l":Ljava/util/logging/Logger;
    if-eqz v5, :cond_53

    .line 1698
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V
    :try_end_68
    .catchall {:try_start_4b .. :try_end_68} :catchall_48

    goto :goto_53

    .end local v0    # "cx":Ljava/util/logging/LogManager$LoggerContext;
    .end local v1    # "cx$iterator":Ljava/util/Iterator;
    .end local v3    # "ix":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "l":Ljava/util/logging/Logger;
    .end local v6    # "level":Ljava/util/logging/Level;
    .end local v7    # "name":Ljava/lang/String;
    :cond_69
    monitor-exit p0

    .line 1701
    return-void
.end method


# virtual methods
.method public addLogger(Ljava/util/logging/Logger;)Z
    .registers 6
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .prologue
    .line 1152
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1153
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_c

    .line 1154
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1156
    :cond_c
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->drainLoggerRefQueueBounded()V

    .line 1157
    invoke-direct {p0}, Ljava/util/logging/LogManager;->getUserContext()Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v0

    .line 1158
    .local v0, "cx":Ljava/util/logging/LogManager$LoggerContext;
    invoke-virtual {v0, p1, p0}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Ljava/util/logging/LogManager;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".handlers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Ljava/util/logging/LogManager;->loadLoggerHandlers(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const/4 v2, 0x1

    return v2

    .line 1164
    :cond_32
    const/4 v2, 0x0

    return v2
.end method

.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 6
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 428
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyChangeListener;

    .line 429
    .local v0, "listener":Ljava/beans/PropertyChangeListener;
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 430
    iget-object v3, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    monitor-enter v3

    .line 432
    :try_start_c
    iget-object v2, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 433
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_22

    const/4 v2, 0x1

    :goto_17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 434
    iget-object v2, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_29

    monitor-exit v3

    .line 436
    return-void

    .line 433
    :cond_22
    :try_start_22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_29

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 430
    .end local v1    # "value":Ljava/lang/Integer;
    :catchall_29
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public checkAccess()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1603
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 1604
    return-void
.end method

.method checkPermission()V
    .registers 3

    .prologue
    .line 1587
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1588
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1589
    iget-object v1, p0, Ljava/util/logging/LogManager;->controlPermission:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1590
    :cond_b
    return-void
.end method

.method demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .prologue
    .line 519
    .local p3, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    .line 520
    .local v6, "result":Ljava/util/logging/Logger;
    if-nez v6, :cond_1d

    .line 522
    new-instance v0, Ljava/util/logging/Logger;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V

    .line 524
    .local v0, "newLogger":Ljava/util/logging/Logger;
    :cond_10
    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 527
    return-object v0

    .line 541
    :cond_17
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    .line 542
    if-eqz v6, :cond_10

    .line 544
    .end local v0    # "newLogger":Ljava/util/logging/Logger;
    :cond_1d
    return-object v6
.end method

.method demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    .prologue
    .line 549
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->getSystemContext()Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/util/logging/LogManager$LoggerContext;->demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    .line 560
    .local v2, "sysLogger":Ljava/util/logging/Logger;
    :cond_8
    invoke-virtual {p0, v2}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 562
    move-object v1, v2

    .line 566
    .local v1, "logger":Ljava/util/logging/Logger;
    :goto_f
    if-eqz v1, :cond_8

    .line 569
    if-eq v1, v2, :cond_23

    invoke-virtual {v2}, Ljava/util/logging/Logger;->accessCheckedHandlers()[Ljava/util/logging/Handler;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_23

    .line 571
    move-object v0, v1

    .line 572
    .local v0, "l":Ljava/util/logging/Logger;
    new-instance v3, Ljava/util/logging/LogManager$4;

    invoke-direct {v3, p0, v0, v2}, Ljava/util/logging/LogManager$4;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 582
    .end local v0    # "l":Ljava/util/logging/Logger;
    :cond_23
    return-object v2

    .line 564
    .end local v1    # "logger":Ljava/util/logging/Logger;
    :cond_24
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .restart local v1    # "logger":Ljava/util/logging/Logger;
    goto :goto_f
.end method

.method final drainLoggerRefQueueBounded()V
    .registers 4

    .prologue
    .line 1120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v2, 0x190

    if-ge v0, v2, :cond_9

    .line 1121
    iget-object v2, p0, Ljava/util/logging/LogManager;->loggerRefQueue:Ljava/lang/ref/ReferenceQueue;

    if-nez v2, :cond_a

    .line 1133
    :cond_9
    return-void

    .line 1126
    :cond_a
    iget-object v2, p0, Ljava/util/logging/LogManager;->loggerRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 1127
    .local v1, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-eqz v1, :cond_9

    .line 1131
    invoke-virtual {v1}, Ljava/util/logging/LogManager$LoggerWeakRef;->dispose()V

    .line 1120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method final ensureLogManagerInitialized()V
    .registers 5

    .prologue
    .line 289
    move-object v1, p0

    .line 290
    .local v1, "owner":Ljava/util/logging/LogManager;
    iget-boolean v2, p0, Ljava/util/logging/LogManager;->initializationDone:Z

    if-nez v2, :cond_9

    sget-object v2, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    if-eq p0, v2, :cond_a

    .line 293
    :cond_9
    return-void

    .line 304
    :cond_a
    monitor-enter p0

    .line 308
    :try_start_b
    iget-boolean v2, p0, Ljava/util/logging/LogManager;->initializedCalled:Z

    if-eqz v2, :cond_28

    const/4 v0, 0x1

    .line 310
    .local v0, "isRecursiveInitialization":Z
    :goto_10
    sget-boolean v2, Ljava/util/logging/LogManager;->-assertionsDisabled:Z

    if-nez v2, :cond_2a

    iget-boolean v2, p0, Ljava/util/logging/LogManager;->initializedCalled:Z

    if-nez v2, :cond_2a

    iget-boolean v2, p0, Ljava/util/logging/LogManager;->initializationDone:Z

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/lang/AssertionError;

    .line 311
    const-string/jumbo v3, "Initialization can\'t be done if initialized has not been called!"

    .line 310
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_25

    .line 304
    .end local v0    # "isRecursiveInitialization":Z
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2

    .line 308
    :cond_28
    const/4 v0, 0x0

    .restart local v0    # "isRecursiveInitialization":Z
    goto :goto_10

    .line 313
    :cond_2a
    if-nez v0, :cond_30

    :try_start_2c
    iget-boolean v2, p0, Ljava/util/logging/LogManager;->initializationDone:Z
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_25

    if-eqz v2, :cond_32

    :cond_30
    monitor-exit p0

    .line 322
    return-void

    .line 327
    :cond_32
    const/4 v2, 0x1

    :try_start_33
    iput-boolean v2, p0, Ljava/util/logging/LogManager;->initializedCalled:Z
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_25

    .line 329
    :try_start_35
    new-instance v2, Ljava/util/logging/LogManager$2;

    invoke-direct {v2, p0, p0}, Ljava/util/logging/LogManager$2;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_42

    .line 358
    const/4 v2, 0x1

    :try_start_3e
    iput-boolean v2, p0, Ljava/util/logging/LogManager;->initializationDone:Z
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_25

    monitor-exit p0

    .line 361
    return-void

    .line 357
    :catchall_42
    move-exception v2

    .line 358
    const/4 v3, 0x1

    :try_start_44
    iput-boolean v3, p0, Ljava/util/logging/LogManager;->initializationDone:Z

    .line 357
    throw v2
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_25
.end method

.method getBooleanProperty(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 1501
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1502
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 1503
    return p2

    .line 1505
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1506
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1507
    :cond_1d
    const/4 v1, 0x1

    return v1

    .line 1508
    :cond_1f
    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1509
    :cond_31
    const/4 v1, 0x0

    return v1

    .line 1511
    :cond_33
    return p2
.end method

.method getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/logging/Filter;

    .prologue
    .line 1531
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1533
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 1534
    :try_start_6
    invoke-static {v1}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/logging/Filter;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    return-object v2

    .line 1536
    :catch_11
    move-exception v0

    .line 1542
    :cond_12
    return-object p2
.end method

.method getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/logging/Formatter;

    .prologue
    .line 1551
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1553
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 1554
    :try_start_6
    invoke-static {v1}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/logging/Formatter;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    return-object v2

    .line 1556
    :catch_11
    move-exception v0

    .line 1562
    :cond_12
    return-object p2
.end method

.method getIntProperty(Ljava/lang/String;I)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 1486
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1487
    .local v1, "val":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 1488
    return p2

    .line 1491
    :cond_7
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_10

    move-result v2

    return v2

    .line 1492
    :catch_10
    move-exception v0

    .line 1493
    .local v0, "ex":Ljava/lang/Exception;
    return p2
.end method

.method getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/logging/Level;

    .prologue
    .line 1518
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1519
    .local v1, "val":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 1520
    return-object p2

    .line 1522
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Level;->findLevel(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    .line 1523
    .local v0, "l":Ljava/util/logging/Level;
    if-eqz v0, :cond_12

    .end local v0    # "l":Ljava/util/logging/Level;
    :goto_11
    return-object v0

    .restart local v0    # "l":Ljava/util/logging/Level;
    :cond_12
    move-object v0, p2

    goto :goto_11
.end method

.method public getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1222
    invoke-direct {p0}, Ljava/util/logging/LogManager;->getUserContext()Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/logging/LogManager$LoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerNames()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1242
    invoke-direct {p0}, Ljava/util/logging/LogManager;->getUserContext()Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager$LoggerContext;->getLoggerNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1468
    iget-object v0, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 1475
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1476
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 1477
    return-object p2

    .line 1479
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method final getSystemContext()Ljava/util/logging/LogManager$LoggerContext;
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Ljava/util/logging/LogManager;->systemContext:Ljava/util/logging/LogManager$LoggerContext;

    return-object v0
.end method

.method public readConfiguration()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1262
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 1265
    const-string/jumbo v8, "java.util.logging.config.class"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1266
    .local v1, "cname":Ljava/lang/String;
    if-eqz v1, :cond_4e

    .line 1271
    :try_start_c
    invoke-static {v1}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_14

    .line 1272
    return-void

    .line 1273
    :catch_14
    move-exception v3

    .line 1274
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Logging configuration class \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\" failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1275
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1280
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_4e
    const-string/jumbo v8, "java.util.logging.config.file"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1281
    .local v6, "fname":Ljava/lang/String;
    if-nez v6, :cond_7d

    .line 1282
    const-string/jumbo v8, "java.home"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1283
    if-nez v6, :cond_69

    .line 1284
    new-instance v8, Ljava/lang/Error;

    const-string/jumbo v9, "Can\'t find java.home ??"

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1286
    :cond_69
    new-instance v4, Ljava/io/File;

    const-string/jumbo v8, "lib"

    invoke-direct {v4, v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    .local v4, "f":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v8, "logging.properties"

    invoke-direct {v5, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1288
    .end local v4    # "f":Ljava/io/File;
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 1295
    .end local v5    # "f":Ljava/io/File;
    :cond_7d
    :try_start_7d
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_82} :catch_90

    .line 1303
    .local v7, "in":Ljava/io/InputStream;
    :cond_82
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1305
    .local v0, "bin":Ljava/io/BufferedInputStream;
    :try_start_87
    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager;->readConfiguration(Ljava/io/InputStream;)V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_9d

    .line 1307
    if-eqz v7, :cond_8f

    .line 1308
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 1311
    :cond_8f
    return-void

    .line 1296
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v7    # "in":Ljava/io/InputStream;
    :catch_90
    move-exception v2

    .line 1297
    .local v2, "e":Ljava/lang/Exception;
    const-class v8, Ljava/util/logging/LogManager;

    const-string/jumbo v9, "logging.properties"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 1298
    .restart local v7    # "in":Ljava/io/InputStream;
    if-nez v7, :cond_82

    .line 1299
    throw v2

    .line 1306
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    :catchall_9d
    move-exception v8

    .line 1307
    if-eqz v7, :cond_a3

    .line 1308
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 1306
    :cond_a3
    throw v8
.end method

.method public readConfiguration(Ljava/io/InputStream;)V
    .registers 16
    .param p1, "ins"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 1411
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 1412
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->reset()V

    .line 1415
    iget-object v10, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    invoke-virtual {v10, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1417
    const-string/jumbo v10, "config"

    invoke-direct {p0, v10}, Ljava/util/logging/LogManager;->parseClassNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1419
    .local v8, "names":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    array-length v10, v8

    if-ge v5, v10, :cond_5e

    .line 1420
    aget-object v9, v8, v5

    .line 1422
    .local v9, "word":Ljava/lang/String;
    :try_start_19
    invoke-static {v9}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_23

    .line 1419
    :goto_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 1423
    :catch_23
    move-exception v4

    .line 1424
    .local v4, "ex":Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Can\'t load config class \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1425
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_20

    .line 1431
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v9    # "word":Ljava/lang/String;
    :cond_5e
    invoke-direct {p0}, Ljava/util/logging/LogManager;->setLevelsOnExistingLoggers()V

    .line 1436
    const/4 v7, 0x0

    .line 1437
    .local v7, "listeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Integer;>;"
    iget-object v11, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    monitor-enter v11

    .line 1438
    :try_start_65
    iget-object v10, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_74

    .line 1439
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "listeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Integer;>;"
    iget-object v10, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    invoke-direct {v7, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_74
    .catchall {:try_start_65 .. :try_end_74} :catchall_87

    :cond_74
    monitor-exit v11

    .line 1441
    if-eqz v7, :cond_bb

    .line 1442
    sget-boolean v10, Ljava/util/logging/LogManager;->-assertionsDisabled:Z

    if-nez v10, :cond_8a

    invoke-static {}, Ljava/util/logging/LogManager$Beans;->isBeansPresent()Z

    move-result v10

    if-nez v10, :cond_8a

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 1437
    :catchall_87
    move-exception v10

    monitor-exit v11

    throw v10

    .line 1443
    :cond_8a
    const-class v10, Ljava/util/logging/LogManager;

    invoke-static {v10, v13, v13, v13}, Ljava/util/logging/LogManager$Beans;->newPropertyChangeEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1444
    .local v3, "ev":Ljava/lang/Object;
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_98
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_bb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1445
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1446
    .local v6, "listener":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1447
    .local v0, "count":I
    const/4 v5, 0x0

    :goto_b3
    if-ge v5, v0, :cond_98

    .line 1448
    invoke-static {v6, v3}, Ljava/util/logging/LogManager$Beans;->invokePropertyChange(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1447
    add-int/lit8 v5, v5, 0x1

    goto :goto_b3

    .line 1456
    .end local v0    # "count":I
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "ev":Ljava/lang/Object;
    .end local v6    # "listener":Ljava/lang/Object;
    :cond_bb
    monitor-enter p0

    .line 1457
    const/4 v10, 0x0

    :try_start_bd
    iput-boolean v10, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z
    :try_end_bf
    .catchall {:try_start_bd .. :try_end_bf} :catchall_c1

    monitor-exit p0

    .line 1459
    return-void

    .line 1456
    :catchall_c1
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 8
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 464
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 465
    if-eqz p1, :cond_20

    .line 466
    move-object v1, p1

    .line 467
    .local v1, "listener":Ljava/beans/PropertyChangeListener;
    iget-object v4, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    monitor-enter v4

    .line 468
    :try_start_a
    iget-object v3, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 469
    .local v2, "value":Ljava/lang/Integer;
    if-eqz v2, :cond_1f

    .line 472
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 473
    .local v0, "i":I
    if-ne v0, v5, :cond_21

    .line 474
    iget-object v3, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_2d

    .end local v0    # "i":I
    :cond_1f
    :goto_1f
    monitor-exit v4

    .line 482
    .end local v1    # "listener":Ljava/beans/PropertyChangeListener;
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_20
    return-void

    .line 476
    .restart local v0    # "i":I
    .restart local v1    # "listener":Ljava/beans/PropertyChangeListener;
    .restart local v2    # "value":Ljava/lang/Integer;
    :cond_21
    :try_start_21
    sget-boolean v3, Ljava/util/logging/LogManager;->-assertionsDisabled:Z

    if-nez v3, :cond_30

    if-gt v0, v5, :cond_30

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2d

    .line 467
    .end local v0    # "i":I
    .end local v2    # "value":Ljava/lang/Integer;
    :catchall_2d
    move-exception v3

    monitor-exit v4

    throw v3

    .line 477
    .restart local v0    # "i":I
    .restart local v2    # "value":Ljava/lang/Integer;
    :cond_30
    :try_start_30
    iget-object v3, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    add-int/lit8 v5, v0, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_2d

    goto :goto_1f
.end method

.method public reset()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1325
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 1326
    monitor-enter p0

    .line 1327
    :try_start_4
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    iput-object v5, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    .line 1330
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_3d

    monitor-exit p0

    .line 1332
    invoke-direct {p0}, Ljava/util/logging/LogManager;->contexts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cx$iterator":Ljava/util/Iterator;
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/LogManager$LoggerContext;

    .line 1333
    .local v0, "cx":Ljava/util/logging/LogManager$LoggerContext;
    invoke-virtual {v0}, Ljava/util/logging/LogManager$LoggerContext;->getLoggerNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 1334
    .local v2, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1335
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1336
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/logging/LogManager$LoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    .line 1337
    .local v3, "logger":Ljava/util/logging/Logger;
    if-eqz v3, :cond_27

    .line 1338
    invoke-direct {p0, v3}, Ljava/util/logging/LogManager;->resetLogger(Ljava/util/logging/Logger;)V

    goto :goto_27

    .line 1326
    .end local v0    # "cx":Ljava/util/logging/LogManager$LoggerContext;
    .end local v1    # "cx$iterator":Ljava/util/Iterator;
    .end local v2    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v3    # "logger":Ljava/util/logging/Logger;
    .end local v4    # "name":Ljava/lang/String;
    :catchall_3d
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1342
    .restart local v1    # "cx$iterator":Ljava/util/Iterator;
    :cond_40
    return-void
.end method
