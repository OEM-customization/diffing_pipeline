.class public Lcom/android/org/conscrypt/TrustManagerFactoryImpl;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "TrustManagerFactoryImpl.java"


# instance fields
.field private keyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_d

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 97
    const-string/jumbo v1, "TrustManagerFactory is not initialized"

    .line 96
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/android/org/conscrypt/TrustManagerImpl;

    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;)V
    .registers 8
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 64
    if-eqz p1, :cond_5

    .line 65
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 78
    :goto_4
    return-void

    .line 67
    :cond_5
    const-string/jumbo v3, "AndroidCAStore"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 69
    :try_start_e
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_16
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_15} :catch_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_15} :catch_1d

    goto :goto_4

    .line 70
    :catch_16
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1d
    move-exception v1

    .line 75
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 72
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_24
    move-exception v2

    .line 73
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .registers 4
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 87
    const-string/jumbo v1, "ManagerFactoryParameters not supported"

    .line 86
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
