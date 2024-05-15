.class public abstract Ljava/nio/channels/spi/SelectorProvider;
.super Ljava/lang/Object;
.source "SelectorProvider.java"


# static fields
.field private static final greylist-max-o lock:Ljava/lang/Object;

.field private static greylist-max-o provider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->lock:Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 83
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 84
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "selectorProvider"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 85
    :cond_13
    return-void
.end method

.method static synthetic blacklist access$000()Z
    .registers 1

    .line 69
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->loadProviderFromProperty()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$100()Ljava/nio/channels/spi/SelectorProvider;
    .registers 1

    .line 69
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method static synthetic blacklist access$102(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/spi/SelectorProvider;
    .registers 1
    .param p0, "x0"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 69
    sput-object p0, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object p0
.end method

.method static synthetic blacklist access$200()Z
    .registers 1

    .line 69
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->loadProviderAsService()Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o loadProviderAsService()Z
    .registers 4

    .line 109
    const-class v0, Ljava/nio/channels/spi/SelectorProvider;

    .line 111
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 110
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 112
    .local v0, "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/channels/spi/SelectorProvider;>;"
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 115
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/spi/SelectorProvider;>;"
    :goto_e
    :try_start_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_16

    .line 116
    const/4 v2, 0x0

    return v2

    .line 117
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/spi/SelectorProvider;

    sput-object v2, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;
    :try_end_1e
    .catch Ljava/util/ServiceConfigurationError; {:try_start_e .. :try_end_1e} :catch_20

    .line 118
    const/4 v2, 0x1

    return v2

    .line 119
    :catch_20
    move-exception v2

    .line 120
    .local v2, "sce":Ljava/util/ServiceConfigurationError;
    invoke-virtual {v2}, Ljava/util/ServiceConfigurationError;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/SecurityException;

    if-eqz v3, :cond_2a

    .line 122
    goto :goto_e

    .line 124
    :cond_2a
    throw v2
.end method

.method private static greylist-max-o loadProviderFromProperty()Z
    .registers 5

    .line 88
    const-string v0, "java.nio.channels.spi.SelectorProvider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "cn":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 90
    const/4 v1, 0x0

    return v1

    .line 92
    :cond_a
    nop

    .line 93
    const/4 v1, 0x0

    :try_start_c
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 92
    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 94
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/spi/SelectorProvider;

    sput-object v4, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_1d} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_1d} :catch_2c
    .catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_1d} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_1d} :catch_1e

    .line 95
    return v3

    .line 102
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1e
    move-exception v2

    .line 103
    .local v2, "x":Ljava/lang/SecurityException;
    new-instance v3, Ljava/util/ServiceConfigurationError;

    invoke-direct {v3, v1, v2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 100
    .end local v2    # "x":Ljava/lang/SecurityException;
    :catch_25
    move-exception v2

    .line 101
    .local v2, "x":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/util/ServiceConfigurationError;

    invoke-direct {v3, v1, v2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 98
    .end local v2    # "x":Ljava/lang/InstantiationException;
    :catch_2c
    move-exception v2

    .line 99
    .local v2, "x":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/util/ServiceConfigurationError;

    invoke-direct {v3, v1, v2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 96
    .end local v2    # "x":Ljava/lang/IllegalAccessException;
    :catch_33
    move-exception v2

    .line 97
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/util/ServiceConfigurationError;

    invoke-direct {v3, v1, v2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static whitelist test-api provider()Ljava/nio/channels/spi/SelectorProvider;
    .registers 2

    .line 165
    sget-object v0, Ljava/nio/channels/spi/SelectorProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    sget-object v1, Ljava/nio/channels/spi/SelectorProvider;->provider:Ljava/nio/channels/spi/SelectorProvider;

    if-eqz v1, :cond_9

    .line 167
    monitor-exit v0

    return-object v1

    .line 168
    :cond_9
    new-instance v1, Ljava/nio/channels/spi/SelectorProvider$1;

    invoke-direct {v1}, Ljava/nio/channels/spi/SelectorProvider$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/spi/SelectorProvider;

    monitor-exit v0

    return-object v1

    .line 179
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public whitelist test-api inheritedChannel()Ljava/nio/channels/Channel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist test-api openDatagramChannel()Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api openDatagramChannel(Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api openPipe()Ljava/nio/channels/Pipe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api openSelector()Ljava/nio/channels/spi/AbstractSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api openSocketChannel()Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
