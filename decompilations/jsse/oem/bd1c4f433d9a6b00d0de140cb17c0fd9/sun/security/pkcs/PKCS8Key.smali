.class public Lsun/security/pkcs/PKCS8Key;
.super Ljava/lang/Object;
.source "PKCS8Key.java"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field private static final serialVersionUID:J = -0x353f5f37736abd94L

.field public static final version:Ljava/math/BigInteger;


# instance fields
.field protected algid:Lsun/security/x509/AlgorithmId;

.field protected encodedKey:[B

.field protected key:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sput-object v0, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lsun/security/x509/AlgorithmId;[B)V
    .registers 3
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 84
    iput-object p2, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    .line 85
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->encode()[B

    .line 86
    return-void
.end method

.method static buildPKCS8Key(Lsun/security/x509/AlgorithmId;[B)Ljava/security/PrivateKey;
    .registers 21
    .param p0, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v12, Lsun/security/util/DerOutputStream;

    invoke-direct {v12}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 177
    .local v12, "pkcs8EncodedKeyStream":Lsun/security/util/DerOutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v12, v0, v1}, Lsun/security/pkcs/PKCS8Key;->encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;[B)V

    .line 179
    new-instance v13, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v12}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 183
    .local v13, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v11

    .line 186
    .local v11, "keyFac":Ljava/security/KeyFactory;
    invoke-virtual {v11, v13}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_22} :catch_24
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_17 .. :try_end_22} :catch_b7

    move-result-object v16

    return-object v16

    .line 187
    .end local v11    # "keyFac":Ljava/security/KeyFactory;
    :catch_24
    move-exception v7

    .line 196
    :goto_25
    const-string/jumbo v3, ""

    .line 202
    .local v3, "classname":Ljava/lang/String;
    :try_start_28
    const-string/jumbo v16, "SUN"

    invoke-static/range {v16 .. v16}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v15

    .line 203
    .local v15, "sunProvider":Ljava/security/Provider;
    if-nez v15, :cond_46

    .line 204
    new-instance v16, Ljava/lang/InstantiationException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/InstantiationException;-><init>()V

    throw v16
    :try_end_37
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_37} :catch_37
    .catch Ljava/lang/InstantiationException; {:try_start_28 .. :try_end_37} :catch_6a
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_37} :catch_9a

    .line 233
    .end local v15    # "sunProvider":Ljava/security/Provider;
    :catch_37
    move-exception v4

    .line 240
    :cond_38
    :goto_38
    new-instance v14, Lsun/security/pkcs/PKCS8Key;

    invoke-direct {v14}, Lsun/security/pkcs/PKCS8Key;-><init>()V

    .line 241
    .local v14, "result":Lsun/security/pkcs/PKCS8Key;
    move-object/from16 v0, p0

    iput-object v0, v14, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 242
    move-object/from16 v0, p1

    iput-object v0, v14, Lsun/security/pkcs/PKCS8Key;->key:[B

    .line 243
    return-object v14

    .line 205
    .end local v14    # "result":Lsun/security/pkcs/PKCS8Key;
    .restart local v15    # "sunProvider":Ljava/security/Provider;
    :cond_46
    :try_start_46
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "PrivateKey.PKCS#8."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 206
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v17

    .line 205
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    if-nez v3, :cond_6c

    .line 208
    new-instance v16, Ljava/lang/InstantiationException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/InstantiationException;-><init>()V

    throw v16
    :try_end_6a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_46 .. :try_end_6a} :catch_37
    .catch Ljava/lang/InstantiationException; {:try_start_46 .. :try_end_6a} :catch_6a
    .catch Ljava/lang/IllegalAccessException; {:try_start_46 .. :try_end_6a} :catch_9a

    .line 234
    .end local v15    # "sunProvider":Ljava/security/Provider;
    :catch_6a
    move-exception v6

    .local v6, "e":Ljava/lang/InstantiationException;
    goto :goto_38

    .line 211
    .end local v6    # "e":Ljava/lang/InstantiationException;
    .restart local v15    # "sunProvider":Ljava/security/Provider;
    :cond_6c
    const/4 v10, 0x0

    .line 213
    .local v10, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_6d
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_70
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6d .. :try_end_70} :catch_8e
    .catch Ljava/lang/InstantiationException; {:try_start_6d .. :try_end_70} :catch_6a
    .catch Ljava/lang/IllegalAccessException; {:try_start_6d .. :try_end_70} :catch_9a

    move-result-object v10

    .line 221
    .end local v10    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_71
    :goto_71
    const/4 v9, 0x0

    .line 224
    .local v9, "inst":Ljava/lang/Object;
    if-eqz v10, :cond_78

    .line 225
    :try_start_74
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    .line 226
    .end local v9    # "inst":Ljava/lang/Object;
    :cond_78
    instance-of v0, v9, Lsun/security/pkcs/PKCS8Key;

    move/from16 v16, v0

    if-eqz v16, :cond_38

    .line 227
    move-object v0, v9

    check-cast v0, Lsun/security/pkcs/PKCS8Key;

    move-object v14, v0

    .line 228
    .restart local v14    # "result":Lsun/security/pkcs/PKCS8Key;
    move-object/from16 v0, p0

    iput-object v0, v14, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 229
    move-object/from16 v0, p1

    iput-object v0, v14, Lsun/security/pkcs/PKCS8Key;->key:[B

    .line 230
    invoke-virtual {v14}, Lsun/security/pkcs/PKCS8Key;->parseKeyBits()V

    .line 231
    return-object v14

    .line 214
    .end local v14    # "result":Lsun/security/pkcs/PKCS8Key;
    .restart local v10    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_8e
    move-exception v4

    .line 215
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 216
    .local v2, "cl":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_71

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_98
    .catch Ljava/lang/ClassNotFoundException; {:try_start_74 .. :try_end_98} :catch_37
    .catch Ljava/lang/InstantiationException; {:try_start_74 .. :try_end_98} :catch_6a
    .catch Ljava/lang/IllegalAccessException; {:try_start_74 .. :try_end_98} :catch_9a

    move-result-object v10

    .local v10, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_71

    .line 235
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .end local v10    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "sunProvider":Ljava/security/Provider;
    :catch_9a
    move-exception v5

    .line 237
    .local v5, "e":Ljava/lang/IllegalAccessException;
    new-instance v16, Ljava/io/IOException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " [internal error]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 189
    .end local v3    # "classname":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_b7
    move-exception v8

    .local v8, "e":Ljava/security/spec/InvalidKeySpecException;
    goto/16 :goto_25
.end method

.method static encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;[B)V
    .registers 5
    .param p0, "out"    # Lsun/security/util/DerOutputStream;
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 389
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    sget-object v1, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 390
    invoke-virtual {p1, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 391
    invoke-virtual {v0, p2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 392
    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 393
    return-void
.end method

.method public static parse(Lsun/security/util/DerValue;)Lsun/security/pkcs/PKCS8Key;
    .registers 4
    .param p0, "in"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {p0}, Lsun/security/pkcs/PKCS8Key;->parseKey(Lsun/security/util/DerValue;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 95
    .local v0, "key":Ljava/security/PrivateKey;
    instance-of v1, v0, Lsun/security/pkcs/PKCS8Key;

    if-eqz v1, :cond_b

    .line 96
    check-cast v0, Lsun/security/pkcs/PKCS8Key;

    .end local v0    # "key":Ljava/security/PrivateKey;
    return-object v0

    .line 98
    .restart local v0    # "key":Ljava/security/PrivateKey;
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Provider did not return PKCS8Key"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseKey(Lsun/security/util/DerValue;)Ljava/security/PrivateKey;
    .registers 8
    .param p0, "in"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-byte v4, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v5, 0x30

    if-eq v4, v5, :cond_f

    .line 121
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "corrupt private key"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_f
    iget-object v4, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 124
    .local v2, "parsedVersion":Ljava/math/BigInteger;
    sget-object v4, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 125
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "version mismatch: (supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 126
    sget-object v6, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    invoke-static {v6}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 127
    const-string/jumbo v6, ", parsed: "

    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 128
    invoke-static {v2}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    :cond_4c
    iget-object v4, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    .line 134
    .local v0, "algorithm":Lsun/security/x509/AlgorithmId;
    :try_start_56
    iget-object v4, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v4

    invoke-static {v0, v4}, Lsun/security/pkcs/PKCS8Key;->buildPKCS8Key(Lsun/security/x509/AlgorithmId;[B)Ljava/security/PrivateKey;
    :try_end_5f
    .catch Ljava/security/InvalidKeyException; {:try_start_56 .. :try_end_5f} :catch_71

    move-result-object v3

    .line 140
    .local v3, "privKey":Ljava/security/PrivateKey;
    iget-object v4, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    if-eqz v4, :cond_7b

    .line 141
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "excess private key"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    .end local v3    # "privKey":Ljava/security/PrivateKey;
    :catch_71
    move-exception v1

    .line 137
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "corrupt private key"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 142
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    .restart local v3    # "privKey":Ljava/security/PrivateKey;
    :cond_7b
    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/security/pkcs/PKCS8Key;->decode(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3} :catch_4

    .line 381
    return-void

    .line 376
    :catch_4
    move-exception v0

    .line 377
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 378
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deserialized key is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 379
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;)V
    .registers 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 328
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 329
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v3, v1, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_33

    .line 330
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "invalid key format"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_14

    .line 348
    .end local v1    # "val":Lsun/security/util/DerValue;
    :catch_14
    move-exception v0

    .line 350
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 351
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 350
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 333
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "val":Lsun/security/util/DerValue;
    :cond_33
    :try_start_33
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 334
    .local v2, "version":Ljava/math/BigInteger;
    sget-object v3, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 335
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "version mismatch: (supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 336
    sget-object v5, Lsun/security/pkcs/PKCS8Key;->version:Ljava/math/BigInteger;

    invoke-static {v5}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v5

    .line 335
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 337
    const-string/jumbo v5, ", parsed: "

    .line 335
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 338
    invoke-static {v2}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v5

    .line 335
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 340
    :cond_70
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 341
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    .line 342
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->parseKeyBits()V

    .line 344
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_8c} :catch_14

    move-result v3

    .line 353
    return-void
.end method

.method public decode([B)V
    .registers 3
    .param p1, "encodedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 356
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS8Key;->decode(Ljava/io/InputStream;)V

    .line 357
    return-void
.end method

.method public final encode(Lsun/security/util/DerOutputStream;)V
    .registers 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    iget-object v1, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    invoke-static {p1, v0, v1}, Lsun/security/pkcs/PKCS8Key;->encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;[B)V

    .line 264
    return-void
.end method

.method public encode()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v2, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B

    if-nez v2, :cond_12

    .line 295
    :try_start_4
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 296
    .local v1, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v1}, Lsun/security/pkcs/PKCS8Key;->encode(Lsun/security/util/DerOutputStream;)V

    .line 297
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_12} :catch_1b

    .line 304
    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    :cond_12
    iget-object v2, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    return-object v2

    .line 299
    :catch_1b
    move-exception v0

    .line 300
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 301
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 406
    if-ne p0, p1, :cond_5

    .line 407
    return v6

    .line 410
    :cond_5
    instance-of v3, p1, Ljava/security/Key;

    if-eqz v3, :cond_2e

    .line 414
    iget-object v3, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B

    if-eqz v3, :cond_1a

    .line 415
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->encodedKey:[B

    .line 421
    .local v0, "b1":[B
    :goto_f
    check-cast p1, Ljava/security/Key;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 425
    .local v1, "b2":[B
    array-length v3, v0

    array-length v4, v1

    if-eq v3, v4, :cond_1f

    .line 426
    return v5

    .line 417
    .end local v0    # "b1":[B
    .end local v1    # "b2":[B
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1a
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getEncoded()[B

    move-result-object v0

    .restart local v0    # "b1":[B
    goto :goto_f

    .line 427
    .end local p1    # "object":Ljava/lang/Object;
    .restart local v1    # "b2":[B
    :cond_1f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    array-length v3, v0

    if-ge v2, v3, :cond_2d

    .line 428
    aget-byte v3, v0, v2

    aget-byte v4, v1, v2

    if-eq v3, v4, :cond_2a

    .line 429
    return v5

    .line 427
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 432
    :cond_2d
    return v6

    .line 435
    .end local v0    # "b1":[B
    .end local v1    # "b2":[B
    .end local v2    # "i":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2e
    return v5
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithmId()Lsun/security/x509/AlgorithmId;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public declared-synchronized getEncoded()[B
    .registers 4

    .prologue
    monitor-enter p0

    .line 270
    const/4 v1, 0x0

    .line 272
    .local v1, "result":[B
    :try_start_2
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->encode()[B
    :try_end_5
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_5} :catch_8
    .catchall {:try_start_2 .. :try_end_5} :catchall_a

    move-result-object v1

    .end local v1    # "result":[B
    :goto_6
    monitor-exit p0

    .line 275
    return-object v1

    .line 273
    .restart local v1    # "result":[B
    :catch_8
    move-exception v0

    .local v0, "e":Ljava/security/InvalidKeyException;
    goto :goto_6

    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catchall_a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 282
    const-string/jumbo v0, "PKCS#8"

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 443
    const/4 v2, 0x0

    .line 444
    .local v2, "retval":I
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getEncoded()[B

    move-result-object v0

    .line 446
    .local v0, "b1":[B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    array-length v3, v0

    if-ge v1, v3, :cond_10

    .line 447
    aget-byte v3, v0, v1

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 449
    :cond_10
    return v2
.end method

.method protected parseKeyBits()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->encode()[B

    .line 161
    return-void
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Ljava/security/KeyRep;

    sget-object v1, Ljava/security/KeyRep$Type;->PRIVATE:Ljava/security/KeyRep$Type;

    .line 361
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS8Key;->getEncoded()[B

    move-result-object v4

    .line 360
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/KeyRep;-><init>(Ljava/security/KeyRep$Type;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method
