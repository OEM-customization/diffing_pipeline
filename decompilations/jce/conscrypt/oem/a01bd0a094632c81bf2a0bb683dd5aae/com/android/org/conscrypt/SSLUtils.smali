.class final Lcom/android/org/conscrypt/SSLUtils;
.super Ljava/lang/Object;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/SSLUtils$EngineStates;,
        Lcom/android/org/conscrypt/SSLUtils$SessionType;
    }
.end annotation


# static fields
.field private static final KEY_TYPE_EC:Ljava/lang/String; = "EC"

.field private static final KEY_TYPE_RSA:Ljava/lang/String; = "RSA"

.field private static final MAX_ENCRYPTION_OVERHEAD_DIFF:I = 0x7fffffaa

.field private static final MAX_ENCRYPTION_OVERHEAD_LENGTH:I = 0x55

.field private static final MAX_PROTOCOL_LENGTH:I = 0xff

.field static final USE_ENGINE_SOCKET_BY_DEFAULT:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    const-string/jumbo v0, "com.android.org.conscrypt.useEngineSocketByDefault"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/org/conscrypt/SSLUtils;->USE_ENGINE_SOCKET_BY_DEFAULT:Z

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateOutNetBufSize(I)I
    .registers 3
    .param p0, "pendingBytes"    # I

    .prologue
    .line 274
    const v0, 0x7fffffaa

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x55

    .line 273
    const/16 v1, 0x4145

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method static encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    .registers 4
    .param p0, "certificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 236
    array-length v2, p0

    new-array v1, v2, [[B

    .line 237
    .local v1, "principalBytes":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_16

    .line 238
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 240
    :cond_16
    return-object v1
.end method

.method static getClientKeyType(B)Ljava/lang/String;
    .registers 2
    .param p0, "clientCertificateType"    # B

    .prologue
    .line 200
    sparse-switch p0, :sswitch_data_e

    .line 206
    const/4 v0, 0x0

    return-object v0

    .line 202
    :sswitch_5
    const-string/jumbo v0, "RSA"

    return-object v0

    .line 204
    :sswitch_9
    const-string/jumbo v0, "EC"

    return-object v0

    .line 200
    nop

    :sswitch_data_e
    .sparse-switch
        0x1 -> :sswitch_5
        0x40 -> :sswitch_9
    .end sparse-switch
.end method

.method private static getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I
    .registers 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v4, -0x1

    .line 388
    const/4 v1, 0x0

    .line 389
    .local v1, "packetLength":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 391
    .local v2, "pos":I
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Lcom/android/org/conscrypt/SSLUtils;->unsignedByte(B)S

    move-result v3

    packed-switch v3, :pswitch_data_32

    .line 399
    return v4

    .line 403
    :pswitch_12
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Lcom/android/org/conscrypt/SSLUtils;->unsignedByte(B)S

    move-result v0

    .line 404
    .local v0, "majorVersion":I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_20

    .line 406
    return v4

    .line 410
    :cond_20
    add-int/lit8 v3, v2, 0x3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    invoke-static {v3}, Lcom/android/org/conscrypt/SSLUtils;->unsignedShort(S)I

    move-result v3

    add-int/lit8 v1, v3, 0x5

    .line 411
    const/4 v3, 0x5

    if-gt v1, v3, :cond_30

    .line 413
    return v4

    .line 415
    :cond_30
    return v1

    .line 391
    nop

    :pswitch_data_32
    .packed-switch 0x14
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method static getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I
    .registers 9
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x5

    .line 312
    aget-object v0, p0, p1

    .line 315
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v6, :cond_e

    .line 316
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I

    move-result v5

    return v5

    .line 321
    :cond_e
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 323
    .local v4, "tmp":Ljava/nio/ByteBuffer;
    :goto_12
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .local v2, "offset":I
    aget-object v0, p0, p1

    .line 324
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 325
    .local v3, "pos":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 326
    .local v1, "limit":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v5, v6, :cond_30

    .line 327
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 330
    :cond_30
    :try_start_30
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_41

    .line 333
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 334
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 336
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_49

    move p1, v2

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_12

    .line 331
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    :catchall_41
    move-exception v5

    .line 333
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 334
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 331
    throw v5

    .line 339
    :cond_49
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 340
    invoke-static {v4}, Lcom/android/org/conscrypt/SSLUtils;->getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I

    move-result v5

    return v5
.end method

.method static getServerX509KeyType(J)Ljava/lang/String;
    .registers 4
    .param p0, "sslCipherNative"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CIPHER_get_kx_name(J)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "kx_name":Ljava/lang/String;
    const-string/jumbo v1, "RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "DHE_RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "ECDHE_RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 182
    :cond_1f
    const-string/jumbo v1, "RSA"

    return-object v1

    .line 183
    :cond_23
    const-string/jumbo v1, "ECDHE_ECDSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 184
    const-string/jumbo v1, "EC"

    return-object v1

    .line 186
    :cond_30
    const/4 v1, 0x0

    return-object v1
.end method

.method static getSupportedClientKeyTypes([B)Ljava/util/Set;
    .registers 6
    .param p0, "clientCertificateTypes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v2, Ljava/util/HashSet;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 223
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    array-length v4, p0

    :goto_8
    if-ge v3, v4, :cond_19

    aget-byte v1, p0, v3

    .line 224
    .local v1, "keyTypeCode":B
    invoke-static {v1}, Lcom/android/org/conscrypt/SSLUtils;->getClientKeyType(B)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "keyType":Ljava/lang/String;
    if-nez v0, :cond_15

    .line 223
    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 229
    :cond_15
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 231
    .end local v0    # "keyType":Ljava/lang/String;
    .end local v1    # "keyTypeCode":B
    :cond_19
    return-object v2
.end method

.method static toCertificateChain([Ljava/security/cert/X509Certificate;)[Ljavax/security/cert/X509Certificate;
    .registers 8
    .param p0, "certificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 250
    :try_start_0
    array-length v6, p0

    new-array v0, v6, [Ljavax/security/cert/X509Certificate;

    .line 252
    .local v0, "chain":[Ljavax/security/cert/X509Certificate;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    array-length v6, p0

    if-ge v5, v6, :cond_16

    .line 253
    aget-object v6, p0, v5

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    .line 254
    .local v3, "encoded":[B
    invoke-static {v3}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v6

    aput-object v6, v0, v5
    :try_end_13
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_13} :catch_25
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_13} :catch_17

    .line 252
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 256
    .end local v3    # "encoded":[B
    :cond_16
    return-object v0

    .line 261
    .end local v0    # "chain":[Ljavax/security/cert/X509Certificate;
    .end local v5    # "i":I
    :catch_17
    move-exception v2

    .line 262
    .local v2, "e":Ljavax/security/cert/CertificateException;
    new-instance v4, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v2}, Ljavax/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 263
    .local v4, "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v4, v4}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 264
    throw v4

    .line 257
    .end local v2    # "e":Ljavax/security/cert/CertificateException;
    .end local v4    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :catch_25
    move-exception v1

    .line 258
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 259
    .restart local v4    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v4, v4}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 260
    throw v4
.end method

.method static varargs toLengthPrefixedList([Ljava/lang/String;)[B
    .registers 13
    .param p0, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 352
    const/4 v6, 0x0

    .line 353
    .local v6, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v9, p0

    if-ge v5, v9, :cond_3e

    .line 354
    aget-object v9, p0, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 358
    .local v8, "protocolLength":I
    if-eqz v8, :cond_11

    const/16 v9, 0xff

    if-le v8, v9, :cond_38

    .line 359
    :cond_11
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Protocol has invalid length ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 360
    const-string/jumbo v11, "): "

    .line 359
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 360
    aget-object v11, p0, v5

    .line 359
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 364
    :cond_38
    add-int/lit8 v9, v8, 0x1

    add-int/2addr v6, v9

    .line 353
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 367
    .end local v8    # "protocolLength":I
    :cond_3e
    new-array v2, v6, [B

    .line 368
    .local v2, "data":[B
    const/4 v3, 0x0

    .local v3, "dataIndex":I
    const/4 v5, 0x0

    :goto_42
    array-length v9, p0

    if-ge v5, v9, :cond_94

    .line 369
    aget-object v7, p0, v5

    .line 370
    .local v7, "protocol":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 373
    .restart local v8    # "protocolLength":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "dataIndex":I
    .local v4, "dataIndex":I
    int-to-byte v9, v8

    aput-byte v9, v2, v3

    .line 374
    const/4 v1, 0x0

    .local v1, "ci":I
    :goto_51
    if-ge v1, v8, :cond_90

    .line 375
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 376
    .local v0, "c":C
    const/16 v9, 0x7f

    if-le v0, v9, :cond_87

    .line 378
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Protocol contains invalid character: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 379
    const-string/jumbo v11, "(protocol="

    .line 378
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 379
    const-string/jumbo v11, ")"

    .line 378
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 381
    :cond_87
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "dataIndex":I
    .restart local v3    # "dataIndex":I
    int-to-byte v9, v0

    aput-byte v9, v2, v4

    .line 374
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "dataIndex":I
    .restart local v4    # "dataIndex":I
    goto :goto_51

    .line 368
    .end local v0    # "c":C
    :cond_90
    add-int/lit8 v5, v5, 0x1

    move v3, v4

    .end local v4    # "dataIndex":I
    .restart local v3    # "dataIndex":I
    goto :goto_42

    .line 384
    .end local v1    # "ci":I
    .end local v7    # "protocol":Ljava/lang/String;
    .end local v8    # "protocolLength":I
    :cond_94
    return-object v2
.end method

.method static toSSLException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    .registers 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 292
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_7

    .line 293
    check-cast p0, Ljavax/net/ssl/SSLException;

    .end local p0    # "e":Ljava/lang/Throwable;
    return-object p0

    .line 295
    .restart local p0    # "e":Ljava/lang/Throwable;
    :cond_7
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;
    .registers 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 281
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_7

    .line 282
    check-cast p0, Ljavax/net/ssl/SSLHandshakeException;

    .end local p0    # "e":Ljava/lang/Throwable;
    return-object p0

    .line 285
    .restart local p0    # "e":Ljava/lang/Throwable;
    :cond_7
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLHandshakeException;

    return-object v0
.end method

.method private static unsignedByte(B)S
    .registers 2
    .param p0, "b"    # B

    .prologue
    .line 419
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static unsignedShort(S)I
    .registers 2
    .param p0, "s"    # S

    .prologue
    .line 423
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method
