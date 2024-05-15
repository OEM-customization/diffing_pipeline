.class abstract Lcom/android/org/conscrypt/AbstractSessionContext;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# static fields
.field private static final blacklist DEFAULT_SESSION_TIMEOUT_SECONDS:I = 0x7080


# instance fields
.field private volatile blacklist maximumSize:I

.field private final blacklist sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/org/conscrypt/ByteArray;",
            "Lcom/android/org/conscrypt/NativeSslSession;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist sslCtxNativePointer:J

.field private volatile blacklist timeout:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 4
    .param p1, "maximumSize"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x7080

    iput v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    .line 43
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_new()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    .line 45
    new-instance v0, Lcom/android/org/conscrypt/AbstractSessionContext$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractSessionContext$1;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    .line 67
    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    .line 68
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/org/conscrypt/AbstractSessionContext;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/AbstractSessionContext;

    .line 32
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    return v0
.end method

.method private blacklist trimToSize()V
    .registers 6

    .line 291
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    .line 292
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 293
    .local v1, "size":I
    iget v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    if-le v1, v2, :cond_2d

    .line 294
    iget v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    sub-int v2, v1, v2

    .line 295
    .local v2, "removals":I
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 296
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/org/conscrypt/NativeSslSession;>;"
    :goto_1b
    add-int/lit8 v4, v2, -0x1

    .end local v2    # "removals":I
    .local v4, "removals":I
    if-lez v2, :cond_2d

    .line 297
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/conscrypt/NativeSslSession;

    .line 298
    .local v2, "session":Lcom/android/org/conscrypt/NativeSslSession;
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 299
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 300
    .end local v2    # "session":Lcom/android/org/conscrypt/NativeSslSession;
    move v2, v4

    goto :goto_1b

    .line 302
    .end local v1    # "size":I
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/org/conscrypt/NativeSslSession;>;"
    .end local v4    # "removals":I
    :cond_2d
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method


# virtual methods
.method final blacklist cacheSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    .registers 6
    .param p1, "session"    # Lcom/android/org/conscrypt/NativeSslSession;

    .line 203
    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->getId()[B

    move-result-object v0

    .line 204
    .local v0, "id":[B
    if-eqz v0, :cond_33

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_33

    .line 208
    :cond_a
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v1

    .line 209
    :try_start_d
    new-instance v2, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v2, v0}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    .line 210
    .local v2, "key":Lcom/android/org/conscrypt/ByteArray;
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 211
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/conscrypt/NativeSslSession;

    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/AbstractSessionContext;->removeSession(Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 214
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->onBeforeAddSession(Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 216
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    nop

    .end local v2    # "key":Lcom/android/org/conscrypt/ByteArray;
    monitor-exit v1

    .line 218
    return-void

    .line 217
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_30

    throw v2

    .line 205
    :cond_33
    :goto_33
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 193
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_free(JLcom/android/org/conscrypt/AbstractSessionContext;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 195
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 196
    nop

    .line 197
    return-void

    .line 195
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 196
    throw v0
.end method

.method public final whitelist test-api getIds()Ljava/util/Enumeration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "[B>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    .line 79
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/org/conscrypt/NativeSslSession;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/org/conscrypt/NativeSslSession;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/org/conscrypt/NativeSslSession;>;"
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    .line 81
    new-instance v0, Lcom/android/org/conscrypt/AbstractSessionContext$2;

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext$2;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Ljava/util/Iterator;)V

    return-object v0

    .line 80
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/org/conscrypt/NativeSslSession;>;"
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public final whitelist test-api getSession([B)Ljavax/net/ssl/SSLSession;
    .registers 5
    .param p1, "sessionId"    # [B

    .line 118
    if-eqz p1, :cond_25

    .line 121
    new-instance v0, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    .line 123
    .local v0, "key":Lcom/android/org/conscrypt/ByteArray;
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v1

    .line 124
    :try_start_a
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/conscrypt/NativeSslSession;

    .line 125
    .local v2, "session":Lcom/android/org/conscrypt/NativeSslSession;
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_22

    .line 126
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSslSession;->isValid()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 127
    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSslSession;->toSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    return-object v1

    .line 129
    :cond_20
    const/4 v1, 0x0

    return-object v1

    .line 125
    .end local v2    # "session":Lcom/android/org/conscrypt/NativeSslSession;
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2

    .line 119
    .end local v0    # "key":Lcom/android/org/conscrypt/ByteArray;
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sessionId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getSessionCacheSize()I
    .registers 2

    .line 134
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    return v0
.end method

.method final blacklist getSessionFromCache([B)Lcom/android/org/conscrypt/NativeSslSession;
    .registers 5
    .param p1, "sessionId"    # [B

    .line 242
    if-nez p1, :cond_4

    .line 243
    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    .line 249
    :try_start_7
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    new-instance v2, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v2, p1}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/NativeSslSession;

    .line 250
    .local v1, "session":Lcom/android/org/conscrypt/NativeSslSession;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_2c

    .line 251
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSslSession;->isValid()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 252
    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 253
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->removeSession(Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 255
    :cond_26
    return-object v1

    .line 261
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->getSessionFromPersistentCache([B)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v0

    return-object v0

    .line 250
    .end local v1    # "session":Lcom/android/org/conscrypt/NativeSslSession;
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method abstract blacklist getSessionFromPersistentCache([B)Lcom/android/org/conscrypt/NativeSslSession;
.end method

.method public final whitelist test-api getSessionTimeout()I
    .registers 2

    .line 139
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    return v0
.end method

.method abstract blacklist onBeforeAddSession(Lcom/android/org/conscrypt/NativeSslSession;)V
.end method

.method abstract blacklist onBeforeRemoveSession(Lcom/android/org/conscrypt/NativeSslSession;)V
.end method

.method final blacklist removeSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    .registers 6
    .param p1, "session"    # Lcom/android/org/conscrypt/NativeSslSession;

    .line 224
    invoke-virtual {p1}, Lcom/android/org/conscrypt/NativeSslSession;->getId()[B

    move-result-object v0

    .line 225
    .local v0, "id":[B
    if-eqz v0, :cond_1f

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_1f

    .line 229
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 231
    new-instance v1, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    .line 232
    .local v1, "key":Lcom/android/org/conscrypt/ByteArray;
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v2

    .line 233
    :try_start_15
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    monitor-exit v2

    .line 235
    return-void

    .line 234
    :catchall_1c
    move-exception v3

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v3

    .line 226
    .end local v1    # "key":Lcom/android/org/conscrypt/ByteArray;
    :cond_1f
    :goto_1f
    return-void
.end method

.method public final whitelist test-api setSessionCacheSize(I)V
    .registers 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 176
    if-ltz p1, :cond_c

    .line 180
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    .line 181
    .local v0, "oldMaximum":I
    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    .line 184
    if-ge p1, v0, :cond_b

    .line 185
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractSessionContext;->trimToSize()V

    .line 187
    :cond_b
    return-void

    .line 177
    .end local v0    # "oldMaximum":I
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api setSessionTimeout(I)V
    .registers 7
    .param p1, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 144
    if-ltz p1, :cond_40

    .line 148
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    .line 150
    :try_start_5
    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    .line 154
    if-lez p1, :cond_10

    .line 155
    iget-wide v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    int-to-long v3, p1

    invoke-static {v1, v2, p0, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_set_timeout(JLcom/android/org/conscrypt/AbstractSessionContext;J)J

    goto :goto_18

    .line 157
    :cond_10
    iget-wide v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    const-wide/32 v3, 0x7fffffff

    invoke-static {v1, v2, p0, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_set_timeout(JLcom/android/org/conscrypt/AbstractSessionContext;J)J

    .line 160
    :goto_18
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 161
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/org/conscrypt/NativeSslSession;>;"
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/conscrypt/NativeSslSession;

    .line 165
    .local v2, "session":Lcom/android/org/conscrypt/NativeSslSession;
    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSslSession;->isValid()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 167
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lcom/android/org/conscrypt/NativeSslSession;)V

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 170
    .end local v2    # "session":Lcom/android/org/conscrypt/NativeSslSession;
    :cond_3a
    goto :goto_22

    .line 171
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/org/conscrypt/NativeSslSession;>;"
    :cond_3b
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_3d

    throw v1

    .line 145
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "seconds < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
