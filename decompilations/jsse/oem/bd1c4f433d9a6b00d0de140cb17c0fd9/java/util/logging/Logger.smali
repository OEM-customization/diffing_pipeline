.class public Ljava/util/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/Logger$LoggerBundle;,
        Ljava/util/logging/Logger$SystemLoggerHelper;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final GLOBAL_LOGGER_NAME:Ljava/lang/String; = "global"

.field private static final NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

.field private static final SYSTEM_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

.field static final SYSTEM_LOGGER_RB_NAME:Ljava/lang/String; = "sun.util.logging.resources.logging"

.field private static final emptyHandlers:[Ljava/util/logging/Handler;

.field public static final global:Ljava/util/logging/Logger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final offValue:I

.field private static final treeLock:Ljava/lang/Object;


# instance fields
.field private anonymous:Z

.field private callersClassLoaderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private catalog:Ljava/util/ResourceBundle;

.field private catalogLocale:Ljava/util/Locale;

.field private catalogName:Ljava/lang/String;

.field private volatile filter:Ljava/util/logging/Filter;

.field private final handlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/util/logging/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final isSystemLogger:Z

.field private kids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/logging/LogManager$LoggerWeakRef;",
            ">;"
        }
    .end annotation
.end field

.field private volatile levelObject:Ljava/util/logging/Level;

.field private volatile levelValue:I

.field private volatile loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

.field private volatile manager:Ljava/util/logging/LogManager;

.field private name:Ljava/lang/String;

.field private volatile parent:Ljava/util/logging/Logger;

.field private volatile useParentHandlers:Z


# direct methods
.method static synthetic -get0()Ljava/util/logging/Logger$LoggerBundle;
    .registers 1

    sget-object v0, Ljava/util/logging/Logger;->NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/logging/Logger$LoggerBundle;
    .registers 1

    sget-object v0, Ljava/util/logging/Logger;->SYSTEM_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const-class v0, Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/logging/Logger;->-assertionsDisabled:Z

    .line 220
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/logging/Handler;

    sput-object v0, Ljava/util/logging/Logger;->emptyHandlers:[Ljava/util/logging/Handler;

    .line 221
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    sput v0, Ljava/util/logging/Logger;->offValue:I

    .line 250
    new-instance v0, Ljava/util/logging/Logger$LoggerBundle;

    const-string/jumbo v1, "sun.util.logging.resources.logging"

    invoke-direct {v0, v1, v2, v2}, Ljava/util/logging/Logger$LoggerBundle;-><init>(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/util/logging/Logger$LoggerBundle;)V

    .line 249
    sput-object v0, Ljava/util/logging/Logger;->SYSTEM_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    .line 255
    new-instance v0, Ljava/util/logging/Logger$LoggerBundle;

    invoke-direct {v0, v2, v2, v2}, Ljava/util/logging/Logger$LoggerBundle;-><init>(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/util/logging/Logger$LoggerBundle;)V

    .line 254
    sput-object v0, Ljava/util/logging/Logger;->NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    .line 273
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    .line 355
    new-instance v0, Ljava/util/logging/Logger;

    const-string/jumbo v1, "global"

    invoke-direct {v0, v1}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    .line 219
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 259
    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 261
    sget-object v0, Ljava/util/logging/Logger;->NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    iput-object v0, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    .line 262
    iput-boolean v1, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    .line 406
    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    .line 407
    iput-boolean v1, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    .line 408
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iput v0, p0, Ljava/util/logging/Logger;->levelValue:I

    .line 409
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V

    .line 376
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;
    .param p4, "manager"    # Ljava/util/logging/LogManager;
    .param p5, "isSystemLogger"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/logging/LogManager;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p3, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 259
    iput-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 261
    sget-object v0, Ljava/util/logging/Logger;->NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    iput-object v0, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    .line 379
    iput-object p4, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    .line 380
    iput-boolean p5, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    .line 381
    invoke-direct {p0, p2, p3}, Ljava/util/logging/Logger;->setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 382
    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    .line 383
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iput v0, p0, Ljava/util/logging/Logger;->levelValue:I

    .line 384
    return-void
.end method

.method private checkPermission()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 418
    iget-boolean v0, p0, Ljava/util/logging/Logger;->anonymous:Z

    if-nez v0, :cond_13

    .line 419
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    if-nez v0, :cond_e

    .line 421
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    .line 423
    :cond_e
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 425
    :cond_13
    return-void
.end method

.method private static demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "resourceBundleName"    # Ljava/lang/String;
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
    .line 449
    .local p2, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 450
    .local v0, "manager":Ljava/util/logging/LogManager;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 451
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1b

    sget-boolean v2, Ljava/util/logging/Logger$SystemLoggerHelper;->disableCallerCheck:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1b

    .line 452
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 453
    invoke-virtual {v0, p0, p1}, Ljava/util/logging/LogManager;->demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    return-object v2

    .line 456
    :cond_1b
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/logging/LogManager;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v2

    return-object v2
.end method

.method private doLog(Ljava/util/logging/LogRecord;)V
    .registers 6
    .param p1, "lr"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 762
    iget-object v3, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 763
    invoke-direct {p0}, Ljava/util/logging/Logger;->getEffectiveLoggerBundle()Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v2

    .line 764
    .local v2, "lb":Ljava/util/logging/Logger$LoggerBundle;
    iget-object v0, v2, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;

    .line 765
    .local v0, "bundle":Ljava/util/ResourceBundle;
    iget-object v1, v2, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    .line 766
    .local v1, "ebname":Ljava/lang/String;
    if-eqz v1, :cond_17

    if-eqz v0, :cond_17

    .line 767
    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 770
    :cond_17
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 771
    return-void
.end method

.method private doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V
    .registers 4
    .param p1, "lr"    # Ljava/util/logging/LogRecord;
    .param p2, "rbname"    # Ljava/lang/String;

    .prologue
    .line 1093
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1094
    if-eqz p2, :cond_12

    .line 1095
    invoke-virtual {p1, p2}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1096
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 1098
    :cond_12
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1099
    return-void
.end method

.method private doLog(Ljava/util/logging/LogRecord;Ljava/util/ResourceBundle;)V
    .registers 4
    .param p1, "lr"    # Ljava/util/logging/LogRecord;
    .param p2, "rb"    # Ljava/util/ResourceBundle;

    .prologue
    .line 1103
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1104
    if-eqz p2, :cond_11

    .line 1105
    invoke-virtual {p2}, Ljava/util/ResourceBundle;->getBaseBundleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p1, p2}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 1108
    :cond_11
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1109
    return-void
.end method

.method private doSetParent(Ljava/util/logging/Logger;)V
    .registers 11
    .param p1, "newParent"    # Ljava/util/logging/Logger;

    .prologue
    .line 2052
    sget-object v6, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2055
    const/4 v3, 0x0

    .line 2056
    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :try_start_4
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    if-eqz v5, :cond_68

    .line 2058
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v5, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    .line 2059
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/logging/LogManager$LoggerWeakRef;

    move-object v3, v0

    .line 2060
    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    invoke-virtual {v3}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/logging/Logger;

    .line 2061
    .local v2, "kid":Ljava/util/logging/Logger;
    if-ne v2, p0, :cond_5e

    .line 2063
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_60

    move-object v4, v3

    .line 2073
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    .end local v2    # "kid":Ljava/util/logging/Logger;
    .end local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .local v4, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :goto_2a
    :try_start_2a
    iput-object p1, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 2074
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v5, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    if-nez v5, :cond_3c

    .line 2075
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    .line 2077
    :cond_3c
    if-nez v4, :cond_66

    .line 2079
    new-instance v3, Ljava/util/logging/LogManager$LoggerWeakRef;

    iget-object v5, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v5, p0}, Ljava/util/logging/LogManager$LoggerWeakRef;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)V
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_63

    .line 2081
    .end local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .restart local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :goto_48
    :try_start_48
    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    invoke-direct {v5, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/logging/LogManager$LoggerWeakRef;->setParentRef(Ljava/lang/ref/WeakReference;)V

    .line 2082
    iget-object v5, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget-object v5, v5, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2086
    invoke-direct {p0}, Ljava/util/logging/Logger;->updateEffectiveLevel()V
    :try_end_5c
    .catchall {:try_start_48 .. :try_end_5c} :catchall_60

    monitor-exit v6

    .line 2089
    return-void

    .line 2066
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    .restart local v2    # "kid":Ljava/util/logging/Logger;
    :cond_5e
    const/4 v3, 0x0

    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    goto :goto_10

    .line 2052
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    .end local v2    # "kid":Ljava/util/logging/Logger;
    .end local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :catchall_60
    move-exception v5

    :goto_61
    monitor-exit v6

    throw v5

    .restart local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :catchall_63
    move-exception v5

    move-object v3, v4

    .end local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    goto :goto_61

    .end local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .restart local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :cond_66
    move-object v3, v4

    .end local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .restart local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    goto :goto_48

    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :cond_68
    move-object v4, v3

    .restart local v4    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    goto :goto_2a
.end method

.method private declared-synchronized findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "useCallersClassLoader"    # Z

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 1855
    if-nez p1, :cond_6

    monitor-exit p0

    .line 1856
    return-object v6

    .line 1859
    :cond_6
    :try_start_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 1860
    .local v2, "currentLocale":Ljava/util/Locale;
    iget-object v4, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    .line 1863
    .local v4, "lb":Ljava/util/logging/Logger$LoggerBundle;
    iget-object v5, v4, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;

    if-eqz v5, :cond_1c

    .line 1864
    iget-object v5, v4, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1863
    if-eqz v5, :cond_1c

    .line 1865
    iget-object v5, v4, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_87

    monitor-exit p0

    return-object v5

    .line 1866
    :cond_1c
    :try_start_1c
    iget-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    if-eqz v5, :cond_34

    iget-object v5, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1867
    iget-object v5, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1866
    if-eqz v5, :cond_34

    .line 1868
    iget-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_87

    monitor-exit p0

    return-object v5

    .line 1871
    :cond_34
    :try_start_34
    const-string/jumbo v5, "sun.util.logging.resources.logging"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 1872
    invoke-static {v2}, Ljava/util/logging/Logger;->findSystemResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v5

    iput-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    .line 1873
    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    .line 1874
    iput-object v2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    .line 1875
    iget-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_49
    .catchall {:try_start_34 .. :try_end_49} :catchall_87

    monitor-exit p0

    return-object v5

    .line 1880
    :cond_4b
    :try_start_4b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1881
    .local v1, "cl":Ljava/lang/ClassLoader;
    if-nez v1, :cond_59

    .line 1882
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_87

    move-result-object v1

    .line 1885
    :cond_59
    :try_start_59
    invoke-static {p1, v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v5

    iput-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    .line 1886
    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    .line 1887
    iput-object v2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    .line 1888
    iget-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_65
    .catch Ljava/util/MissingResourceException; {:try_start_59 .. :try_end_65} :catch_67
    .catchall {:try_start_59 .. :try_end_65} :catchall_87

    monitor-exit p0

    return-object v5

    .line 1889
    :catch_67
    move-exception v3

    .line 1894
    .local v3, "ex":Ljava/util/MissingResourceException;
    if-eqz p2, :cond_85

    .line 1896
    :try_start_6a
    invoke-direct {p0}, Ljava/util/logging/Logger;->getCallersClassLoader()Ljava/lang/ClassLoader;
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_87

    move-result-object v0

    .line 1897
    .local v0, "callersClassLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_72

    if-ne v0, v1, :cond_74

    :cond_72
    monitor-exit p0

    .line 1898
    return-object v6

    .line 1902
    :cond_74
    :try_start_74
    invoke-static {p1, v2, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v5

    iput-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;

    .line 1904
    iput-object p1, p0, Ljava/util/logging/Logger;->catalogName:Ljava/lang/String;

    .line 1905
    iput-object v2, p0, Ljava/util/logging/Logger;->catalogLocale:Ljava/util/Locale;

    .line 1906
    iget-object v5, p0, Ljava/util/logging/Logger;->catalog:Ljava/util/ResourceBundle;
    :try_end_80
    .catch Ljava/util/MissingResourceException; {:try_start_74 .. :try_end_80} :catch_82
    .catchall {:try_start_74 .. :try_end_80} :catchall_87

    monitor-exit p0

    return-object v5

    .line 1907
    :catch_82
    move-exception v3

    monitor-exit p0

    .line 1908
    return-object v6

    .end local v0    # "callersClassLoader":Ljava/lang/ClassLoader;
    :cond_85
    monitor-exit p0

    .line 1911
    return-object v6

    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "currentLocale":Ljava/util/Locale;
    .end local v3    # "ex":Ljava/util/MissingResourceException;
    .end local v4    # "lb":Ljava/util/logging/Logger$LoggerBundle;
    :catchall_87
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private static findSystemResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1820
    new-instance v0, Ljava/util/logging/Logger$1;

    invoke-direct {v0, p0}, Ljava/util/logging/Logger$1;-><init>(Ljava/util/Locale;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public static getAnonymousLogger()Ljava/util/logging/Logger;
    .registers 1

    .prologue
    .line 607
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/logging/Logger;->getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 8
    .param p0, "resourceBundleName"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 641
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v4

    .line 643
    .local v4, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {v4}, Ljava/util/logging/LogManager;->drainLoggerRefQueueBounded()V

    .line 645
    new-instance v0, Ljava/util/logging/Logger;

    .line 646
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v3

    .line 645
    const/4 v1, 0x0

    .line 646
    const/4 v5, 0x0

    move-object v2, p0

    .line 645
    invoke-direct/range {v0 .. v5}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V

    .line 647
    .local v0, "result":Ljava/util/logging/Logger;
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/logging/Logger;->anonymous:Z

    .line 648
    const-string/jumbo v1, ""

    invoke-virtual {v4, v1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    .line 649
    .local v6, "root":Ljava/util/logging/Logger;
    invoke-direct {v0, v6}, Ljava/util/logging/Logger;->doSetParent(Ljava/util/logging/Logger;)V

    .line 650
    return-object v0
.end method

.method private getCallersClassLoader()Ljava/lang/ClassLoader;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 396
    iget-object v1, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_d

    .line 397
    iget-object v0, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 396
    :cond_d
    return-object v0
.end method

.method private getEffectiveLoggerBundle()Ljava/util/logging/Logger$LoggerBundle;
    .registers 7

    .prologue
    .line 2151
    iget-object v1, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    .line 2152
    .local v1, "lb":Ljava/util/logging/Logger$LoggerBundle;
    invoke-virtual {v1}, Ljava/util/logging/Logger$LoggerBundle;->isSystemBundle()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2153
    sget-object v5, Ljava/util/logging/Logger;->SYSTEM_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    return-object v5

    .line 2157
    :cond_b
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v0

    .line 2158
    .local v0, "b":Ljava/util/ResourceBundle;
    if-eqz v0, :cond_16

    iget-object v5, v1, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;

    if-ne v0, v5, :cond_16

    .line 2159
    return-object v1

    .line 2160
    :cond_16
    if-eqz v0, :cond_21

    .line 2163
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    move-result-object v2

    .line 2164
    .local v2, "rbName":Ljava/lang/String;
    invoke-static {v2, v0}, Ljava/util/logging/Logger$LoggerBundle;->get(Ljava/lang/String;Ljava/util/ResourceBundle;)Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v5

    return-object v5

    .line 2169
    .end local v2    # "rbName":Ljava/lang/String;
    :cond_21
    iget-object v3, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 2170
    .local v3, "target":Ljava/util/logging/Logger;
    :goto_23
    if-eqz v3, :cond_5e

    .line 2171
    iget-object v4, v3, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    .line 2172
    .local v4, "trb":Ljava/util/logging/Logger$LoggerBundle;
    invoke-virtual {v4}, Ljava/util/logging/Logger$LoggerBundle;->isSystemBundle()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 2173
    sget-object v5, Ljava/util/logging/Logger;->SYSTEM_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    return-object v5

    .line 2175
    :cond_30
    iget-object v5, v4, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;

    if-eqz v5, :cond_35

    .line 2176
    return-object v4

    .line 2178
    :cond_35
    iget-boolean v5, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v5, :cond_4d

    .line 2181
    iget-boolean v5, v3, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v5, :cond_4b

    iget-object v2, v4, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    .line 2183
    :goto_3f
    if-eqz v2, :cond_52

    .line 2185
    const/4 v5, 0x1

    invoke-direct {p0, v2, v5}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v5

    .line 2184
    invoke-static {v2, v5}, Ljava/util/logging/Logger$LoggerBundle;->get(Ljava/lang/String;Ljava/util/ResourceBundle;)Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v5

    return-object v5

    .line 2181
    :cond_4b
    const/4 v2, 0x0

    .local v2, "rbName":Ljava/lang/String;
    goto :goto_3f

    .line 2182
    .end local v2    # "rbName":Ljava/lang/String;
    :cond_4d
    invoke-virtual {v3}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    move-result-object v2

    .local v2, "rbName":Ljava/lang/String;
    goto :goto_3f

    .line 2187
    .end local v2    # "rbName":Ljava/lang/String;
    :cond_52
    iget-boolean v5, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v5, :cond_59

    iget-object v3, v3, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    goto :goto_23

    :cond_59
    invoke-virtual {v3}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v3

    goto :goto_23

    .line 2189
    .end local v4    # "trb":Ljava/util/logging/Logger$LoggerBundle;
    :cond_5e
    sget-object v5, Ljava/util/logging/Logger;->NO_RESOURCE_BUNDLE:Ljava/util/logging/Logger$LoggerBundle;

    return-object v5
.end method

.method public static final getGlobal()Ljava/util/logging/Logger;
    .registers 1

    .prologue
    .line 322
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    .line 330
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 505
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/logging/Logger;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "resourceBundleName"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 556
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v0

    .line 557
    .local v0, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, v0}, Ljava/util/logging/Logger;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 568
    .local v1, "result":Ljava/util/logging/Logger;
    invoke-direct {v1, p1, v0}, Ljava/util/logging/Logger;->setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 569
    return-object v1
.end method

.method static getPlatformLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 576
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 580
    .local v0, "manager":Ljava/util/logging/LogManager;
    const-string/jumbo v2, "sun.util.logging.resources.logging"

    invoke-virtual {v0, p0, v2}, Ljava/util/logging/LogManager;->demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 581
    .local v1, "result":Ljava/util/logging/Logger;
    return-object v1
.end method

.method private setCallersClassLoaderRef(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_10

    .line 388
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 390
    :goto_6
    if-eqz v0, :cond_f

    .line 391
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    .line 393
    :cond_f
    return-void

    .line 389
    :cond_10
    const/4 v0, 0x0

    .local v0, "callersClassLoader":Ljava/lang/ClassLoader;
    goto :goto_6
.end method

.method private declared-synchronized setupResourceInfo(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "callersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 1923
    :try_start_1
    iget-object v0, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    .line 1924
    .local v0, "lb":Ljava/util/logging/Logger$LoggerBundle;
    iget-object v1, v0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 1927
    iget-object v1, v0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_31

    move-result v1

    if-eqz v1, :cond_11

    monitor-exit p0

    .line 1929
    return-void

    .line 1933
    :cond_11
    :try_start_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1933
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_31

    .end local v0    # "lb":Ljava/util/logging/Logger$LoggerBundle;
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1937
    .restart local v0    # "lb":Ljava/util/logging/Logger$LoggerBundle;
    :cond_34
    if-nez p1, :cond_38

    monitor-exit p0

    .line 1938
    return-void

    .line 1941
    :cond_38
    :try_start_38
    invoke-direct {p0, p2}, Ljava/util/logging/Logger;->setCallersClassLoaderRef(Ljava/lang/Class;)V

    .line 1942
    iget-boolean v1, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v1, :cond_48

    invoke-direct {p0}, Ljava/util/logging/Logger;->getCallersClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 1943
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 1945
    :cond_48
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v1

    if-nez v1, :cond_76

    .line 1949
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/Logger;->callersClassLoaderRef:Ljava/lang/ref/WeakReference;

    .line 1950
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bundle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1951
    const-string/jumbo v3, ""

    .line 1950
    invoke-direct {v1, v2, p1, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1955
    :cond_76
    sget-boolean v1, Ljava/util/logging/Logger;->-assertionsDisabled:Z

    if-nez v1, :cond_84

    iget-object v1, v0, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;

    if-eqz v1, :cond_84

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1956
    :cond_84
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/util/logging/Logger$LoggerBundle;->get(Ljava/lang/String;Ljava/util/ResourceBundle;)Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v1

    iput-object v1, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;
    :try_end_8b
    .catchall {:try_start_38 .. :try_end_8b} :catchall_31

    monitor-exit p0

    .line 1957
    return-void
.end method

.method private updateEffectiveLevel()V
    .registers 6

    .prologue
    .line 2114
    iget-object v4, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    if-eqz v4, :cond_f

    .line 2115
    iget-object v4, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    invoke-virtual {v4}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    .line 2126
    .local v2, "newLevelValue":I
    :goto_a
    iget v4, p0, Ljava/util/logging/Logger;->levelValue:I

    if-ne v4, v2, :cond_1f

    .line 2127
    return-void

    .line 2117
    .end local v2    # "newLevelValue":I
    :cond_f
    iget-object v4, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    if-eqz v4, :cond_18

    .line 2118
    iget-object v4, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget v2, v4, Ljava/util/logging/Logger;->levelValue:I

    .restart local v2    # "newLevelValue":I
    goto :goto_a

    .line 2121
    .end local v2    # "newLevelValue":I
    :cond_18
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    .restart local v2    # "newLevelValue":I
    goto :goto_a

    .line 2130
    :cond_1f
    iput v2, p0, Ljava/util/logging/Logger;->levelValue:I

    .line 2135
    iget-object v4, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    if-eqz v4, :cond_44

    .line 2136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    iget-object v4, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_44

    .line 2137
    iget-object v4, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 2138
    .local v3, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    invoke-virtual {v3}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Logger;

    .line 2139
    .local v1, "kid":Ljava/util/logging/Logger;
    if-eqz v1, :cond_41

    .line 2140
    invoke-direct {v1}, Ljava/util/logging/Logger;->updateEffectiveLevel()V

    .line 2136
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 2144
    .end local v0    # "i":I
    .end local v1    # "kid":Ljava/util/logging/Logger;
    .end local v3    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :cond_44
    return-void
.end method


# virtual methods
.method accessCheckedHandlers()[Ljava/util/logging/Handler;
    .registers 3

    .prologue
    .line 1788
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v1, Ljava/util/logging/Logger;->emptyHandlers:[Ljava/util/logging/Handler;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/logging/Handler;

    return-object v0
.end method

.method public addHandler(Ljava/util/logging/Handler;)V
    .registers 3
    .param p1, "handler"    # Ljava/util/logging/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1753
    invoke-virtual {p1}, Ljava/util/logging/Handler;->getClass()Ljava/lang/Class;

    .line 1754
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 1755
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1756
    return-void
.end method

.method public config(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1508
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1509
    return-void
.end method

.method public config(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1620
    .local p1, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 1621
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;

    .prologue
    .line 1347
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v1, "ENTRY"

    invoke-virtual {p0, v0, p1, p2, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/Object;

    .prologue
    .line 1363
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v4, "ENTRY {0}"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1364
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 11
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1380
    const-string/jumbo v4, "ENTRY"

    .line 1381
    .local v4, "msg":Ljava/lang/String;
    if-nez p3, :cond_b

    .line 1382
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    return-void

    .line 1385
    :cond_b
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 1386
    :cond_14
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_15
    array-length v0, p3

    if-ge v6, v0, :cond_3a

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1386
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 1389
    :cond_3a
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1390
    return-void
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;

    .prologue
    .line 1403
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v1, "RETURN"

    invoke-virtual {p0, v0, p1, p2, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    return-void
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 1420
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v4, "RETURN {0}"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1421
    return-void
.end method

.method public fine(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1521
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1522
    return-void
.end method

.method public fine(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1637
    .local p1, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 1638
    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1534
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1535
    return-void
.end method

.method public finer(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1654
    .local p1, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 1655
    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1547
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1548
    return-void
.end method

.method public finest(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1671
    .local p1, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 1672
    return-void
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .registers 2

    .prologue
    .line 712
    iget-object v0, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public getHandlers()[Ljava/util/logging/Handler;
    .registers 2

    .prologue
    .line 1782
    invoke-virtual {p0}, Ljava/util/logging/Logger;->accessCheckedHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .registers 2

    .prologue
    .line 1713
    iget-object v0, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1736
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/util/logging/Logger;
    .registers 2

    .prologue
    .line 2018
    iget-object v0, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .registers 3

    .prologue
    .line 669
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/logging/Logger;->findResourceBundle(Ljava/lang/String;Z)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 686
    iget-object v0, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    iget-object v0, v0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getUseParentHandlers()Z
    .registers 2

    .prologue
    .line 1815
    iget-boolean v0, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1495
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1496
    return-void
.end method

.method public info(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1603
    .local p1, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 1604
    return-void
.end method

.method final isLevelInitialized()Z
    .registers 2

    .prologue
    .line 1702
    iget-object v0, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isLoggable(Ljava/util/logging/Level;)Z
    .registers 4
    .param p1, "level"    # Ljava/util/logging/Level;

    .prologue
    .line 1725
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Logger;->levelValue:I

    if-lt v0, v1, :cond_e

    iget v0, p0, Ljava/util/logging/Logger;->levelValue:I

    sget v1, Ljava/util/logging/Logger;->offValue:I

    if-ne v0, v1, :cond_10

    .line 1726
    :cond_e
    const/4 v0, 0x0

    return v0

    .line 1728
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .registers 5
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 789
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 790
    return-void

    .line 792
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 793
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 794
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/Object;

    .prologue
    .line 830
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 831
    return-void

    .line 833
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 834
    .local v0, "lr":Ljava/util/logging/LogRecord;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 835
    .local v1, "params":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 836
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 837
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 876
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 877
    return-void

    .line 879
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 880
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 881
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 882
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 852
    return-void

    .line 854
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 855
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 856
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 857
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/util/function/Supplier;)V
    .registers 6
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "Ljava/lang/Throwable;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 904
    .local p3, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 905
    return-void

    .line 907
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 908
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 909
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 910
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V
    .registers 5
    .param p1, "level"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 811
    .local p2, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 812
    return-void

    .line 814
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 815
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 816
    return-void
.end method

.method public log(Ljava/util/logging/LogRecord;)V
    .registers 9
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 725
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 726
    return-void

    .line 728
    :cond_b
    iget-object v3, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    .line 729
    .local v3, "theFilter":Ljava/util/logging/Filter;
    if-eqz v3, :cond_18

    invoke-interface {v3, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_18

    .line 730
    return-void

    .line 736
    :cond_18
    move-object v1, p0

    .line 737
    .local v1, "logger":Ljava/util/logging/Logger;
    :goto_19
    if-eqz v1, :cond_3c

    .line 738
    iget-boolean v5, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v5, :cond_2f

    .line 739
    invoke-virtual {v1}, Ljava/util/logging/Logger;->accessCheckedHandlers()[Ljava/util/logging/Handler;

    move-result-object v2

    .line 742
    .local v2, "loggerHandlers":[Ljava/util/logging/Handler;
    :goto_23
    const/4 v5, 0x0

    array-length v6, v2

    :goto_25
    if-ge v5, v6, :cond_34

    aget-object v0, v2, v5

    .line 743
    .local v0, "handler":Ljava/util/logging/Handler;
    invoke-virtual {v0, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 742
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 740
    .end local v0    # "handler":Ljava/util/logging/Handler;
    .end local v2    # "loggerHandlers":[Ljava/util/logging/Handler;
    :cond_2f
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v2

    .restart local v2    # "loggerHandlers":[Ljava/util/logging/Handler;
    goto :goto_23

    .line 746
    :cond_34
    iget-boolean v5, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v5, :cond_3d

    .line 747
    iget-boolean v4, v1, Ljava/util/logging/Logger;->useParentHandlers:Z

    .line 750
    .local v4, "useParentHdls":Z
    :goto_3a
    if-nez v4, :cond_42

    .line 756
    .end local v2    # "loggerHandlers":[Ljava/util/logging/Handler;
    .end local v4    # "useParentHdls":Z
    :cond_3c
    return-void

    .line 748
    .restart local v2    # "loggerHandlers":[Ljava/util/logging/Handler;
    :cond_3d
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getUseParentHandlers()Z

    move-result v4

    .restart local v4    # "useParentHdls":Z
    goto :goto_3a

    .line 754
    :cond_42
    iget-boolean v5, p0, Ljava/util/logging/Logger;->isSystemLogger:Z

    if-eqz v5, :cond_49

    iget-object v1, v1, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    goto :goto_19

    :cond_49
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v1

    goto :goto_19
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 930
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 931
    return-void

    .line 933
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 934
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 936
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 937
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "param1"    # Ljava/lang/Object;

    .prologue
    .line 982
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 983
    return-void

    .line 985
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 986
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 988
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    .line 989
    .local v1, "params":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 990
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 991
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 1040
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1041
    return-void

    .line 1043
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1044
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1047
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 1048
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1009
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1010
    return-void

    .line 1012
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1013
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1016
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 1017
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/function/Supplier;)V
    .registers 8
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "thrown"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1074
    .local p5, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1075
    return-void

    .line 1077
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-interface {p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1078
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1081
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 1082
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V
    .registers 7
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 957
    .local p4, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 958
    return-void

    .line 960
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 961
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 962
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 963
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 964
    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1136
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1137
    return-void

    .line 1139
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1140
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1142
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    .line 1143
    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "param1"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1171
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1172
    return-void

    .line 1174
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1175
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1177
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    .line 1178
    .local v1, "params":[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1179
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    .line 1180
    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "thrown"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1284
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1285
    return-void

    .line 1287
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1288
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1291
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    .line 1292
    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundleName"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "params"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1208
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1209
    return-void

    .line 1211
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1212
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1215
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/lang/String;)V

    .line 1216
    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundle"    # Ljava/util/ResourceBundle;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 1322
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1323
    return-void

    .line 1325
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1326
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1329
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/util/ResourceBundle;)V

    .line 1330
    return-void
.end method

.method public varargs logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "bundle"    # Ljava/util/ResourceBundle;
    .param p5, "msg"    # Ljava/lang/String;
    .param p6, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1241
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1242
    return-void

    .line 1244
    :cond_7
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1245
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1247
    if-eqz p6, :cond_1a

    array-length v1, p6

    if-eqz v1, :cond_1a

    .line 1248
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1250
    :cond_1a
    invoke-direct {p0, v0, p4}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;Ljava/util/ResourceBundle;)V

    .line 1251
    return-void
.end method

.method final removeChildLogger(Ljava/util/logging/LogManager$LoggerWeakRef;)V
    .registers 6
    .param p1, "child"    # Ljava/util/logging/LogManager$LoggerWeakRef;

    .prologue
    .line 2095
    sget-object v3, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2096
    :try_start_3
    iget-object v2, p0, Ljava/util/logging/Logger;->kids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2097
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 2098
    .local v1, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-ne v1, p1, :cond_9

    .line 2099
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    monitor-exit v3

    .line 2100
    return-void

    .end local v1    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :cond_1c
    monitor-exit v3

    .line 2104
    return-void

    .line 2095
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LoggerWeakRef;>;"
    :catchall_1e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeHandler(Ljava/util/logging/Handler;)V
    .registers 3
    .param p1, "handler"    # Ljava/util/logging/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1769
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 1770
    if-nez p1, :cond_6

    .line 1771
    return-void

    .line 1773
    :cond_6
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1774
    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .registers 2
    .param p1, "newFilter"    # Ljava/util/logging/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 702
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 703
    iput-object p1, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    .line 704
    return-void
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .registers 4
    .param p1, "newLevel"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1694
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 1695
    sget-object v1, Ljava/util/logging/Logger;->treeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1696
    :try_start_6
    iput-object p1, p0, Ljava/util/logging/Logger;->levelObject:Ljava/util/logging/Level;

    .line 1697
    invoke-direct {p0}, Ljava/util/logging/Logger;->updateEffectiveLevel()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d

    monitor-exit v1

    .line 1699
    return-void

    .line 1695
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setLogManager(Ljava/util/logging/LogManager;)V
    .registers 2
    .param p1, "manager"    # Ljava/util/logging/LogManager;

    .prologue
    .line 414
    iput-object p1, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    .line 415
    return-void
.end method

.method public setParent(Ljava/util/logging/Logger;)V
    .registers 3
    .param p1, "parent"    # Ljava/util/logging/Logger;

    .prologue
    .line 2032
    if-nez p1, :cond_8

    .line 2033
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2037
    :cond_8
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    if-nez v0, :cond_12

    .line 2038
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    .line 2040
    :cond_12
    iget-object v0, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 2042
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->doSetParent(Ljava/util/logging/Logger;)V

    .line 2043
    return-void
.end method

.method public setResourceBundle(Ljava/util/ResourceBundle;)V
    .registers 7
    .param p1, "bundle"    # Ljava/util/ResourceBundle;

    .prologue
    .line 1975
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 1978
    invoke-virtual {p1}, Ljava/util/ResourceBundle;->getBaseBundleName()Ljava/lang/String;

    move-result-object v0

    .line 1981
    .local v0, "baseName":Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1982
    :cond_f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "resource bundle must have a name"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1985
    :cond_18
    monitor-enter p0

    .line 1986
    :try_start_19
    iget-object v2, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;

    .line 1987
    .local v2, "lb":Ljava/util/logging/Logger$LoggerBundle;
    iget-object v3, v2, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    if-eqz v3, :cond_33

    .line 1988
    iget-object v3, v2, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1990
    :goto_25
    if-nez v1, :cond_35

    .line 1991
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "can\'t replace resource bundle"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_30

    .line 1985
    .end local v2    # "lb":Ljava/util/logging/Logger$LoggerBundle;
    :catchall_30
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1987
    .restart local v2    # "lb":Ljava/util/logging/Logger$LoggerBundle;
    :cond_33
    const/4 v1, 0x1

    .local v1, "canReplaceResourceBundle":Z
    goto :goto_25

    .line 1995
    .end local v1    # "canReplaceResourceBundle":Z
    :cond_35
    :try_start_35
    invoke-static {v0, p1}, Ljava/util/logging/Logger$LoggerBundle;->get(Ljava/lang/String;Ljava/util/ResourceBundle;)Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v3

    iput-object v3, p0, Ljava/util/logging/Logger;->loggerBundle:Ljava/util/logging/Logger$LoggerBundle;
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_30

    monitor-exit p0

    .line 1997
    return-void
.end method

.method public setUseParentHandlers(Z)V
    .registers 2
    .param p1, "useParentHandlers"    # Z

    .prologue
    .line 1804
    invoke-direct {p0}, Ljava/util/logging/Logger;->checkPermission()V

    .line 1805
    iput-boolean p1, p0, Ljava/util/logging/Logger;->useParentHandlers:Z

    .line 1806
    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1469
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1470
    return-void
.end method

.method public severe(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1569
    .local p1, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 1570
    return-void
.end method

.method public throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 1445
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1446
    return-void

    .line 1448
    :cond_9
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string/jumbo v2, "THROW"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1449
    .local v0, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1451
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1452
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->doLog(Ljava/util/logging/LogRecord;)V

    .line 1453
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1482
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1483
    return-void
.end method

.method public warning(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1586
    .local p1, "msgSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/util/function/Supplier;)V

    .line 1587
    return-void
.end method
