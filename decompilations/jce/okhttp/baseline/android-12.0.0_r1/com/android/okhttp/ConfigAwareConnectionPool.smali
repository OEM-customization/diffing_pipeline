.class public Lcom/android/okhttp/ConfigAwareConnectionPool;
.super Ljava/lang/Object;
.source "ConfigAwareConnectionPool.java"


# static fields
.field private static final blacklist CONNECTION_POOL_DEFAULT_KEEP_ALIVE_DURATION_MS:J = 0x493e0L

.field private static final blacklist CONNECTION_POOL_KEEP_ALIVE_DURATION_MS:J

.field private static final blacklist CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

.field private static final blacklist instance:Lcom/android/okhttp/ConfigAwareConnectionPool;


# instance fields
.field private blacklist connectionPool:Lcom/android/okhttp/ConnectionPool;

.field private final blacklist networkEventDispatcher:Llibcore/net/event/NetworkEventDispatcher;

.field private blacklist networkEventListenerRegistered:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 37
    const-string v0, "http.keepAlive"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "keepAliveProperty":Ljava/lang/String;
    const-string v1, "http.keepAliveDuration"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "keepAliveDurationProperty":Ljava/lang/String;
    const-string v2, "http.maxConnections"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "maxIdleConnectionsProperty":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 41
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_1c

    .line 42
    :cond_19
    const-wide/32 v3, 0x493e0

    :goto_1c
    sput-wide v3, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_KEEP_ALIVE_DURATION_MS:J

    .line 43
    if-eqz v0, :cond_2a

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 44
    const/4 v3, 0x0

    sput v3, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

    goto :goto_36

    .line 45
    :cond_2a
    if-eqz v2, :cond_33

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

    goto :goto_36

    .line 48
    :cond_33
    const/4 v3, 0x5

    sput v3, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

    .line 52
    .end local v0    # "keepAliveProperty":Ljava/lang/String;
    .end local v1    # "keepAliveDurationProperty":Ljava/lang/String;
    .end local v2    # "maxIdleConnectionsProperty":Ljava/lang/String;
    :goto_36
    new-instance v0, Lcom/android/okhttp/ConfigAwareConnectionPool;

    invoke-direct {v0}, Lcom/android/okhttp/ConfigAwareConnectionPool;-><init>()V

    sput-object v0, Lcom/android/okhttp/ConfigAwareConnectionPool;->instance:Lcom/android/okhttp/ConfigAwareConnectionPool;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventDispatcher:Llibcore/net/event/NetworkEventDispatcher;

    .line 71
    return-void
.end method

.method protected constructor blacklist <init>(Llibcore/net/event/NetworkEventDispatcher;)V
    .registers 2
    .param p1, "networkEventDispatcher"    # Llibcore/net/event/NetworkEventDispatcher;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventDispatcher:Llibcore/net/event/NetworkEventDispatcher;

    .line 67
    return-void
.end method

.method static synthetic blacklist access$002(Lcom/android/okhttp/ConfigAwareConnectionPool;Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/ConnectionPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/ConfigAwareConnectionPool;
    .param p1, "x1"    # Lcom/android/okhttp/ConnectionPool;

    .line 30
    iput-object p1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    return-object p1
.end method

.method public static blacklist getInstance()Lcom/android/okhttp/ConfigAwareConnectionPool;
    .registers 1

    .line 74
    sget-object v0, Lcom/android/okhttp/ConfigAwareConnectionPool;->instance:Lcom/android/okhttp/ConfigAwareConnectionPool;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized blacklist get()Lcom/android/okhttp/ConnectionPool;
    .registers 5

    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    if-nez v0, :cond_21

    .line 83
    iget-boolean v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventListenerRegistered:Z

    if-nez v0, :cond_16

    .line 84
    iget-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventDispatcher:Llibcore/net/event/NetworkEventDispatcher;

    new-instance v1, Lcom/android/okhttp/ConfigAwareConnectionPool$1;

    invoke-direct {v1, p0}, Lcom/android/okhttp/ConfigAwareConnectionPool$1;-><init>(Lcom/android/okhttp/ConfigAwareConnectionPool;)V

    invoke-virtual {v0, v1}, Llibcore/net/event/NetworkEventDispatcher;->addListener(Llibcore/net/event/NetworkEventListener;)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventListenerRegistered:Z

    .line 97
    .end local p0    # "this":Lcom/android/okhttp/ConfigAwareConnectionPool;
    :cond_16
    new-instance v0, Lcom/android/okhttp/ConnectionPool;

    sget v1, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

    sget-wide v2, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_KEEP_ALIVE_DURATION_MS:J

    invoke-direct {v0, v1, v2, v3}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    iput-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 100
    :cond_21
    iget-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v0

    .line 80
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method
