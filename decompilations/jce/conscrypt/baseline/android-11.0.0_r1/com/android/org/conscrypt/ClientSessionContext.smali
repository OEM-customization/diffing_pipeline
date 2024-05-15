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
.field private blacklist persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

.field private final blacklist sessionsByHostAndPort:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/NativeSslSession;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 48
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;-><init>(I)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    .line 49
    return-void
.end method

.method private greylist getSession(Ljava/lang/String;I)Lcom/android/org/conscrypt/NativeSslSession;
    .registers 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 125
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 126
    return-object v0

    .line 129
    :cond_4
    new-instance v1, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v1, p1, p2}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 130
    .local v1, "key":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    const/4 v2, 0x0

    .line 131
    .local v2, "session":Lcom/android/org/conscrypt/NativeSslSession;
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v3

    .line 132
    :try_start_d
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 133
    .local v4, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/NativeSslSession;>;"
    if-eqz v4, :cond_25

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_25

    .line 134
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/conscrypt/NativeSslSession;

    move-object v2, v5

    .line 136
    .end local v4    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/NativeSslSession;>;"
    :cond_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_4a

    .line 137
    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSslSession;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 138
    return-object v2

    .line 144
    :cond_2f
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    if-eqz v3, :cond_49

    .line 145
    invoke-interface {v3, p1, p2}, Lcom/android/org/conscrypt/SSLClientSessionCache;->getSessionData(Ljava/lang/String;I)[B

    move-result-object v3

    .line 146
    .local v3, "data":[B
    if-eqz v3, :cond_49

    .line 147
    invoke-static {p0, v3, p1, p2}, Lcom/android/org/conscrypt/NativeSslSession;->newInstance(Lcom/android/org/conscrypt/AbstractSessionContext;[BLjava/lang/String;I)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_49

    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSslSession;->isValid()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 149
    invoke-direct {p0, v1, v2}, Lcom/android/org/conscrypt/ClientSessionContext;->putSession(Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 150
    return-object v2

    .line 155
    .end local v3    # "data":[B
    :cond_49
    return-object v0

    .line 136
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method private blacklist putSession(Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;Lcom/android/org/conscrypt/NativeSslSession;)V
    .registers 8
    .param p1, "key"    # Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    .param p2, "session"    # Lcom/android/org/conscrypt/NativeSslSession;

    .line 159
    iget-object v0, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v0

    .line 160
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 161
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/NativeSslSession;>;"
    if-nez v1, :cond_18

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 163
    iget-object v2, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_44

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/conscrypt/NativeSslSession;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v3

    invoke-virtual {p2}, Lcom/android/org/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v4

    if-eq v3, v4, :cond_44

    .line 169
    :goto_2f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 170
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/conscrypt/NativeSslSession;

    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/ClientSessionContext;->removeSession(Lcom/android/org/conscrypt/NativeSslSession;)V

    goto :goto_2f

    .line 174
    :cond_3f
    iget-object v2, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_44
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    nop

    .end local v1    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/NativeSslSession;>;"
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method private blacklist removeSession(Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;Lcom/android/org/conscrypt/NativeSslSession;)V
    .registers 6
    .param p1, "key"    # Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    .param p2, "session"    # Lcom/android/org/conscrypt/NativeSslSession;

    .line 181
    iget-object v0, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v0

    .line 182
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 183
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/NativeSslSession;>;"
    if-eqz v1, :cond_1b

    .line 184
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 185
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 186
    iget-object v2, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v1    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/NativeSslSession;>;"
    :cond_1b
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method


# virtual methods
.method declared-synchronized blacklist getCachedSession(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/NativeSslSession;
    .registers 15
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    monitor-enter p0

    .line 67
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 68
    monitor-exit p0

    return-object v0

    .line 71
    :cond_6
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/ClientSessionContext;->getSession(Ljava/lang/String;I)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_53

    .line 72
    .local v1, "session":Lcom/android/org/conscrypt/NativeSslSession;
    if-nez v1, :cond_e

    .line 73
    monitor-exit p0

    return-object v0

    .line 76
    :cond_e
    :try_start_e
    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSslSession;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "protocol":Ljava/lang/String;
    const/4 v3, 0x0

    .line 78
    .local v3, "protocolFound":Z
    iget-object v4, p3, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_18
    if-ge v7, v5, :cond_27

    aget-object v8, v4, v7

    .line 79
    .local v8, "enabledProtocol":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_53

    if-eqz v9, :cond_24

    .line 80
    const/4 v3, 0x1

    .line 81
    goto :goto_27

    .line 78
    .end local v8    # "enabledProtocol":Ljava/lang/String;
    :cond_24
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 84
    .end local p0    # "this":Lcom/android/org/conscrypt/ClientSessionContext;
    :cond_27
    :goto_27
    if-nez v3, :cond_2b

    .line 85
    monitor-exit p0

    return-object v0

    .line 88
    .restart local p0    # "this":Lcom/android/org/conscrypt/ClientSessionContext;
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSslSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "cipherSuite":Ljava/lang/String;
    const/4 v5, 0x0

    .line 90
    .local v5, "cipherSuiteFound":Z
    invoke-virtual {p3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    :goto_35
    if-ge v6, v8, :cond_44

    aget-object v9, v7, v6

    .line 91
    .local v9, "enabledCipherSuite":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_53

    if-eqz v10, :cond_41

    .line 92
    const/4 v5, 0x1

    .line 93
    goto :goto_44

    .line 90
    .end local v9    # "enabledCipherSuite":Ljava/lang/String;
    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 96
    .end local p0    # "this":Lcom/android/org/conscrypt/ClientSessionContext;
    :cond_44
    :goto_44
    if-nez v5, :cond_48

    .line 97
    monitor-exit p0

    return-object v0

    .line 100
    .restart local p0    # "this":Lcom/android/org/conscrypt/ClientSessionContext;
    :cond_48
    :try_start_48
    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/ClientSessionContext;->removeSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_53

    .line 103
    .end local p0    # "this":Lcom/android/org/conscrypt/ClientSessionContext;
    :cond_51
    monitor-exit p0

    return-object v1

    .line 66
    .end local v1    # "session":Lcom/android/org/conscrypt/NativeSslSession;
    .end local v2    # "protocol":Ljava/lang/String;
    .end local v3    # "protocolFound":Z
    .end local v4    # "cipherSuite":Ljava/lang/String;
    .end local v5    # "cipherSuiteFound":Z
    .end local p1    # "hostName":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "sslParameters":Lcom/android/org/conscrypt/SSLParametersImpl;
    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist getSessionFromPersistentCache([B)Lcom/android/org/conscrypt/NativeSslSession;
    .registers 3
    .param p1, "sessionId"    # [B

    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist onBeforeAddSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    .registers 8
    .param p1, "session"    # Lcom/android/org/conscrypt/NativeSslSession;

    .line 194
    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->getPeerPort()I

    move-result v1

    .line 196
    .local v1, "port":I
    if-nez v0, :cond_b

    .line 197
    return-void

    .line 200
    :cond_b
    new-instance v2, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 201
    .local v2, "key":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    invoke-direct {p0, v2, p1}, Lcom/android/org/conscrypt/ClientSessionContext;->putSession(Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 204
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    if-eqz v3, :cond_2c

    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 205
    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->toBytes()[B

    move-result-object v3

    .line 206
    .local v3, "data":[B
    if-eqz v3, :cond_2c

    .line 207
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->toSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/android/org/conscrypt/SSLClientSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    .line 210
    .end local v3    # "data":[B
    :cond_2c
    return-void
.end method

.method blacklist onBeforeRemoveSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    .registers 5
    .param p1, "session"    # Lcom/android/org/conscrypt/NativeSslSession;

    .line 214
    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 216
    return-void

    .line 218
    :cond_7
    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->getPeerPort()I

    move-result v1

    .line 219
    .local v1, "port":I
    new-instance v2, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 220
    .local v2, "hostAndPortKey":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    invoke-direct {p0, v2, p1}, Lcom/android/org/conscrypt/ClientSessionContext;->removeSession(Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 221
    return-void
.end method

.method public greylist core-platform-api setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V
    .registers 2
    .param p1, "persistentCache"    # Lcom/android/org/conscrypt/SSLClientSessionCache;

    .line 59
    iput-object p1, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    .line 60
    return-void
.end method

.method blacklist size()I
    .registers 6

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v1

    .line 109
    :try_start_4
    iget-object v2, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 110
    .local v3, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/NativeSslSession;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 111
    .end local v3    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/NativeSslSession;>;"
    goto :goto_e

    .line 112
    :cond_20
    monitor-exit v1

    .line 113
    return v0

    .line 112
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v2
.end method
