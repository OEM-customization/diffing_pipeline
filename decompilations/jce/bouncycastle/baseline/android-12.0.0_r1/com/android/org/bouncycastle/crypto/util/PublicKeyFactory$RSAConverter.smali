.class Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$RSAConverter;
.super Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
.source "PublicKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RSAConverter"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$1;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$1;

    .line 175
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$RSAConverter;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getPublicKeyParameters(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 8
    .param p1, "keyInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "defaultParams"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;

    move-result-object v0

    .line 183
    .local v0, "pubKey":Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method
