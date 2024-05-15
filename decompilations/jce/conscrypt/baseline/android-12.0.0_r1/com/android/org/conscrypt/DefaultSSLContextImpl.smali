.class public Lcom/android/org/conscrypt/DefaultSSLContextImpl;
.super Lcom/android/org/conscrypt/OpenSSLContextImpl;
.source "DefaultSSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/DefaultSSLContextImpl$TLSv12;,
        Lcom/android/org/conscrypt/DefaultSSLContextImpl$TLSv13;
    }
.end annotation


# static fields
.field private static blacklist KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

.field private static blacklist TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;


# direct methods
.method private constructor blacklist <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;-><init>([Ljava/lang/String;Z)V

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>([Ljava/lang/String;Lcom/android/org/conscrypt/DefaultSSLContextImpl$1;)V
    .registers 3
    .param p1, "x0"    # [Ljava/lang/String;
    .param p2, "x1"    # Lcom/android/org/conscrypt/DefaultSSLContextImpl$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "kms"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tms"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "Do not init() the default SSLContext "

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    if-eqz v0, :cond_5

    .line 65
    return-object v0

    .line 68
    :cond_5
    const-string v0, "javax.net.ssl.keyStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "keystore":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 70
    return-object v1

    .line 72
    :cond_f
    const-string v2, "javax.net.ssl.keyStorePassword"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "keystorepwd":Ljava/lang/String;
    if-nez v2, :cond_18

    goto :goto_1c

    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 75
    .local v1, "pwd":[C
    :goto_1c
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 76
    .local v3, "ks":Ljava/security/KeyStore;
    const/4 v4, 0x0

    .line 78
    .local v4, "is":Ljava/io/InputStream;
    :try_start_25
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    .line 79
    invoke-virtual {v3, v4, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_49

    .line 81
    nop

    .line 82
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 86
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "kmfAlg":Ljava/lang/String;
    invoke-static {v5}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v6

    .line 88
    .local v6, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v6, v3, v1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 89
    invoke-virtual {v6}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v7

    sput-object v7, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    .line 90
    return-object v7

    .line 81
    .end local v5    # "kmfAlg":Ljava/lang/String;
    .end local v6    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :catchall_49
    move-exception v5

    if-eqz v4, :cond_4f

    .line 82
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 84
    :cond_4f
    throw v5
.end method

.method blacklist getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    if-eqz v0, :cond_5

    .line 96
    return-object v0

    .line 100
    :cond_5
    const-string v0, "javax.net.ssl.trustStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "keystore":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 102
    return-object v1

    .line 104
    :cond_f
    const-string v2, "javax.net.ssl.trustStorePassword"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "keystorepwd":Ljava/lang/String;
    if-nez v2, :cond_18

    goto :goto_1c

    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 108
    .local v1, "pwd":[C
    :goto_1c
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 109
    .local v3, "ks":Ljava/security/KeyStore;
    const/4 v4, 0x0

    .line 111
    .local v4, "is":Ljava/io/InputStream;
    :try_start_25
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    .line 112
    invoke-virtual {v3, v4, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_49

    .line 114
    nop

    .line 115
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 118
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "tmfAlg":Ljava/lang/String;
    invoke-static {v5}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    .line 120
    .local v6, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v6, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 121
    invoke-virtual {v6}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v7

    sput-object v7, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    .line 122
    return-object v7

    .line 114
    .end local v5    # "tmfAlg":Ljava/lang/String;
    .end local v6    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catchall_49
    move-exception v5

    if-eqz v4, :cond_4f

    .line 115
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 117
    :cond_4f
    throw v5
.end method
