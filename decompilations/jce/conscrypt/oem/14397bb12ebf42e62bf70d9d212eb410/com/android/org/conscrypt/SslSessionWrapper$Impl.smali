.class final Lcom/android/org/conscrypt/SslSessionWrapper$Impl;
.super Lcom/android/org/conscrypt/SslSessionWrapper;
.source "SslSessionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/SslSessionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Impl"
.end annotation


# instance fields
.field private final cipherSuite:Ljava/lang/String;

.field private final context:Lcom/android/org/conscrypt/AbstractSessionContext;

.field private final host:Ljava/lang/String;

.field private final peerCertificates:[Ljava/security/cert/X509Certificate;

.field private final peerOcspStapledResponse:[B

.field private final peerSignedCertificateTimestamp:[B

.field private final port:I

.field private final protocol:Ljava/lang/String;

.field private final ref:Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;


# direct methods
.method static synthetic -wrap0(Lcom/android/org/conscrypt/SslSessionWrapper$Impl;)J
    .registers 3
    .param p0, "-this"    # Lcom/android/org/conscrypt/SslSessionWrapper$Impl;

    .prologue
    invoke-direct {p0}, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor <init>(Lcom/android/org/conscrypt/AbstractSessionContext;Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[B)V
    .registers 10
    .param p1, "context"    # Lcom/android/org/conscrypt/AbstractSessionContext;
    .param p2, "ref"    # Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "peerCertificates"    # [Ljava/security/cert/X509Certificate;
    .param p6, "peerOcspStapledResponse"    # [B
    .param p7, "peerSignedCertificateTimestamp"    # [B

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/org/conscrypt/SslSessionWrapper;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->context:Lcom/android/org/conscrypt/AbstractSessionContext;

    .line 226
    iput-object p3, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->host:Ljava/lang/String;

    .line 227
    iput p4, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->port:I

    .line 228
    iput-object p5, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    .line 229
    iput-object p6, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->peerOcspStapledResponse:[B

    .line 230
    iput-object p7, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->peerSignedCertificateTimestamp:[B

    .line 231
    iget-wide v0, p2, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;->context:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_get_version(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->protocol:Ljava/lang/String;

    .line 233
    iget-wide v0, p2, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;->context:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_cipher(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->cipherSuiteToJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    iput-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->cipherSuite:Ljava/lang/String;

    .line 234
    iput-object p2, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->ref:Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    .line 235
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/AbstractSessionContext;Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLcom/android/org/conscrypt/SslSessionWrapper$Impl;)V
    .registers 9
    .param p1, "context"    # Lcom/android/org/conscrypt/AbstractSessionContext;
    .param p2, "ref"    # Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "peerCertificates"    # [Ljava/security/cert/X509Certificate;
    .param p6, "peerOcspStapledResponse"    # [B
    .param p7, "peerSignedCertificateTimestamp"    # [B
    .param p8, "-this7"    # Lcom/android/org/conscrypt/SslSessionWrapper$Impl;

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[B)V

    return-void
.end method

.method private getCreationTime()J
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->ref:Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v0, v0, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;->context:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_get_time(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method getId()[B
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->ref:Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v0, v0, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;->context:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_session_id(J)[B

    move-result-object v0

    return-object v0
.end method

.method getPeerHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->host:Ljava/lang/String;

    return-object v0
.end method

.method getPeerOcspStapledResponse()[B
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->peerOcspStapledResponse:[B

    return-object v0
.end method

.method getPeerPort()I
    .registers 2

    .prologue
    .line 280
    iget v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->port:I

    return v0
.end method

.method getPeerSignedCertificateTimestamp()[B
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->peerSignedCertificateTimestamp:[B

    return-object v0
.end method

.method getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method isValid()Z
    .registers 11

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->getCreationTime()J

    move-result-wide v0

    .line 251
    .local v0, "creationTimeMillis":J
    const-wide/16 v4, 0x0

    .line 252
    iget-object v6, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->context:Lcom/android/org/conscrypt/AbstractSessionContext;

    invoke-virtual {v6}, Lcom/android/org/conscrypt/AbstractSessionContext;->getSessionTimeout()I

    move-result v6

    int-to-long v6, v6

    .line 253
    iget-object v8, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->ref:Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v8, v8, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;->context:J

    invoke-static {v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_get_timeout(J)J

    move-result-wide v8

    .line 252
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 251
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 254
    const-wide/16 v6, 0x3e8

    .line 251
    mul-long v2, v4, v6

    .line 255
    .local v2, "timeoutMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-gez v4, :cond_2c

    const/4 v4, 0x1

    :goto_2b
    return v4

    :cond_2c
    const/4 v4, 0x0

    goto :goto_2b
.end method

.method offerToResume(Lcom/android/org/conscrypt/SslWrapper;)V
    .registers 4
    .param p1, "ssl"    # Lcom/android/org/conscrypt/SslWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->ref:Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v0, v0, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;->context:J

    invoke-virtual {p1, v0, v1}, Lcom/android/org/conscrypt/SslWrapper;->offerToResumeSession(J)V

    .line 261
    return-void
.end method

.method toBytes()[B
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 296
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 297
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 299
    .local v2, "daos":Ljava/io/DataOutputStream;
    sget-object v7, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    iget v7, v7, Lcom/android/org/conscrypt/SSLUtils$SessionType;->value:I

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 302
    iget-object v7, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->ref:Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v8, v7, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;->context:J

    invoke-static {v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_SSL_SESSION(J)[B

    move-result-object v3

    .line 303
    .local v3, "data":[B
    array-length v7, v3

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 304
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 307
    iget-object v7, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v7, v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 309
    iget-object v7, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v8, v7

    :goto_2b
    if-ge v6, v8, :cond_3d

    aget-object v1, v7, v6

    .line 310
    .local v1, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 311
    array-length v9, v3

    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 312
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 309
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 315
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    :cond_3d
    iget-object v6, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->peerOcspStapledResponse:[B

    if-eqz v6, :cond_64

    .line 316
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 317
    iget-object v6, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->peerOcspStapledResponse:[B

    array-length v6, v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 318
    iget-object v6, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->peerOcspStapledResponse:[B

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 323
    :goto_50
    iget-object v6, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->peerSignedCertificateTimestamp:[B

    if-eqz v6, :cond_88

    .line 324
    iget-object v6, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->peerSignedCertificateTimestamp:[B

    array-length v6, v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 325
    iget-object v6, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->peerSignedCertificateTimestamp:[B

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 332
    :goto_5f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6

    .line 320
    :cond_64
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_68} :catch_69
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_68} :catch_8d

    goto :goto_50

    .line 333
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "daos":Ljava/io/DataOutputStream;
    .end local v3    # "data":[B
    :catch_69
    move-exception v4

    .line 335
    .local v4, "e":Ljava/io/IOException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to convert saved SSL Session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    return-object v10

    .line 327
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "daos":Ljava/io/DataOutputStream;
    .restart local v3    # "data":[B
    :cond_88
    const/4 v6, 0x0

    :try_start_89
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_69
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_5f

    .line 337
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "daos":Ljava/io/DataOutputStream;
    .end local v3    # "data":[B
    :catch_8d
    move-exception v5

    .line 338
    .local v5, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-static {v5}, Lcom/android/org/conscrypt/SslSessionWrapper;->-wrap0(Ljava/lang/Throwable;)V

    .line 339
    return-object v10
.end method

.method toSSLSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .prologue
    .line 345
    new-instance v0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/SslSessionWrapper$Impl$1;-><init>(Lcom/android/org/conscrypt/SslSessionWrapper$Impl;)V

    return-object v0
.end method
