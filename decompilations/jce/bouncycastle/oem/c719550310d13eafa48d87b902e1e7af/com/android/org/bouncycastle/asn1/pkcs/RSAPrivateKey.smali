.class public Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "RSAPrivateKey.java"


# instance fields
.field private coefficient:Ljava/math/BigInteger;

.field private exponent1:Ljava/math/BigInteger;

.field private exponent2:Ljava/math/BigInteger;

.field private modulus:Ljava/math/BigInteger;

.field private otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field private prime1:Ljava/math/BigInteger;

.field private prime2:Ljava/math/BigInteger;

.field private privateExponent:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;

.field private version:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 75
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 77
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    .line 78
    .local v1, "v":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2a

    .line 80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "wrong version for RSA private key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_2a
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    .line 84
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 85
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->publicExponent:Ljava/math/BigInteger;

    .line 86
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 87
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime1:Ljava/math/BigInteger;

    .line 88
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime2:Ljava/math/BigInteger;

    .line 89
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent1:Ljava/math/BigInteger;

    .line 90
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent2:Ljava/math/BigInteger;

    .line 91
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->coefficient:Ljava/math/BigInteger;

    .line 93
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 95
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 97
    :cond_9a
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 11
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "privateExponent"    # Ljava/math/BigInteger;
    .param p4, "prime1"    # Ljava/math/BigInteger;
    .param p5, "prime2"    # Ljava/math/BigInteger;
    .param p6, "exponent1"    # Ljava/math/BigInteger;
    .param p7, "exponent2"    # Ljava/math/BigInteger;
    .param p8, "coefficient"    # Ljava/math/BigInteger;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 61
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    .line 62
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 63
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->publicExponent:Ljava/math/BigInteger;

    .line 64
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 65
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime1:Ljava/math/BigInteger;

    .line 66
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime2:Ljava/math/BigInteger;

    .line 67
    iput-object p6, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent1:Ljava/math/BigInteger;

    .line 68
    iput-object p7, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent2:Ljava/math/BigInteger;

    .line 69
    iput-object p8, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->coefficient:Ljava/math/BigInteger;

    .line 70
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 38
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    if-eqz v0, :cond_8

    .line 40
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 43
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 48
    :cond_14
    return-object v1
.end method


# virtual methods
.method public getCoefficient()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->coefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getExponent1()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getExponent2()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->exponent2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrime1()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrime2()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->prime2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getVersion()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .prologue
    .line 168
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 170
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->version:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 171
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 172
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 173
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 174
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 175
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 176
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 177
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 178
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 180
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_78

    .line 182
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 185
    :cond_78
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
