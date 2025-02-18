.class public Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;
.super Ljava/lang/Object;
.source "JCEECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
.implements Lcom/android/org/bouncycastle/jce/interfaces/ECPointEncoder;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field private d:Ljava/math/BigInteger;

.field private ecSpec:Ljava/security/spec/ECParameterSpec;

.field private publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field private withCompression:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .registers 3
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 195
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;)V
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 186
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 187
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .registers 11
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "pubKey"    # Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;
    .param p4, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v2, "EC"

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 54
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 149
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 151
    .local v0, "dp":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 152
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 154
    if-nez p4, :cond_60

    .line 156
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 158
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    .line 160
    new-instance v3, Ljava/security/spec/ECPoint;

    .line 161
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 162
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    .line 160
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 163
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 164
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 158
    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 179
    :goto_59
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 180
    return-void

    .line 168
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :cond_60
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 170
    .restart local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    .line 172
    new-instance v3, Ljava/security/spec/ECPoint;

    .line 173
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 174
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    .line 172
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 175
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 176
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 170
    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_59
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;Ljava/security/spec/ECParameterSpec;)V
    .registers 11
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "pubKey"    # Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;
    .param p4, "spec"    # Ljava/security/spec/ECParameterSpec;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v2, "EC"

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 54
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 118
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 120
    .local v0, "dp":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 121
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 123
    if-nez p4, :cond_60

    .line 125
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 127
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    .line 129
    new-instance v3, Ljava/security/spec/ECPoint;

    .line 130
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 131
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    .line 129
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 132
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 133
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 127
    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 140
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_59
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 141
    return-void

    .line 137
    :cond_60
    iput-object p4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_59
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;)V
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 104
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 105
    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 106
    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 107
    iget-boolean v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 108
    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 109
    iget-object v0, p2, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;)V
    .registers 7
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v2, "EC"

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 54
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 72
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 73
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 75
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 77
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 80
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 82
    .local v1, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 88
    .end local v0    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v1    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :goto_3c
    return-void

    .line 86
    :cond_3d
    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_3c
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;)V
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/security/spec/ECPrivateKeySpec;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 95
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 96
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 97
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/interfaces/ECPrivateKey;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "EC"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 63
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 64
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 65
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 66
    return-void
.end method

.method private getPublicKeyDetails(Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;)Lcom/android/org/bouncycastle/asn1/DERBitString;
    .registers 5
    .param p1, "pub"    # Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;

    .prologue
    .line 449
    :try_start_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 451
    .local v1, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v2

    return-object v2

    .line 454
    .end local v1    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_11
    move-exception v0

    .line 455
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method private populateFromPrivKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .registers 14
    .param p1, "info"    # Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    invoke-direct {v10, v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 203
    .local v10, "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 205
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    .line 206
    .local v9, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v9}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 226
    .local v8, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 228
    .local v2, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    .line 229
    invoke-static {v9}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getCurveName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 231
    new-instance v3, Ljava/security/spec/ECPoint;

    .line 232
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 233
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    .line 231
    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 234
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 235
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    .line 228
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 256
    .end local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .end local v8    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v9    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_5d
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    .line 257
    .local v11, "privKey":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v0, v11, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_bf

    .line 259
    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v6

    .line 261
    .local v6, "derD":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 270
    .end local v6    # "derD":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .end local v11    # "privKey":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :goto_6f
    return-void

    .line 238
    :cond_70
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_5d

    .line 244
    :cond_7a
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 245
    .restart local v8    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 247
    .restart local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    .line 249
    new-instance v1, Ljava/security/spec/ECPoint;

    .line 250
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    .line 251
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 249
    invoke-direct {v1, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 252
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 253
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 247
    invoke-direct {v0, v2, v1, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_5d

    .line 265
    .end local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .end local v8    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .restart local v11    # "privKey":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_bf
    new-instance v7, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    check-cast v11, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local v11    # "privKey":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-direct {v7, v11}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 267
    .local v7, "ec":Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getKey()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 268
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getPublicKey()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    goto :goto_6f
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 465
    .local v0, "enc":[B
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 467
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 469
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 471
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->readObject(Ljava/io/ObjectInputStream;)V

    .line 472
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 480
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 482
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->writeObject(Ljava/io/ObjectOutputStream;)V

    .line 483
    return-void
.end method


# virtual methods
.method engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_d

    .line 377
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 380
    :cond_d
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 418
    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    if-nez v2, :cond_6

    .line 420
    return v1

    :cond_6
    move-object v0, p1

    .line 423
    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;

    .line 425
    .local v0, "other":Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_23
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getD()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 297
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v2, v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v2, :cond_52

    .line 299
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    .line 300
    .local v6, "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v6, :cond_22

    .line 302
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .end local v6    # "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 304
    .restart local v6    # "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_22
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v10, v6}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 327
    .end local v6    # "curveOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v10, "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    :goto_27
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    if-eqz v2, :cond_9a

    .line 329
    new-instance v9, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v9, v2, v3, v10}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/DERBitString;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 347
    .local v9, "keyStructure":Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    :goto_36
    :try_start_36
    new-instance v8, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-direct {v8, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 350
    .local v8, "info":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    const-string/jumbo v2, "DER"

    invoke-virtual {v8, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_50} :catch_a4

    move-result-object v2

    return-object v2

    .line 306
    .end local v8    # "info":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v9    # "keyStructure":Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    .end local v10    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_52
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v2, :cond_5e

    .line 308
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v10, v2}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Null;)V

    .restart local v10    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_27

    .line 312
    .end local v10    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_5e
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 314
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 316
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 317
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    .line 318
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 319
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    .line 314
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 321
    .local v0, "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v10, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v10, v0}, Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;)V

    .restart local v10    # "params":Lcom/android/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_27

    .line 333
    .end local v0    # "ecP":Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    :cond_9a
    new-instance v9, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v9, v2, v10}, Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .restart local v9    # "keyStructure":Lcom/android/org/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    goto :goto_36

    .line 353
    :catch_a4
    move-exception v7

    .line 354
    .local v7, "e":Ljava/io/IOException;
    return-object v11
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    const-string/jumbo v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 365
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_6

    .line 367
    return-object v1

    .line 370
    :cond_6
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 398
    return-void
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .registers 3
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    .line 413
    const-string/jumbo v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 414
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 436
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "nl":Ljava/lang/String;
    const-string/jumbo v2, "EC Private Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    const-string/jumbo v2, "             S: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
