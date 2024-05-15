.class public Ljavax/crypto/EncryptedPrivateKeyInfo;
.super Ljava/lang/Object;
.source "EncryptedPrivateKeyInfo.java"


# instance fields
.field private algid:Lsun/security/x509/AlgorithmId;

.field private encoded:[B

.field private encryptedData:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 5
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "encryptedData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 134
    if-nez p1, :cond_11

    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the algName parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_11
    invoke-static {p1}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    .line 139
    if-nez p2, :cond_22

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the encryptedData parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_22
    array-length v0, p2

    if-nez v0, :cond_2e

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the encryptedData parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_2e
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 150
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/security/AlgorithmParameters;[B)V
    .registers 5
    .param p1, "algParams"    # Ljava/security/AlgorithmParameters;
    .param p2, "encryptedData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 175
    if-nez p1, :cond_11

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "algParams must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_11
    invoke-static {p1}, Lsun/security/x509/AlgorithmId;->get(Ljava/security/AlgorithmParameters;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    .line 180
    if-nez p2, :cond_22

    .line 181
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "encryptedData must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_22
    array-length v0, p2

    if-nez v0, :cond_2e

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the encryptedData parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_2e
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 191
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 192
    return-void
.end method

.method public constructor <init>([B)V
    .registers 7
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 79
    if-nez p1, :cond_13

    .line 80
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "the encoded parameter must be non-null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 84
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 86
    .local v1, "val":Lsun/security/util/DerValue;
    const/4 v2, 0x2

    new-array v0, v2, [Lsun/security/util/DerValue;

    .line 88
    .local v0, "seq":[Lsun/security/util/DerValue;
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v0, v3

    .line 89
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v0, v4

    .line 91
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_5d

    .line 92
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "overrun, bytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_5d
    aget-object v2, v0, v3

    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    .line 96
    aget-object v2, v0, v3

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_78

    .line 97
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "encryptionAlgorithm field overrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_78
    aget-object v2, v0, v4

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 101
    aget-object v2, v0, v4

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_93

    .line 102
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "encryptedData field overrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_93
    return-void
.end method

.method private static checkPKCS8Encoding([B)V
    .registers 9
    .param p0, "encodedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 410
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-direct {v1, p0}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 411
    .local v1, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v1, v4}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 413
    .local v2, "values":[Lsun/security/util/DerValue;
    array-length v3, v2

    packed-switch v3, :pswitch_data_48

    .line 427
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "invalid key encoding"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 415
    :pswitch_19
    aget-object v3, v2, v4

    const-string/jumbo v4, "attributes"

    const/16 v5, -0x80

    invoke-static {v3, v5, v4}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkTag(Lsun/security/util/DerValue;BLjava/lang/String;)V

    .line 418
    :pswitch_23
    aget-object v3, v2, v6

    const-string/jumbo v4, "version"

    invoke-static {v3, v7, v4}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkTag(Lsun/security/util/DerValue;BLjava/lang/String;)V

    .line 419
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 420
    .local v0, "algid":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    .line 421
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_3e

    .line 422
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    .line 424
    :cond_3e
    aget-object v3, v2, v7

    const-string/jumbo v4, "privateKey"

    const/4 v5, 0x4

    invoke-static {v3, v5, v4}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkTag(Lsun/security/util/DerValue;BLjava/lang/String;)V

    .line 429
    return-void

    .line 413
    :pswitch_data_48
    .packed-switch 0x3
        :pswitch_23
        :pswitch_19
    .end packed-switch
.end method

.method private static checkTag(Lsun/security/util/DerValue;BLjava/lang/String;)V
    .registers 6
    .param p0, "val"    # Lsun/security/util/DerValue;
    .param p1, "tag"    # B
    .param p2, "valName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getTag()B

    move-result v0

    if-eq v0, p1, :cond_20

    .line 402
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid key encoding - wrong tag for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_20
    return-void
.end method

.method private getKeySpecImpl(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 9
    .param p1, "decryptKey"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v1, 0x0

    .line 267
    .local v1, "encoded":[B
    if-nez p2, :cond_26

    .line 269
    :try_start_3
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v4}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 273
    .local v0, "c":Ljavax/crypto/Cipher;
    :goto_d
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v4}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, p1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 274
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 275
    .local v1, "encoded":[B
    invoke-static {v1}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkPKCS8Encoding([B)V
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_20} :catch_3b
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_20} :catch_31
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_20} :catch_31

    .line 283
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v4

    .line 271
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .local v1, "encoded":[B
    :cond_26
    :try_start_26
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v4}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_2f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_26 .. :try_end_2f} :catch_3b
    .catch Ljava/security/GeneralSecurityException; {:try_start_26 .. :try_end_2f} :catch_31
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2f} :catch_31

    move-result-object v0

    .restart local v0    # "c":Ljavax/crypto/Cipher;
    goto :goto_d

    .line 279
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v1    # "encoded":[B
    :catch_31
    move-exception v2

    .line 280
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/security/InvalidKeyException;

    .line 281
    const-string/jumbo v5, "Cannot retrieve the PKCS8EncodedKeySpec"

    .line 280
    invoke-direct {v4, v5, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 276
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_3b
    move-exception v3

    .line 278
    .local v3, "nsae":Ljava/security/NoSuchAlgorithmException;
    throw v3
.end method


# virtual methods
.method public getAlgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlgParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    if-nez v2, :cond_23

    .line 383
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 384
    .local v0, "out":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 387
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 390
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 393
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 394
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 396
    .end local v0    # "out":Lsun/security/util/DerOutputStream;
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_23
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    return-object v2
.end method

.method public getEncryptedData()[B
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getKeySpec(Ljava/security/Key;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 4
    .param p1, "decryptKey"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 303
    if-nez p1, :cond_c

    .line 304
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "decryptKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_c
    invoke-direct {p0, p1, v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpecImpl(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;

    move-result-object v0

    return-object v0
.end method

.method public getKeySpec(Ljava/security/Key;Ljava/lang/String;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 7
    .param p1, "decryptKey"    # Ljava/security/Key;
    .param p2, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 331
    if-nez p1, :cond_b

    .line 332
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "decryptKey is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_b
    if-nez p2, :cond_16

    .line 335
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "provider is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_16
    invoke-static {p2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 338
    .local v0, "provider":Ljava/security/Provider;
    if-nez v0, :cond_3d

    .line 339
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 340
    const-string/jumbo v3, " not found"

    .line 339
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_3d
    invoke-direct {p0, p1, v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpecImpl(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;

    move-result-object v1

    return-object v1
.end method

.method public getKeySpec(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 5
    .param p1, "decryptKey"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 365
    if-nez p1, :cond_b

    .line 366
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "decryptKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_b
    if-nez p2, :cond_16

    .line 369
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "provider is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_16
    invoke-direct {p0, p1, p2}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpecImpl(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;

    move-result-object v0

    return-object v0
.end method

.method public getKeySpec(Ljavax/crypto/Cipher;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 6
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "encoded":[B
    :try_start_1
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {p1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 251
    .local v0, "encoded":[B
    invoke-static {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkPKCS8Encoding([B)V
    :try_end_a
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_a} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_a} :catch_10

    .line 258
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v2

    .line 254
    .end local v0    # "encoded":[B
    :catch_10
    move-exception v1

    .line 255
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    .line 256
    const-string/jumbo v3, "Cannot retrieve the PKCS8EncodedKeySpec"

    .line 255
    invoke-direct {v2, v3, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
