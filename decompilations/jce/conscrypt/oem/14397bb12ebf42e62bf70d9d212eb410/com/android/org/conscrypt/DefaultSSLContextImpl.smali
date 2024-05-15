.class public final Lcom/android/org/conscrypt/DefaultSSLContextImpl;
.super Lcom/android/org/conscrypt/OpenSSLContextImpl;
.source "DefaultSSLContextImpl.java"


# static fields
.field private static KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

.field private static TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "kms"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tms"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/security/KeyManagementException;

    const-string/jumbo v1, "Do not init() the default SSLContext "

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 65
    sget-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    if-eqz v8, :cond_8

    .line 66
    sget-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    return-object v8

    .line 69
    :cond_8
    const-string/jumbo v8, "javax.net.ssl.keyStore"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "keystore":Ljava/lang/String;
    if-nez v2, :cond_12

    .line 71
    return-object v9

    .line 73
    :cond_12
    const-string/jumbo v8, "javax.net.ssl.keyStorePassword"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "keystorepwd":Ljava/lang/String;
    if-nez v3, :cond_4b

    const/4 v7, 0x0

    .line 76
    :goto_1c
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 77
    .local v6, "ks":Ljava/security/KeyStore;
    const/4 v0, 0x0

    .line 79
    .local v0, "is":Ljava/io/InputStream;
    :try_start_25
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_50

    .line 80
    .local v1, "is":Ljava/io/InputStream;
    :try_start_2f
    invoke-virtual {v6, v1, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_57

    .line 82
    .end local v0    # "is":Ljava/io/InputStream;
    if-eqz v1, :cond_37

    .line 83
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 87
    :cond_37
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "kmfAlg":Ljava/lang/String;
    invoke-static {v5}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    .line 89
    .local v4, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v4, v6, v7}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 90
    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v8

    sput-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    .line 91
    sget-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    return-object v8

    .line 74
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v5    # "kmfAlg":Ljava/lang/String;
    .end local v6    # "ks":Ljava/security/KeyStore;
    :cond_4b
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .local v7, "pwd":[C
    goto :goto_1c

    .line 81
    .end local v7    # "pwd":[C
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v6    # "ks":Ljava/security/KeyStore;
    :catchall_50
    move-exception v8

    .line 82
    .end local v0    # "is":Ljava/io/InputStream;
    :goto_51
    if-eqz v0, :cond_56

    .line 83
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 81
    :cond_56
    throw v8

    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_57
    move-exception v8

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    goto :goto_51
.end method

.method getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 96
    sget-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    if-eqz v8, :cond_8

    .line 97
    sget-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    return-object v8

    .line 101
    :cond_8
    const-string/jumbo v8, "javax.net.ssl.trustStore"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "keystore":Ljava/lang/String;
    if-nez v2, :cond_12

    .line 103
    return-object v9

    .line 105
    :cond_12
    const-string/jumbo v8, "javax.net.ssl.trustStorePassword"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "keystorepwd":Ljava/lang/String;
    if-nez v3, :cond_4b

    const/4 v5, 0x0

    .line 109
    :goto_1c
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 110
    .local v4, "ks":Ljava/security/KeyStore;
    const/4 v0, 0x0

    .line 112
    .local v0, "is":Ljava/io/InputStream;
    :try_start_25
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_50

    .line 113
    .local v1, "is":Ljava/io/InputStream;
    :try_start_2f
    invoke-virtual {v4, v1, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_57

    .line 115
    .end local v0    # "is":Ljava/io/InputStream;
    if-eqz v1, :cond_37

    .line 116
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 119
    :cond_37
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, "tmfAlg":Ljava/lang/String;
    invoke-static {v7}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    .line 121
    .local v6, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v6, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 122
    invoke-virtual {v6}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v8

    sput-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    .line 123
    sget-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    return-object v8

    .line 106
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "ks":Ljava/security/KeyStore;
    .end local v6    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v7    # "tmfAlg":Ljava/lang/String;
    :cond_4b
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .local v5, "pwd":[C
    goto :goto_1c

    .line 114
    .end local v5    # "pwd":[C
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v4    # "ks":Ljava/security/KeyStore;
    :catchall_50
    move-exception v8

    .line 115
    .end local v0    # "is":Ljava/io/InputStream;
    :goto_51
    if-eqz v0, :cond_56

    .line 116
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_56
    throw v8

    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_57
    move-exception v8

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    goto :goto_51
.end method
