.class public abstract Lcom/android/org/conscrypt/OpenSSLMac;
.super Ljavax/crypto/MacSpi;
.source "OpenSSLMac.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA512;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA384;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA256;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA224;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacMD5;
    }
.end annotation


# instance fields
.field private blacklist ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

.field private final blacklist evp_md:J

.field private blacklist keyBytes:[B

.field private final blacklist singleByte:[B

.field private final blacklist size:I


# direct methods
.method private constructor blacklist <init>(JI)V
    .registers 5
    .param p1, "evp_md"    # J
    .param p3, "size"    # I

    .line 58
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->singleByte:[B

    .line 59
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLMac;->evp_md:J

    .line 60
    iput p3, p0, Lcom/android/org/conscrypt/OpenSSLMac;->size:I

    .line 61
    return-void
.end method

.method synthetic constructor blacklist <init>(JILcom/android/org/conscrypt/OpenSSLMac$1;)V
    .registers 5
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # Lcom/android/org/conscrypt/OpenSSLMac$1;

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLMac;-><init>(JI)V

    return-void
.end method

.method private final blacklist resetContext()V
    .registers 5

    .line 88
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_CTX_new()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;-><init>(J)V

    .line 89
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMac;->keyBytes:[B

    if-eqz v1, :cond_12

    .line 90
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLMac;->evp_md:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Init_ex(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;[BJ)V

    .line 93
    :cond_12
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    .line 94
    return-void
.end method


# virtual methods
.method protected whitelist core-platform-api test-api engineDoFinal()[B
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    .line 150
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Final(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;)[B

    move-result-object v1

    .line 151
    .local v1, "output":[B
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    .line 152
    return-object v1
.end method

.method protected whitelist core-platform-api test-api engineGetMacLength()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->size:I

    return v0
.end method

.method protected whitelist core-platform-api test-api engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 71
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_22

    .line 75
    if-nez p2, :cond_1a

    .line 79
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->keyBytes:[B

    .line 80
    if-eqz v0, :cond_12

    .line 84
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    .line 85
    return-void

    .line 81
    :cond_12
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key cannot be encoded"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1a
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "unknown parameter type"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_22
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key must be a SecretKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist core-platform-api test-api engineReset()V
    .registers 1

    .line 157
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    .line 158
    return-void
.end method

.method protected whitelist core-platform-api test-api engineUpdate(B)V
    .registers 5
    .param p1, "input"    # B

    .line 98
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->singleByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 99
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLMac;->engineUpdate([BII)V

    .line 100
    return-void
.end method

.method protected whitelist core-platform-api test-api engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    .line 115
    return-void

    .line 118
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_11

    .line 119
    invoke-super {p0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 120
    return-void

    .line 123
    :cond_11
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    .line 124
    .local v0, "baseAddress":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1f

    .line 127
    invoke-super {p0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 128
    return-void

    .line 132
    :cond_1f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 133
    .local v2, "position":I
    if-ltz v2, :cond_40

    .line 136
    int-to-long v3, v2

    add-long/2addr v3, v0

    .line 137
    .local v3, "ptr":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 138
    .local v5, "len":I
    if-ltz v5, :cond_38

    .line 142
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    .line 143
    .local v6, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v6, v3, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_UpdateDirect(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;JI)V

    .line 144
    add-int v7, v2, v5

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 145
    return-void

    .line 139
    .end local v6    # "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    :cond_38
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Negative remaining amount"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 134
    .end local v3    # "ptr":J
    .end local v5    # "len":I
    :cond_40
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Negative position"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected whitelist core-platform-api test-api engineUpdate([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 104
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    .line 105
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Update(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;[BII)V

    .line 106
    return-void
.end method
