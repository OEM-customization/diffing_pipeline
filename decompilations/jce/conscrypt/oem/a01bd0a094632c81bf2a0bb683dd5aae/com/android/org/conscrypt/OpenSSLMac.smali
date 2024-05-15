.class public abstract Lcom/android/org/conscrypt/OpenSSLMac;
.super Ljavax/crypto/MacSpi;
.source "OpenSSLMac.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLMac$HmacMD5;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA224;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA256;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA384;,
        Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA512;
    }
.end annotation


# instance fields
.field private ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

.field private final evp_md:J

.field private keyBytes:[B

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(JI)V
    .registers 5
    .param p1, "evp_md"    # J
    .param p3, "size"    # I

    .prologue
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

.method synthetic constructor <init>(JILcom/android/org/conscrypt/OpenSSLMac;)V
    .registers 6
    .param p1, "evp_md"    # J
    .param p3, "size"    # I
    .param p4, "-this2"    # Lcom/android/org/conscrypt/OpenSSLMac;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLMac;-><init>(JI)V

    return-void
.end method

.method private final resetContext()V
    .registers 5

    .prologue
    .line 88
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_CTX_new()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;-><init>(J)V

    .line 89
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMac;->keyBytes:[B

    if-eqz v1, :cond_14

    .line 90
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLMac;->keyBytes:[B

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLMac;->evp_md:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Init_ex(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;[BJ)V

    .line 93
    :cond_14
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    .line 94
    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .registers 3

    .prologue
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

.method protected engineGetMacLength()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->size:I

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 71
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_d

    .line 72
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key must be a SecretKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_d
    if-eqz p2, :cond_18

    .line 76
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "unknown parameter type"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_18
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->keyBytes:[B

    .line 80
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->keyBytes:[B

    if-nez v0, :cond_2b

    .line 81
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key cannot be encoded"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2b
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    .line 85
    return-void
.end method

.method protected engineReset()V
    .registers 1

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLMac;->resetContext()V

    .line 158
    return-void
.end method

.method protected engineUpdate(B)V
    .registers 5
    .param p1, "input"    # B

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->singleByte:[B

    aput-byte p1, v0, v2

    .line 99
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/conscrypt/OpenSSLMac;->engineUpdate([BII)V

    .line 100
    return-void
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 12
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 114
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_7

    .line 115
    return-void

    .line 118
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    if-nez v5, :cond_11

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
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-nez v5, :cond_1f

    .line 127
    invoke-super {p0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 128
    return-void

    .line 132
    :cond_1f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 133
    .local v4, "position":I
    if-gez v4, :cond_2e

    .line 134
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Negative position"

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 136
    :cond_2e
    int-to-long v8, v4

    add-long v6, v0, v8

    .line 137
    .local v6, "ptr":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 138
    .local v3, "len":I
    if-gez v3, :cond_40

    .line 139
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Negative remaining amount"

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 142
    :cond_40
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    .line 143
    .local v2, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v2, v6, v7, v3}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_UpdateDirect(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;JI)V

    .line 144
    add-int v5, v4, v3

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 145
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLMac;->ctx:Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;

    .line 105
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->HMAC_Update(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;[BII)V

    .line 106
    return-void
.end method
