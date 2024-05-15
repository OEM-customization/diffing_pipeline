.class final Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;
.super Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
.source "OpenSSLRSAPrivateCrtKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateCrtKey;


# static fields
.field private static final serialVersionUID:J = 0x34880ef7f10bfb7dL


# instance fields
.field private crtCoefficient:Ljava/math/BigInteger;

.field private primeExponentP:Ljava/math/BigInteger;

.field private primeExponentQ:Ljava/math/BigInteger;

.field private primeP:Ljava/math/BigInteger;

.field private primeQ:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 2
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 50
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V
    .registers 3
    .param p1, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .param p2, "params"    # [[B

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V

    .line 54
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V
    .registers 3
    .param p1, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateCrtKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->init(Ljava/security/spec/RSAPrivateCrtKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 58
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 21
    .param p0, "rsaPrivateKey"    # Ljava/security/interfaces/RSAPrivateCrtKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    .line 104
    invoke-static/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    return-object v2

    .line 107
    :cond_b
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v12

    .line 108
    .local v12, "modulus":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v17

    .line 110
    .local v17, "privateExponent":Ljava/math/BigInteger;
    if-nez v12, :cond_1e

    .line 111
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "modulus == null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_1e
    if-nez v17, :cond_29

    .line 113
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "privateExponent == null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_29
    :try_start_29
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v18

    .line 124
    .local v18, "publicExponent":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v15

    .line 125
    .local v15, "primeP":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v16

    .line 126
    .local v16, "primeQ":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v13

    .line 127
    .local v13, "primeExponentP":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v14

    .line 128
    .local v14, "primeExponentQ":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v10

    .line 130
    .local v10, "crtCoefficient":Ljava/math/BigInteger;
    new-instance v19, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 131
    #disallowed odex opcode
    #invoke-virtual-quick {v12}, vtable@55
    nop

    move-result-object v2

    .line 132
    if-nez v18, :cond_67

    const/4 v3, 0x0

    .line 133
    :goto_4a
    #disallowed odex opcode
    #invoke-virtual-quick/range {v17 .. v17}, vtable@55
    nop

    move-result-object v4

    .line 134
    if-nez v15, :cond_6c

    const/4 v5, 0x0

    .line 135
    :goto_51
    if-nez v16, :cond_71

    const/4 v6, 0x0

    .line 136
    :goto_54
    if-nez v13, :cond_76

    const/4 v7, 0x0

    .line 137
    :goto_57
    if-nez v14, :cond_7b

    const/4 v8, 0x0

    .line 138
    :goto_5a
    if-nez v10, :cond_80

    const/4 v9, 0x0

    .line 130
    :goto_5d
    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    return-object v19

    .line 132
    :cond_67
    #disallowed odex opcode
    #invoke-virtual-quick/range {v18 .. v18}, vtable@55
    nop

    move-result-object v3

    goto :goto_4a

    .line 134
    :cond_6c
    #disallowed odex opcode
    #invoke-virtual-quick {v15}, vtable@55
    nop

    move-result-object v5

    goto :goto_51

    .line 135
    :cond_71
    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v16}, vtable@55
    nop

    move-result-object v6

    goto :goto_54

    .line 136
    :cond_76
    #disallowed odex opcode
    #invoke-virtual-quick {v13}, vtable@55
    nop

    move-result-object v7

    goto :goto_57

    .line 137
    :cond_7b
    #disallowed odex opcode
    #invoke-virtual-quick {v14}, vtable@55
    nop

    move-result-object v8

    goto :goto_5a

    .line 138
    :cond_80
    #disallowed odex opcode
    #invoke-virtual-quick {v10}, vtable@55
    nop
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_83} :catch_85

    move-result-object v9

    goto :goto_5d

    .line 139
    .end local v10    # "crtCoefficient":Ljava/math/BigInteger;
    .end local v13    # "primeExponentP":Ljava/math/BigInteger;
    .end local v14    # "primeExponentQ":Ljava/math/BigInteger;
    .end local v15    # "primeP":Ljava/math/BigInteger;
    .end local v16    # "primeQ":Ljava/math/BigInteger;
    .end local v18    # "publicExponent":Ljava/math/BigInteger;
    :catch_85
    move-exception v11

    .line 140
    .local v11, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v11}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static init(Ljava/security/spec/RSAPrivateCrtKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 21
    .param p0, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateCrtKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 61
    #disallowed odex opcode
    #invoke-virtual-quick/range {p0 .. p0}, vtable@11
    nop

    move-result-object v12

    .line 62
    .local v12, "modulus":Ljava/math/BigInteger;
    #disallowed odex opcode
    #invoke-virtual-quick/range {p0 .. p0}, vtable@12
    nop

    move-result-object v17

    .line 64
    .local v17, "privateExponent":Ljava/math/BigInteger;
    if-nez v12, :cond_13

    .line 65
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "modulus == null"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_13
    if-nez v17, :cond_1e

    .line 67
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "privateExponent == null"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_1e
    :try_start_1e
    #disallowed odex opcode
    #invoke-virtual-quick/range {p0 .. p0}, vtable@18
    nop

    move-result-object v18

    .line 78
    .local v18, "publicExponent":Ljava/math/BigInteger;
    #disallowed odex opcode
    #invoke-virtual-quick/range {p0 .. p0}, vtable@16
    nop

    move-result-object v15

    .line 79
    .local v15, "primeP":Ljava/math/BigInteger;
    #disallowed odex opcode
    #invoke-virtual-quick/range {p0 .. p0}, vtable@17
    nop

    move-result-object v16

    .line 80
    .local v16, "primeQ":Ljava/math/BigInteger;
    #disallowed odex opcode
    #invoke-virtual-quick/range {p0 .. p0}, vtable@14
    nop

    move-result-object v13

    .line 81
    .local v13, "primeExponentP":Ljava/math/BigInteger;
    #disallowed odex opcode
    #invoke-virtual-quick/range {p0 .. p0}, vtable@15
    nop

    move-result-object v14

    .line 82
    .local v14, "primeExponentQ":Ljava/math/BigInteger;
    #disallowed odex opcode
    #invoke-virtual-quick/range {p0 .. p0}, vtable@13
    nop

    move-result-object v10

    .line 84
    .local v10, "crtCoefficient":Ljava/math/BigInteger;
    new-instance v19, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 85
    #disallowed odex opcode
    #invoke-virtual-quick {v12}, vtable@55
    nop

    move-result-object v2

    .line 86
    if-nez v18, :cond_5c

    const/4 v3, 0x0

    .line 87
    :goto_3f
    #disallowed odex opcode
    #invoke-virtual-quick/range {v17 .. v17}, vtable@55
    nop

    move-result-object v4

    .line 88
    if-nez v15, :cond_61

    const/4 v5, 0x0

    .line 89
    :goto_46
    if-nez v16, :cond_66

    const/4 v6, 0x0

    .line 90
    :goto_49
    if-nez v13, :cond_6b

    const/4 v7, 0x0

    .line 91
    :goto_4c
    if-nez v14, :cond_70

    const/4 v8, 0x0

    .line 92
    :goto_4f
    if-nez v10, :cond_75

    const/4 v9, 0x0

    .line 84
    :goto_52
    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    return-object v19

    .line 86
    :cond_5c
    #disallowed odex opcode
    #invoke-virtual-quick/range {v18 .. v18}, vtable@55
    nop

    move-result-object v3

    goto :goto_3f

    .line 88
    :cond_61
    #disallowed odex opcode
    #invoke-virtual-quick {v15}, vtable@55
    nop

    move-result-object v5

    goto :goto_46

    .line 89
    :cond_66
    #disallowed odex opcode
    #invoke-virtual-quick/range {v16 .. v16}, vtable@55
    nop

    move-result-object v6

    goto :goto_49

    .line 90
    :cond_6b
    #disallowed odex opcode
    #invoke-virtual-quick {v13}, vtable@55
    nop

    move-result-object v7

    goto :goto_4c

    .line 91
    :cond_70
    #disallowed odex opcode
    #invoke-virtual-quick {v14}, vtable@55
    nop

    move-result-object v8

    goto :goto_4f

    .line 92
    :cond_75
    #disallowed odex opcode
    #invoke-virtual-quick {v10}, vtable@55
    nop
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_78} :catch_7a

    move-result-object v9

    goto :goto_52

    .line 93
    .end local v10    # "crtCoefficient":Ljava/math/BigInteger;
    .end local v13    # "primeExponentP":Ljava/math/BigInteger;
    .end local v14    # "primeExponentQ":Ljava/math/BigInteger;
    .end local v15    # "primeP":Ljava/math/BigInteger;
    .end local v16    # "primeQ":Ljava/math/BigInteger;
    .end local v18    # "publicExponent":Ljava/math/BigInteger;
    :catch_7a
    move-exception v11

    .line 94
    .local v11, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v11}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 12
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 266
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@20
    nop

    .line 268
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 269
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@55
    nop

    move-result-object v0

    .line 270
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x2c
    nop

    if-nez v1, :cond_3c

    move-object v1, v7

    .line 271
    :goto_11
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@55
    nop

    move-result-object v2

    .line 272
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x24
    nop

    if-nez v3, :cond_43

    move-object v3, v7

    .line 273
    :goto_1c
    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x28
    nop

    if-nez v4, :cond_4a

    move-object v4, v7

    .line 274
    :goto_21
    #disallowed odex opcode
    #iget-object-quick v5, p0, field@0x1c
    nop

    if-nez v5, :cond_51

    move-object v5, v7

    .line 275
    :goto_26
    #disallowed odex opcode
    #iget-object-quick v6, p0, field@0x20
    nop

    if-nez v6, :cond_58

    move-object v6, v7

    .line 276
    :goto_2b
    #disallowed odex opcode
    #iget-object-quick v9, p0, field@0x18
    nop

    if-nez v9, :cond_5f

    .line 268
    :goto_2f
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #disallowed odex opcode
    #iput-object-quick v8, p0, field@0x8
    nop

    .line 277
    const/4 v0, 0x1

    #disallowed odex opcode
    #iput-boolean-quick v0, p0, field@0x14
    nop

    .line 278
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 270
    :cond_3c
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x2c
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@55
    nop

    move-result-object v1

    goto :goto_11

    .line 272
    :cond_43
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x24
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@55
    nop

    move-result-object v3

    goto :goto_1c

    .line 273
    :cond_4a
    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x28
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v4}, vtable@55
    nop

    move-result-object v4

    goto :goto_21

    .line 274
    :cond_51
    #disallowed odex opcode
    #iget-object-quick v5, p0, field@0x1c
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v5}, vtable@55
    nop

    move-result-object v5

    goto :goto_26

    .line 275
    :cond_58
    #disallowed odex opcode
    #iget-object-quick v6, p0, field@0x20
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v6}, vtable@55
    nop

    move-result-object v6

    goto :goto_2b

    .line 276
    :cond_5f
    #disallowed odex opcode
    #iget-object-quick v7, p0, field@0x18
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v7}, vtable@55
    nop

    move-result-object v7

    goto :goto_2f
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    .line 282
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@18
    nop

    .line 283
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 207
    if-ne p1, p0, :cond_5

    .line 208
    const/4 v3, 0x1

    return v3

    .line 211
    :cond_5
    instance-of v4, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v4, :cond_19

    move-object v0, p1

    .line 212
    nop

    nop

    .line 213
    .local v0, "other":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@16
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@16
    nop

    move-result-object v4

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@1
    nop

    move-result v3

    return v3

    .line 216
    .end local v0    # "other":Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
    :cond_19
    instance-of v4, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v4, :cond_86

    .line 217
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    move-object v1, p1

    .line 218
    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 220
    .local v1, "other":Ljava/security/interfaces/RSAPrivateCrtKey;
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@15
    nop

    move-result-object v4

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@1
    nop

    move-result v4

    if-eqz v4, :cond_85

    .line 221
    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x2c
    nop

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@1
    nop

    move-result v4

    .line 220
    if-eqz v4, :cond_85

    .line 222
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@17
    nop

    move-result-object v4

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@1
    nop

    move-result v4

    .line 220
    if-eqz v4, :cond_85

    .line 223
    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x24
    nop

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@1
    nop

    move-result v4

    .line 220
    if-eqz v4, :cond_85

    .line 223
    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x28
    nop

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@1
    nop

    move-result v4

    .line 220
    if-eqz v4, :cond_85

    .line 224
    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x1c
    nop

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@1
    nop

    move-result v4

    .line 220
    if-eqz v4, :cond_85

    .line 225
    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x20
    nop

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@1
    nop

    move-result v4

    .line 220
    if-eqz v4, :cond_85

    .line 226
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x18
    nop

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v4

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@1
    nop

    move-result v3

    .line 220
    :cond_85
    return v3

    .line 227
    .end local v1    # "other":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_86
    instance-of v4, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v4, :cond_ab

    .line 228
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    move-object v2, p1

    .line 229
    check-cast v2, Ljava/security/interfaces/RSAPrivateKey;

    .line 231
    .local v2, "other":Ljava/security/interfaces/RSAPrivateKey;
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@15
    nop

    move-result-object v4

    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5}, vtable@1
    nop

    move-result v4

    if-eqz v4, :cond_aa

    .line 232
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@17
    nop

    move-result-object v3

    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@1
    nop

    move-result v3

    .line 231
    :cond_aa
    return v3

    .line 235
    .end local v2    # "other":Ljava/security/interfaces/RSAPrivateKey;
    :cond_ab
    return v3
.end method

.method public getCrtCoefficient()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 201
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    .line 202
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x18
    nop

    return-object v0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 189
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    .line 190
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x1c
    nop

    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 195
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    .line 196
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x20
    nop

    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 177
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    .line 178
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x24
    nop

    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 183
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    .line 184
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x28
    nop

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 171
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    .line 172
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x2c
    nop

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->hashCode()I

    move-result v0

    .line 241
    .local v0, "hashCode":I
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x2c
    nop

    if-eqz v1, :cond_f

    .line 242
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x2c
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@4
    nop

    move-result v1

    xor-int/2addr v0, v1

    .line 244
    :cond_f
    return v0
.end method

.method declared-synchronized readParams([[B)V
    .registers 4
    .param p1, "params"    # [[B

    .prologue
    monitor-enter p0

    .line 146
    :try_start_1
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->readParams([[B)V

    .line 148
    const/4 v0, 0x1

    aget-object v0, p1, v0

    if-eqz v0, :cond_13

    .line 149
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x2c
    nop

    .line 152
    :cond_13
    const/4 v0, 0x3

    aget-object v0, p1, v0

    if-eqz v0, :cond_22

    .line 153
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x24
    nop

    .line 155
    :cond_22
    const/4 v0, 0x4

    aget-object v0, p1, v0

    if-eqz v0, :cond_31

    .line 156
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x4

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x28
    nop

    .line 158
    :cond_31
    const/4 v0, 0x5

    aget-object v0, p1, v0

    if-eqz v0, :cond_40

    .line 159
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x5

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x1c
    nop

    .line 161
    :cond_40
    const/4 v0, 0x6

    aget-object v0, p1, v0

    if-eqz v0, :cond_4f

    .line 162
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x6

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x20
    nop

    .line 164
    :cond_4f
    const/4 v0, 0x7

    aget-object v0, p1, v0

    if-eqz v0, :cond_5e

    .line 165
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x7

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x18
    nop
    :try_end_5e
    .catchall {:try_start_1 .. :try_end_5e} :catchall_60

    :cond_5e
    monitor-exit p0

    .line 167
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x10

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "OpenSSLRSAPrivateCrtKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, "sb":Ljava/lang/StringBuilder;
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@11
    nop

    .line 252
    const-string/jumbo v1, "modulus="

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    .line 253
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@15
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@56
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    .line 255
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x2c
    nop

    if-eqz v1, :cond_36

    .line 256
    const/16 v1, 0x2c

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@69
    nop

    .line 257
    const-string/jumbo v1, "publicExponent="

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    .line 258
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x2c
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@56
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    .line 261
    :cond_36
    const/16 v1, 0x7d

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@69
    nop

    .line 262
    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@7
    nop

    move-result-object v1

    return-object v1
.end method
