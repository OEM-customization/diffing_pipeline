.class public final Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "OpenSSLECDHKeyAgreement.java"


# instance fields
.field private mExpectedResultLength:I

.field private mOpenSslPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private mResult:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkCompleted()V
    .registers 3

    .prologue
    .line 147
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    if-nez v0, :cond_d

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Key agreement not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_d
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .registers 11
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 53
    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x8
    nop

    if-nez v4, :cond_f

    .line 54
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Not initialized"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    :cond_f
    if-nez p2, :cond_1a

    .line 57
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "ECDH only has one phase"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :cond_1a
    if-nez p1, :cond_25

    .line 61
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string/jumbo v5, "key == null"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 63
    :cond_25
    instance-of v4, p1, Ljava/security/PublicKey;

    if-nez v4, :cond_47

    .line 64
    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not a public key: "

    #disallowed odex opcode
    #invoke-virtual-quick {v5, v6}, vtable@77
    nop

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@3
    nop

    move-result-object v6

    #disallowed odex opcode
    #invoke-virtual-quick {v5, v6}, vtable@76
    nop

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v5}, vtable@7
    nop

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 66
    :cond_47
    check-cast p1, Ljava/security/PublicKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    .line 68
    .local v2, "openSslPublicKey":Lcom/android/org/conscrypt/OpenSSLKey;
    #disallowed odex opcode
    #iget-quick v4, p0, field@0x10
    nop

    new-array v1, v4, [B

    .line 72
    .local v1, "buffer":[B
    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@11
    nop

    move-result-object v4

    .line 73
    #disallowed odex opcode
    #iget-object-quick v5, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v5}, vtable@11
    nop

    move-result-object v5

    .line 69
    invoke-static {v1, v6, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->ECDH_compute_key([BILcom/android/org/conscrypt/NativeRef$EVP_PKEY;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 75
    .local v0, "actualResultLength":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_7c

    .line 76
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Engine returned "

    #disallowed odex opcode
    #invoke-virtual-quick {v5, v6}, vtable@77
    nop

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v5, v0}, vtable@72
    nop

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v5}, vtable@7
    nop

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_7c
    #disallowed odex opcode
    #iget-quick v4, p0, field@0x10
    nop

    if-ne v0, v4, :cond_84

    .line 79
    move-object v3, v1

    .line 89
    .local v3, "result":[B
    :goto_81
    #disallowed odex opcode
    #iput-object-quick v3, p0, field@0xc
    nop

    .line 91
    return-object v7

    .line 80
    .end local v3    # "result":[B
    :cond_84
    #disallowed odex opcode
    #iget-quick v4, p0, field@0x10
    nop

    if-ge v0, v4, :cond_93

    .line 82
    new-array v3, v0, [B

    .line 83
    .restart local v3    # "result":[B
    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0xc
    nop

    #disallowed odex opcode
    #iget-object-quick v5, p0, field@0xc
    nop

    array-length v5, v5

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_81

    .line 86
    .end local v3    # "result":[B
    :cond_93
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Engine produced a longer than expected result. Expected: "

    #disallowed odex opcode
    #invoke-virtual-quick {v5, v6}, vtable@77
    nop

    move-result-object v5

    .line 87
    #disallowed odex opcode
    #iget-quick v6, p0, field@0x10
    nop

    .line 86
    #disallowed odex opcode
    #invoke-virtual-quick {v5, v6}, vtable@72
    nop

    move-result-object v5

    .line 87
    const-string/jumbo v6, ", actual: "

    .line 86
    #disallowed odex opcode
    #invoke-virtual-quick {v5, v6}, vtable@77
    nop

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v5, v0}, vtable@72
    nop

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v5}, vtable@7
    nop

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineGenerateSecret([BI)I
    .registers 7
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    .line 98
    array-length v1, p1

    sub-int v0, v1, p2

    .line 99
    .local v0, "available":I
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0xc
    nop

    array-length v1, v1

    if-le v1, v0, :cond_33

    .line 100
    new-instance v1, Ljavax/crypto/ShortBufferException;

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Needed: "

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0xc
    nop

    array-length v3, v3

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@72
    nop

    move-result-object v2

    const-string/jumbo v3, ", available: "

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v0}, vtable@72
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@7
    nop

    move-result-object v2

    .line 100
    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_33
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0xc
    nop

    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0xc
    nop

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 105
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0xc
    nop

    array-length v1, v1

    return v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    .line 117
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@14
    nop

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineGenerateSecret()[B
    .registers 2

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    .line 111
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .registers 9
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 122
    if-nez p1, :cond_b

    .line 123
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "key == null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_b
    instance-of v2, p1, Ljava/security/PrivateKey;

    if-nez v2, :cond_2d

    .line 126
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not a private key: "

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@3
    nop

    move-result-object v4

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@76
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :cond_2d
    check-cast p1, Ljava/security/PrivateKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    .line 130
    .local v1, "openSslKey":Lcom/android/org/conscrypt/OpenSSLKey;
    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    .line 131
    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@11
    nop

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v4

    .line 130
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_degree(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)I

    move-result v0

    .line 132
    .local v0, "fieldSizeBits":I
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    #disallowed odex opcode
    #iput-quick v2, p0, field@0x10
    nop

    .line 133
    #disallowed odex opcode
    #iput-object-quick v1, p0, field@0x8
    nop

    .line 134
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 140
    if-eqz p2, :cond_b

    .line 141
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "No algorithm parameters supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_b
    #disallowed odex opcode
    #invoke-virtual-quick {p0, p1, p3}, vtable@15
    nop

    .line 144
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
