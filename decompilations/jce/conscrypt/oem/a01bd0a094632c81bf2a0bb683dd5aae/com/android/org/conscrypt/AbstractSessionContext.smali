.class abstract Lcom/android/org/conscrypt/AbstractSessionContext;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/AbstractSessionContext$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_SESSION_TIMEOUT_SECONDS:I = 0x7080


# instance fields
.field private volatile maximumSize:I

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/org/conscrypt/ByteArray;",
            "Lcom/android/org/conscrypt/SslSessionWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final sslCtxNativePointer:J

.field private volatile timeout:I


# direct methods
.method static synthetic -get0(Lcom/android/org/conscrypt/AbstractSessionContext;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/org/conscrypt/AbstractSessionContext;

    .prologue
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    return v0
.end method

.method constructor <init>(I)V
    .registers 4
    .param p1, "maximumSize"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x7080

    iput v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    .line 42
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_new()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    .line 46
    new-instance v0, Lcom/android/org/conscrypt/AbstractSessionContext$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractSessionContext$1;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;)V

    .line 45
    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    .line 67
    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    .line 68
    return-void
.end method

.method private trimToSize()V
    .registers 8

    .prologue
    .line 259
    iget-object v6, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v6

    .line 260
    :try_start_3
    iget-object v5, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v4

    .line 261
    .local v4, "size":I
    iget v5, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    if-le v4, v5, :cond_2e

    .line 262
    iget v5, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    sub-int v1, v4, v5

    .line 263
    .local v1, "removals":I
    iget-object v5, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/conscrypt/SslSessionWrapper;>;"
    move v2, v1

    .line 264
    .end local v1    # "removals":I
    .local v2, "removals":I
    :goto_1c
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "removals":I
    .restart local v1    # "removals":I
    if-lez v2, :cond_2e

    .line 265
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/conscrypt/SslSessionWrapper;

    .line 266
    .local v3, "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lcom/android/org/conscrypt/SslSessionWrapper;)V

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_30

    move v2, v1

    .end local v1    # "removals":I
    .restart local v2    # "removals":I
    goto :goto_1c

    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/conscrypt/SslSessionWrapper;>;"
    .end local v2    # "removals":I
    .end local v3    # "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    :cond_2e
    monitor-exit v6

    .line 271
    return-void

    .line 259
    .end local v4    # "size":I
    :catchall_30
    move-exception v5

    monitor-exit v6

    throw v5
.end method


# virtual methods
.method final cacheSession(Lcom/android/org/conscrypt/SslSessionWrapper;)V
    .registers 6
    .param p1, "session"    # Lcom/android/org/conscrypt/SslSessionWrapper;

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SslSessionWrapper;->getId()[B

    move-result-object v0

    .line 197
    .local v0, "id":[B
    if-eqz v0, :cond_9

    array-length v2, v0

    if-nez v2, :cond_a

    .line 198
    :cond_9
    return-void

    .line 202
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->onBeforeAddSession(Lcom/android/org/conscrypt/SslSessionWrapper;)V

    .line 204
    new-instance v1, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    .line 205
    .local v1, "key":Lcom/android/org/conscrypt/ByteArray;
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    .line 206
    :try_start_15
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1c

    monitor-exit v3

    .line 208
    return-void

    .line 205
    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_free(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 188
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 190
    return-void

    .line 187
    :catchall_9
    move-exception v0

    .line 188
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 187
    throw v0
.end method

.method public final getIds()Ljava/util/Enumeration;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v2

    .line 79
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/org/conscrypt/SslSessionWrapper;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/org/conscrypt/SslSessionWrapper;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_26

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/conscrypt/SslSessionWrapper;>;"
    monitor-exit v2

    .line 82
    new-instance v1, Lcom/android/org/conscrypt/AbstractSessionContext$2;

    invoke-direct {v1, p0, v0}, Lcom/android/org/conscrypt/AbstractSessionContext$2;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Ljava/util/Iterator;)V

    return-object v1

    .line 78
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/conscrypt/SslSessionWrapper;>;"
    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getSession([B)Ljavax/net/ssl/SSLSession;
    .registers 7
    .param p1, "sessionId"    # [B

    .prologue
    const/4 v4, 0x0

    .line 119
    if-nez p1, :cond_c

    .line 120
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "sessionId"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_c
    new-instance v0, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    .line 124
    .local v0, "key":Lcom/android/org/conscrypt/ByteArray;
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    .line 125
    :try_start_14
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/SslSessionWrapper;
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_2a

    .local v1, "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    monitor-exit v3

    .line 127
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SslSessionWrapper;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 128
    invoke-virtual {v1}, Lcom/android/org/conscrypt/SslSessionWrapper;->toSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    return-object v2

    .line 124
    .end local v1    # "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    :catchall_2a
    move-exception v2

    monitor-exit v3

    throw v2

    .line 130
    .restart local v1    # "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    :cond_2d
    return-object v4
.end method

.method public final getSessionCacheSize()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    return v0
.end method

.method final getSessionFromCache([B)Lcom/android/org/conscrypt/SslSessionWrapper;
    .registers 6
    .param p1, "sessionId"    # [B

    .prologue
    const/4 v1, 0x0

    .line 215
    if-nez p1, :cond_4

    .line 216
    return-object v1

    .line 221
    :cond_4
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v2

    .line 222
    :try_start_7
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    new-instance v3, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v3, p1}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SslSessionWrapper;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1e

    .local v0, "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    monitor-exit v2

    .line 224
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslSessionWrapper;->isValid()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 225
    return-object v0

    .line 221
    .end local v0    # "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1

    .line 229
    .restart local v0    # "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->getSessionFromPersistentCache([B)Lcom/android/org/conscrypt/SslSessionWrapper;

    move-result-object v1

    return-object v1
.end method

.method abstract getSessionFromPersistentCache([B)Lcom/android/org/conscrypt/SslSessionWrapper;
.end method

.method public final getSessionTimeout()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    return v0
.end method

.method abstract onBeforeAddSession(Lcom/android/org/conscrypt/SslSessionWrapper;)V
.end method

.method abstract onBeforeRemoveSession(Lcom/android/org/conscrypt/SslSessionWrapper;)V
.end method

.method public final setSessionCacheSize(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 170
    if-gez p1, :cond_b

    .line 171
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "size < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_b
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    .line 175
    .local v0, "oldMaximum":I
    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    .line 178
    if-ge p1, v0, :cond_14

    .line 179
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractSessionContext;->trimToSize()V

    .line 181
    :cond_14
    return-void
.end method

.method public final setSessionTimeout(I)V
    .registers 10
    .param p1, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 145
    if-gez p1, :cond_b

    .line 146
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "seconds < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_b
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    .line 151
    :try_start_e
    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    .line 152
    iget-wide v4, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    int-to-long v6, p1

    invoke-static {v4, v5, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_set_timeout(JJ)J

    .line 154
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 155
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/conscrypt/SslSessionWrapper;>;"
    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/SslSessionWrapper;

    .line 159
    .local v1, "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/SslSessionWrapper;->isValid()Z

    move-result v2

    if-nez v2, :cond_20

    .line 161
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lcom/android/org/conscrypt/SslSessionWrapper;)V

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_39

    goto :goto_20

    .line 149
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/conscrypt/SslSessionWrapper;>;"
    .end local v1    # "session":Lcom/android/org/conscrypt/SslSessionWrapper;
    :catchall_39
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/conscrypt/SslSessionWrapper;>;"
    :cond_3c
    monitor-exit v3

    .line 166
    return-void
.end method
