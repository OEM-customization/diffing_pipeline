.class abstract Lcom/android/org/conscrypt/SslSessionWrapper;
.super Ljava/lang/Object;
.source "SslSessionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/SslSessionWrapper$Impl;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Ljava/lang/Throwable;)V
    .registers 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0}, Lcom/android/org/conscrypt/SslSessionWrapper;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkRemaining(Ljava/nio/ByteBuffer;I)V
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    if-gez p1, :cond_1c

    .line 465
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Length is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_1c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le p1, v0, :cond_4b

    .line 468
    new-instance v0, Ljava/io/IOException;

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Length of blob is longer than available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_4b
    return-void
.end method

.method private static getOcspResponse(Lcom/android/org/conscrypt/ActiveSession;)[B
    .registers 4
    .param p0, "activeSession"    # Lcom/android/org/conscrypt/ActiveSession;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ActiveSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    .line 65
    .local v0, "ocspResponseList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_13

    .line 66
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1

    .line 68
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method private static log(Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 459
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error inflating SSL session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 460
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 459
    :goto_18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 461
    return-void

    .line 460
    :cond_24
    invoke-virtual {p0}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method static newInstance(Lcom/android/org/conscrypt/AbstractSessionContext;[BLjava/lang/String;I)Lcom/android/org/conscrypt/SslSessionWrapper;
    .registers 28
    .param p0, "context"    # Lcom/android/org/conscrypt/AbstractSessionContext;
    .param p1, "data"    # [B
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 80
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 82
    .local v11, "buf":Ljava/nio/ByteBuffer;
    :try_start_4
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v23

    .line 83
    .local v23, "type":I
    invoke-static/range {v23 .. v23}, Lcom/android/org/conscrypt/SSLUtils$SessionType;->isSupportedType(I)Z

    move-result v2

    if-nez v2, :cond_30

    .line 84
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected type ID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2a} :catch_2a
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_2a} :catch_94

    .line 153
    .end local v23    # "type":I
    :catch_2a
    move-exception v15

    .line 154
    .local v15, "e":Ljava/io/IOException;
    invoke-static {v15}, Lcom/android/org/conscrypt/SslSessionWrapper;->log(Ljava/lang/Throwable;)V

    .line 155
    const/4 v2, 0x0

    return-object v2

    .line 87
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v23    # "type":I
    :cond_30
    :try_start_30
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v19

    .line 88
    .local v19, "length":I
    move/from16 v0, v19

    invoke-static {v11, v0}, Lcom/android/org/conscrypt/SslSessionWrapper;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 90
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 91
    .local v21, "sessionData":[B
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 94
    .local v13, "count":I
    invoke-static {v11, v13}, Lcom/android/org/conscrypt/SslSessionWrapper;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 97
    new-array v7, v13, [Ljava/security/cert/X509Certificate;

    .line 98
    .local v7, "peerCerts":[Ljava/security/cert/X509Certificate;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_4f
    move/from16 v0, v18

    if-ge v0, v13, :cond_9a

    .line 99
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v19

    .line 100
    move/from16 v0, v19

    invoke-static {v11, v0}, Lcom/android/org/conscrypt/SslSessionWrapper;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 102
    move/from16 v0, v19

    new-array v12, v0, [B

    .line 103
    .local v12, "certData":[B
    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_63} :catch_2a
    .catch Ljava/nio/BufferUnderflowException; {:try_start_30 .. :try_end_63} :catch_94

    .line 105
    :try_start_63
    invoke-static {v12}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v2

    aput-object v2, v7, v18
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_69} :catch_6c
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_69} :catch_2a
    .catch Ljava/nio/BufferUnderflowException; {:try_start_63 .. :try_end_69} :catch_94

    .line 98
    add-int/lit8 v18, v18, 0x1

    goto :goto_4f

    .line 106
    :catch_6c
    move-exception v16

    .line 107
    .local v16, "e":Ljava/lang/Exception;
    :try_start_6d
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can not read certificate "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_94} :catch_2a
    .catch Ljava/nio/BufferUnderflowException; {:try_start_6d .. :try_end_94} :catch_94

    .line 156
    .end local v7    # "peerCerts":[Ljava/security/cert/X509Certificate;
    .end local v12    # "certData":[B
    .end local v13    # "count":I
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v18    # "i":I
    .end local v19    # "length":I
    .end local v21    # "sessionData":[B
    .end local v23    # "type":I
    :catch_94
    move-exception v17

    .line 157
    .local v17, "e":Ljava/nio/BufferUnderflowException;
    invoke-static/range {v17 .. v17}, Lcom/android/org/conscrypt/SslSessionWrapper;->log(Ljava/lang/Throwable;)V

    .line 158
    const/4 v2, 0x0

    return-object v2

    .line 111
    .end local v17    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v7    # "peerCerts":[Ljava/security/cert/X509Certificate;
    .restart local v13    # "count":I
    .restart local v18    # "i":I
    .restart local v19    # "length":I
    .restart local v21    # "sessionData":[B
    .restart local v23    # "type":I
    :cond_9a
    const/4 v8, 0x0

    .line 112
    .local v8, "ocspData":[B
    :try_start_9b
    sget-object v2, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_OCSP:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    iget v2, v2, Lcom/android/org/conscrypt/SSLUtils$SessionType;->value:I

    move/from16 v0, v23

    if-lt v0, v2, :cond_d8

    .line 115
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    .line 116
    .local v14, "countOcspResponses":I
    invoke-static {v11, v14}, Lcom/android/org/conscrypt/SslSessionWrapper;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 118
    const/4 v2, 0x1

    if-lt v14, v2, :cond_d8

    .line 119
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    .line 120
    .local v20, "ocspLength":I
    move/from16 v0, v20

    invoke-static {v11, v0}, Lcom/android/org/conscrypt/SslSessionWrapper;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 122
    move/from16 v0, v20

    new-array v8, v0, [B

    .line 123
    .local v8, "ocspData":[B
    invoke-virtual {v11, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 126
    const/16 v18, 0x1

    :goto_bf
    move/from16 v0, v18

    if-ge v0, v14, :cond_d8

    .line 127
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    .line 128
    move/from16 v0, v20

    invoke-static {v11, v0}, Lcom/android/org/conscrypt/SslSessionWrapper;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 129
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int v2, v2, v20

    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    add-int/lit8 v18, v18, 0x1

    goto :goto_bf

    .line 134
    .end local v8    # "ocspData":[B
    .end local v14    # "countOcspResponses":I
    .end local v20    # "ocspLength":I
    :cond_d8
    const/4 v9, 0x0

    .line 135
    .local v9, "tlsSctData":[B
    sget-object v2, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    iget v2, v2, Lcom/android/org/conscrypt/SSLUtils$SessionType;->value:I

    move/from16 v0, v23

    if-ne v0, v2, :cond_f3

    .line 136
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v22

    .line 137
    .local v22, "tlsSctDataLength":I
    move/from16 v0, v22

    invoke-static {v11, v0}, Lcom/android/org/conscrypt/SslSessionWrapper;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 139
    if-lez v22, :cond_f3

    .line 140
    move/from16 v0, v22

    new-array v9, v0, [B

    .line 141
    .local v9, "tlsSctData":[B
    invoke-virtual {v11, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 145
    .end local v9    # "tlsSctData":[B
    .end local v22    # "tlsSctDataLength":I
    :cond_f3
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eqz v2, :cond_106

    .line 146
    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Read entire session, but data still remains; rejecting"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/org/conscrypt/SslSessionWrapper;->log(Ljava/lang/Throwable;)V

    .line 147
    const/4 v2, 0x0

    return-object v2

    .line 151
    :cond_106
    new-instance v4, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    invoke-static/range {v21 .. v21}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_SSL_SESSION([B)J

    move-result-wide v2

    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 152
    .local v4, "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    new-instance v2, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLcom/android/org/conscrypt/SslSessionWrapper$Impl;)V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_11b} :catch_2a
    .catch Ljava/nio/BufferUnderflowException; {:try_start_9b .. :try_end_11b} :catch_94

    return-object v2
.end method

.method static newInstance(Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Lcom/android/org/conscrypt/ActiveSession;)Lcom/android/org/conscrypt/SslSessionWrapper;
    .registers 11
    .param p0, "ref"    # Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .param p1, "activeSession"    # Lcom/android/org/conscrypt/ActiveSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 51
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ActiveSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/AbstractSessionContext;

    .line 52
    .local v1, "context":Lcom/android/org/conscrypt/AbstractSessionContext;
    instance-of v0, v1, Lcom/android/org/conscrypt/ClientSessionContext;

    if-eqz v0, :cond_26

    .line 53
    new-instance v0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/ActiveSession;->getPeerHost()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ActiveSession;->getPeerPort()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/org/conscrypt/ActiveSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 55
    invoke-static {p1}, Lcom/android/org/conscrypt/SslSessionWrapper;->getOcspResponse(Lcom/android/org/conscrypt/ActiveSession;)[B

    move-result-object v6

    .line 56
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ActiveSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v7

    move-object v2, p0

    .line 53
    invoke-direct/range {v0 .. v8}, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLcom/android/org/conscrypt/SslSessionWrapper$Impl;)V

    return-object v0

    .line 60
    :cond_26
    new-instance v0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;

    const/4 v4, -0x1

    move-object v2, p0

    move-object v3, v8

    move-object v5, v8

    move-object v6, v8

    move-object v7, v8

    invoke-direct/range {v0 .. v8}, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLcom/android/org/conscrypt/SslSessionWrapper$Impl;)V

    return-object v0
.end method


# virtual methods
.method abstract getCipherSuite()Ljava/lang/String;
.end method

.method abstract getId()[B
.end method

.method abstract getPeerHost()Ljava/lang/String;
.end method

.method abstract getPeerOcspStapledResponse()[B
.end method

.method abstract getPeerPort()I
.end method

.method abstract getPeerSignedCertificateTimestamp()[B
.end method

.method abstract getProtocol()Ljava/lang/String;
.end method

.method abstract isValid()Z
.end method

.method abstract offerToResume(Lcom/android/org/conscrypt/SslWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method abstract toBytes()[B
.end method

.method abstract toSSLSession()Ljavax/net/ssl/SSLSession;
.end method
