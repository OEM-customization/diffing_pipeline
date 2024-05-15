.class public Lcom/android/org/conscrypt/OpenSSLSignature;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;,
        Lcom/android/org/conscrypt/OpenSSLSignature$MD5RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$RSAPKCS1Padding;,
        Lcom/android/org/conscrypt/OpenSSLSignature$RSAPSSPadding;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA1RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA224ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA224RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA224RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA256ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA256RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA256RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA384ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA384RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA384RSAPSS;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA512ECDSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA512RSA;,
        Lcom/android/org/conscrypt/OpenSSLSignature$SHA512RSAPSS;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues:[I


# instance fields
.field private ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

.field private final engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

.field private final evpMdRef:J

.field private evpPkeyCtx:J

.field private key:Lcom/android/org/conscrypt/OpenSSLKey;

.field private signing:Z

.field private final singleByte:[B


# direct methods
.method private static synthetic -getcom-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature;->-com-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLSignature;->-com-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->values()[Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->EC:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_25

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->RSA:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_23

    :goto_20
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLSignature;->-com-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues:[I

    return-object v0

    :catch_23
    move-exception v1

    goto :goto_20

    :catch_25
    move-exception v1

    goto :goto_17
.end method

.method private constructor <init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;)V
    .registers 5
    .param p1, "evpMdRef"    # J
    .param p3, "engineType"    # Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    .line 85
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    .line 86
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpMdRef:J

    .line 87
    return-void
.end method

.method synthetic constructor <init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;Lcom/android/org/conscrypt/OpenSSLSignature;)V
    .registers 6
    .param p1, "evpMdRef"    # J
    .param p3, "engineType"    # Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;
    .param p4, "-this2"    # Lcom/android/org/conscrypt/OpenSSLSignature;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLSignature;-><init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;)V

    return-void
.end method

.method private checkEngineType(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 6
    .param p1, "pkey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 178
    .local v0, "pkeyType":I
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLSignature;->-getcom-android-org-conscrypt-OpenSSLSignature$EngineTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_82

    .line 192
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Key must be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :pswitch_33
    const/4 v1, 0x6

    if-eq v0, v1, :cond_80

    .line 181
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Signature initialized as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 182
    const-string/jumbo v3, " (not RSA)"

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :pswitch_59
    const/16 v1, 0x198

    if-eq v0, v1, :cond_80

    .line 187
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Signature initialized as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->engineType:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 188
    const-string/jumbo v3, " (not EC)"

    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_80
    return-void

    .line 178
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_59
        :pswitch_33
    .end packed-switch
.end method

.method private initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V
    .registers 5
    .param p1, "newKey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .param p2, "signing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLSignature;->checkEngineType(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 198
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 200
    iput-boolean p2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    .line 202
    :try_start_7
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V
    :try_end_a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_a} :catch_b

    .line 206
    return-void

    .line 203
    :catch_b
    move-exception v0

    .line 204
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private resetContext()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    .line 91
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    if-eqz v1, :cond_23

    .line 92
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpMdRef:J

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpPkeyCtx:J

    .line 96
    :goto_1b
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpPkeyCtx:J

    invoke-virtual {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLSignature;->configureEVP_PKEY_CTX(J)V

    .line 97
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 98
    return-void

    .line 94
    :cond_23
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpMdRef:J

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestVerifyInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpPkeyCtx:J

    goto :goto_1b
.end method


# virtual methods
.method protected configureEVP_PKEY_CTX(J)V
    .registers 3
    .param p1, "ctx"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 108
    return-void
.end method

.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V

    .line 211
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->initInternal(Lcom/android/org/conscrypt/OpenSSLKey;Z)V

    .line 216
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    return-void
.end method

.method protected engineSign()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 228
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    :try_start_2
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_14
    .catchall {:try_start_2 .. :try_end_5} :catchall_1b

    move-result-object v3

    .line 237
    :try_start_6
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V
    :try_end_9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_9} :catch_a

    .line 228
    return-object v3

    .line 238
    :catch_a
    move-exception v1

    .line 239
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "Reset of context failed after it was successful once"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 229
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_14
    move-exception v2

    .line 230
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_15
    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1b

    .line 231
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_1b
    move-exception v3

    .line 237
    :try_start_1c
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V
    :try_end_1f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 231
    throw v3

    .line 238
    :catch_20
    move-exception v1

    .line 239
    .restart local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "Reset of context failed after it was successful once"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method protected engineUpdate(B)V
    .registers 5
    .param p1, "input"    # B

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    aput-byte p1, v0, v2

    .line 113
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/conscrypt/OpenSSLSignature;->engineUpdate([BII)V

    .line 114
    return-void
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 12
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_7

    .line 133
    return-void

    .line 136
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    if-nez v5, :cond_11

    .line 137
    invoke-super {p0, p1}, Ljava/security/SignatureSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 138
    return-void

    .line 141
    :cond_11
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    .line 142
    .local v0, "baseAddress":J
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-nez v5, :cond_1f

    .line 145
    invoke-super {p0, p1}, Ljava/security/SignatureSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 146
    return-void

    .line 150
    :cond_1f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 151
    .local v4, "position":I
    if-gez v4, :cond_2e

    .line 152
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Negative position"

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 154
    :cond_2e
    int-to-long v8, v4

    add-long v6, v0, v8

    .line 155
    .local v6, "ptr":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 156
    .local v3, "len":I
    if-gez v3, :cond_40

    .line 157
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Negative remaining amount"

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    :cond_40
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 161
    .local v2, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iget-boolean v5, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    if-eqz v5, :cond_4f

    .line 162
    invoke-static {v2, v6, v7, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V

    .line 166
    :goto_49
    add-int v5, v4, v3

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 167
    return-void

    .line 164
    :cond_4f
    invoke-static {v2, v6, v7, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestVerifyUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V

    goto :goto_49
.end method

.method protected engineUpdate([BII)V
    .registers 6
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 119
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->signing:Z

    if-eqz v1, :cond_a

    .line 120
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestSignUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V

    .line 124
    :goto_9
    return-void

    .line 122
    :cond_a
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestVerifyUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V

    goto :goto_9
.end method

.method protected engineVerify([B)Z
    .registers 7
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;

    .line 249
    .local v0, "ctxLocal":Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
    :try_start_2
    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {v0, p1, v4, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_DigestVerifyFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_16
    .catchall {:try_start_2 .. :try_end_7} :catchall_1d

    move-result v3

    .line 258
    :try_start_8
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V
    :try_end_b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_8 .. :try_end_b} :catch_c

    .line 249
    return v3

    .line 259
    :catch_c
    move-exception v1

    .line 260
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "Reset of context failed after it was successful once"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 250
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_16
    move-exception v2

    .line 251
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_17
    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1d

    .line 252
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_1d
    move-exception v3

    .line 258
    :try_start_1e
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLSignature;->resetContext()V
    :try_end_21
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1e .. :try_end_21} :catch_22

    .line 252
    throw v3

    .line 259
    :catch_22
    move-exception v1

    .line 260
    .restart local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "Reset of context failed after it was successful once"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method protected final getEVP_PKEY_CTX()J
    .registers 3

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSignature;->evpPkeyCtx:J

    return-wide v0
.end method
