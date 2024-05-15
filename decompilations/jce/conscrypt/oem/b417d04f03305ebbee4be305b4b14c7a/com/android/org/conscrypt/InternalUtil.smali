.class public final Lcom/android/org/conscrypt/InternalUtil;
.super Ljava/lang/Object;
.source "InternalUtil.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static blacklist logKeyToPublicKey([B)Ljava/security/PublicKey;
    .registers 4
    .param p0, "logKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 36
    :try_start_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_parse_public_key([B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0
    :try_end_d
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 37
    :catch_e
    move-exception v0

    .line 38
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist readPublicKeyPem(Ljava/io/InputStream;)Ljava/security/PublicKey;
    .registers 2
    .param p0, "pem"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKeyPemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method
