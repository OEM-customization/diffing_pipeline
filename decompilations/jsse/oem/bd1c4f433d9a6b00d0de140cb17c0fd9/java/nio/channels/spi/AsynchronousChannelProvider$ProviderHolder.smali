.class Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;
.super Ljava/lang/Object;
.source "AsynchronousChannelProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/spi/AsynchronousChannelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderHolder"
.end annotation


# static fields
.field static final provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;


# direct methods
.method static synthetic -wrap0()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 1

    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->loadProviderAsService()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 1

    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->loadProviderFromProperty()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    invoke-static {}, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->load()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    sput-object v0, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder;->provider:Ljava/nio/channels/spi/AsynchronousChannelProvider;

    .line 74
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static load()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 1

    .prologue
    .line 79
    new-instance v0, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder$1;

    invoke-direct {v0}, Ljava/nio/channels/spi/AsynchronousChannelProvider$ProviderHolder$1;-><init>()V

    .line 78
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/spi/AsynchronousChannelProvider;

    return-object v0
.end method

.method private static loadProviderAsService()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 5

    .prologue
    .line 113
    const-class v3, Ljava/nio/channels/spi/AsynchronousChannelProvider;

    .line 114
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 113
    invoke-static {v3, v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v2

    .line 115
    .local v2, "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/nio/channels/spi/AsynchronousChannelProvider;>;"
    invoke-virtual {v2}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 118
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/spi/AsynchronousChannelProvider;>;"
    :cond_e
    :try_start_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/spi/AsynchronousChannelProvider;
    :try_end_1a
    .catch Ljava/util/ServiceConfigurationError; {:try_start_e .. :try_end_1a} :catch_1d

    :goto_1a
    return-object v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a

    .line 119
    :catch_1d
    move-exception v1

    .line 120
    .local v1, "sce":Ljava/util/ServiceConfigurationError;
    invoke-virtual {v1}, Ljava/util/ServiceConfigurationError;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/SecurityException;

    if-nez v3, :cond_e

    .line 124
    throw v1
.end method

.method private static loadProviderFromProperty()Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .registers 9

    .prologue
    const/4 v8, 0x0

    .line 93
    const-string/jumbo v6, "java.nio.channels.spi.AsynchronousChannelProvider"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "cn":Ljava/lang/String;
    if-nez v1, :cond_b

    .line 95
    return-object v8

    .line 98
    :cond_b
    :try_start_b
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 97
    const/4 v7, 0x1

    invoke-static {v1, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 99
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/spi/AsynchronousChannelProvider;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_1a} :catch_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_1a} :catch_29
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_1a} :catch_22
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_1a} :catch_1b

    return-object v6

    .line 106
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1b
    move-exception v5

    .line 107
    .local v5, "x":Ljava/lang/SecurityException;
    new-instance v6, Ljava/util/ServiceConfigurationError;

    invoke-direct {v6, v8, v5}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 104
    .end local v5    # "x":Ljava/lang/SecurityException;
    :catch_22
    move-exception v4

    .line 105
    .local v4, "x":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/util/ServiceConfigurationError;

    invoke-direct {v6, v8, v4}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 102
    .end local v4    # "x":Ljava/lang/InstantiationException;
    :catch_29
    move-exception v3

    .line 103
    .local v3, "x":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/util/ServiceConfigurationError;

    invoke-direct {v6, v8, v3}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 100
    .end local v3    # "x":Ljava/lang/IllegalAccessException;
    :catch_30
    move-exception v2

    .line 101
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/util/ServiceConfigurationError;

    invoke-direct {v6, v8, v2}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method
