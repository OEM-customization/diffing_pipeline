.class public Ljava/util/logging/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/LogManager$Beans;,
        Ljava/util/logging/LogManager$RootLogger;,
        Ljava/util/logging/LogManager$LogNode;,
        Ljava/util/logging/LogManager$LoggerWeakRef;,
        Ljava/util/logging/LogManager$SystemLoggerContext;,
        Ljava/util/logging/LogManager$LoggerContext;,
        Ljava/util/logging/LogManager$Cleaner;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist test-api LOGGING_MXBEAN_NAME:Ljava/lang/String; = "java.util.logging:type=Logging"

.field private static final greylist-max-o MAX_ITERATIONS:I = 0x190

.field private static final greylist-max-o defaultLevel:Ljava/util/logging/Level;

.field private static greylist-max-o loggingMXBean:Ljava/util/logging/LoggingMXBean;

.field private static final greylist-max-o manager:Ljava/util/logging/LogManager;


# instance fields
.field private greylist-max-o contextsMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/logging/LogManager$LoggerContext;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o controlPermission:Ljava/security/Permission;

.field private greylist-max-o deathImminent:Z

.field private volatile greylist-max-o initializationDone:Z

.field private greylist-max-o initializedCalled:Z

.field private greylist-max-o initializedGlobalHandlers:Z

.field private final greylist-max-o listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o loggerRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o props:Ljava/util/Properties;

.field private volatile greylist-max-o readPrimordialConfiguration:Z

.field private volatile greylist-max-o rootLogger:Ljava/util/logging/Logger;

.field private final greylist-max-o systemContext:Ljava/util/logging/LogManager$LoggerContext;

.field private final greylist-max-o userContext:Ljava/util/logging/LogManager$LoggerContext;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 144
    nop

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

    .line 1706
    const/4 v0, 0x0

    sput-object v0, Ljava/util/logging/LogManager;->loggingMXBean:Ljava/util/logging/LoggingMXBean;

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 243
    invoke-static {}, Ljava/util/logging/LogManager;->checkSubclassPermissions()Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/logging/LogManager;-><init>(Ljava/lang/Void;)V

    .line 244
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Void;)V
    .registers 5
    .param p1, "checked"    # Ljava/lang/Void;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    .line 163
    new-instance v0, Ljava/util/logging/LogManager$SystemLoggerContext;

    invoke-direct {v0, p0}, Ljava/util/logging/LogManager$SystemLoggerContext;-><init>(Ljava/util/logging/LogManager;)V

    iput-object v0, p0, Ljava/util/logging/LogManager;->systemContext:Ljava/util/logging/LogManager$LoggerContext;

    .line 164
    new-instance v0, Ljava/util/logging/LogManager$LoggerContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/logging/LogManager$LoggerContext;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$1;)V

    iput-object v0, p0, Ljava/util/logging/LogManager;->userContext:Ljava/util/logging/LogManager$LoggerContext;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/LogManager;->initializedCalled:Z

    .line 288
    iput-boolean v0, p0, Ljava/util/logging/LogManager;->initializationDone:Z

    .line 486
    iput-object v1, p0, Ljava/util/logging/LogManager;->contextsMap:Ljava/util/WeakHashMap;

    .line 976
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/util/logging/LogManager;->loggerRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1586
    new-instance v0, Ljava/util/logging/LoggingPermission;

    const-string v2, "control"

    invoke-direct {v0, v2, v1}, Ljava/util/logging/LoggingPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/logging/LogManager;->controlPermission:Ljava/security/Permission;

    .line 250
    :try_start_3a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/util/logging/LogManager$Cleaner;

    invoke-direct {v2, p0, v1}, Ljava/util/logging/LogManager$Cleaner;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$1;)V

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
    :try_end_46
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_46} :catch_47

    .line 254
    goto :goto_48

    .line 251
    :catch_47
    move-exception v0

    .line 255
    :goto_48
    return-void
.end method

.method static synthetic blacklist access$100(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 144
    invoke-static {p0}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$1100()Ljava/util/logging/Level;
    .registers 1

    .line 144
    sget-object v0, Ljava/util/logging/LogManager;->defaultLevel:Ljava/util/logging/Level;

    return-object v0
.end method

.method static synthetic blacklist access$1200(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    .registers 2
    .param p0, "x0"    # Ljava/util/logging/Logger;
    .param p1, "x1"    # Ljava/util/logging/Level;

    .line 144
    invoke-static {p0, p1}, Ljava/util/logging/LogManager;->doSetLevel(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    return-void
.end method

.method static synthetic blacklist access$1300(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .registers 2
    .param p0, "x0"    # Ljava/util/logging/Logger;
    .param p1, "x1"    # Ljava/util/logging/Logger;

    .line 144
    invoke-static {p0, p1}, Ljava/util/logging/LogManager;->doSetParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    return-void
.end method

.method static synthetic blacklist access$1400(Ljava/util/logging/LogManager;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Ljava/util/logging/LogManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 144
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager;->parseClassNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$1500(Ljava/util/logging/LogManager;)Ljava/lang/ref/ReferenceQueue;
    .registers 2
    .param p0, "x0"    # Ljava/util/logging/LogManager;

    .line 144
    iget-object v0, p0, Ljava/util/logging/LogManager;->loggerRefQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic blacklist access$1600(Ljava/util/logging/LogManager;)V
    .registers 1
    .param p0, "x0"    # Ljava/util/logging/LogManager;

    .line 144
    invoke-direct {p0}, Ljava/util/logging/LogManager;->initializeGlobalHandlers()V

    return-void
.end method

.method static synthetic blacklist access$200()Ljava/util/logging/LogManager;
    .registers 1

    .line 144
    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    return-object v0
.end method

.method static synthetic blacklist access$302(Ljava/util/logging/LogManager;Z)Z
    .registers 2
    .param p0, "x0"    # Ljava/util/logging/LogManager;
    .param p1, "x1"    # Z

    .line 144
    iput-boolean p1, p0, Ljava/util/logging/LogManager;->deathImminent:Z

    return p1
.end method

.method static synthetic blacklist access$402(Ljava/util/logging/LogManager;Z)Z
    .registers 2
    .param p0, "x0"    # Ljava/util/logging/LogManager;
    .param p1, "x1"    # Z

    .line 144
    iput-boolean p1, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z

    return p1
.end method

.method static synthetic blacklist access$600(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;
    .registers 2
    .param p0, "x0"    # Ljava/util/logging/LogManager;

    .line 144
    iget-object v0, p0, Ljava/util/logging/LogManager;->rootLogger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic blacklist access$602(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)Ljava/util/logging/Logger;
    .registers 2
    .param p0, "x0"    # Ljava/util/logging/LogManager;
    .param p1, "x1"    # Ljava/util/logging/Logger;

    .line 144
    iput-object p1, p0, Ljava/util/logging/LogManager;->rootLogger:Ljava/util/logging/Logger;

    return-object p1
.end method

.method static synthetic blacklist access$700(Ljava/util/logging/LogManager;)Z
    .registers 2
    .param p0, "x0"    # Ljava/util/logging/LogManager;

    .line 144
    iget-boolean v0, p0, Ljava/util/logging/LogManager;->initializedCalled:Z

    return v0
.end method

.method static synthetic blacklist access$800(Ljava/util/logging/LogManager;)Z
    .registers 2
    .param p0, "x0"    # Ljava/util/logging/LogManager;

    .line 144
    iget-boolean v0, p0, Ljava/util/logging/LogManager;->initializationDone:Z

    return v0
.end method

.method static synthetic blacklist access$900(Ljava/util/logging/LogManager;)V
    .registers 1
    .param p0, "x0"    # Ljava/util/logging/LogManager;

    .line 144
    invoke-direct {p0}, Ljava/util/logging/LogManager;->readPrimordialConfiguration()V

    return-void
.end method

.method private static greylist-max-o checkSubclassPermissions()Ljava/lang/Void;
    .registers 3

    .line 258
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 259
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1a

    .line 264
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "shutdownHooks"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 265
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "setContextClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 267
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o contexts()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/logging/LogManager$LoggerContext;",
            ">;"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v0, "cxs":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/LogManager$LoggerContext;>;"
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->getSystemContext()Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-direct {p0}, Ljava/util/logging/LogManager;->getUserContext()Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    return-object v0
.end method

.method private static greylist-max-o doSetLevel(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    .registers 4
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "level"    # Ljava/util/logging/Level;

    .line 1156
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1157
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-nez v0, :cond_a

    .line 1159
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 1160
    return-void

    .line 1164
    :cond_a
    new-instance v1, Ljava/util/logging/LogManager$6;

    invoke-direct {v1, p0, p1}, Ljava/util/logging/LogManager$6;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 1170
    return-void
.end method

.method private static greylist-max-o doSetParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .registers 4
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "parent"    # Ljava/util/logging/Logger;

    .line 1175
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1176
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-nez v0, :cond_a

    .line 1178
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->setParent(Ljava/util/logging/Logger;)V

    .line 1179
    return-void

    .line 1183
    :cond_a
    new-instance v1, Ljava/util/logging/LogManager$7;

    invoke-direct {v1, p0, p1}, Ljava/util/logging/LogManager$7;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 1189
    return-void
.end method

.method private static greylist-max-o getClassInstance(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "cname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 589
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 590
    :catch_9
    move-exception v0

    .line 591
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getLogManager()Ljava/util/logging/LogManager;
    .registers 1

    .line 369
    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    if-eqz v0, :cond_7

    .line 370
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->ensureLogManagerInitialized()V

    .line 372
    :cond_7
    return-object v0
.end method

.method public static declared-synchronized whitelist test-api getLoggingMXBean()Ljava/util/logging/LoggingMXBean;
    .registers 2

    const-class v0, Ljava/util/logging/LogManager;

    monitor-enter v0

    .line 1728
    :try_start_3
    sget-object v1, Ljava/util/logging/LogManager;->loggingMXBean:Ljava/util/logging/LoggingMXBean;

    if-nez v1, :cond_e

    .line 1729
    new-instance v1, Ljava/util/logging/Logging;

    invoke-direct {v1}, Ljava/util/logging/Logging;-><init>()V

    sput-object v1, Ljava/util/logging/LogManager;->loggingMXBean:Ljava/util/logging/LoggingMXBean;

    .line 1731
    :cond_e
    sget-object v1, Ljava/util/logging/LogManager;->loggingMXBean:Ljava/util/logging/LoggingMXBean;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 1727
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private greylist-max-o getUserContext()Ljava/util/logging/LogManager$LoggerContext;
    .registers 2

    .line 492
    iget-object v0, p0, Ljava/util/logging/LogManager;->userContext:Ljava/util/logging/LogManager$LoggerContext;

    return-object v0
.end method

.method private declared-synchronized greylist-max-o initializeGlobalHandlers()V
    .registers 4

    monitor-enter p0

    .line 1571
    :try_start_1
    iget-boolean v0, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-eqz v0, :cond_7

    .line 1572
    monitor-exit p0

    return-void

    .line 1575
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z

    .line 1577
    iget-boolean v0, p0, Ljava/util/logging/LogManager;->deathImminent:Z
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1a

    if-eqz v0, :cond_10

    .line 1581
    monitor-exit p0

    return-void

    .line 1583
    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/util/logging/LogManager;->rootLogger:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    const-string v2, "handlers"

    invoke-direct {p0, v0, v1, v2}, Ljava/util/logging/LogManager;->loadLoggerHandlers(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1a

    .line 1584
    monitor-exit p0

    return-void

    .line 1570
    .end local p0    # "this":Ljava/util/logging/LogManager;
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private greylist-max-o loadLoggerHandlers(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handlersPropertyName"    # Ljava/lang/String;

    .line 937
    new-instance v0, Ljava/util/logging/LogManager$5;

    invoke-direct {v0, p0, p3, p1}, Ljava/util/logging/LogManager$5;-><init>(Ljava/util/logging/LogManager;Ljava/lang/String;Ljava/util/logging/Logger;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 971
    return-void
.end method

.method private greylist-max-o parseClassNames(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1361
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1362
    .local v0, "hands":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 1363
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1

    .line 1365
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1366
    const/4 v1, 0x0

    .line 1367
    .local v1, "ix":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1368
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4d

    .line 1369
    move v3, v1

    .line 1370
    .local v3, "end":I
    :goto_1b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_38

    .line 1371
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1372
    goto :goto_38

    .line 1374
    :cond_2c
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_35

    .line 1375
    goto :goto_38

    .line 1377
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1379
    :cond_38
    :goto_38
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1380
    .local v4, "word":Ljava/lang/String;
    add-int/lit8 v1, v3, 0x1

    .line 1381
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1382
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_49

    .line 1383
    goto :goto_14

    .line 1385
    :cond_49
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1386
    .end local v3    # "end":I
    .end local v4    # "word":Ljava/lang/String;
    goto :goto_14

    .line 1387
    :cond_4d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method private greylist-max-o readPrimordialConfiguration()V
    .registers 2

    .line 376
    iget-boolean v0, p0, Ljava/util/logging/LogManager;->readPrimordialConfiguration:Z

    if-nez v0, :cond_21

    .line 377
    monitor-enter p0

    .line 378
    :try_start_5
    iget-boolean v0, p0, Ljava/util/logging/LogManager;->readPrimordialConfiguration:Z

    if-nez v0, :cond_1c

    .line 382
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-nez v0, :cond_f

    .line 383
    monitor-exit p0

    return-void

    .line 385
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/LogManager;->readPrimordialConfiguration:Z
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_1e

    .line 388
    :try_start_12
    new-instance v0, Ljava/util/logging/LogManager$3;

    invoke-direct {v0, p0}, Ljava/util/logging/LogManager$3;-><init>(Ljava/util/logging/LogManager;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1b
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    .line 400
    goto :goto_1c

    .line 398
    :catch_1b
    move-exception v0

    .line 402
    :cond_1c
    :goto_1c
    :try_start_1c
    monitor-exit p0

    goto :goto_21

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v0

    .line 404
    :cond_21
    :goto_21
    return-void
.end method

.method private greylist-max-o resetLogger(Ljava/util/logging/Logger;)V
    .registers 6
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .line 1340
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    .line 1341
    .local v0, "targets":[Ljava/util/logging/Handler;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 1342
    aget-object v2, v0, v1

    .line 1343
    .local v2, "h":Ljava/util/logging/Handler;
    invoke-virtual {p1, v2}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    .line 1345
    :try_start_d
    invoke-virtual {v2}, Ljava/util/logging/Handler;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    .line 1348
    goto :goto_12

    .line 1346
    :catch_11
    move-exception v3

    .line 1341
    .end local v2    # "h":Ljava/util/logging/Handler;
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1350
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1351
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_29

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1353
    sget-object v2, Ljava/util/logging/LogManager;->defaultLevel:Ljava/util/logging/Level;

    invoke-virtual {p1, v2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    goto :goto_2d

    .line 1355
    :cond_29
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 1357
    :goto_2d
    return-void
.end method

.method private declared-synchronized greylist-max-o setLevelsOnExistingLoggers()V
    .registers 9

    monitor-enter p0

    .line 1681
    :try_start_1
    iget-object v0, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 1682
    .local v0, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1683
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1684
    .local v1, "key":Ljava/lang/String;
    const-string v2, ".level"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1686
    goto :goto_7

    .line 1688
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    .line 1689
    .local v2, "ix":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1690
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v4

    .line 1691
    .local v4, "level":Ljava/util/logging/Level;
    if-nez v4, :cond_45

    .line 1692
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad level value for property: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1693
    goto :goto_7

    .line 1695
    .end local p0    # "this":Ljava/util/logging/LogManager;
    :cond_45
    invoke-direct {p0}, Ljava/util/logging/LogManager;->contexts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/logging/LogManager$LoggerContext;

    .line 1696
    .local v6, "cx":Ljava/util/logging/LogManager$LoggerContext;
    invoke-virtual {v6, v3}, Ljava/util/logging/LogManager$LoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    .line 1697
    .local v7, "l":Ljava/util/logging/Logger;
    if-nez v7, :cond_60

    .line 1698
    goto :goto_4d

    .line 1700
    :cond_60
    invoke-virtual {v7, v4}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_67

    .line 1701
    .end local v6    # "cx":Ljava/util/logging/LogManager$LoggerContext;
    .end local v7    # "l":Ljava/util/logging/Logger;
    goto :goto_4d

    .line 1702
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "ix":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "level":Ljava/util/logging/Level;
    :cond_64
    goto :goto_7

    .line 1703
    :cond_65
    monitor-exit p0

    return-void

    .line 1680
    .end local v0    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :catchall_67
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public whitelist test-api addLogger(Ljava/util/logging/Logger;)Z
    .registers 6
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .line 1137
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2b

    .line 1141
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->drainLoggerRefQueueBounded()V

    .line 1142
    invoke-direct {p0}, Ljava/util/logging/LogManager;->getUserContext()Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v1

    .line 1143
    .local v1, "cx":Ljava/util/logging/LogManager$LoggerContext;
    invoke-virtual {v1, p1}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".handlers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Ljava/util/logging/LogManager;->loadLoggerHandlers(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const/4 v2, 0x1

    return v2

    .line 1149
    :cond_29
    const/4 v2, 0x0

    return v2

    .line 1139
    .end local v1    # "cx":Ljava/util/logging/LogManager$LoggerContext;
    :cond_2b
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public whitelist test-api addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 7
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 429
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/beans/PropertyChangeListener;

    .line 430
    .local v0, "listener":Ljava/beans/PropertyChangeListener;
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 431
    iget-object v1, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    monitor-enter v1

    .line 433
    :try_start_c
    iget-object v2, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 434
    .local v2, "value":Ljava/lang/Integer;
    const/4 v3, 0x1

    if-nez v2, :cond_18

    goto :goto_1d

    :cond_18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    :goto_1d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, v3

    .line 435
    iget-object v3, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    nop

    .end local v2    # "value":Ljava/lang/Integer;
    monitor-exit v1

    .line 437
    return-void

    .line 436
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method public whitelist test-api checkAccess()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1605
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 1606
    return-void
.end method

.method greylist-max-o checkPermission()V
    .registers 3

    .line 1589
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1590
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1591
    iget-object v1, p0, Ljava/util/logging/LogManager;->controlPermission:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1592
    :cond_b
    return-void
.end method

.method greylist-max-o demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .line 520
    .local p3, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 521
    .local v0, "result":Ljava/util/logging/Logger;
    if-nez v0, :cond_1e

    .line 523
    new-instance v7, Ljava/util/logging/Logger;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V

    .line 525
    .local v1, "newLogger":Ljava/util/logging/Logger;
    :cond_11
    invoke-virtual {p0, v1}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 528
    return-object v1

    .line 542
    :cond_18
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_11

    .line 545
    .end local v1    # "newLogger":Ljava/util/logging/Logger;
    :cond_1e
    return-object v0
.end method

.method greylist-max-o demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    .line 550
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->getSystemContext()Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/logging/LogManager$LoggerContext;->demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 561
    .local v0, "sysLogger":Ljava/util/logging/Logger;
    :goto_8
    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 563
    move-object v1, v0

    .local v1, "logger":Ljava/util/logging/Logger;
    goto :goto_14

    .line 565
    .end local v1    # "logger":Ljava/util/logging/Logger;
    :cond_10
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 567
    .restart local v1    # "logger":Ljava/util/logging/Logger;
    :goto_14
    if-eqz v1, :cond_29

    .line 570
    if-eq v1, v0, :cond_28

    invoke-virtual {v0}, Ljava/util/logging/Logger;->accessCheckedHandlers()[Ljava/util/logging/Handler;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_28

    .line 572
    move-object v2, v1

    .line 573
    .local v2, "l":Ljava/util/logging/Logger;
    new-instance v3, Ljava/util/logging/LogManager$4;

    invoke-direct {v3, p0, v2, v0}, Ljava/util/logging/LogManager$4;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 583
    .end local v2    # "l":Ljava/util/logging/Logger;
    :cond_28
    return-object v0

    .line 567
    :cond_29
    goto :goto_8
.end method

.method final greylist-max-o drainLoggerRefQueueBounded()V
    .registers 3

    .line 1105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x190

    if-ge v0, v1, :cond_19

    .line 1106
    iget-object v1, p0, Ljava/util/logging/LogManager;->loggerRefQueue:Ljava/lang/ref/ReferenceQueue;

    if-nez v1, :cond_a

    .line 1108
    goto :goto_19

    .line 1111
    :cond_a
    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 1112
    .local v1, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-nez v1, :cond_13

    .line 1113
    goto :goto_19

    .line 1116
    :cond_13
    invoke-virtual {v1}, Ljava/util/logging/LogManager$LoggerWeakRef;->dispose()V

    .line 1105
    .end local v1    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1118
    .end local v0    # "i":I
    :cond_19
    :goto_19
    return-void
.end method

.method final greylist-max-o ensureLogManagerInitialized()V
    .registers 5

    .line 290
    move-object v0, p0

    .line 291
    .local v0, "owner":Ljava/util/logging/LogManager;
    iget-boolean v1, p0, Ljava/util/logging/LogManager;->initializationDone:Z

    if-nez v1, :cond_34

    sget-object v1, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    if-eq v0, v1, :cond_a

    goto :goto_34

    .line 305
    :cond_a
    monitor-enter p0

    .line 309
    :try_start_b
    iget-boolean v1, p0, Ljava/util/logging/LogManager;->initializedCalled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    move v1, v2

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 311
    .local v1, "isRecursiveInitialization":Z
    :goto_13
    nop

    .line 314
    if-nez v1, :cond_2f

    iget-boolean v3, p0, Ljava/util/logging/LogManager;->initializationDone:Z

    if-eqz v3, :cond_1b

    goto :goto_2f

    .line 328
    :cond_1b
    iput-boolean v2, p0, Ljava/util/logging/LogManager;->initializedCalled:Z
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_31

    .line 330
    :try_start_1d
    new-instance v3, Ljava/util/logging/LogManager$2;

    invoke-direct {v3, p0, v0}, Ljava/util/logging/LogManager$2;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_2a

    .line 359
    :try_start_25
    iput-boolean v2, p0, Ljava/util/logging/LogManager;->initializationDone:Z

    .line 360
    nop

    .line 361
    .end local v1    # "isRecursiveInitialization":Z
    monitor-exit p0

    .line 362
    return-void

    .line 359
    .restart local v1    # "isRecursiveInitialization":Z
    :catchall_2a
    move-exception v3

    iput-boolean v2, p0, Ljava/util/logging/LogManager;->initializationDone:Z

    .line 360
    nop

    .end local v0    # "owner":Ljava/util/logging/LogManager;
    .end local p0    # "this":Ljava/util/logging/LogManager;
    throw v3

    .line 323
    .restart local v0    # "owner":Ljava/util/logging/LogManager;
    .restart local p0    # "this":Ljava/util/logging/LogManager;
    :cond_2f
    :goto_2f
    monitor-exit p0

    return-void

    .line 361
    .end local v1    # "isRecursiveInitialization":Z
    :catchall_31
    move-exception v1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_31

    throw v1

    .line 294
    :cond_34
    :goto_34
    return-void
.end method

.method greylist-max-o getBooleanProperty(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 1497
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1498
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 1499
    return p2

    .line 1501
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1502
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_30

    .line 1504
    :cond_1c
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_2e

    .line 1507
    :cond_2d
    return p2

    .line 1505
    :cond_2e
    :goto_2e
    const/4 v1, 0x0

    return v1

    .line 1503
    :cond_30
    :goto_30
    const/4 v1, 0x1

    return v1
.end method

.method greylist-max-o getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/logging/Filter;

    .line 1527
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1529
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 1533
    :try_start_6
    invoke-static {v0}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Filter;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    return-object v1

    .line 1535
    :catch_11
    move-exception v1

    goto :goto_14

    .line 1539
    :cond_13
    nop

    .line 1541
    :goto_14
    return-object p2
.end method

.method greylist-max-r getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/logging/Formatter;

    .line 1550
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1552
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 1556
    :try_start_6
    invoke-static {v0}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Formatter;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    return-object v1

    .line 1558
    :catch_11
    move-exception v1

    goto :goto_14

    .line 1562
    :cond_13
    nop

    .line 1564
    :goto_14
    return-object p2
.end method

.method greylist-max-o getIntProperty(Ljava/lang/String;I)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 1482
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1483
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 1484
    return p2

    .line 1487
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return v1

    .line 1488
    :catch_10
    move-exception v1

    .line 1489
    .local v1, "ex":Ljava/lang/Exception;
    return p2
.end method

.method greylist-max-o getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/logging/Level;

    .line 1514
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1515
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 1516
    return-object p2

    .line 1518
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Level;->findLevel(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v1

    .line 1519
    .local v1, "l":Ljava/util/logging/Level;
    if-eqz v1, :cond_13

    move-object v2, v1

    goto :goto_14

    :cond_13
    move-object v2, p2

    :goto_14
    return-object v2
.end method

.method public whitelist test-api getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1207
    invoke-direct {p0}, Ljava/util/logging/LogManager;->getUserContext()Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/logging/LogManager$LoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLoggerNames()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1227
    invoke-direct {p0}, Ljava/util/logging/LogManager;->getUserContext()Ljava/util/logging/LogManager$LoggerContext;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager$LoggerContext;->getLoggerNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1464
    iget-object v0, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 1471
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1472
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 1473
    return-object p2

    .line 1475
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method final greylist-max-o getSystemContext()Ljava/util/logging/LogManager$LoggerContext;
    .registers 2

    .line 497
    iget-object v0, p0, Ljava/util/logging/LogManager;->systemContext:Ljava/util/logging/LogManager$LoggerContext;

    return-object v0
.end method

.method public whitelist test-api readConfiguration()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1247
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 1250
    const-string v0, "java.util.logging.config.class"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1251
    .local v0, "cname":Ljava/lang/String;
    if-eqz v0, :cond_45

    .line 1257
    :try_start_b
    invoke-static {v0}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_13

    .line 1258
    return-void

    .line 1259
    :catch_13
    move-exception v1

    .line 1260
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logging configuration class \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1261
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1266
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_45
    const-string v1, "java.util.logging.config.file"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1267
    .local v1, "fname":Ljava/lang/String;
    const-string v2, "logging.properties"

    if-nez v1, :cond_71

    .line 1268
    const-string v3, "java.home"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1269
    if-eqz v1, :cond_69

    .line 1272
    new-instance v3, Ljava/io/File;

    const-string v4, "lib"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    .local v3, "f":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v4

    .line 1274
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_71

    .line 1270
    .end local v3    # "f":Ljava/io/File;
    :cond_69
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Can\'t find java.home ??"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1287
    :cond_71
    :goto_71
    :try_start_71
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_76} :catch_78

    move-object v2, v3

    .line 1293
    .local v2, "in":Ljava/io/InputStream;
    goto :goto_81

    .line 1288
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_78
    move-exception v3

    .line 1289
    .local v3, "e":Ljava/lang/Exception;
    const-class v4, Ljava/util/logging/LogManager;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1290
    .restart local v2    # "in":Ljava/io/InputStream;
    if-eqz v2, :cond_96

    .line 1295
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_81
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1297
    .local v3, "bin":Ljava/io/BufferedInputStream;
    :try_start_86
    invoke-virtual {p0, v3}, Ljava/util/logging/LogManager;->readConfiguration(Ljava/io/InputStream;)V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8f

    .line 1299
    if-eqz v2, :cond_8e

    .line 1300
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1304
    :cond_8e
    return-void

    .line 1299
    :catchall_8f
    move-exception v4

    if-eqz v2, :cond_95

    .line 1300
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1302
    :cond_95
    throw v4

    .line 1291
    .local v3, "e":Ljava/lang/Exception;
    :cond_96
    throw v3
.end method

.method public whitelist test-api readConfiguration(Ljava/io/InputStream;)V
    .registers 10
    .param p1, "ins"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1404
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 1405
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->reset()V

    .line 1408
    iget-object v0, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1410
    const-string v0, "config"

    invoke-direct {p0, v0}, Ljava/util/logging/LogManager;->parseClassNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1412
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v2, v0

    if-ge v1, v2, :cond_54

    .line 1413
    aget-object v2, v0, v1

    .line 1418
    .local v2, "word":Ljava/lang/String;
    :try_start_17
    invoke-static {v2}, Ljava/util/logging/LogManager;->getClassInstance(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f

    .line 1423
    goto :goto_51

    .line 1419
    :catch_1f
    move-exception v3

    .line 1420
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t load config class \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1421
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1412
    .end local v2    # "word":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1427
    .end local v1    # "i":I
    :cond_54
    invoke-direct {p0}, Ljava/util/logging/LogManager;->setLevelsOnExistingLoggers()V

    .line 1432
    const/4 v1, 0x0

    .line 1433
    .local v1, "listeners":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Integer;>;"
    iget-object v2, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    monitor-enter v2

    .line 1434
    :try_start_5b
    iget-object v3, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6b

    .line 1435
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v3

    .line 1436
    :cond_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_5b .. :try_end_6c} :catchall_ab

    .line 1437
    if-eqz v1, :cond_a2

    .line 1438
    nop

    .line 1439
    const-class v2, Ljava/util/logging/LogManager;

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v3}, Ljava/util/logging/LogManager$Beans;->newPropertyChangeEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1440
    .local v2, "ev":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1441
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 1442
    .local v5, "listener":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1443
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_99
    if-ge v7, v6, :cond_a1

    .line 1444
    invoke-static {v5, v2}, Ljava/util/logging/LogManager$Beans;->invokePropertyChange(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1443
    add-int/lit8 v7, v7, 0x1

    goto :goto_99

    .line 1446
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v5    # "listener":Ljava/lang/Object;
    .end local v6    # "count":I
    .end local v7    # "i":I
    :cond_a1
    goto :goto_7e

    .line 1452
    .end local v2    # "ev":Ljava/lang/Object;
    :cond_a2
    monitor-enter p0

    .line 1453
    const/4 v2, 0x0

    :try_start_a4
    iput-boolean v2, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z

    .line 1454
    monitor-exit p0

    .line 1455
    return-void

    .line 1454
    :catchall_a8
    move-exception v2

    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_a4 .. :try_end_aa} :catchall_a8

    throw v2

    .line 1436
    :catchall_ab
    move-exception v3

    :try_start_ac
    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v3
.end method

.method public whitelist test-api removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 8
    .param p1, "l"    # Ljava/beans/PropertyChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 465
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 466
    if-eqz p1, :cond_31

    .line 467
    move-object v0, p1

    .line 468
    .local v0, "listener":Ljava/beans/PropertyChangeListener;
    iget-object v1, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    monitor-enter v1

    .line 469
    :try_start_9
    iget-object v2, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 470
    .local v2, "value":Ljava/lang/Integer;
    if-eqz v2, :cond_2c

    .line 473
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 474
    .local v3, "i":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    .line 475
    iget-object v4, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 477
    :cond_20
    nop

    .line 478
    iget-object v4, p0, Ljava/util/logging/LogManager;->listenerMap:Ljava/util/Map;

    add-int/lit8 v5, v3, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .end local v2    # "value":Ljava/lang/Integer;
    .end local v3    # "i":I
    :cond_2c
    :goto_2c
    monitor-exit v1

    goto :goto_31

    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_2e

    throw v2

    .line 483
    .end local v0    # "listener":Ljava/beans/PropertyChangeListener;
    :cond_31
    :goto_31
    return-void
.end method

.method public whitelist test-api reset()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1318
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 1319
    monitor-enter p0

    .line 1320
    :try_start_4
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    .line 1323
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/LogManager;->initializedGlobalHandlers:Z

    .line 1324
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_3f

    .line 1325
    invoke-direct {p0}, Ljava/util/logging/LogManager;->contexts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/LogManager$LoggerContext;

    .line 1326
    .local v1, "cx":Ljava/util/logging/LogManager$LoggerContext;
    invoke-virtual {v1}, Ljava/util/logging/LogManager$LoggerContext;->getLoggerNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 1327
    .local v2, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_27
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1328
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1329
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/logging/LogManager$LoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    .line 1330
    .local v4, "logger":Ljava/util/logging/Logger;
    if-eqz v4, :cond_3c

    .line 1331
    invoke-direct {p0, v4}, Ljava/util/logging/LogManager;->resetLogger(Ljava/util/logging/Logger;)V

    .line 1333
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "logger":Ljava/util/logging/Logger;
    :cond_3c
    goto :goto_27

    .line 1334
    .end local v1    # "cx":Ljava/util/logging/LogManager$LoggerContext;
    .end local v2    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3d
    goto :goto_17

    .line 1335
    :cond_3e
    return-void

    .line 1324
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0
.end method
