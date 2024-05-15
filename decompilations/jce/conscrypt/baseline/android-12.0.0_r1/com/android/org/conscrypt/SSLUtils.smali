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
.field private static final blacklist KEY_TYPE_EC:Ljava/lang/String; = "EC"

.field private static final blacklist KEY_TYPE_RSA:Ljava/lang/String; = "RSA"

.field private static final blacklist MAX_ENCRYPTION_OVERHEAD_DIFF:I = 0x7fffffa9

.field private static final blacklist MAX_ENCRYPTION_OVERHEAD_LENGTH:I = 0x56

.field private static final blacklist MAX_PROTOCOL_LENGTH:I = 0xff

.field static final blacklist USE_ENGINE_SOCKET_BY_DEFAULT:Z

.field private static final blacklist US_ASCII:Ljava/nio/charset/Charset;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 65
    nop

    .line 66
    const-string v0, "com.android.org.conscrypt.useEngineSocketByDefault"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/org/conscrypt/SSLUtils;->USE_ENGINE_SOCKET_BY_DEFAULT:Z

    .line 69
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/SSLUtils;->US_ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist calculateOutNetBufSize(I)I
    .registers 3
    .param p0, "pendingBytes"    # I

    .line 351
    nop

    .line 352
    const v0, 0x7fffffa9

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x56

    .line 351
    const/16 v1, 0x4145

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method static varargs blacklist concat([[Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p0, "arrays"    # [[Ljava/lang/String;

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "resultLength":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_d

    aget-object v4, p0, v3

    .line 571
    .local v4, "array":[Ljava/lang/String;
    array-length v5, v4

    add-int/2addr v0, v5

    .line 570
    .end local v4    # "array":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 573
    :cond_d
    new-array v1, v0, [Ljava/lang/String;

    .line 574
    .local v1, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 575
    .local v3, "resultOffset":I
    array-length v4, p0

    move v5, v2

    :goto_12
    if-ge v5, v4, :cond_1f

    aget-object v6, p0, v5

    .line 576
    .local v6, "array":[Ljava/lang/String;
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    array-length v7, v6

    add-int/2addr v3, v7

    .line 575
    .end local v6    # "array":[Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 579
    :cond_1f
    return-object v1
.end method

.method static blacklist decodeProtocols([B)[Ljava/lang/String;
    .registers 10
    .param p0, "protocols"    # [B

    .line 398
    array-length v0, p0

    if-nez v0, :cond_6

    .line 399
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    .line 402
    :cond_6
    const/4 v0, 0x0

    .line 403
    .local v0, "numProtocols":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_5d

    .line 404
    aget-byte v2, p0, v1

    .line 405
    .local v2, "protocolLength":I
    if-ltz v2, :cond_1a

    array-length v3, p0

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_14

    goto :goto_1a

    .line 412
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 413
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v3

    .line 414
    .end local v2    # "protocolLength":I
    goto :goto_8

    .line 406
    .restart local v2    # "protocolLength":I
    :cond_1a
    :goto_1a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Protocol has invalid length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    array-length v5, p0

    const/16 v6, 0x32

    if-ge v5, v6, :cond_40

    .line 409
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    goto :goto_52

    :cond_40
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " byte array"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 416
    .end local v1    # "i":I
    .end local v2    # "protocolLength":I
    :cond_5d
    new-array v1, v0, [Ljava/lang/String;

    .line 417
    .local v1, "decoded":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "d":I
    :goto_61
    array-length v4, p0

    if-ge v2, v4, :cond_7d

    .line 418
    aget-byte v4, p0, v2

    .line 419
    .local v4, "protocolLength":I
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "d":I
    .local v5, "d":I
    if-lez v4, :cond_74

    .line 420
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    sget-object v8, Lcom/android/org/conscrypt/SSLUtils;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, p0, v7, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_76

    .line 421
    :cond_74
    const-string v6, ""

    :goto_76
    aput-object v6, v1, v3

    .line 422
    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v3

    .line 423
    .end local v4    # "protocolLength":I
    move v3, v5

    goto :goto_61

    .line 425
    .end local v2    # "i":I
    .end local v5    # "d":I
    :cond_7d
    return-object v1
.end method

.method private static blacklist decodeX509Certificate(Ljava/security/cert/CertificateFactory;[B)Ljava/security/cert/X509Certificate;
    .registers 3
    .param p0, "certificateFactory"    # Ljava/security/cert/CertificateFactory;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 203
    if-eqz p0, :cond_e

    .line 204
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    return-object v0

    .line 207
    :cond_e
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method static blacklist decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;
    .registers 6
    .param p0, "certChain"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 184
    invoke-static {}, Lcom/android/org/conscrypt/SSLUtils;->getCertificateFactory()Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 185
    .local v0, "certificateFactory":Ljava/security/cert/CertificateFactory;
    array-length v1, p0

    .line 186
    .local v1, "numCerts":I
    new-array v2, v1, [Ljava/security/cert/X509Certificate;

    .line 187
    .local v2, "decodedCerts":[Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_15

    .line 188
    aget-object v4, p0, v3

    invoke-static {v0, v4}, Lcom/android/org/conscrypt/SSLUtils;->decodeX509Certificate(Ljava/security/cert/CertificateFactory;[B)Ljava/security/cert/X509Certificate;

    move-result-object v4

    aput-object v4, v2, v3

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 190
    .end local v3    # "i":I
    :cond_15
    return-object v2
.end method

.method static blacklist encodeProtocols([Ljava/lang/String;)[B
    .registers 12
    .param p0, "protocols"    # [Ljava/lang/String;

    .line 438
    if-eqz p0, :cond_ab

    .line 442
    array-length v0, p0

    if-nez v0, :cond_8

    .line 443
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object v0

    .line 447
    :cond_8
    const/4 v0, 0x0

    .line 448
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_5c

    .line 449
    aget-object v2, p0, v1

    .line 450
    .local v2, "protocol":Ljava/lang/String;
    const-string v3, "protocol["

    if-eqz v2, :cond_42

    .line 453
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 457
    .local v4, "protocolLength":I
    if-eqz v4, :cond_25

    const/16 v5, 0xff

    if-gt v4, v5, :cond_25

    .line 463
    add-int/lit8 v3, v4, 0x1

    add-int/2addr v0, v3

    .line 448
    .end local v2    # "protocol":Ljava/lang/String;
    .end local v4    # "protocolLength":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 458
    .restart local v2    # "protocol":Ljava/lang/String;
    .restart local v4    # "protocolLength":I
    :cond_25
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] has invalid length: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 451
    .end local v4    # "protocolLength":I
    :cond_42
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] is null"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 466
    .end local v1    # "i":I
    .end local v2    # "protocol":Ljava/lang/String;
    :cond_5c
    new-array v1, v0, [B

    .line 467
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "dataIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_60
    array-length v4, p0

    if-ge v3, v4, :cond_aa

    .line 468
    aget-object v4, p0, v3

    .line 469
    .local v4, "protocol":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 472
    .local v5, "protocolLength":I
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "dataIndex":I
    .local v6, "dataIndex":I
    int-to-byte v7, v5

    aput-byte v7, v1, v2

    .line 473
    const/4 v2, 0x0

    .local v2, "ci":I
    :goto_6f
    if-ge v2, v5, :cond_a6

    .line 474
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 475
    .local v7, "c":C
    const/16 v8, 0x7f

    if-gt v7, v8, :cond_82

    .line 480
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "dataIndex":I
    .local v8, "dataIndex":I
    int-to-byte v9, v7

    aput-byte v9, v1, v6

    .line 473
    .end local v7    # "c":C
    add-int/lit8 v2, v2, 0x1

    move v6, v8

    goto :goto_6f

    .line 477
    .end local v8    # "dataIndex":I
    .restart local v6    # "dataIndex":I
    .restart local v7    # "c":C
    :cond_82
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Protocol contains invalid character: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, "(protocol="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 467
    .end local v2    # "ci":I
    .end local v4    # "protocol":Ljava/lang/String;
    .end local v5    # "protocolLength":I
    .end local v7    # "c":C
    :cond_a6
    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_60

    .line 483
    .end local v3    # "i":I
    .end local v6    # "dataIndex":I
    :cond_aa
    return-object v1

    .line 439
    .end local v0    # "length":I
    .end local v1    # "data":[B
    :cond_ab
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols array must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist encodeSubjectX509Principals([Ljava/security/cert/X509Certificate;)[[B
    .registers 4
    .param p0, "certificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 313
    array-length v0, p0

    new-array v0, v0, [[B

    .line 314
    .local v0, "principalBytes":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 315
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 317
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method private static blacklist getCertificateFactory()Ljava/security/cert/CertificateFactory;
    .registers 2

    .line 195
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 196
    :catch_7
    move-exception v0

    .line 197
    .local v0, "e":Ljava/security/cert/CertificateException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist getClientKeyType(B)Ljava/lang/String;
    .registers 2
    .param p0, "clientCertificateType"    # B

    .line 237
    sparse-switch p0, :sswitch_data_c

    .line 243
    const/4 v0, 0x0

    return-object v0

    .line 241
    :sswitch_5
    const-string v0, "EC"

    return-object v0

    .line 239
    :sswitch_8
    const-string v0, "RSA"

    return-object v0

    nop

    :sswitch_data_c
    .sparse-switch
        0x1 -> :sswitch_8
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method static blacklist getClientKeyTypeFromSignatureAlg(I)Ljava/lang/String;
    .registers 2
    .param p0, "signatureAlg"    # I

    .line 250
    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_signature_algorithm_key_type(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_10

    .line 256
    const/4 v0, 0x0

    return-object v0

    .line 254
    :sswitch_9
    const-string v0, "EC"

    return-object v0

    .line 252
    :sswitch_c
    const-string v0, "RSA"

    return-object v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x6 -> :sswitch_c
        0x198 -> :sswitch_9
    .end sparse-switch
.end method

.method private static blacklist getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I
    .registers 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 531
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 533
    .local v0, "pos":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lcom/android/org/conscrypt/SSLUtils;->unsignedByte(B)S

    move-result v1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_30

    .line 541
    return v2

    .line 538
    :pswitch_11
    nop

    .line 545
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lcom/android/org/conscrypt/SSLUtils;->unsignedByte(B)S

    move-result v1

    .line 546
    .local v1, "majorVersion":I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_20

    .line 548
    return v2

    .line 552
    :cond_20
    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    invoke-static {v3}, Lcom/android/org/conscrypt/SSLUtils;->unsignedShort(S)I

    move-result v3

    const/4 v4, 0x5

    add-int/2addr v3, v4

    .line 553
    .local v3, "packetLength":I
    if-gt v3, v4, :cond_2f

    .line 555
    return v2

    .line 557
    :cond_2f
    return v3

    :pswitch_data_30
    .packed-switch 0x14
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method static blacklist getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I
    .registers 8
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 499
    aget-object v0, p0, p1

    .line 502
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_e

    .line 503
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1

    .line 508
    :cond_e
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 510
    .local v1, "tmp":Ljava/nio/ByteBuffer;
    :goto_12
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .local v2, "offset":I
    aget-object v0, p0, p1

    .line 511
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    .line 512
    .local p1, "pos":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 513
    .local v3, "limit":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v4, v5, :cond_30

    .line 514
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 517
    :cond_30
    :try_start_30
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_4a

    .line 520
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 521
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 522
    nop

    .line 523
    .end local v3    # "limit":I
    .end local p1    # "pos":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_48

    .line 526
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 527
    invoke-static {v1}, Lcom/android/org/conscrypt/SSLUtils;->getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    .line 523
    :cond_48
    move p1, v2

    goto :goto_12

    .line 520
    .restart local v3    # "limit":I
    .restart local p1    # "pos":I
    :catchall_4a
    move-exception v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 521
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 522
    throw v4
.end method

.method static blacklist getServerX509KeyType(J)Ljava/lang/String;
    .registers 5
    .param p0, "sslCipherNative"    # J

    .line 216
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CIPHER_get_kx_name(J)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "kx_name":Ljava/lang/String;
    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "DHE_RSA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "ECDHE_RSA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_2a

    .line 219
    :cond_1d
    const-string v1, "ECDHE_ECDSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 220
    const-string v1, "EC"

    return-object v1

    .line 222
    :cond_28
    const/4 v1, 0x0

    return-object v1

    .line 218
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method static blacklist getSupportedClientKeyTypes([B[I)Ljava/util/Set;
    .registers 8
    .param p0, "clientCertificateTypes"    # [B
    .param p1, "signatureAlgs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 280
    .local v0, "fromClientCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_1a

    aget-byte v4, p0, v3

    .line 281
    .local v4, "keyTypeCode":B
    invoke-static {v4}, Lcom/android/org/conscrypt/SSLUtils;->getClientKeyType(B)Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "keyType":Ljava/lang/String;
    if-nez v5, :cond_14

    .line 284
    goto :goto_17

    .line 286
    :cond_14
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v4    # "keyTypeCode":B
    .end local v5    # "keyType":Ljava/lang/String;
    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 289
    :cond_1a
    new-instance v1, Ljava/util/LinkedHashSet;

    array-length v3, p1

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 290
    .local v1, "fromSigAlgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v3, p1

    :goto_21
    if-ge v2, v3, :cond_32

    aget v4, p1, v2

    .line 291
    .local v4, "signatureAlg":I
    invoke-static {v4}, Lcom/android/org/conscrypt/SSLUtils;->getClientKeyTypeFromSignatureAlg(I)Ljava/lang/String;

    move-result-object v5

    .line 292
    .restart local v5    # "keyType":Ljava/lang/String;
    if-nez v5, :cond_2c

    .line 294
    goto :goto_2f

    .line 296
    :cond_2c
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    .end local v4    # "signatureAlg":I
    .end local v5    # "keyType":Ljava/lang/String;
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 301
    :cond_32
    array-length v2, p0

    if-lez v2, :cond_3c

    array-length v2, p1

    if-lez v2, :cond_3c

    .line 302
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 303
    return-object v1

    .line 304
    :cond_3c
    array-length v2, p1

    if-lez v2, :cond_40

    .line 305
    return-object v1

    .line 307
    :cond_40
    return-object v0
.end method

.method static blacklist toCertificateChain([Ljava/security/cert/X509Certificate;)[Ljavax/security/cert/X509Certificate;
    .registers 5
    .param p0, "certificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 327
    :try_start_0
    array-length v0, p0

    new-array v0, v0, [Ljavax/security/cert/X509Certificate;

    .line 330
    .local v0, "chain":[Ljavax/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 331
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 332
    .local v2, "encoded":[B
    invoke-static {v2}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_13
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_13} :catch_25
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_13} :catch_17

    .line 330
    .end local v2    # "encoded":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 334
    .end local v1    # "i":I
    :cond_16
    return-object v0

    .line 339
    .end local v0    # "chain":[Ljavax/security/cert/X509Certificate;
    :catch_17
    move-exception v0

    .line 340
    .local v0, "e":Ljavax/security/cert/CertificateException;
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v0}, Ljavax/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 341
    .local v1, "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 342
    throw v1

    .line 335
    .end local v0    # "e":Ljavax/security/cert/CertificateException;
    .end local v1    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :catch_25
    move-exception v0

    .line 336
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 337
    .restart local v1    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 338
    throw v1
.end method

.method static blacklist toProtocolBytes(Ljava/lang/String;)[B
    .registers 2
    .param p0, "protocol"    # Ljava/lang/String;

    .line 384
    if-nez p0, :cond_4

    .line 385
    const/4 v0, 0x0

    return-object v0

    .line 387
    :cond_4
    sget-object v0, Lcom/android/org/conscrypt/SSLUtils;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method static blacklist toProtocolString([B)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B

    .line 377
    if-nez p0, :cond_4

    .line 378
    const/4 v0, 0x0

    return-object v0

    .line 380
    :cond_4
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/org/conscrypt/SSLUtils;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method static blacklist toSSLException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    .registers 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 370
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_8

    .line 371
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLException;

    return-object v0

    .line 373
    :cond_8
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static blacklist toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;
    .registers 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 359
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_8

    .line 360
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLHandshakeException;

    return-object v0

    .line 363
    :cond_8
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLHandshakeException;

    return-object v0
.end method

.method private static blacklist unsignedByte(B)S
    .registers 2
    .param p0, "b"    # B

    .line 561
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static blacklist unsignedShort(S)I
    .registers 2
    .param p0, "s"    # S

    .line 565
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method
