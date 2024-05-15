.class public final Lcom/android/org/conscrypt/ClientSessionContext;
.super Lcom/android/org/conscrypt/AbstractSessionContext;
.source "ClientSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    }
.end annotation


# instance fields
.field private persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

.field private final sessionsByHostAndPort:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;",
            "Lcom/android/org/conscrypt/SslSessionWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 41
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;-><init>(I)V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    .line 42
    return-void
.end method

.method private getSession(Ljava/lang/String;I)Lcom/android/org/conscrypt/SslSessionWrapper;
    .registers 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v5, 0x0

    .line 104
    if-nez p1, :cond_4

    .line 105
    return-object v5

    .line 108
    :cond_4
    new-instance v1, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v1, p1, p2}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 110
    .local v1, "key":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v4

    .line 111
    :try_start_c
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/conscrypt/SslSessionWrapper;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1e

    .local v2, "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    monitor-exit v4

    .line 113
    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/android/org/conscrypt/SslSessionWrapper;->isValid()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 114
    return-object v2

    .line 110
    .end local v2    # "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    :catchall_1e
    move-exception v3

    monitor-exit v4

    throw v3

    .line 118
    .restart local v2    # "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    :cond_21
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    if-eqz v3, :cond_46

    .line 119
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    invoke-interface {v3, p1, p2}, Lcom/android/org/conscrypt/SSLClientSessionCache;->getSessionData(Ljava/lang/String;I)[B

    move-result-object v0

    .line 120
    .local v0, "data":[B
    if-eqz v0, :cond_46

    .line 121
    invoke-static {p0, v0, p1, p2}, Lcom/android/org/conscrypt/SslSessionWrapper;->newInstance(Lcom/android/org/conscrypt/AbstractSessionContext;[BLjava/lang/String;I)Lcom/android/org/conscrypt/SslSessionWrapper;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_46

    invoke-virtual {v2}, Lcom/android/org/conscrypt/SslSessionWrapper;->isValid()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 123
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v4

    .line 124
    :try_start_3c
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_43

    monitor-exit v4

    .line 126
    return-object v2

    .line 123
    :catchall_43
    move-exception v3

    monitor-exit v4

    throw v3

    .line 131
    .end local v0    # "data":[B
    :cond_46
    return-object v5
.end method


# virtual methods
.method getCachedSession(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/SslSessionWrapper;
    .registers 15
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    .prologue
    .line 56
    if-nez p1, :cond_4

    .line 57
    const/4 v7, 0x0

    return-object v7

    .line 60
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/ClientSessionContext;->getSession(Ljava/lang/String;I)Lcom/android/org/conscrypt/SslSessionWrapper;

    move-result-object v6

    .line 61
    .local v6, "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    if-nez v6, :cond_c

    .line 62
    const/4 v7, 0x0

    return-object v7

    .line 65
    :cond_c
    invoke-virtual {v6}, Lcom/android/org/conscrypt/SslSessionWrapper;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "protocol":Ljava/lang/String;
    const/4 v5, 0x0

    .line 67
    .local v5, "protocolFound":Z
    iget-object v8, p3, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    const/4 v7, 0x0

    array-length v9, v8

    :goto_15
    if-ge v7, v9, :cond_20

    aget-object v3, v8, v7

    .line 68
    .local v3, "enabledProtocol":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 69
    const/4 v5, 0x1

    .line 73
    .end local v3    # "enabledProtocol":Ljava/lang/String;
    :cond_20
    if-nez v5, :cond_27

    .line 74
    const/4 v7, 0x0

    return-object v7

    .line 67
    .restart local v3    # "enabledProtocol":Ljava/lang/String;
    :cond_24
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 77
    .end local v3    # "enabledProtocol":Ljava/lang/String;
    :cond_27
    invoke-virtual {v6}, Lcom/android/org/conscrypt/SslSessionWrapper;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "cipherSuite":Ljava/lang/String;
    const/4 v1, 0x0

    .line 79
    .local v1, "cipherSuiteFound":Z
    iget-object v8, p3, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    const/4 v7, 0x0

    array-length v9, v8

    :goto_30
    if-ge v7, v9, :cond_3b

    aget-object v2, v8, v7

    .line 80
    .local v2, "enabledCipherSuite":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 81
    const/4 v1, 0x1

    .line 85
    .end local v2    # "enabledCipherSuite":Ljava/lang/String;
    :cond_3b
    if-nez v1, :cond_42

    .line 86
    const/4 v7, 0x0

    return-object v7

    .line 79
    .restart local v2    # "enabledCipherSuite":Ljava/lang/String;
    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 89
    .end local v2    # "enabledCipherSuite":Ljava/lang/String;
    :cond_42
    return-object v6
.end method

.method getSessionFromPersistentCache([B)Lcom/android/org/conscrypt/SslSessionWrapper;
    .registers 3
    .param p1, "sessionId"    # [B

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method onBeforeAddSession(Lcom/android/org/conscrypt/SslSessionWrapper;)V
    .registers 8
    .param p1, "session"    # Lcom/android/org/conscrypt/SslSessionWrapper;

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SslSessionWrapper;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SslSessionWrapper;->getPeerPort()I

    move-result v3

    .line 138
    .local v3, "port":I
    if-nez v1, :cond_b

    .line 139
    return-void

    .line 142
    :cond_b
    new-instance v2, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v2, v1, v3}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 143
    .local v2, "key":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    iget-object v5, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v5

    .line 144
    :try_start_13
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_2d

    monitor-exit v5

    .line 148
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    if-eqz v4, :cond_2c

    .line 149
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SslSessionWrapper;->toBytes()[B

    move-result-object v0

    .line 150
    .local v0, "data":[B
    if-eqz v0, :cond_2c

    .line 151
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/SslSessionWrapper;->toSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/android/org/conscrypt/SSLClientSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    .line 154
    .end local v0    # "data":[B
    :cond_2c
    return-void

    .line 143
    :catchall_2d
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method onBeforeRemoveSession(Lcom/android/org/conscrypt/SslSessionWrapper;)V
    .registers 7
    .param p1, "session"    # Lcom/android/org/conscrypt/SslSessionWrapper;

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SslSessionWrapper;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 160
    return-void

    .line 162
    :cond_7
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SslSessionWrapper;->getPeerPort()I

    move-result v2

    .line 163
    .local v2, "port":I
    new-instance v1, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 164
    .local v1, "hostAndPortKey":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v4

    .line 165
    :try_start_13
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1a

    monitor-exit v4

    .line 167
    return-void

    .line 164
    :catchall_1a
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V
    .registers 2
    .param p1, "persistentCache"    # Lcom/android/org/conscrypt/SSLClientSessionCache;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    .line 50
    return-void
.end method

.method size()I
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
