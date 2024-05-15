.class public Lsun/security/provider/X509Factory;
.super Ljava/lang/Object;
.source "X509Factory.java"


# static fields
.field private static final ENC_MAX_LENGTH:I = 0x400000

.field private static final certCache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Ljava/lang/Object;",
            "Lsun/security/x509/X509CertImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final crlCache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Ljava/lang/Object;",
            "Lsun/security/x509/X509CRLImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x2ee

    .line 64
    invoke-static {v1}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    .line 63
    sput-object v0, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    .line 66
    invoke-static {v1}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    .line 65
    sput-object v0, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    .registers 7
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/security/util/Cache",
            "<",
            "Ljava/lang/Object;",
            "TV;>;[BTV;)V"
        }
    .end annotation

    .prologue
    .local p0, "cache":Lsun/security/util/Cache;, "Lsun/security/util/Cache<Ljava/lang/Object;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const-class v2, Lsun/security/provider/X509Factory;

    monitor-enter v2

    .line 227
    :try_start_3
    array-length v1, p1
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_14

    const/high16 v3, 0x400000

    if-le v1, v3, :cond_a

    monitor-exit v2

    .line 228
    return-void

    .line 230
    :cond_a
    :try_start_a
    new-instance v0, Lsun/security/util/Cache$EqualByteArray;

    invoke-direct {v0, p1}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    .line 231
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, v0, p2}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_14

    monitor-exit v2

    .line 232
    return-void

    .end local v0    # "key":Ljava/lang/Object;
    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;
    .registers 5
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/security/util/Cache",
            "<TK;TV;>;[B)TV;"
        }
    .end annotation

    .prologue
    .local p0, "cache":Lsun/security/util/Cache;, "Lsun/security/util/Cache<TK;TV;>;"
    const-class v2, Lsun/security/provider/X509Factory;

    monitor-enter v2

    .line 218
    :try_start_3
    new-instance v0, Lsun/security/util/Cache$EqualByteArray;

    invoke-direct {v0, p1}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    .line 219
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result-object v1

    monitor-exit v2

    return-object v1

    .end local v0    # "key":Ljava/lang/Object;
    :catchall_e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized intern(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;
    .registers 7
    .param p0, "c"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-class v5, Lsun/security/provider/X509Factory;

    monitor-enter v5

    .line 189
    if-nez p0, :cond_8

    monitor-exit v5

    .line 190
    return-object v4

    .line 192
    :cond_8
    :try_start_8
    instance-of v2, p0, Lsun/security/x509/X509CRLImpl;

    .line 194
    .local v2, "isImpl":Z
    if-eqz v2, :cond_20

    .line 195
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CRLImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v1

    .line 199
    .local v1, "encoding":[B
    :goto_14
    sget-object v4, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    invoke-static {v4, v1}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/X509CRLImpl;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_3c

    .line 200
    .local v3, "newC":Lsun/security/x509/X509CRLImpl;
    if-eqz v3, :cond_25

    monitor-exit v5

    .line 201
    return-object v3

    .line 197
    .end local v1    # "encoding":[B
    .end local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto :goto_14

    .line 203
    .restart local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    :cond_25
    if-eqz v2, :cond_32

    .line 204
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CRLImpl;

    move-object v3, v0

    .line 209
    :goto_2b
    sget-object v4, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    invoke-static {v4, v1, v3}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_3c

    monitor-exit v5

    .line 210
    return-object v3

    .line 206
    :cond_32
    :try_start_32
    new-instance v3, Lsun/security/x509/X509CRLImpl;

    .end local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    invoke-direct {v3, v1}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    .line 207
    .restart local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    invoke-virtual {v3}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3c

    move-result-object v1

    goto :goto_2b

    .end local v1    # "encoding":[B
    .end local v2    # "isImpl":Z
    .end local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    :catchall_3c
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    .registers 7
    .param p0, "c"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-class v5, Lsun/security/provider/X509Factory;

    monitor-enter v5

    .line 153
    if-nez p0, :cond_8

    monitor-exit v5

    .line 154
    return-object v4

    .line 156
    :cond_8
    :try_start_8
    instance-of v2, p0, Lsun/security/x509/X509CertImpl;

    .line 158
    .local v2, "isImpl":Z
    if-eqz v2, :cond_20

    .line 159
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v1

    .line 163
    .local v1, "encoding":[B
    :goto_14
    sget-object v4, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-static {v4, v1}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/X509CertImpl;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_3c

    .line 164
    .local v3, "newC":Lsun/security/x509/X509CertImpl;
    if-eqz v3, :cond_25

    monitor-exit v5

    .line 165
    return-object v3

    .line 161
    .end local v1    # "encoding":[B
    .end local v3    # "newC":Lsun/security/x509/X509CertImpl;
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto :goto_14

    .line 167
    .restart local v3    # "newC":Lsun/security/x509/X509CertImpl;
    :cond_25
    if-eqz v2, :cond_32

    .line 168
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    move-object v3, v0

    .line 173
    :goto_2b
    sget-object v4, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-static {v4, v1, v3}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_3c

    monitor-exit v5

    .line 174
    return-object v3

    .line 170
    :cond_32
    :try_start_32
    new-instance v3, Lsun/security/x509/X509CertImpl;

    .end local v3    # "newC":Lsun/security/x509/X509CertImpl;
    invoke-direct {v3, v1}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    .line 171
    .restart local v3    # "newC":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3c

    move-result-object v1

    goto :goto_2b

    .end local v1    # "encoding":[B
    .end local v2    # "isImpl":Z
    .end local v3    # "newC":Lsun/security/x509/X509CertImpl;
    :catchall_3c
    move-exception v4

    monitor-exit v5

    throw v4
.end method
