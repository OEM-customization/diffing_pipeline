.class public Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignatureRawECDSA.java"


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private key:Lcom/android/org/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0xc
    nop

    .line 33
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static verifyKey(Lcom/android/org/conscrypt/OpenSSLKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 4
    .param p0, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 61
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 62
    .local v0, "pkeyType":I
    const/16 v1, 0x198

    if-eq v0, v1, :cond_15

    .line 63
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "Non-EC key used to initialize EC signature."

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_15
    return-object p0
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
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->verifyKey(Lcom/android/org/conscrypt/OpenSSLKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x10
    nop

    .line 71
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSignatureRawECDSA;->verifyKey(Lcom/android/org/conscrypt/OpenSSLKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x10
    nop

    .line 76
    #disallowed odex opcode
    #return-void-no-barrier
    nop
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
    .line 81
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
    .line 85
    #disallowed odex opcode
    #iget-object-quick v5, p0, field@0x10
    nop

    if-nez v5, :cond_d

    .line 87
    new-instance v5, Ljava/security/SignatureException;

    const-string/jumbo v6, "No key provided"

    invoke-direct {v5, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 90
    :cond_d
    #disallowed odex opcode
    #iget-object-quick v5, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v5}, vtable@11
    nop

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/conscrypt/NativeCrypto;->ECDSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v4

    .line 91
    .local v4, "output_size":I
    new-array v3, v4, [B

    .line 94
    .local v3, "outputBuffer":[B
    :try_start_19
    #disallowed odex opcode
    #iget-object-quick v5, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v5}, vtable@18
    nop

    move-result-object v5

    #disallowed odex opcode
    #iget-object-quick v6, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v6}, vtable@11
    nop

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/android/org/conscrypt/NativeCrypto;->ECDSA_sign([B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 95
    .local v0, "bytes_written":I
    if-gez v0, :cond_42

    .line 96
    new-instance v5, Ljava/security/SignatureException;

    const-string/jumbo v6, "Could not compute signature."

    invoke-direct {v5, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_34} :catch_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_3b

    .line 107
    .end local v0    # "bytes_written":I
    :catch_34
    move-exception v1

    .line 108
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_35
    new-instance v5, Ljava/security/SignatureException;

    invoke-direct {v5, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_3b

    .line 109
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_3b
    move-exception v5

    .line 110
    #disallowed odex opcode
    #iget-object-quick v6, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v6}, vtable@16
    nop

    .line 109
    throw v5

    .line 101
    .restart local v0    # "bytes_written":I
    :cond_42
    if-eq v0, v4, :cond_4c

    .line 102
    :try_start_44
    new-array v2, v0, [B

    .line 103
    .local v2, "newBuffer":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_34
    .catchall {:try_start_44 .. :try_end_4b} :catchall_3b

    .line 104
    move-object v3, v2

    .line 110
    .end local v2    # "newBuffer":[B
    :cond_4c
    #disallowed odex opcode
    #iget-object-quick v5, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v5}, vtable@16
    nop

    .line 106
    return-object v3
.end method

.method protected engineUpdate(B)V
    .registers 3
    .param p1, "input"    # B

    .prologue
    .line 46
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0, p1}, vtable@13
    nop

    .line 47
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 51
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0, p1, p2, p3}, vtable@15
    nop

    .line 52
    #disallowed odex opcode
    #return-void-no-barrier
    nop
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
    const/4 v2, 0x1

    .line 116
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x10
    nop

    if-nez v3, :cond_e

    .line 118
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "No key provided"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_e
    :try_start_e
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@18
    nop

    move-result-object v3

    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v4}, vtable@11
    nop

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/android/org/conscrypt/NativeCrypto;->ECDSA_verify([B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v1

    .line 124
    .local v1, "result":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_38

    .line 125
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "Could not verify signature."

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2a} :catch_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_31

    .line 128
    .end local v1    # "result":I
    :catch_2a
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2b
    new-instance v2, Ljava/security/SignatureException;

    invoke-direct {v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_31

    .line 130
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_31
    move-exception v2

    .line 131
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@16
    nop

    .line 130
    throw v2

    .line 127
    .restart local v1    # "result":I
    :cond_38
    if-ne v1, v2, :cond_40

    .line 131
    :goto_3a
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@16
    nop

    .line 127
    return v2

    :cond_40
    const/4 v2, 0x0

    goto :goto_3a
.end method
