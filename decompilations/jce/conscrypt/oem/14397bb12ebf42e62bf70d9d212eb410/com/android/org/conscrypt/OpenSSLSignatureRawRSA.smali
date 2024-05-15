.class public final Lcom/android/org/conscrypt/OpenSSLSignatureRawRSA;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignatureRawRSA.java"


# instance fields
.field private inputBuffer:[B

.field private inputIsTooLong:Z

.field private inputOffset:I

.field private key:Lcom/android/org/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 8
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 90
    instance-of v4, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v4, :cond_1f

    move-object v1, p1

    .line 91
    nop

    nop

    .line 92
    .local v1, "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@16
    nop

    move-result-object v4

    #disallowed odex opcode
    #iput-object-quick v4, p0, field@0x10
    nop

    .line 104
    .end local v1    # "rsaPrivateKey":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    :goto_d
    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v4}, vtable@11
    nop

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 105
    .local v0, "maxSize":I
    new-array v4, v0, [B

    #disallowed odex opcode
    #iput-object-quick v4, p0, field@0xc
    nop

    .line 106
    const/4 v4, 0x0

    #disallowed odex opcode
    #iput-quick v4, p0, field@0x14
    nop

    .line 107
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 93
    .end local v0    # "maxSize":I
    :cond_1f
    instance-of v4, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v4, :cond_2d

    move-object v2, p1

    .line 94
    check-cast v2, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 95
    .local v2, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v4

    #disallowed odex opcode
    #iput-object-quick v4, p0, field@0x10
    nop

    goto :goto_d

    .line 96
    .end local v2    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_2d
    instance-of v4, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v4, :cond_3b

    move-object v3, p1

    .line 97
    check-cast v3, Ljava/security/interfaces/RSAPrivateKey;

    .line 98
    .local v3, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v4

    #disallowed odex opcode
    #iput-object-quick v4, p0, field@0x10
    nop

    goto :goto_d

    .line 100
    .end local v3    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_3b
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string/jumbo v5, "Need RSA private key"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 7
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 111
    instance-of v3, p1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v3, :cond_1f

    move-object v1, p1

    .line 112
    nop

    nop

    .line 113
    .local v1, "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@15
    nop

    move-result-object v3

    #disallowed odex opcode
    #iput-object-quick v3, p0, field@0x10
    nop

    .line 122
    .end local v1    # "rsaPublicKey":Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
    :goto_d
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@11
    nop

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 123
    .local v0, "maxSize":I
    new-array v3, v0, [B

    #disallowed odex opcode
    #iput-object-quick v3, p0, field@0xc
    nop

    .line 124
    const/4 v3, 0x0

    #disallowed odex opcode
    #iput-quick v3, p0, field@0x14
    nop

    .line 125
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 114
    .end local v0    # "maxSize":I
    :cond_1f
    instance-of v3, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v3, :cond_2d

    move-object v2, p1

    .line 115
    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    .line 116
    .local v2, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    #disallowed odex opcode
    #iput-object-quick v3, p0, field@0x10
    nop

    goto :goto_d

    .line 118
    .end local v2    # "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_2d
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "Need RSA public key"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
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

    .prologue
    .line 130
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected engineSign()[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 134
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x10
    nop

    if-nez v2, :cond_e

    .line 136
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "Need RSA private key"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_e
    #disallowed odex opcode
    #iget-boolean-quick v2, p0, field@0x18
    nop

    if-eqz v2, :cond_43

    .line 140
    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "input length "

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #iget-quick v4, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@72
    nop

    move-result-object v3

    const-string/jumbo v4, " != "

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    .line 141
    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0xc
    nop

    array-length v4, v4

    .line 140
    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@72
    nop

    move-result-object v3

    .line 141
    const-string/jumbo v4, " (modulus size)"

    .line 140
    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_43
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0xc
    nop

    array-length v2, v2

    new-array v1, v2, [B

    .line 146
    .local v1, "outputBuffer":[B
    :try_start_48
    #disallowed odex opcode
    #iget-quick v2, p0, field@0x14
    nop

    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0xc
    nop

    .line 147
    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v4}, vtable@11
    nop

    move-result-object v4

    const/4 v5, 0x1

    .line 146
    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_56} :catch_59
    .catchall {:try_start_48 .. :try_end_56} :catchall_60

    .line 152
    #disallowed odex opcode
    #iput-quick v6, p0, field@0x14
    nop

    .line 148
    return-object v1

    .line 149
    :catch_59
    move-exception v0

    .line 150
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_5a
    new-instance v2, Ljava/security/SignatureException;

    invoke-direct {v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_60

    .line 151
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_60
    move-exception v2

    .line 152
    #disallowed odex opcode
    #iput-quick v6, p0, field@0x14
    nop

    .line 151
    throw v2
.end method

.method protected engineUpdate(B)V
    .registers 5
    .param p1, "input"    # B

    .prologue
    .line 59
    #disallowed odex opcode
    #iget-quick v0, p0, field@0x14
    nop

    add-int/lit8 v1, v0, 0x1

    #disallowed odex opcode
    #iput-quick v1, p0, field@0x14
    nop

    .line 61
    .local v0, "oldOffset":I
    #disallowed odex opcode
    #iget-quick v1, p0, field@0x14
    nop

    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0xc
    nop

    array-length v2, v2

    if-le v1, v2, :cond_11

    .line 62
    const/4 v1, 0x1

    #disallowed odex opcode
    #iput-boolean-quick v1, p0, field@0x18
    nop

    .line 63
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 66
    :cond_11
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0xc
    nop

    aput-byte p1, v1, v0

    .line 67
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected engineUpdate([BII)V
    .registers 7
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 71
    #disallowed odex opcode
    #iget-quick v0, p0, field@0x14
    nop

    .line 72
    .local v0, "oldOffset":I
    #disallowed odex opcode
    #iget-quick v1, p0, field@0x14
    nop

    add-int/2addr v1, p3

    #disallowed odex opcode
    #iput-quick v1, p0, field@0x14
    nop

    .line 74
    #disallowed odex opcode
    #iget-quick v1, p0, field@0x14
    nop

    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0xc
    nop

    array-length v2, v2

    if-le v1, v2, :cond_12

    .line 75
    const/4 v1, 0x1

    #disallowed odex opcode
    #iput-boolean-quick v1, p0, field@0x18
    nop

    .line 76
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 79
    :cond_12
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0xc
    nop

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 80
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected engineVerify([B)Z
    .registers 13
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 158
    #disallowed odex opcode
    #iget-object-quick v7, p0, field@0x10
    nop

    if-nez v7, :cond_e

    .line 160
    new-instance v7, Ljava/security/SignatureException;

    const-string/jumbo v8, "Need RSA public key"

    invoke-direct {v7, v8}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 163
    :cond_e
    #disallowed odex opcode
    #iget-boolean-quick v7, p0, field@0x18
    nop

    if-eqz v7, :cond_13

    .line 164
    return v10

    .line 169
    :cond_13
    array-length v7, p1

    #disallowed odex opcode
    #iget-object-quick v8, p0, field@0xc
    nop

    array-length v8, v8

    if-le v7, v8, :cond_42

    .line 170
    new-instance v7, Ljava/security/SignatureException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Input signature length is too large: "

    #disallowed odex opcode
    #invoke-virtual-quick {v8, v9}, vtable@77
    nop

    move-result-object v8

    array-length v9, p1

    #disallowed odex opcode
    #invoke-virtual-quick {v8, v9}, vtable@72
    nop

    move-result-object v8

    .line 171
    const-string/jumbo v9, " > "

    .line 170
    #disallowed odex opcode
    #invoke-virtual-quick {v8, v9}, vtable@77
    nop

    move-result-object v8

    .line 171
    #disallowed odex opcode
    #iget-object-quick v9, p0, field@0xc
    nop

    array-length v9, v9

    .line 170
    #disallowed odex opcode
    #invoke-virtual-quick {v8, v9}, vtable@72
    nop

    move-result-object v8

    #disallowed odex opcode
    #invoke-virtual-quick {v8}, vtable@7
    nop

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 174
    :cond_42
    #disallowed odex opcode
    #iget-object-quick v7, p0, field@0xc
    nop

    array-length v7, v7

    new-array v5, v7, [B

    .line 178
    .local v5, "outputBuffer":[B
    :try_start_47
    array-length v7, p1

    .line 179
    #disallowed odex opcode
    #iget-object-quick v8, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v8}, vtable@11
    nop

    move-result-object v8

    const/4 v9, 0x1

    .line 178
    invoke-static {v7, p1, v5, v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    :try_end_52
    .catch Ljava/security/SignatureException; {:try_start_47 .. :try_end_52} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_52} :catch_67
    .catchall {:try_start_47 .. :try_end_52} :catchall_74

    move-result v6

    .line 186
    .local v6, "resultSize":I
    :try_start_53
    #disallowed odex opcode
    #iget-quick v7, p0, field@0x14
    nop

    if-ne v6, v7, :cond_78

    const/4 v4, 0x1

    .line 187
    .local v4, "matches":Z
    :goto_58
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_59
    if-ge v3, v6, :cond_7a

    .line 188
    #disallowed odex opcode
    #iget-object-quick v7, p0, field@0xc
    nop

    aget-byte v7, v7, v3

    aget-byte v8, v5, v3
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_61} :catch_6d
    .catchall {:try_start_53 .. :try_end_61} :catchall_74

    if-eq v7, v8, :cond_64

    .line 189
    const/4 v4, 0x0

    .line 187
    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 182
    .end local v3    # "i":I
    .end local v4    # "matches":Z
    .end local v6    # "resultSize":I
    :catch_67
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    #disallowed odex opcode
    #iput-quick v10, p0, field@0x14
    nop

    .line 183
    return v10

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6b
    move-exception v1

    .line 181
    .local v1, "e":Ljava/security/SignatureException;
    :try_start_6c
    throw v1
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6d} :catch_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_74

    .line 193
    .end local v1    # "e":Ljava/security/SignatureException;
    :catch_6d
    move-exception v2

    .line 194
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_6e
    new-instance v7, Ljava/security/SignatureException;

    invoke-direct {v7, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_74

    .line 195
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_74
    move-exception v7

    .line 196
    #disallowed odex opcode
    #iput-quick v10, p0, field@0x14
    nop

    .line 195
    throw v7

    .line 186
    .restart local v6    # "resultSize":I
    :cond_78
    const/4 v4, 0x0

    .restart local v4    # "matches":Z
    goto :goto_58

    .line 196
    .restart local v3    # "i":I
    :cond_7a
    #disallowed odex opcode
    #iput-quick v10, p0, field@0x14
    nop

    .line 192
    return v4
.end method
