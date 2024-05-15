.class public Lcom/android/okhttp/ConfigAwareConnectionPool;
.super Ljava/lang/Object;
.source "ConfigAwareConnectionPool.java"


# static fields
.field private static final CONNECTION_POOL_DEFAULT_KEEP_ALIVE_DURATION_MS:J = 0x493e0L

.field private static final CONNECTION_POOL_KEEP_ALIVE_DURATION_MS:J

.field private static final CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

.field private static final instance:Lcom/android/okhttp/ConfigAwareConnectionPool;


# instance fields
.field private connectionPool:Lcom/android/okhttp/ConnectionPool;

.field private final networkEventDispatcher:Llibcore/net/event/NetworkEventDispatcher;

.field private networkEventListenerRegistered:Z


# direct methods
.method static synthetic -set0(Lcom/android/okhttp/ConfigAwareConnectionPool;Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/ConnectionPool;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/ConfigAwareConnectionPool;
    .param p1, "-value"    # Lcom/android/okhttp/ConnectionPool;

    .prologue
    iput-object p1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 35
    const-string/jumbo v3, "http.keepAlive"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "keepAliveProperty":Ljava/lang/String;
    const-string/jumbo v3, "http.keepAliveDuration"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "keepAliveDurationProperty":Ljava/lang/String;
    const-string/jumbo v3, "http.maxConnections"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "maxIdleConnectionsProperty":Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 39
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 38
    :goto_1b
    sput-wide v4, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_KEEP_ALIVE_DURATION_MS:J

    .line 41
    if-eqz v1, :cond_36

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_36

    .line 42
    const/4 v3, 0x0

    sput v3, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

    .line 50
    :goto_2a
    new-instance v3, Lcom/android/okhttp/ConfigAwareConnectionPool;

    invoke-direct {v3}, Lcom/android/okhttp/ConfigAwareConnectionPool;-><init>()V

    sput-object v3, Lcom/android/okhttp/ConfigAwareConnectionPool;->instance:Lcom/android/okhttp/ConfigAwareConnectionPool;

    .line 28
    return-void

    .line 40
    :cond_32
    const-wide/32 v4, 0x493e0

    goto :goto_1b

    .line 43
    :cond_36
    if-eqz v2, :cond_3f

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

    goto :goto_2a

    .line 46
    :cond_3f
    const/4 v3, 0x5

    sput v3, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

    goto :goto_2a
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventDispatcher:Llibcore/net/event/NetworkEventDispatcher;

    .line 69
    return-void
.end method

.method protected constructor <init>(Llibcore/net/event/NetworkEventDispatcher;)V
    .registers 2
    .param p1, "networkEventDispatcher"    # Llibcore/net/event/NetworkEventDispatcher;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventDispatcher:Llibcore/net/event/NetworkEventDispatcher;

    .line 65
    return-void
.end method

.method public static getInstance()Lcom/android/okhttp/ConfigAwareConnectionPool;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/okhttp/ConfigAwareConnectionPool;->instance:Lcom/android/okhttp/ConfigAwareConnectionPool;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized get()Lcom/android/okhttp/ConnectionPool;
    .registers 5

    .prologue
    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    if-nez v0, :cond_21

    .line 81
    iget-boolean v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventListenerRegistered:Z

    if-nez v0, :cond_16

    .line 82
    iget-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventDispatcher:Llibcore/net/event/NetworkEventDispatcher;

    new-instance v1, Lcom/android/okhttp/ConfigAwareConnectionPool$1;

    invoke-direct {v1, p0}, Lcom/android/okhttp/ConfigAwareConnectionPool$1;-><init>(Lcom/android/okhttp/ConfigAwareConnectionPool;)V

    invoke-virtual {v0, v1}, Llibcore/net/event/NetworkEventDispatcher;->addListener(Llibcore/net/event/NetworkEventListener;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->networkEventListenerRegistered:Z

    .line 95
    :cond_16
    new-instance v0, Lcom/android/okhttp/ConnectionPool;

    .line 96
    sget v1, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_MAX_IDLE_CONNECTIONS:I

    sget-wide v2, Lcom/android/okhttp/ConfigAwareConnectionPool;->CONNECTION_POOL_KEEP_ALIVE_DURATION_MS:J

    .line 95
    invoke-direct {v0, v1, v2, v3}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    iput-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 98
    :cond_21
    iget-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool;->connectionPool:Lcom/android/okhttp/ConnectionPool;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method
