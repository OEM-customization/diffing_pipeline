.class public Ljavax/crypto/SealedObject;
.super Ljava/lang/Object;
.source "SealedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x3e363da6c3b75470L


# instance fields
.field protected encodedParams:[B

.field private encryptedContent:[B

.field private paramsAlg:Ljava/lang/String;

.field private sealAlg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljavax/crypto/Cipher;)V
    .registers 8
    .param p1, "object"    # Ljava/io/Serializable;
    .param p2, "c"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object v4, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 108
    iput-object v4, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 115
    iput-object v4, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 125
    iput-object v4, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 154
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 155
    .local v1, "b":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 159
    .local v0, "a":Ljava/io/ObjectOutput;
    :try_start_16
    invoke-interface {v0, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 160
    invoke-interface {v0}, Ljava/io/ObjectOutput;->flush()V

    .line 161
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_4a

    move-result-object v2

    .line 163
    .local v2, "content":[B
    invoke-interface {v0}, Ljava/io/ObjectOutput;->close()V

    .line 170
    :try_start_23
    invoke-virtual {p2, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    iput-object v4, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B
    :try_end_29
    .catch Ljavax/crypto/BadPaddingException; {:try_start_23 .. :try_end_29} :catch_4f

    .line 178
    :goto_29
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v4

    if-eqz v4, :cond_43

    .line 179
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v4

    iput-object v4, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 180
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 184
    :cond_43
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 185
    return-void

    .line 162
    .end local v2    # "content":[B
    :catchall_4a
    move-exception v4

    .line 163
    invoke-interface {v0}, Ljava/io/ObjectOutput;->close()V

    .line 162
    throw v4

    .line 172
    .restart local v2    # "content":[B
    :catch_4f
    move-exception v3

    .local v3, "ex":Ljavax/crypto/BadPaddingException;
    goto :goto_29
.end method

.method protected constructor <init>(Ljavax/crypto/SealedObject;)V
    .registers 4
    .param p1, "so"    # Ljavax/crypto/SealedObject;

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object v1, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 108
    iput-object v1, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 194
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 195
    iget-object v0, p1, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 196
    iget-object v0, p1, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 197
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encodedParams:[B

    if-eqz v0, :cond_2d

    .line 198
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 202
    :goto_2c
    return-void

    .line 200
    :cond_2d
    iput-object v1, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    goto :goto_2c
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 448
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    if-eqz v0, :cond_11

    .line 449
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 450
    :cond_11
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    if-eqz v0, :cond_1f

    .line 451
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 452
    :cond_1f
    return-void
.end method

.method private unseal(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    .registers 15
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 368
    const/4 v8, 0x0

    .line 369
    .local v8, "params":Ljava/security/AlgorithmParameters;
    iget-object v9, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    if-eqz v9, :cond_12

    .line 371
    if-eqz p2, :cond_38

    .line 372
    :try_start_7
    iget-object v9, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-static {v9, p2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    :try_end_c
    .catch Ljava/security/NoSuchProviderException; {:try_start_7 .. :try_end_c} :catch_3f

    move-result-object v8

    .line 385
    .local v8, "params":Ljava/security/AlgorithmParameters;
    :goto_d
    iget-object v9, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v8, v9}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 393
    .end local v8    # "params":Ljava/security/AlgorithmParameters;
    :cond_12
    if-eqz p2, :cond_68

    .line 394
    :try_start_14
    iget-object v9, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-static {v9, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_19
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_14 .. :try_end_19} :catch_98
    .catch Ljava/security/NoSuchProviderException; {:try_start_14 .. :try_end_19} :catch_6f

    move-result-object v2

    .line 410
    .local v2, "c":Ljavax/crypto/Cipher;
    :goto_1a
    if-eqz v8, :cond_a2

    .line 411
    const/4 v9, 0x2

    :try_start_1d
    invoke-virtual {v2, v9, p1, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_20
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1d .. :try_end_20} :catch_a8

    .line 423
    :goto_20
    iget-object v9, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v2, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 429
    .local v3, "content":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 430
    .local v1, "b":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljavax/crypto/extObjectInputStream;

    invoke-direct {v0, v1}, Ljavax/crypto/extObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 432
    .local v0, "a":Ljava/io/ObjectInput;
    :try_start_30
    invoke-interface {v0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_b3

    move-result-object v7

    .line 435
    .local v7, "obj":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/io/ObjectInput;->close()V

    .line 433
    return-object v7

    .line 375
    .end local v0    # "a":Ljava/io/ObjectInput;
    .end local v1    # "b":Ljava/io/ByteArrayInputStream;
    .end local v2    # "c":Ljavax/crypto/Cipher;
    .end local v3    # "content":[B
    .end local v7    # "obj":Ljava/lang/Object;
    .local v8, "params":Ljava/security/AlgorithmParameters;
    :cond_38
    :try_start_38
    iget-object v9, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-static {v9}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    :try_end_3d
    .catch Ljava/security/NoSuchProviderException; {:try_start_38 .. :try_end_3d} :catch_3f

    move-result-object v8

    .local v8, "params":Ljava/security/AlgorithmParameters;
    goto :goto_d

    .line 377
    .local v8, "params":Ljava/security/AlgorithmParameters;
    :catch_3f
    move-exception v5

    .line 378
    .local v5, "nspe":Ljava/security/NoSuchProviderException;
    if-nez p2, :cond_5e

    .line 379
    new-instance v9, Ljava/security/NoSuchAlgorithmException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 380
    const-string/jumbo v11, " not found"

    .line 379
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 382
    :cond_5e
    new-instance v9, Ljava/security/NoSuchProviderException;

    invoke-virtual {v5}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 396
    .end local v5    # "nspe":Ljava/security/NoSuchProviderException;
    .end local v8    # "params":Ljava/security/AlgorithmParameters;
    :cond_68
    :try_start_68
    iget-object v9, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_6d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_68 .. :try_end_6d} :catch_98
    .catch Ljava/security/NoSuchProviderException; {:try_start_68 .. :try_end_6d} :catch_6f

    move-result-object v2

    .restart local v2    # "c":Ljavax/crypto/Cipher;
    goto :goto_1a

    .line 401
    .end local v2    # "c":Ljavax/crypto/Cipher;
    :catch_6f
    move-exception v5

    .line 402
    .restart local v5    # "nspe":Ljava/security/NoSuchProviderException;
    if-nez p2, :cond_8e

    .line 403
    new-instance v9, Ljava/security/NoSuchAlgorithmException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " not found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 405
    :cond_8e
    new-instance v9, Ljava/security/NoSuchProviderException;

    invoke-virtual {v5}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 397
    .end local v5    # "nspe":Ljava/security/NoSuchProviderException;
    :catch_98
    move-exception v6

    .line 398
    .local v6, "nspe":Ljavax/crypto/NoSuchPaddingException;
    new-instance v9, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v10, "Padding that was used in sealing operation not available"

    invoke-direct {v9, v10}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 413
    .end local v6    # "nspe":Ljavax/crypto/NoSuchPaddingException;
    .restart local v2    # "c":Ljavax/crypto/Cipher;
    :cond_a2
    const/4 v9, 0x2

    :try_start_a3
    invoke-virtual {v2, v9, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_a6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a3 .. :try_end_a6} :catch_a8

    goto/16 :goto_20

    .line 414
    :catch_a8
    move-exception v4

    .line 417
    .local v4, "iape":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 434
    .end local v4    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v0    # "a":Ljava/io/ObjectInput;
    .restart local v1    # "b":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "content":[B
    :catchall_b3
    move-exception v9

    .line 435
    invoke-interface {v0}, Ljava/io/ObjectInput;->close()V

    .line 434
    throw v9
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    return-object v0
.end method

.method public final getObject(Ljava/security/Key;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 246
    if-nez p1, :cond_b

    .line 247
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "key is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 251
    :cond_b
    const/4 v3, 0x0

    :try_start_c
    invoke-direct {p0, p1, v3}, Ljavax/crypto/SealedObject;->unseal(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/security/NoSuchProviderException; {:try_start_c .. :try_end_f} :catch_27
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_c .. :try_end_f} :catch_1c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_c .. :try_end_f} :catch_11

    move-result-object v3

    return-object v3

    .line 259
    :catch_11
    move-exception v0

    .line 260
    .local v0, "bpe":Ljavax/crypto/BadPaddingException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    .end local v0    # "bpe":Ljavax/crypto/BadPaddingException;
    :catch_1c
    move-exception v1

    .line 258
    .local v1, "ibse":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    .end local v1    # "ibse":Ljavax/crypto/IllegalBlockSizeException;
    :catch_27
    move-exception v2

    .line 256
    .local v2, "nspe":Ljava/security/NoSuchProviderException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v4, "algorithm not found"

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final getObject(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 345
    if-nez p1, :cond_b

    .line 346
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_b
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1c

    .line 349
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "missing provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_1c
    :try_start_1c
    invoke-direct {p0, p1, p2}, Ljavax/crypto/SealedObject;->unseal(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1c .. :try_end_1f} :catch_21
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1c .. :try_end_1f} :catch_21

    move-result-object v1

    return-object v1

    .line 354
    :catch_21
    move-exception v0

    .line 355
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getObject(Ljavax/crypto/Cipher;)Ljava/lang/Object;
    .registers 7
    .param p1, "c"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v4, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {p1, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 299
    .local v2, "content":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 300
    .local v1, "b":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljavax/crypto/extObjectInputStream;

    invoke-direct {v0, v1}, Ljavax/crypto/extObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 302
    .local v0, "a":Ljava/io/ObjectInput;
    :try_start_10
    invoke-interface {v0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_18

    move-result-object v3

    .line 305
    .local v3, "obj":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/io/ObjectInput;->close()V

    .line 303
    return-object v3

    .line 304
    .end local v3    # "obj":Ljava/lang/Object;
    :catchall_18
    move-exception v4

    .line 305
    invoke-interface {v0}, Ljava/io/ObjectInput;->close()V

    .line 304
    throw v4
.end method
