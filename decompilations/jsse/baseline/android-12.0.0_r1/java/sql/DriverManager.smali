.class public Ljava/sql/DriverManager;
.super Ljava/lang/Object;
.source "DriverManager.java"


# static fields
.field static final greylist-max-o SET_LOG_PERMISSION:Ljava/sql/SQLPermission;

.field private static volatile greylist-max-o logStream:Ljava/io/PrintStream;

.field private static final greylist-max-o logSync:Ljava/lang/Object;

.field private static volatile greylist-max-o logWriter:Ljava/io/PrintWriter;

.field private static volatile greylist-max-o loginTimeout:I

.field private static final greylist-max-o registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/sql/DriverInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 87
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 88
    const/4 v0, 0x0

    sput v0, Ljava/sql/DriverManager;->loginTimeout:I

    .line 89
    const/4 v0, 0x0

    sput-object v0, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    .line 90
    sput-object v0, Ljava/sql/DriverManager;->logStream:Ljava/io/PrintStream;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/sql/DriverManager;->logSync:Ljava/lang/Object;

    .line 103
    invoke-static {}, Ljava/sql/DriverManager;->loadInitialDrivers()V

    .line 104
    const-string v0, "JDBC DriverManager initialized"

    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/sql/SQLPermission;

    const-string v1, "setLog"

    invoke-direct {v0, v1}, Ljava/sql/SQLPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/sql/DriverManager;->SET_LOG_PERMISSION:Ljava/sql/SQLPermission;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized whitelist test-api deregisterDriver(Ljava/sql/Driver;)V
    .registers 5
    .param p0, "driver"    # Ljava/sql/Driver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    const-class v0, Ljava/sql/DriverManager;

    monitor-enter v0

    .line 320
    if-nez p0, :cond_7

    .line 321
    monitor-exit v0

    return-void

    .line 324
    :cond_7
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DriverManager.deregisterDriver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 326
    new-instance v1, Ljava/sql/DriverInfo;

    invoke-direct {v1, p0}, Ljava/sql/DriverInfo;-><init>(Ljava/sql/Driver;)V

    .line 327
    .local v1, "aDriver":Ljava/sql/DriverInfo;
    sget-object v2, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 328
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Ljava/sql/DriverManager;->isDriverAllowed(Ljava/sql/Driver;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 329
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_41

    .line 333
    :cond_36
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2}, Ljava/lang/SecurityException;-><init>()V

    throw v2

    .line 336
    :cond_3c
    const-string v2, "    couldn\'t find driver to unload"

    invoke-static {v2}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_43

    .line 338
    :goto_41
    monitor-exit v0

    return-void

    .line 319
    .end local v1    # "aDriver":Ljava/sql/DriverInfo;
    .end local p0    # "driver":Ljava/sql/Driver;
    :catchall_43
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static whitelist test-api getConnection(Ljava/lang/String;)Ljava/sql/Connection;
    .registers 3
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 235
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 236
    .local v0, "info":Ljava/util/Properties;
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/Class;)Ljava/sql/Connection;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 209
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 211
    .local v0, "info":Ljava/util/Properties;
    if-eqz p1, :cond_c

    .line 212
    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_c
    if-eqz p2, :cond_13

    .line 215
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_13
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/Class;)Ljava/sql/Connection;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .registers 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 190
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/Class;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getConnection(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/Class;)Ljava/sql/Connection;
    .registers 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/sql/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 556
    .local p2, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 557
    .local v0, "callerCL":Ljava/lang/ClassLoader;
    :goto_8
    const-class v1, Ljava/sql/DriverManager;

    monitor-enter v1

    .line 559
    if-nez v0, :cond_16

    .line 560
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v0, v2

    .line 562
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_103

    .line 564
    if-eqz p0, :cond_f9

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DriverManager.getConnection(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 572
    const/4 v1, 0x0

    .line 574
    .local v1, "reason":Ljava/sql/SQLException;
    sget-object v2, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/DriverInfo;

    .line 577
    .local v3, "aDriver":Ljava/sql/DriverInfo;
    iget-object v4, v3, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-static {v4, v0}, Ljava/sql/DriverManager;->isDriverAllowed(Ljava/sql/Driver;Ljava/lang/ClassLoader;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 579
    :try_start_4d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    trying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 580
    iget-object v4, v3, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-interface {v4, p0, p1}, Ljava/sql/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v4

    .line 581
    .local v4, "con":Ljava/sql/Connection;
    if-eqz v4, :cond_92

    .line 583
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConnection returning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/sql/SQLException; {:try_start_4d .. :try_end_91} :catch_93

    .line 584
    return-object v4

    .line 581
    .end local v4    # "con":Ljava/sql/Connection;
    :cond_92
    goto :goto_97

    .line 586
    :catch_93
    move-exception v4

    .line 587
    .local v4, "ex":Ljava/sql/SQLException;
    if-nez v1, :cond_97

    .line 588
    move-object v1, v4

    .line 590
    .end local v4    # "ex":Ljava/sql/SQLException;
    :cond_97
    :goto_97
    goto :goto_b4

    .line 593
    :cond_98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    skipping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 596
    .end local v3    # "aDriver":Ljava/sql/DriverInfo;
    :goto_b4
    goto :goto_39

    .line 599
    :cond_b5
    if-eqz v1, :cond_cc

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnection failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 601
    throw v1

    .line 604
    :cond_cc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnection: no suitable driver found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 605
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No suitable driver found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "08001"

    invoke-direct {v2, v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 565
    .end local v1    # "reason":Ljava/sql/SQLException;
    :cond_f9
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "The url cannot be null"

    const-string v3, "08001"

    invoke-direct {v1, v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 562
    :catchall_103
    move-exception v2

    :try_start_104
    monitor-exit v1
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_103

    throw v2
.end method

.method public static whitelist test-api getDriver(Ljava/lang/String;)Ljava/sql/Driver;
    .registers 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DriverManager.getDriver(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 260
    .local v0, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/DriverInfo;

    .line 263
    .local v2, "aDriver":Ljava/sql/DriverInfo;
    iget-object v3, v2, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-static {v3, v0}, Ljava/sql/DriverManager;->isDriverAllowed(Ljava/sql/Driver;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 265
    :try_start_37
    iget-object v3, v2, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-interface {v3, p0}, Ljava/sql/Driver;->acceptsURL(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDriver returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 268
    iget-object v1, v2, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;
    :try_end_5f
    .catch Ljava/sql/SQLException; {:try_start_37 .. :try_end_5f} :catch_60

    return-object v1

    .line 271
    :catch_60
    move-exception v3

    .line 273
    :cond_61
    goto :goto_80

    .line 275
    :cond_62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    skipping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 278
    .end local v2    # "aDriver":Ljava/sql/DriverInfo;
    :goto_80
    goto :goto_23

    .line 280
    :cond_81
    const-string v1, "getDriver: no suitable driver"

    invoke-static {v1}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 281
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "No suitable driver"

    const-string v3, "08001"

    invoke-direct {v1, v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api getDrivers()Ljava/util/Enumeration;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/sql/Driver;",
            ">;"
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 351
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 353
    .local v0, "result":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/sql/Driver;>;"
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    .line 356
    .local v1, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/DriverInfo;

    .line 359
    .local v3, "aDriver":Ljava/sql/DriverInfo;
    iget-object v4, v3, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-static {v4, v1}, Ljava/sql/DriverManager;->isDriverAllowed(Ljava/sql/Driver;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 360
    iget-object v4, v3, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_45

    .line 362
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    skipping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 364
    .end local v3    # "aDriver":Ljava/sql/DriverInfo;
    :goto_45
    goto :goto_f

    .line 365
    :cond_46
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist test-api getLogStream()Ljava/io/PrintStream;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 439
    sget-object v0, Ljava/sql/DriverManager;->logStream:Ljava/io/PrintStream;

    return-object v0
.end method

.method public static whitelist test-api getLogWriter()Ljava/io/PrintWriter;
    .registers 1

    .line 128
    sget-object v0, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public static whitelist test-api getLoginTimeout()I
    .registers 1

    .line 388
    sget v0, Ljava/sql/DriverManager;->loginTimeout:I

    return v0
.end method

.method private static blacklist isDriverAllowed(Ljava/sql/Driver;Ljava/lang/Class;)Z
    .registers 4
    .param p0, "driver"    # Ljava/sql/Driver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Driver;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 463
    .local p1, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 464
    .local v0, "callerCL":Ljava/lang/ClassLoader;
    :goto_8
    invoke-static {p0, v0}, Ljava/sql/DriverManager;->isDriverAllowed(Ljava/sql/Driver;Ljava/lang/ClassLoader;)Z

    move-result v1

    return v1
.end method

.method private static greylist-max-o isDriverAllowed(Ljava/sql/Driver;Ljava/lang/ClassLoader;)Z
    .registers 6
    .param p0, "driver"    # Ljava/sql/Driver;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "result":Z
    if-eqz p0, :cond_1e

    .line 470
    const/4 v1, 0x0

    .line 472
    .local v1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_13

    move-object v1, v3

    .line 475
    goto :goto_15

    .line 473
    :catch_13
    move-exception v3

    .line 474
    .local v3, "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 477
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v1, v3, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    move v0, v2

    .line 480
    .end local v1    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1e
    return v0
.end method

.method private static greylist-max-o loadInitialDrivers()V
    .registers 8

    .line 486
    :try_start_0
    new-instance v0, Ljava/sql/DriverManager$1;

    invoke-direct {v0}, Ljava/sql/DriverManager$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 493
    .local v0, "drivers":Ljava/lang/String;
    goto :goto_f

    .line 491
    .end local v0    # "drivers":Ljava/lang/String;
    :catch_c
    move-exception v0

    .line 492
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    move-object v0, v1

    .line 499
    .local v0, "drivers":Ljava/lang/String;
    :goto_f
    new-instance v1, Ljava/sql/DriverManager$2;

    invoke-direct {v1}, Ljava/sql/DriverManager$2;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DriverManager.initialize: jdbc.drivers = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 530
    if-eqz v0, :cond_8e

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_8e

    .line 533
    :cond_36
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "driversList":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number of Drivers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 535
    array-length v2, v1

    const/4 v3, 0x0

    :goto_53
    if-ge v3, v2, :cond_8d

    aget-object v4, v1, v3

    .line 537
    .local v4, "aDriver":Ljava/lang/String;
    :try_start_57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DriverManager.Initialize: loading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 538
    nop

    .line 539
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 538
    const/4 v6, 0x1

    invoke-static {v4, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_74} :catch_75

    .line 542
    goto :goto_8a

    .line 540
    :catch_75
    move-exception v5

    .line 541
    .local v5, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DriverManager.Initialize: load failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 535
    .end local v4    # "aDriver":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 544
    :cond_8d
    return-void

    .line 531
    .end local v1    # "driversList":[Ljava/lang/String;
    :cond_8e
    :goto_8e
    return-void
.end method

.method public static whitelist test-api println(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 448
    sget-object v0, Ljava/sql/DriverManager;->logSync:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_3
    sget-object v1, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    if-eqz v1, :cond_11

    .line 450
    sget-object v1, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    sget-object v1, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 455
    :cond_11
    monitor-exit v0

    .line 456
    return-void

    .line 455
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static declared-synchronized whitelist test-api registerDriver(Ljava/sql/Driver;)V
    .registers 4
    .param p0, "driver"    # Ljava/sql/Driver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-class v0, Ljava/sql/DriverManager;

    monitor-enter v0

    .line 299
    if-eqz p0, :cond_25

    .line 300
    :try_start_5
    sget-object v1, Ljava/sql/DriverManager;->registeredDrivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Ljava/sql/DriverInfo;

    invoke-direct {v2, p0}, Ljava/sql/DriverInfo;-><init>(Ljava/sql/Driver;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDriver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_2b

    .line 308
    monitor-exit v0

    return-void

    .line 303
    :cond_25
    :try_start_25
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2b

    .line 298
    .end local p0    # "driver":Ljava/sql/Driver;
    :catchall_2b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static whitelist test-api setLogStream(Ljava/io/PrintStream;)V
    .registers 3
    .param p0, "out"    # Ljava/io/PrintStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 415
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 416
    .local v0, "sec":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 417
    sget-object v1, Ljava/sql/DriverManager;->SET_LOG_PERMISSION:Ljava/sql/SQLPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 420
    :cond_b
    sput-object p0, Ljava/sql/DriverManager;->logStream:Ljava/io/PrintStream;

    .line 421
    if-eqz p0, :cond_17

    .line 422
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    sput-object v1, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    goto :goto_1a

    .line 424
    :cond_17
    const/4 v1, 0x0

    sput-object v1, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    .line 425
    :goto_1a
    return-void
.end method

.method public static whitelist test-api setLogWriter(Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "out"    # Ljava/io/PrintWriter;

    .line 163
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 164
    .local v0, "sec":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 165
    sget-object v1, Ljava/sql/DriverManager;->SET_LOG_PERMISSION:Ljava/sql/SQLPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 167
    :cond_b
    const/4 v1, 0x0

    sput-object v1, Ljava/sql/DriverManager;->logStream:Ljava/io/PrintStream;

    .line 168
    sput-object p0, Ljava/sql/DriverManager;->logWriter:Ljava/io/PrintWriter;

    .line 169
    return-void
.end method

.method public static whitelist test-api setLoginTimeout(I)V
    .registers 1
    .param p0, "seconds"    # I

    .line 377
    sput p0, Ljava/sql/DriverManager;->loginTimeout:I

    .line 378
    return-void
.end method
