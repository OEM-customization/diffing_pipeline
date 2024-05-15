.class public Lcom/android/org/conscrypt/KeyManagerFactoryImpl;
.super Ljavax/net/ssl/KeyManagerFactorySpi;
.source "KeyManagerFactoryImpl.java"


# instance fields
.field private keyStore:Ljava/security/KeyStore;

.field private pwd:[C


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljavax/net/ssl/KeyManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .registers 5

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_d

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "KeyManagerFactory is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    new-instance v1, Lcom/android/org/conscrypt/KeyManagerImpl;

    iget-object v2, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    iget-object v3, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/KeyManagerImpl;-><init>(Ljava/security/KeyStore;[C)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected engineInit(Ljava/security/KeyStore;[C)V
    .registers 11
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 54
    if-eqz p1, :cond_14

    .line 55
    iput-object p1, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 56
    if-eqz p2, :cond_f

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    iput-object v5, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    .line 93
    :goto_e
    return-void

    .line 59
    :cond_f
    sget-object v5, Lcom/android/org/conscrypt/EmptyArray;->CHAR:[C

    iput-object v5, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_e

    .line 62
    :cond_14
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 63
    const-string/jumbo v5, "javax.net.ssl.keyStore"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "keyStoreName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 65
    .local v4, "keyStorePwd":Ljava/lang/String;
    if-eqz v3, :cond_37

    const-string/jumbo v5, "NONE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_37

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 67
    :cond_37
    :try_start_37
    iget-object v5, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3e} :catch_3f
    .catch Ljava/security/cert/CertificateException; {:try_start_37 .. :try_end_3e} :catch_46

    goto :goto_e

    .line 68
    :catch_3f
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/KeyStoreException;

    invoke-direct {v5, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 70
    .end local v1    # "e":Ljava/io/IOException;
    :catch_46
    move-exception v2

    .line 71
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v5, Ljava/security/KeyStoreException;

    invoke-direct {v5, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 74
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :cond_4d
    const-string/jumbo v5, "javax.net.ssl.keyStorePassword"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "keyStorePwd":Ljava/lang/String;
    if-nez v4, :cond_73

    .line 76
    sget-object v5, Lcom/android/org/conscrypt/EmptyArray;->CHAR:[C

    iput-object v5, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    .line 81
    :goto_5a
    :try_start_5a
    iget-object v5, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v7, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_6b} :catch_6c
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_6b} :catch_81
    .catch Ljava/security/cert/CertificateException; {:try_start_5a .. :try_end_6b} :catch_7a

    goto :goto_e

    .line 82
    :catch_6c
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/security/KeyStoreException;

    invoke-direct {v5, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 78
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_73
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_5a

    .line 86
    :catch_7a
    move-exception v2

    .line 87
    .restart local v2    # "e":Ljava/security/cert/CertificateException;
    new-instance v5, Ljava/security/KeyStoreException;

    invoke-direct {v5, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 84
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :catch_81
    move-exception v1

    .line 85
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/KeyStoreException;

    invoke-direct {v5, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .registers 4
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 102
    const-string/jumbo v1, "ManagerFactoryParameters not supported"

    .line 101
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
