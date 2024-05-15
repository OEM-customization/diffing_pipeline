.class final Lcom/android/org/conscrypt/NativeSslSession$Impl;
.super Lcom/android/org/conscrypt/NativeSslSession;
.source "NativeSslSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/NativeSslSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Impl"
.end annotation


# instance fields
.field private final blacklist cipherSuite:Ljava/lang/String;

.field private final blacklist context:Lcom/android/org/conscrypt/AbstractSessionContext;

.field private final blacklist host:Ljava/lang/String;

.field private final blacklist peerCertificates:[Ljava/security/cert/X509Certificate;

.field private final blacklist peerOcspStapledResponse:[B

.field private final blacklist peerSignedCertificateTimestamp:[B

.field private final blacklist port:I

.field private final blacklist protocol:Ljava/lang/String;

.field private final blacklist ref:Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/conscrypt/AbstractSessionContext;Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[B)V
    .registers 10
    .param p1, "context"    # Lcom/android/org/conscrypt/AbstractSessionContext;
    .param p2, "ref"    # Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "peerCertificates"    # [Ljava/security/cert/X509Certificate;
    .param p6, "peerOcspStapledResponse"    # [B
    .param p7, "peerSignedCertificateTimestamp"    # [B

    .line 233
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSslSession;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->context:Lcom/android/org/conscrypt/AbstractSessionContext;

    .line 235
    iput-object p3, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->host:Ljava/lang/String;

    .line 236
    iput p4, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->port:I

    .line 237
    iput-object p5, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    .line 238
    iput-object p6, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->peerOcspStapledResponse:[B

    .line 239
    iput-object p7, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->peerSignedCertificateTimestamp:[B

    .line 240
    iget-wide v0, p2, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;->address:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_get_version(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->protocol:Ljava/lang/String;

    .line 241
    iget-wide v0, p2, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;->address:J

    .line 242
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_cipher(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->cipherSuiteToJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->cipherSuite:Ljava/lang/String;

    .line 243
    iput-object p2, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->ref:Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    .line 244
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/conscrypt/AbstractSessionContext;Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLcom/android/org/conscrypt/NativeSslSession$1;)V
    .registers 9
    .param p1, "x0"    # Lcom/android/org/conscrypt/AbstractSessionContext;
    .param p2, "x1"    # Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # [Ljava/security/cert/X509Certificate;
    .param p6, "x5"    # [B
    .param p7, "x6"    # [B
    .param p8, "x7"    # Lcom/android/org/conscrypt/NativeSslSession$1;

    .line 218
    invoke-direct/range {p0 .. p7}, Lcom/android/org/conscrypt/NativeSslSession$Impl;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[B)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/org/conscrypt/NativeSslSession$Impl;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/org/conscrypt/NativeSslSession$Impl;

    .line 218
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSslSession$Impl;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getCreationTime()J
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->ref:Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v0, v0, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;->address:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_get_time(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method blacklist getCipherSuite()Ljava/lang/String;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getId()[B
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->ref:Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v0, v0, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;->address:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_session_id(J)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getPeerHost()Ljava/lang/String;
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->host:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getPeerOcspStapledResponse()[B
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->peerOcspStapledResponse:[B

    return-object v0
.end method

.method blacklist getPeerPort()I
    .registers 2

    .line 293
    iget v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->port:I

    return v0
.end method

.method blacklist getPeerSignedCertificateTimestamp()[B
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->peerSignedCertificateTimestamp:[B

    return-object v0
.end method

.method blacklist getProtocol()Ljava/lang/String;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method blacklist isSingleUse()Z
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->ref:Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v0, v0, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;->address:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_should_be_single_use(J)Z

    move-result v0

    return v0
.end method

.method blacklist isValid()Z
    .registers 7

    .line 257
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSslSession$Impl;->getCreationTime()J

    move-result-wide v0

    .line 259
    .local v0, "creationTimeMillis":J
    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->context:Lcom/android/org/conscrypt/AbstractSessionContext;

    .line 260
    invoke-virtual {v2}, Lcom/android/org/conscrypt/AbstractSessionContext;->getSessionTimeout()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->ref:Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v4, v4, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;->address:J

    .line 261
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_get_timeout(J)J

    move-result-wide v4

    .line 260
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 259
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 263
    .local v2, "timeoutMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-gez v4, :cond_2b

    const/4 v4, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    :goto_2c
    return v4
.end method

.method blacklist offerToResume(Lcom/android/org/conscrypt/NativeSsl;)V
    .registers 4
    .param p1, "ssl"    # Lcom/android/org/conscrypt/NativeSsl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->ref:Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v0, v0, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;->address:J

    invoke-virtual {p1, v0, v1}, Lcom/android/org/conscrypt/NativeSsl;->offerToResumeSession(J)V

    .line 274
    return-void
.end method

.method blacklist toBytes()[B
    .registers 11

    .line 309
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 310
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 312
    .local v2, "daos":Ljava/io/DataOutputStream;
    sget-object v3, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    iget v3, v3, Lcom/android/org/conscrypt/SSLUtils$SessionType;->value:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 315
    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->ref:Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v3, v3, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;->address:J

    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_SSL_SESSION(J)[B

    move-result-object v3

    .line 316
    .local v3, "data":[B
    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 317
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 320
    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 322
    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_2c
    if-ge v7, v5, :cond_3f

    aget-object v8, v4, v7

    .line 323
    .local v8, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v9

    move-object v3, v9

    .line 324
    array-length v9, v3

    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 325
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 322
    .end local v8    # "cert":Ljava/security/cert/Certificate;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 328
    :cond_3f
    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->peerOcspStapledResponse:[B

    if-eqz v4, :cond_53

    .line 329
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 330
    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->peerOcspStapledResponse:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 331
    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->peerOcspStapledResponse:[B

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_56

    .line 333
    :cond_53
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 336
    :goto_56
    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->peerSignedCertificateTimestamp:[B

    if-eqz v4, :cond_66

    .line 337
    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->peerSignedCertificateTimestamp:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 338
    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl;->peerSignedCertificateTimestamp:[B

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_69

    .line 340
    :cond_66
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 345
    :goto_69
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6d} :catch_73
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_6d} :catch_6e

    return-object v0

    .line 350
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "daos":Ljava/io/DataOutputStream;
    .end local v3    # "data":[B
    :catch_6e
    move-exception v1

    .line 351
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    # invokes: Lcom/android/org/conscrypt/NativeSslSession;->log(Ljava/lang/Throwable;)V
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeSslSession;->access$200(Ljava/lang/Throwable;)V

    .line 352
    return-object v0

    .line 346
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    :catch_73
    move-exception v1

    .line 348
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/android/org/conscrypt/NativeSslSession;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/org/conscrypt/NativeSslSession;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Failed to convert saved SSL Session: "

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    return-object v0
.end method

.method blacklist toSSLSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 358
    new-instance v0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;-><init>(Lcom/android/org/conscrypt/NativeSslSession$Impl;)V

    return-object v0
.end method
