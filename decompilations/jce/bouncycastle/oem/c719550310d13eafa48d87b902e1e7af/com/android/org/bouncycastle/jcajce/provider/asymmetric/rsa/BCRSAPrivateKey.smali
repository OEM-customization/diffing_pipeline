.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;
.super Ljava/lang/Object;
.source "BCRSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateKey;
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# static fields
.field private static ZERO:Ljava/math/BigInteger; = null

.field static final serialVersionUID:J = 0x46eb09c007cf411cL


# instance fields
.field private transient attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field protected modulus:Ljava/math/BigInteger;

.field protected privateExponent:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    .line 21
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;)V
    .registers 3
    .param p1, "key"    # Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 60
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 61
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 62
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;)V
    .registers 3
    .param p1, "key"    # Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 40
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 41
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 42
    return-void
.end method

.method constructor <init>(Ljava/security/interfaces/RSAPrivateKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/interfaces/RSAPrivateKey;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 54
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 55
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 56
    return-void
.end method

.method constructor <init>(Ljava/security/spec/RSAPrivateKeySpec;)V
    .registers 3
    .param p1, "spec"    # Ljava/security/spec/RSAPrivateKeySpec;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 47
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 48
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 49
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 136
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 137
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 144
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 91
    instance-of v2, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v2, :cond_6

    .line 93
    return v1

    .line 96
    :cond_6
    if-ne p1, p0, :cond_a

    .line 98
    const/4 v1, 0x1

    return v1

    :cond_a
    move-object v0, p1

    .line 101
    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 103
    .local v0, "key":Ljava/security/interfaces/RSAPrivateKey;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 104
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 103
    :cond_27
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const-string/jumbo v0, "RSA"

    return-object v0
.end method

.method public getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 11

    .prologue
    .line 86
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v9, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    sget-object v5, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    sget-object v7, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    sget-object v8, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v9, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedPrivateKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    const-string/jumbo v0, "PKCS#8"

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;->attrCarrier:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 117
    return-void
.end method
