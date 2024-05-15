.class public abstract Lcom/android/org/conscrypt/OpenSSLMac;
.super Ljavax/crypto/MacSpi;
.source "OpenSSLMac.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLMac$AesCmac;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA512;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA384;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA256;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA224;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacMD5;,
        Lcom/android/org/conscrypt/OpenSSLMac$Hmac;
    }
.end annotation


# instance fields
.field protected blacklist keyBytes:[B

.field private final blacklist singleByte:[B

.field private final blacklist size:I


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 50
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->singleByte:[B

    .line 51
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLMac;->size:I

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(ILcom/android/org/conscrypt/OpenSSLMac$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/android/org/conscrypt/OpenSSLMac$1;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLMac;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected abstract blacklist doFinal()[B
.end method

.method protected whitelist test-api engineDoFinal()[B
    .registers 2

    .line 133
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->doFinal()[B

    move-result-object v0

    .line 134
    .local v0, "output":[B
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    .line 135
    return-object v0
.end method

.method protected whitelist test-api engineGetMacLength()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->size:I

    return v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 72
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_22

    .line 76
    if-nez p2, :cond_1a

    .line 80
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->keyBytes:[B

    .line 81
    if-eqz v0, :cond_12

    .line 85
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    .line 86
    return-void

    .line 82
    :cond_12
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key cannot be encoded"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1a
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "unknown parameter type"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_22
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key must be a SecretKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineReset()V
    .registers 1

    .line 142
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    .line 143
    return-void
.end method

.method protected whitelist test-api engineUpdate(B)V
    .registers 5
    .param p1, "input"    # B

    .line 90
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->singleByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 91
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLMac;->engineUpdate([BII)V

    .line 92
    return-void
.end method

.method protected whitelist test-api engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    .line 100
    return-void

    .line 103
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_11

    .line 104
    invoke-super {p0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 105
    return-void

    .line 108
    :cond_11
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    .line 109
    .local v0, "baseAddress":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1f

    .line 112
    invoke-super {p0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 113
    return-void

    .line 117
    :cond_1f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 118
    .local v2, "position":I
    if-ltz v2, :cond_3e

    .line 121
    int-to-long v3, v2

    add-long/2addr v3, v0

    .line 122
    .local v3, "ptr":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 123
    .local v5, "len":I
    if-ltz v5, :cond_36

    .line 127
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/org/conscrypt/OpenSSLMac;->updateDirect(JI)V

    .line 128
    add-int v6, v2, v5

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    return-void

    .line 124
    :cond_36
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Negative remaining amount"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 119
    .end local v3    # "ptr":J
    .end local v5    # "len":I
    :cond_3e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Negative position"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected abstract blacklist resetContext()V
.end method

.method protected abstract blacklist updateDirect(JI)V
.end method
