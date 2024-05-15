.class final Lcom/android/org/conscrypt/OpenSSLECGroupContext;
.super Ljava/lang/Object;
.source "OpenSSLECGroupContext.java"


# instance fields
.field private final groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V
    .registers 2
    .param p1, "groupCtx"    # Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    .line 36
    return-void
.end method

.method static getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .registers 7
    .param p0, "curveName"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string/jumbo v3, "secp256r1"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 42
    const-string/jumbo p0, "prime256v1"

    .line 45
    :cond_c
    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_new_by_curve_name(Ljava/lang/String;)J

    move-result-wide v0

    .line 46
    .local v0, "ctx":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_18

    .line 47
    const/4 v3, 0x0

    return-object v3

    .line 49
    :cond_18
    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    .line 51
    .local v2, "groupRef":Lcom/android/org/conscrypt/NativeRef$EC_GROUP;
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-direct {v3, v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    return-object v3
.end method

.method static getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .registers 26
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static/range {p0 .. p0}, Lcom/android/org/conscrypt/Platform;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v14

    .line 72
    .local v14, "curveName":Ljava/lang/String;
    if-eqz v14, :cond_b

    .line 73
    invoke-static {v14}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v4

    return-object v4

    .line 77
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v13

    .line 78
    .local v13, "curve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {v13}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v16

    .line 81
    .local v16, "field":Ljava/security/spec/ECField;
    move-object/from16 v0, v16

    instance-of v4, v0, Ljava/security/spec/ECFieldFp;

    if-eqz v4, :cond_3d

    .line 82
    check-cast v16, Ljava/security/spec/ECFieldFp;

    .end local v16    # "field":Ljava/security/spec/ECField;
    invoke-virtual/range {v16 .. v16}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v22

    .line 88
    .local v22, "p":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v17

    .line 89
    .local v17, "generator":Ljava/security/spec/ECPoint;
    invoke-virtual {v13}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v12

    .line 90
    .local v12, "b":Ljava/math/BigInteger;
    invoke-virtual/range {v17 .. v17}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v23

    .line 91
    .local v23, "x":Ljava/math/BigInteger;
    invoke-virtual/range {v17 .. v17}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v24

    .line 95
    .local v24, "y":Ljava/math/BigInteger;
    invoke-virtual/range {v22 .. v22}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    sparse-switch v4, :sswitch_data_1cc

    .line 130
    :cond_36
    :goto_36
    if-eqz v14, :cond_17a

    .line 131
    invoke-static {v14}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v4

    return-object v4

    .line 84
    .end local v12    # "b":Ljava/math/BigInteger;
    .end local v17    # "generator":Ljava/security/spec/ECPoint;
    .end local v22    # "p":Ljava/math/BigInteger;
    .end local v23    # "x":Ljava/math/BigInteger;
    .end local v24    # "y":Ljava/math/BigInteger;
    .restart local v16    # "field":Ljava/security/spec/ECField;
    :cond_3d
    new-instance v4, Ljava/security/InvalidParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unhandled field class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 85
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 97
    .end local v16    # "field":Ljava/security/spec/ECField;
    .restart local v12    # "b":Ljava/math/BigInteger;
    .restart local v17    # "generator":Ljava/security/spec/ECPoint;
    .restart local v22    # "p":Ljava/math/BigInteger;
    .restart local v23    # "x":Ljava/math/BigInteger;
    .restart local v24    # "y":Ljava/math/BigInteger;
    :sswitch_5f
    const/16 v4, 0x10

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ffffffffffffffffffffffffffffffff000000000000000000000001"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 98
    const/16 v4, 0x10

    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "b4050a850c04b3abf54132565044b0b7d7bfd8ba270b39432355ffb4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 97
    if-eqz v4, :cond_36

    .line 99
    const/16 v4, 0x10

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "b70e0cbd6bb4bf7f321390b94a03c1d356c21122343280d6115c1d21"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 97
    if-eqz v4, :cond_36

    .line 100
    const/16 v4, 0x10

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "bd376388b5f723fb4c22dfe6cd4375a05a07476444d5819985007e34"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 97
    if-eqz v4, :cond_36

    .line 101
    const-string/jumbo v14, "secp224r1"

    goto :goto_36

    .line 105
    :sswitch_a5
    const/16 v4, 0x10

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ffffffff00000001000000000000000000000000ffffffffffffffffffffffff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 106
    const/16 v4, 0x10

    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 105
    if-eqz v4, :cond_36

    .line 107
    const/16 v4, 0x10

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 105
    if-eqz v4, :cond_36

    .line 108
    const/16 v4, 0x10

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 105
    if-eqz v4, :cond_36

    .line 109
    const-string/jumbo v14, "prime256v1"

    goto/16 :goto_36

    .line 113
    :sswitch_ec
    const/16 v4, 0x10

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffeffffffff0000000000000000ffffffff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 114
    const/16 v4, 0x10

    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "b3312fa7e23ee7e4988e056be3f82d19181d9c6efe8141120314088f5013875ac656398d8a2ed19d2a85c8edd3ec2aef"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 113
    if-eqz v4, :cond_36

    .line 115
    const/16 v4, 0x10

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 113
    if-eqz v4, :cond_36

    .line 116
    const/16 v4, 0x10

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 113
    if-eqz v4, :cond_36

    .line 117
    const-string/jumbo v14, "secp384r1"

    goto/16 :goto_36

    .line 121
    :sswitch_133
    const/16 v4, 0x10

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 122
    const/16 v4, 0x10

    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "051953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 121
    if-eqz v4, :cond_36

    .line 123
    const/16 v4, 0x10

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 121
    if-eqz v4, :cond_36

    .line 124
    const/16 v4, 0x10

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 121
    if-eqz v4, :cond_36

    .line 125
    const-string/jumbo v14, "secp521r1"

    goto/16 :goto_36

    .line 134
    :cond_17a
    invoke-virtual {v13}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v11

    .line 135
    .local v11, "a":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v21

    .line 136
    .local v21, "order":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v10

    .line 141
    .local v10, "cofactor":I
    :try_start_186
    invoke-virtual/range {v22 .. v22}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    .line 142
    invoke-virtual/range {v24 .. v24}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    .line 140
    invoke-static/range {v4 .. v10}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_new_arbitrary([B[B[B[B[B[BI)J
    :try_end_1a1
    .catch Ljava/lang/Throwable; {:try_start_186 .. :try_end_1a1} :catch_1b1

    move-result-wide v18

    .line 148
    .local v18, "group":J
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-nez v4, :cond_1bb

    .line 149
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v5, "EC_GROUP_new_arbitrary returned NULL"

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    .end local v18    # "group":J
    :catch_1b1
    move-exception v15

    .line 144
    .local v15, "exception":Ljava/lang/Throwable;
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v5, "EC_GROUP_new_arbitrary failed"

    invoke-direct {v4, v5, v15}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 152
    .end local v15    # "exception":Ljava/lang/Throwable;
    .restart local v18    # "group":J
    :cond_1bb
    new-instance v20, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    .line 154
    .local v20, "groupRef":Lcom/android/org/conscrypt/NativeRef$EC_GROUP;
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    return-object v4

    .line 95
    :sswitch_data_1cc
    .sparse-switch
        0xe0 -> :sswitch_5f
        0x100 -> :sswitch_a5
        0x180 -> :sswitch_ec
        0x209 -> :sswitch_133
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "OpenSSLECGroupContext.equals is not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getECParameterSpec()Ljava/security/spec/ECParameterSpec;
    .registers 19

    .prologue
    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v14}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_curve_name(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "curveName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v14}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_curve(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[[B

    move-result-object v7

    .line 161
    .local v7, "curveParams":[[B
    new-instance v12, Ljava/math/BigInteger;

    const/4 v14, 0x0

    aget-object v14, v7, v14

    invoke-direct {v12, v14}, Ljava/math/BigInteger;-><init>([B)V

    .line 162
    .local v12, "p":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    const/4 v14, 0x1

    aget-object v14, v7, v14

    invoke-direct {v2, v14}, Ljava/math/BigInteger;-><init>([B)V

    .line 163
    .local v2, "a":Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    const/4 v14, 0x2

    aget-object v14, v7, v14

    invoke-direct {v3, v14}, Ljava/math/BigInteger;-><init>([B)V

    .line 165
    .local v3, "b":Ljava/math/BigInteger;
    new-instance v8, Ljava/security/spec/ECFieldFp;

    invoke-direct {v8, v12}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 167
    .local v8, "field":Ljava/security/spec/ECField;
    new-instance v5, Ljava/security/spec/EllipticCurve;

    invoke-direct {v5, v8, v2, v3}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 169
    .local v5, "curve":Ljava/security/spec/EllipticCurve;
    new-instance v10, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    .line 170
    new-instance v14, Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v15}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_generator(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Lcom/android/org/conscrypt/NativeRef$EC_POINT;-><init>(J)V

    .line 169
    move-object/from16 v0, p0

    invoke-direct {v10, v0, v14}, Lcom/android/org/conscrypt/OpenSSLECPointContext;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)V

    .line 171
    .local v10, "generatorCtx":Lcom/android/org/conscrypt/OpenSSLECPointContext;
    invoke-virtual {v10}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getECPoint()Ljava/security/spec/ECPoint;

    move-result-object v9

    .line 173
    .local v9, "generator":Ljava/security/spec/ECPoint;
    new-instance v11, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v14}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_order(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[B

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/math/BigInteger;-><init>([B)V

    .line 174
    .local v11, "order":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v14}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_cofactor(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[B

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/math/BigInteger;-><init>([B)V

    .line 176
    .local v4, "cofactor":Ljava/math/BigInteger;
    new-instance v13, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v14

    invoke-direct {v13, v5, v9, v11, v14}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 177
    .local v13, "spec":Ljava/security/spec/ECParameterSpec;
    invoke-static {v13, v6}, Lcom/android/org/conscrypt/Platform;->setCurveName(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V

    .line 178
    return-object v13
.end method

.method getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
