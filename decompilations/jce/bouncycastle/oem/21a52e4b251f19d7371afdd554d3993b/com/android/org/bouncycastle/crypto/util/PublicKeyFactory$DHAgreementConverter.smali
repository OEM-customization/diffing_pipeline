.class Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$DHAgreementConverter;
.super Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
.source "PublicKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DHAgreementConverter"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$1;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$1;

    .line 225
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$DHAgreementConverter;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getPublicKeyParameters(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 11
    .param p1, "keyInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "defaultParams"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    move-result-object v0

    .line 232
    .local v0, "params":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 234
    .local v1, "derY":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v2

    .line 235
    .local v2, "lVal":Ljava/math/BigInteger;
    if-nez v2, :cond_1a

    const/4 v3, 0x0

    goto :goto_1e

    :cond_1a
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 236
    .local v3, "l":I
    :goto_1e
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 238
    .local v4, "dhParams":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    return-object v5
.end method
