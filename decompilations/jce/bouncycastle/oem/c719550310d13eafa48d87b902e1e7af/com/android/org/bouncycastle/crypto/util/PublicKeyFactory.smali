.class public Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;
.super Ljava/lang/Object;
.source "PublicKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 37
    .param p0, "keyInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v16

    .line 90
    .local v16, "algId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v10, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 91
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v10, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 90
    if-eqz v2, :cond_33

    .line 93
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;

    move-result-object v32

    .line 95
    .local v32, "pubKey":Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v2, v12, v10, v11}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2

    .line 97
    .end local v32    # "pubKey":Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;
    :cond_33
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v10, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;

    move-result-object v22

    .line 101
    .local v22, "dhPublicKey":Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v35

    .line 103
    .local v35, "y":Ljava/math/BigInteger;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;

    move-result-object v20

    .line 105
    .local v20, "dhParams":Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    .line 106
    .local v3, "p":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getG()Ljava/math/BigInteger;

    move-result-object v4

    .line 107
    .local v4, "g":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 109
    .local v5, "q":Ljava/math/BigInteger;
    const/4 v6, 0x0

    .line 110
    .local v6, "j":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 112
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v6

    .line 115
    .end local v6    # "j":Ljava/math/BigInteger;
    :cond_6a
    const/4 v7, 0x0

    .line 116
    .local v7, "validation":Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;->getValidationParams()Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;

    move-result-object v23

    .line 117
    .local v23, "dhValidationParms":Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;
    if-eqz v23, :cond_84

    .line 119
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->getSeed()[B

    move-result-object v33

    .line 120
    .local v33, "seed":[B
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;->getPgenCounter()Ljava/math/BigInteger;

    move-result-object v31

    .line 124
    .local v31, "pgenCounter":Ljava/math/BigInteger;
    new-instance v7, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    .end local v7    # "validation":Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    move-object/from16 v0, v33

    invoke-direct {v7, v0, v2}, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    .line 127
    .end local v31    # "pgenCounter":Ljava/math/BigInteger;
    .end local v33    # "seed":[B
    :cond_84
    new-instance v10, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    move-object/from16 v0, v35

    invoke-direct {v10, v0, v2}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    return-object v10

    .line 129
    .end local v3    # "p":Ljava/math/BigInteger;
    .end local v4    # "g":Ljava/math/BigInteger;
    .end local v5    # "q":Ljava/math/BigInteger;
    .end local v20    # "dhParams":Lcom/android/org/bouncycastle/asn1/x9/DomainParameters;
    .end local v22    # "dhPublicKey":Lcom/android/org/bouncycastle/asn1/x9/DHPublicKey;
    .end local v23    # "dhValidationParms":Lcom/android/org/bouncycastle/asn1/x9/ValidationParams;
    .end local v35    # "y":Ljava/math/BigInteger;
    :cond_91
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v10, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 131
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    move-result-object v28

    .line 132
    .local v28, "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 134
    .local v19, "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v26

    .line 135
    .local v26, "lVal":Ljava/math/BigInteger;
    if-nez v26, :cond_d1

    const/16 v25, 0x0

    .line 136
    .local v25, "l":I
    :goto_b3
    new-instance v21, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-direct {v0, v2, v10, v11, v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 138
    .local v21, "dhParams":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-direct {v2, v10, v0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    return-object v2

    .line 135
    .end local v21    # "dhParams":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .end local v25    # "l":I
    :cond_d1
    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->intValue()I

    move-result v25

    .restart local v25    # "l":I
    goto :goto_b3

    .line 150
    .end local v19    # "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .end local v25    # "l":I
    .end local v26    # "lVal":Ljava/math/BigInteger;
    .end local v28    # "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :cond_d6
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v10, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ee

    .line 151
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v10, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 150
    if-eqz v2, :cond_123

    .line 153
    :cond_ee
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v19

    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 154
    .restart local v19    # "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v17

    .line 156
    .local v17, "de":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/16 v27, 0x0

    .line 157
    .local v27, "parameters":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    if-eqz v17, :cond_117

    .line 159
    invoke-interface/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v29

    .line 160
    .local v29, "params":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    new-instance v27, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    .end local v27    # "parameters":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v11

    move-object/from16 v0, v27

    invoke-direct {v0, v2, v10, v11}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 163
    .end local v29    # "params":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    :cond_117
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v10

    move-object/from16 v0, v27

    invoke-direct {v2, v10, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    return-object v2

    .line 165
    .end local v17    # "de":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v19    # "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :cond_123
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v10, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 167
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v30

    .line 172
    .local v30, "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v2

    if-eqz v2, :cond_18c

    .line 174
    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 176
    .local v9, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v9}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v34

    .line 177
    .local v34, "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v34, :cond_14d

    .line 179
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v34

    .line 181
    :cond_14d
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ECNamedDomainParameters;

    .line 182
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v10

    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v14

    .line 181
    invoke-direct/range {v8 .. v14}, Lcom/android/org/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 191
    .end local v9    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v8, "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    :goto_166
    new-instance v24, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 192
    .local v24, "key":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v18, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 194
    .local v18, "derQ":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-direct {v2, v10, v8}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v2

    .line 186
    .end local v8    # "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v18    # "derQ":Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;
    .end local v24    # "key":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v34    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_18c
    invoke-virtual/range {v30 .. v30}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v34

    .line 187
    .restart local v34    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 188
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v11

    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v15

    move-object v10, v8

    .line 187
    invoke-direct/range {v10 .. v15}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .restart local v8    # "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_166

    .line 198
    .end local v8    # "dParams":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v30    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    .end local v34    # "x9":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_1af
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "algorithm identifier in key not recognised"

    invoke-direct {v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createKey(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 2
    .param p0, "inStr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public static createKey([B)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 2
    .param p0, "keyInfoData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method
