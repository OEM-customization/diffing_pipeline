.class abstract Lcom/android/org/conscrypt/NativeSslSession;
.super Ljava/lang/Object;
.source "NativeSslSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/NativeSslSession$Impl;
    }
.end annotation


# static fields
.field private static final blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lcom/android/org/conscrypt/NativeSslSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/NativeSslSession;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$100()Ljava/util/logging/Logger;
    .registers 1

    .line 46
    sget-object v0, Lcom/android/org/conscrypt/NativeSslSession;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/lang/Throwable;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/Throwable;

    .line 46
    invoke-static {p0}, Lcom/android/org/conscrypt/NativeSslSession;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static blacklist checkRemaining(Ljava/nio/ByteBuffer;I)V
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    if-ltz p1, :cond_2c

    .line 480
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_9

    .line 484
    return-void

    .line 481
    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length of blob is longer than available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_2c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getOcspResponse(Lcom/android/org/conscrypt/ConscryptSession;)[B
    .registers 4
    .param p0, "session"    # Lcom/android/org/conscrypt/ConscryptSession;

    .line 68
    invoke-interface {p0}, Lcom/android/org/conscrypt/ConscryptSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "ocspResponseList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_13

    .line 70
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1

    .line 72
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist log(Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 472
    sget-object v0, Lcom/android/org/conscrypt/NativeSslSession;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 473
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 472
    :goto_17
    const-string v3, "Error inflating SSL session: {0}"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 474
    return-void
.end method

.method static blacklist newInstance(Lcom/android/org/conscrypt/AbstractSessionContext;[BLjava/lang/String;I)Lcom/android/org/conscrypt/NativeSslSession;
    .registers 23
    .param p0, "context"    # Lcom/android/org/conscrypt/AbstractSessionContext;
    .param p1, "data"    # [B
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .line 84
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 86
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    move v3, v0

    .line 87
    .local v3, "type":I
    invoke-static {v3}, Lcom/android/org/conscrypt/SSLUtils$SessionType;->isSupportedType(I)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 91
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 92
    .local v0, "length":I
    invoke-static {v1, v0}, Lcom/android/org/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 94
    new-array v4, v0, [B

    .line 95
    .local v4, "sessionData":[B
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 98
    .local v5, "count":I
    invoke-static {v1, v5}, Lcom/android/org/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 100
    new-array v6, v5, [Ljava/security/cert/X509Certificate;

    .line 102
    .local v6, "peerCerts":[Ljava/security/cert/X509Certificate;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_26
    if-ge v7, v5, :cond_60

    .line 103
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 104
    .end local v0    # "length":I
    .local v8, "length":I
    invoke-static {v1, v8}, Lcom/android/org/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 106
    new-array v0, v8, [B

    move-object v9, v0

    .line 107
    .local v9, "certData":[B
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_35} :catch_fe
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_35} :catch_f9

    .line 109
    :try_start_35
    invoke-static {v9}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    aput-object v0, v6, v7
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3b} :catch_40
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3b} :catch_fe
    .catch Ljava/nio/BufferUnderflowException; {:try_start_35 .. :try_end_3b} :catch_f9

    .line 112
    nop

    .line 102
    .end local v9    # "certData":[B
    add-int/lit8 v7, v7, 0x1

    move v0, v8

    goto :goto_26

    .line 110
    .restart local v9    # "certData":[B
    :catch_40
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    :try_start_41
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can not read certificate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local p0    # "context":Lcom/android/org/conscrypt/AbstractSessionContext;
    .end local p1    # "data":[B
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "port":I
    throw v10

    .line 115
    .end local v7    # "i":I
    .end local v8    # "length":I
    .end local v9    # "certData":[B
    .local v0, "length":I
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local p0    # "context":Lcom/android/org/conscrypt/AbstractSessionContext;
    .restart local p1    # "data":[B
    .restart local p2    # "host":Ljava/lang/String;
    .restart local p3    # "port":I
    :cond_60
    const/4 v7, 0x0

    .line 116
    .local v7, "ocspData":[B
    sget-object v8, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_OCSP:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    iget v8, v8, Lcom/android/org/conscrypt/SSLUtils$SessionType;->value:I

    if-lt v3, v8, :cond_97

    .line 119
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 120
    .local v8, "countOcspResponses":I
    invoke-static {v1, v8}, Lcom/android/org/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 122
    const/4 v9, 0x1

    if-lt v8, v9, :cond_97

    .line 123
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 124
    .local v9, "ocspLength":I
    invoke-static {v1, v9}, Lcom/android/org/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 126
    new-array v10, v9, [B

    move-object v7, v10

    .line 127
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 130
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_7f
    if-ge v10, v8, :cond_94

    .line 131
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    move v9, v11

    .line 132
    invoke-static {v1, v9}, Lcom/android/org/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 133
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v9

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    add-int/lit8 v10, v10, 0x1

    goto :goto_7f

    :cond_94
    move-object/from16 v16, v7

    goto :goto_99

    .line 138
    .end local v8    # "countOcspResponses":I
    .end local v9    # "ocspLength":I
    .end local v10    # "i":I
    :cond_97
    move-object/from16 v16, v7

    .end local v7    # "ocspData":[B
    .local v16, "ocspData":[B
    :goto_99
    const/4 v7, 0x0

    .line 139
    .local v7, "tlsSctData":[B
    sget-object v8, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    iget v8, v8, Lcom/android/org/conscrypt/SSLUtils$SessionType;->value:I

    if-ne v3, v8, :cond_b2

    .line 140
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 141
    .local v8, "tlsSctDataLength":I
    invoke-static {v1, v8}, Lcom/android/org/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 143
    if-lez v8, :cond_b2

    .line 144
    new-array v9, v8, [B

    move-object v7, v9

    .line 145
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object/from16 v17, v7

    goto :goto_b4

    .line 149
    .end local v8    # "tlsSctDataLength":I
    :cond_b2
    move-object/from16 v17, v7

    .end local v7    # "tlsSctData":[B
    .local v17, "tlsSctData":[B
    :goto_b4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-eqz v7, :cond_c5

    .line 150
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Read entire session, but data still remains; rejecting"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/android/org/conscrypt/NativeSslSession;->log(Ljava/lang/Throwable;)V

    .line 151
    return-object v2

    .line 154
    :cond_c5
    new-instance v9, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    .line 155
    invoke-static {v4}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_SSL_SESSION([B)J

    move-result-wide v7

    invoke-direct {v9, v7, v8}, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 156
    .local v9, "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    new-instance v18, Lcom/android/org/conscrypt/NativeSslSession$Impl;

    const/4 v15, 0x0

    move-object/from16 v7, v18

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object v12, v6

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    invoke-direct/range {v7 .. v15}, Lcom/android/org/conscrypt/NativeSslSession$Impl;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLcom/android/org/conscrypt/NativeSslSession$1;)V

    return-object v18

    .line 88
    .end local v0    # "length":I
    .end local v4    # "sessionData":[B
    .end local v5    # "count":I
    .end local v6    # "peerCerts":[Ljava/security/cert/X509Certificate;
    .end local v9    # "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .end local v16    # "ocspData":[B
    .end local v17    # "tlsSctData":[B
    :cond_e2
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected type ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local p0    # "context":Lcom/android/org/conscrypt/AbstractSessionContext;
    .end local p1    # "data":[B
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "port":I
    throw v0
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_f9} :catch_fe
    .catch Ljava/nio/BufferUnderflowException; {:try_start_41 .. :try_end_f9} :catch_f9

    .line 160
    .end local v3    # "type":I
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local p0    # "context":Lcom/android/org/conscrypt/AbstractSessionContext;
    .restart local p1    # "data":[B
    .restart local p2    # "host":Ljava/lang/String;
    .restart local p3    # "port":I
    :catch_f9
    move-exception v0

    .line 161
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSslSession;->log(Ljava/lang/Throwable;)V

    .line 162
    return-object v2

    .line 157
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    :catch_fe
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSslSession;->log(Ljava/lang/Throwable;)V

    .line 159
    return-object v2
.end method

.method static blacklist newInstance(Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Lcom/android/org/conscrypt/ConscryptSession;)Lcom/android/org/conscrypt/NativeSslSession;
    .registers 13
    .param p0, "ref"    # Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .param p1, "session"    # Lcom/android/org/conscrypt/ConscryptSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 56
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/AbstractSessionContext;

    .line 57
    .local v0, "context":Lcom/android/org/conscrypt/AbstractSessionContext;
    instance-of v1, v0, Lcom/android/org/conscrypt/ClientSessionContext;

    if-eqz v1, :cond_28

    .line 58
    new-instance v10, Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerPort()I

    move-result v5

    .line 59
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-static {p1}, Lcom/android/org/conscrypt/NativeSslSession;->getOcspResponse(Lcom/android/org/conscrypt/ConscryptSession;)[B

    move-result-object v7

    .line 60
    invoke-interface {p1}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/org/conscrypt/NativeSslSession$Impl;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLcom/android/org/conscrypt/NativeSslSession$1;)V

    .line 58
    return-object v10

    .line 64
    :cond_28
    new-instance v10, Lcom/android/org/conscrypt/NativeSslSession$Impl;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/org/conscrypt/NativeSslSession$Impl;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLcom/android/org/conscrypt/NativeSslSession$1;)V

    return-object v10
.end method


# virtual methods
.method abstract blacklist getCipherSuite()Ljava/lang/String;
.end method

.method abstract blacklist getId()[B
.end method

.method abstract blacklist getPeerHost()Ljava/lang/String;
.end method

.method abstract blacklist getPeerOcspStapledResponse()[B
.end method

.method abstract blacklist getPeerPort()I
.end method

.method abstract blacklist getPeerSignedCertificateTimestamp()[B
.end method

.method abstract blacklist getProtocol()Ljava/lang/String;
.end method

.method abstract blacklist isSingleUse()Z
.end method

.method abstract blacklist isValid()Z
.end method

.method abstract blacklist offerToResume(Lcom/android/org/conscrypt/NativeSsl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method abstract blacklist toBytes()[B
.end method

.method abstract blacklist toSSLSession()Ljavax/net/ssl/SSLSession;
.end method
