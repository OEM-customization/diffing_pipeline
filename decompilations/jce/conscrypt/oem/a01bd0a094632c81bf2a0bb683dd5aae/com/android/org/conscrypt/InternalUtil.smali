.class public final Lcom/android/org/conscrypt/InternalUtil;
.super Ljava/lang/Object;
.source "InternalUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static getOcspSingleExtension([BLjava/lang/String;JJ)[B
    .registers 8
    .param p0, "ocspResponse"    # [B
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "x509Ref"    # J
    .param p4, "issuerX509Ref"    # J

    .prologue
    .line 42
    invoke-static/range {p0 .. p5}, Lcom/android/org/conscrypt/NativeCrypto;->get_ocsp_single_extension([BLjava/lang/String;JJ)[B

    move-result-object v0

    return-object v0
.end method

.method public static logKeyToPublicKey([B)Ljava/security/PublicKey;
    .registers 5
    .param p0, "logKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_parse_public_key([B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static readPublicKeyPem(Ljava/io/InputStream;)Ljava/security/PublicKey;
    .registers 2
    .param p0, "pem"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKeyPemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method
