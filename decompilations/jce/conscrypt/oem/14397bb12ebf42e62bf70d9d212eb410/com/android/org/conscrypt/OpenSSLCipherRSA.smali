.class abstract Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.super Ljavax/crypto/CipherSpi;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$DirectRSA;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$PKCS1;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$Raw;
    }
.end annotation


# instance fields
.field private buffer:[B

.field private bufferOffset:I

.field encrypting:Z

.field private inputTooLarge:Z

.field key:Lcom/android/org/conscrypt/OpenSSLKey;

.field padding:I

.field usingPrivateKey:Z


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "padding"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 90
    const/4 v0, 0x1

    #disallowed odex opcode
    #iput-quick v0, p0, field@0x14
    nop

    .line 93
    #disallowed odex opcode
    #iput-quick p1, p0, field@0x14
    nop

    .line 94
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method doCryptoInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 2
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 171
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method abstract doCryptoOperation([B[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation
.end method

.method protected engineDoFinal([BII[BI)I
    .registers 11
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 308
    #disallowed odex opcode
    #invoke-virtual-quick {p0, p1, p2, p3}, vtable@13
    nop

    move-result-object v0

    .line 310
    .local v0, "b":[B
    array-length v2, v0

    add-int v1, p5, v2

    .line 311
    .local v1, "lastOffset":I
    array-length v2, p4

    if-le v1, v2, :cond_30

    .line 312
    new-instance v2, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "output buffer is too small "

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    array-length v4, p4

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@72
    nop

    move-result-object v3

    const-string/jumbo v4, " < "

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v1}, vtable@72
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    :cond_30
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p4, p5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 317
    array-length v2, v0

    return v2
.end method

.method protected engineDoFinal([BII)[B
    .registers 11
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 271
    if-eqz p1, :cond_6

    .line 272
    #disallowed odex opcode
    #invoke-virtual-quick {p0, p1, p2, p3}, vtable@27
    nop

    .line 275
    :cond_6
    #disallowed odex opcode
    #iget-boolean-quick v3, p0, field@0x19
    nop

    if-eqz v3, :cond_2e

    .line 276
    new-instance v3, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "input must be under "

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@77
    nop

    move-result-object v4

    #disallowed odex opcode
    #iget-object-quick v5, p0, field@0x8
    nop

    array-length v5, v5

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@72
    nop

    move-result-object v4

    const-string/jumbo v5, " bytes"

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@77
    nop

    move-result-object v4

    #disallowed odex opcode
    #invoke-virtual-quick {v4}, vtable@7
    nop

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 280
    :cond_2e
    #disallowed odex opcode
    #iget-quick v3, p0, field@0x10
    nop

    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x8
    nop

    array-length v4, v4

    if-eq v3, v4, :cond_6c

    .line 281
    #disallowed odex opcode
    #iget-quick v3, p0, field@0x14
    nop

    const/4 v4, 0x3

    if-ne v3, v4, :cond_63

    .line 282
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x8
    nop

    array-length v3, v3

    new-array v2, v3, [B

    .line 283
    .local v2, "tmpBuf":[B
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x8
    nop

    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x8
    nop

    array-length v4, v4

    #disallowed odex opcode
    #iget-quick v5, p0, field@0x10
    nop

    sub-int/2addr v4, v5

    #disallowed odex opcode
    #iget-quick v5, p0, field@0x10
    nop

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 291
    :goto_4c
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x8
    nop

    array-length v3, v3

    new-array v0, v3, [B

    .line 292
    .local v0, "output":[B
    #disallowed odex opcode
    #invoke-virtual-quick {p0, v2, v0}, vtable@32
    nop

    move-result v1

    .line 293
    .local v1, "resultSize":I
    #disallowed odex opcode
    #iget-boolean-quick v3, p0, field@0x18
    nop

    if-nez v3, :cond_60

    array-length v3, v0

    if-eq v1, v3, :cond_60

    .line 294
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 297
    :cond_60
    #disallowed odex opcode
    #iput-quick v6, p0, field@0x10
    nop

    .line 298
    return-object v0

    .line 285
    .end local v0    # "output":[B
    .end local v1    # "resultSize":I
    .end local v2    # "tmpBuf":[B
    :cond_63
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x8
    nop

    #disallowed odex opcode
    #iget-quick v4, p0, field@0x10
    nop

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .restart local v2    # "tmpBuf":[B
    goto :goto_4c

    .line 288
    .end local v2    # "tmpBuf":[B
    :cond_6c
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x8
    nop

    .restart local v2    # "tmpBuf":[B
    goto :goto_4c
.end method

.method protected engineGetBlockSize()I
    .registers 2

    .prologue
    .line 123
    #disallowed odex opcode
    #iget-boolean-quick v0, p0, field@0x18
    nop

    if-eqz v0, :cond_9

    .line 124
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@36
    nop

    move-result v0

    return v0

    .line 126
    :cond_9
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@35
    nop

    move-result v0

    return v0
.end method

.method protected engineGetIV()[B
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetOutputSize(I)I
    .registers 3
    .param p1, "inputLen"    # I

    .prologue
    .line 131
    #disallowed odex opcode
    #iget-boolean-quick v0, p0, field@0x18
    nop

    if-eqz v0, :cond_9

    .line 132
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@35
    nop

    move-result v0

    return v0

    .line 134
    :cond_9
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@36
    nop

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 8
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 241
    if-eqz p3, :cond_25

    .line 242
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown param type: "

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@77
    nop

    move-result-object v1

    .line 243
    #disallowed odex opcode
    #invoke-virtual-quick {p3}, vtable@3
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@50
    nop

    move-result-object v2

    .line 242
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@77
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@7
    nop

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_25
    #disallowed odex opcode
    #invoke-virtual-quick {p0, p1, p2, v0}, vtable@33
    nop

    .line 247
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 221
    const/4 v1, 0x0

    :try_start_1
    #disallowed odex opcode
    #invoke-virtual-quick {p0, p1, p2, v1}, vtable@33
    nop
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_4} :catch_5

    .line 225
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 222
    :catch_5
    move-exception v0

    .line 223
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "Algorithm parameters rejected when none supplied"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 8
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 230
    if-eqz p3, :cond_24

    .line 231
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown param type: "

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@77
    nop

    move-result-object v1

    .line 232
    #disallowed odex opcode
    #invoke-virtual-quick {p3}, vtable@3
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@50
    nop

    move-result-object v2

    .line 231
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@77
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@7
    nop

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_24
    #disallowed odex opcode
    #invoke-virtual-quick {p0, p1, p2, p3}, vtable@33
    nop

    .line 236
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 12
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 175
    if-eq p1, v7, :cond_7

    const/4 v5, 0x3

    if-ne p1, v5, :cond_2e

    .line 176
    :cond_7
    #disallowed odex opcode
    #iput-boolean-quick v7, p0, field@0x18
    nop

    .line 183
    :goto_9
    instance-of v5, p2, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v5, :cond_51

    move-object v0, p2

    .line 184
    nop

    nop

    .line 185
    .local v0, "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    #disallowed odex opcode
    #iput-boolean-quick v7, p0, field@0x1a
    nop

    .line 186
    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@16
    nop

    move-result-object v5

    #disallowed odex opcode
    #iput-object-quick v5, p0, field@0xc
    nop

    .line 211
    .end local v0    # "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    :goto_18
    #disallowed odex opcode
    #iget-object-quick v5, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v5}, vtable@11
    nop

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v5

    new-array v5, v5, [B

    #disallowed odex opcode
    #iput-object-quick v5, p0, field@0x8
    nop

    .line 212
    #disallowed odex opcode
    #iput-quick v6, p0, field@0x10
    nop

    .line 213
    #disallowed odex opcode
    #iput-boolean-quick v6, p0, field@0x19
    nop

    .line 215
    #disallowed odex opcode
    #invoke-virtual-quick {p0, p3}, vtable@31
    nop

    .line 216
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 177
    :cond_2e
    const/4 v5, 0x2

    if-eq p1, v5, :cond_34

    const/4 v5, 0x4

    if-ne p1, v5, :cond_37

    .line 178
    :cond_34
    #disallowed odex opcode
    #iput-boolean-quick v6, p0, field@0x18
    nop

    goto :goto_9

    .line 180
    :cond_37
    new-instance v5, Ljava/security/InvalidParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unsupported opmode "

    #disallowed odex opcode
    #invoke-virtual-quick {v6, v7}, vtable@77
    nop

    move-result-object v6

    #disallowed odex opcode
    #invoke-virtual-quick {v6, p1}, vtable@72
    nop

    move-result-object v6

    #disallowed odex opcode
    #invoke-virtual-quick {v6}, vtable@7
    nop

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 187
    :cond_51
    instance-of v5, p2, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v5, :cond_61

    move-object v1, p2

    .line 188
    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 189
    .local v1, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    #disallowed odex opcode
    #iput-boolean-quick v7, p0, field@0x1a
    nop

    .line 190
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v5

    #disallowed odex opcode
    #iput-object-quick v5, p0, field@0xc
    nop

    goto :goto_18

    .line 191
    .end local v1    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_61
    instance-of v5, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v5, :cond_71

    move-object v2, p2

    .line 192
    check-cast v2, Ljava/security/interfaces/RSAPrivateKey;

    .line 193
    .local v2, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    #disallowed odex opcode
    #iput-boolean-quick v7, p0, field@0x1a
    nop

    .line 194
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v5

    #disallowed odex opcode
    #iput-object-quick v5, p0, field@0xc
    nop

    goto :goto_18

    .line 195
    .end local v2    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_71
    instance-of v5, p2, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v5, :cond_81

    move-object v3, p2

    .line 196
    nop

    nop

    .line 197
    .local v3, "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    #disallowed odex opcode
    #iput-boolean-quick v6, p0, field@0x1a
    nop

    .line 198
    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@15
    nop

    move-result-object v5

    #disallowed odex opcode
    #iput-object-quick v5, p0, field@0xc
    nop

    goto :goto_18

    .line 199
    .end local v3    # "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    :cond_81
    instance-of v5, p2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v5, :cond_91

    move-object v4, p2

    .line 200
    check-cast v4, Ljava/security/interfaces/RSAPublicKey;

    .line 201
    .local v4, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    #disallowed odex opcode
    #iput-boolean-quick v6, p0, field@0x1a
    nop

    .line 202
    invoke-static {v4}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v5

    #disallowed odex opcode
    #iput-object-quick v5, p0, field@0xc
    nop

    goto :goto_18

    .line 204
    .end local v4    # "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_91
    if-nez p2, :cond_9c

    .line 205
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string/jumbo v6, "RSA private or public key is null"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 208
    :cond_9c
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string/jumbo v6, "Need RSA private or public key"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 98
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #disallowed odex opcode
    #invoke-virtual-quick {p1, v1}, vtable@61
    nop

    move-result-object v0

    .line 99
    .local v0, "modeUpper":Ljava/lang/String;
    const-string/jumbo v1, "NONE"

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v0}, vtable@1
    nop

    move-result v1

    if-nez v1, :cond_18

    const-string/jumbo v1, "ECB"

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v0}, vtable@1
    nop

    move-result v1

    if-eqz v1, :cond_19

    .line 100
    :cond_18
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 103
    :cond_19
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mode not supported: "

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2, p1}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@7
    nop

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .registers 6
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 108
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #disallowed odex opcode
    #invoke-virtual-quick {p1, v1}, vtable@61
    nop

    move-result-object v0

    .line 109
    .local v0, "paddingUpper":Ljava/lang/String;
    const-string/jumbo v1, "PKCS1PADDING"

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v0}, vtable@1
    nop

    move-result v1

    if-eqz v1, :cond_13

    .line 110
    const/4 v1, 0x1

    #disallowed odex opcode
    #iput-quick v1, p0, field@0x14
    nop

    .line 111
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 113
    :cond_13
    const-string/jumbo v1, "NOPADDING"

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v0}, vtable@1
    nop

    move-result v1

    if-eqz v1, :cond_20

    .line 114
    const/4 v1, 0x3

    #disallowed odex opcode
    #iput-quick v1, p0, field@0x14
    nop

    .line 115
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 118
    :cond_20
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "padding not supported: "

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2, p1}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@7
    nop

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 12
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 336
    :try_start_0
    array-length v5, p1

    const/4 v6, 0x0

    #disallowed odex opcode
    #invoke-virtual-quick {p0, p1, v6, v5}, vtable@13
    nop

    move-result-object v3

    .line 337
    .local v3, "encoded":[B
    const/4 v5, 0x1

    if-ne p3, v5, :cond_17

    .line 338
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 339
    .local v4, "keyFactory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@12
    nop

    move-result-object v5

    return-object v5

    .line 340
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :cond_17
    const/4 v5, 0x2

    if-ne p3, v5, :cond_28

    .line 341
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 342
    .restart local v4    # "keyFactory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v5, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@11
    nop

    move-result-object v5

    return-object v5

    .line 343
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :cond_28
    const/4 v5, 0x3

    if-ne p3, v5, :cond_31

    .line 344
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v5, v3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v5

    .line 346
    :cond_31
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wrappedKeyType == "

    #disallowed odex opcode
    #invoke-virtual-quick {v6, v7}, vtable@77
    nop

    move-result-object v6

    #disallowed odex opcode
    #invoke-virtual-quick {v6, p3}, vtable@72
    nop

    move-result-object v6

    #disallowed odex opcode
    #invoke-virtual-quick {v6}, vtable@7
    nop

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_4b} :catch_4b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_4b} :catch_59
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_4b} :catch_52

    .line 348
    .end local v3    # "encoded":[B
    :catch_4b
    move-exception v2

    .line 349
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-direct {v5, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 352
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_52
    move-exception v0

    .line 353
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-direct {v5, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 350
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_59
    move-exception v1

    .line 351
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-direct {v5, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected engineUpdate([BII[BI)I
    .registers 7
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 264
    #disallowed odex opcode
    #invoke-virtual-quick {p0, p1, p2, p3}, vtable@27
    nop

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .registers 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 251
    #disallowed odex opcode
    #iget-quick v0, p0, field@0x10
    nop

    add-int/2addr v0, p3

    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    array-length v1, v1

    if-le v0, v1, :cond_e

    .line 252
    const/4 v0, 0x1

    #disallowed odex opcode
    #iput-boolean-quick v0, p0, field@0x19
    nop

    .line 253
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object v0

    .line 256
    :cond_e
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    #disallowed odex opcode
    #iget-quick v1, p0, field@0x10
    nop

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 257
    #disallowed odex opcode
    #iget-quick v0, p0, field@0x10
    nop

    add-int/2addr v0, p3

    #disallowed odex opcode
    #iput-quick v0, p0, field@0x10
    nop

    .line 258
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .registers 7
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 323
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 324
    .local v1, "encoded":[B
    array-length v3, v1

    const/4 v4, 0x0

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v1, v4, v3}, vtable@13
    nop
    :try_end_9
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v3

    return-object v3

    .line 325
    .end local v1    # "encoded":[B
    :catch_b
    move-exception v0

    .line 326
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 327
    .local v2, "newE":Ljavax/crypto/IllegalBlockSizeException;
    #disallowed odex opcode
    #invoke-virtual-quick {v2, v0}, vtable@18
    nop

    .line 328
    throw v2
.end method

.method isInitialized()Z
    .registers 2

    .prologue
    .line 157
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method keySizeBytes()I
    .registers 3

    .prologue
    .line 147
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@34
    nop

    move-result v0

    if-nez v0, :cond_f

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cipher is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_f
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@11
    nop

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    return v0
.end method

.method paddedBlockSizeBytes()I
    .registers 4

    .prologue
    .line 138
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@35
    nop

    move-result v0

    .line 139
    .local v0, "paddedBlockSizeBytes":I
    #disallowed odex opcode
    #iget-quick v1, p0, field@0x14
    nop

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 140
    add-int/lit8 v0, v0, -0x1

    .line 141
    add-int/lit8 v0, v0, -0xa

    .line 143
    :cond_d
    return v0
.end method
